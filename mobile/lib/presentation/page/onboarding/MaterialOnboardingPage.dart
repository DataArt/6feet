import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:tracking/domain/bloc/onboarding/OnboardingBloc.dart';
import 'package:tracking/domain/bloc/onboarding/OnboardingEvent.dart';
import 'package:tracking/domain/bloc/onboarding/OnboardingState.dart';
import 'package:tracking/presentation/PageContract.dart';
import 'package:tracking/presentation/page/onboarding/OnboardingPage.dart';
import 'package:tracking/presentation/page/onboarding/styles.dart';
import 'package:tracking/presentation/resources/AppColors.dart';
import 'package:tracking/presentation/resources/AppStrings.dart';

class MaterialOnboardingPage extends StatefulWidget {
  final OnboardingBloc _bloc;

  MaterialOnboardingPage(this._bloc);

  @override
  MaterialOnboardingnState createState() => MaterialOnboardingnState(_bloc);
}

class MaterialOnboardingnState extends State<MaterialOnboardingPage>
    with WidgetsBindingObserver {
  final OnboardingBloc _bloc;

  MaterialOnboardingnState(this._bloc);

  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  List<OnboardingPage> pages = [
    OnboardingPage(
        title: AppStrings.ONBOARDING_WELCOME_TITLE,
        subTitle: AppStrings.ONBOARDING_WELCOME_SUBTITLE,
        imageAsset: "assets/images/welcome.png",
        bottomButtonText: AppStrings.ONBOARDING_WELCOME_BUTTON_TEXT,
        topPadding: 14),
    OnboardingPage(
        subTitle: AppStrings.ONBOARDING_INFO_SUBTITLE,
        imageAsset: "assets/images/info.png",
        bottomButtonText: AppStrings.ONBOARDING_INFO_BUTTON_TEXT,
        topPadding: 14),
    OnboardingPage(
        title: AppStrings.ONBOARDING_LOCATION_TITLE,
        subTitle: AppStrings.ONBOARDING_LOCATION_SUBTITLE,
        imageAsset: "assets/images/location.png",
        bottomButtonText: AppStrings.ONBOARDING_LOCATION_POSITIVE_BUTTON_TEXT,
        topPadding: 14)
  ];
  final String _backgroundCirclesAsset = "assets/images/background_circles.png";

  final double padding = 20;
  final double bottomSheetHeight = 118;
  final double bottomSheetButtonHeight = 48;
  final double bottomSheetDoubleButtonsButtonWidth = 134;
  final double bottomSheetSingleButtonsButtonWidth = 200;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _checkPermission();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _checkPermission();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingBloc, OnboardingState>(
      bloc: _bloc,
      listener: (context, state) {
        state.whenOrElse(
          granted: (_) => _goToMapPage(),
          denied: (_) => _shouldShowPermissionRationale(),
          showLocationPermissionRationale: (_) =>
              _showPermissionRationale(context),
          orElse: (_) {},
        );
      },
      builder: (context, state) {
        return state.whenOrElse(
          initial: (_) => _empty(),
          granted: (_) => _empty(),
          notGrantedYet: (_) => _content(context),
          orElse: (_) => _content(context),
        );
      },
    );
  }

  Widget _empty() {
    return Scaffold(
      body: Container(
        decoration: solidBackgroundDecoration,
      ),
      bottomSheet: _bottomSheet(),
    );
  }

  Widget _content(context) {
    return Scaffold(
      body: Container(
        decoration: solidBackgroundDecoration,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _viewPager(),
              _pageIndicator(),
            ],
          ),
        ),
      ),
      bottomSheet: _bottomSheet(),
    );
  }

  Widget _viewPager() {
    return Container(
      height:
          MediaQuery.of(context).size.height - bottomSheetHeight - padding * 2,
      child: PageView(
        physics: ClampingScrollPhysics(),
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: pages.map((e) => _page(e)).toList(),
      ),
    );
  }

  Widget _page(OnboardingPage page) {
    return Padding(
      padding: EdgeInsets.all(padding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Stack(children: [
            Image(
              image: AssetImage(_backgroundCirclesAsset),
              height: 350.0,
              width: 350.0,
            ),
            Positioned.fill(
              child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: page.topPadding),
                    child: _pageTitleWidget(page),
                  )),
            )
          ])),
          Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                page.subTitle,
                textAlign: TextAlign.center,
                style: onboardingSubtitleStyle,
              ))
        ],
      ),
    );
  }

  Widget _pageTitleWidget(OnboardingPage page) {
    if (page.title != null) {
      return Text(
        page.title,
        textAlign: TextAlign.center,
        style: onboardingTitleStyle,
      );
    } else {
      return Image(
        image: AssetImage(page.imageAsset),
        height: 175.0,
        width: 175.0,
      );
    }
  }

  Widget _pageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _buildPageIndicator(),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < pages.length; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    double borderRadius = isActive ? 5 : 3;
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 6.0),
      height: isActive ? 10.0 : 6.0,
      width: isActive ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      ),
    );
  }

  Widget _bottomSheet() {
    return Container(
        height: bottomSheetHeight,
        width: double.infinity,
        color: Colors.white,
        child: Center(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: _currentPage != pages.length - 1
              ? [_bottomSheetMainButton()]
              : [_bottomSheetNotNowButton(), _bottomSheetMainButton()],
        )));
  }

  Widget _bottomSheetMainButton() {
    return SafeArea(
      minimum: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: bottomSheetButtonHeight,
        width: _currentPage != pages.length - 1
            ? bottomSheetSingleButtonsButtonWidth
            : bottomSheetDoubleButtonsButtonWidth,
        child: RaisedButton(
          color: AppColors.ORANGE,
          onPressed: _currentPage != pages.length - 1
              ? _goToNextPage
              : _requestPermission,
          child: Text(
            pages[_currentPage].bottomButtonText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomSheetNotNowButton() {
    return SafeArea(
      minimum: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: bottomSheetButtonHeight,
        width: bottomSheetDoubleButtonsButtonWidth,
        child: RaisedButton(
          onPressed: _goToMapPage,
          color: AppColors.LIGHT_GREY,
          child: Center(
            child: Text(
              AppStrings.ONBOARDING_LOCATION_NEGATIVE_BUTTON_TEXT,
              style: TextStyle(
                color: AppColors.ORANGE,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _goToNextPage() {
    _pageController.nextPage(
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  void _checkPermission() {
    _bloc.add(OnboardingEvent.checkPermission());
  }

  void _requestPermission() {
    _bloc.add(OnboardingEvent.requestPermission());
  }

  void _shouldShowPermissionRationale() {
    if (Platform.isAndroid) {
      _bloc.add(OnboardingEvent.shouldShowPermissionRationale());
    }
  }

  void _showPermissionRationale(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(AppStrings.PERMISSION_RATIONALE_TITLE),
          content: new Text(AppStrings.PERMISSION_RATIONALE_MESSAGE),
          actions: <Widget>[
            new FlatButton(
              child: new Text(AppStrings.PERMISSION_RATIONALE_BUTTON),
              onPressed: () {
                Navigator.pop(context);
                _goToAppSettings();
              },
            ),
          ],
        );
      },
    );
  }

  void _goToAppSettings() {
    LocationPermissions().openAppSettings();
  }

  void _goToMapPage() {
    Navigator.pushReplacementNamed(context, PageContract.map);
  }
}
