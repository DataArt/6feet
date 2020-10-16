import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter_heatmap/google_maps_flutter_heatmap.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tracking/domain/bloc/map/MapBloc.dart';
import 'package:tracking/domain/bloc/map/MapEvent.dart';
import 'package:tracking/domain/bloc/map/MapState.dart';
import 'package:tracking/domain/model/UserLocationWithTime.dart';
import 'package:tracking/presentation/page/map/CircleThumbShape.dart';
import 'package:tracking/presentation/page/map/CustomTickMarkShape.dart';
import 'package:tracking/presentation/page/map/GradientTrackShape.dart';
import 'package:tracking/presentation/page/onboarding/styles.dart';
import 'package:tracking/presentation/resources/AppColors.dart';
import 'package:tracking/presentation/resources/AppStrings.dart';

class MaterialMapPage extends StatefulWidget {
  final MapBloc _bloc;

  MaterialMapPage(this._bloc);

  @override
  MaterialMapState createState() => MaterialMapState(_bloc);
}

class MaterialMapState extends State<MaterialMapPage> {
  final MapBloc _bloc;

  final Completer<GoogleMapController> _controller = Completer();
  LatLng _initialMapPosition;
  final Set<Heatmap> _heatmaps = new Set();
  final double defaultZoom = 16;


  double _sliderValue = DateTime.now().hour.toDouble();

  MaterialMapState(this._bloc);

  @override
  void initState() {
    super.initState();
    _getInitialLocation();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MapBloc, MapState>(
      bloc: _bloc,
      listener: (context, state) {
        state.whenOrElse(
          initial: (_) => {},
          initialLocationReceived: (_) => _initialLocationReceived(_),
          initialLocationDefault: (_) => _initialLocationDefault(_),
          initialLocationServiceRequestEnabled: (_) =>
              _initialLocationServiceRequestEnabled(_),
          initialLocationServiceRequestDisabled: (_) =>
              _initialLocationServiceRequestDisabled(_),
          myCurrentLocationPermissionGranted: (_) =>
              _myCurrentLocationPermissionGranted(),
          myCurrentLocationAvailable: (_) => _myCurrentLocationAvailable(_),
          myCurrentLocationPermissionNotGrantedYet: (_) =>
              _myCurrentLocationPermissionNotGrantedYet(),
          myCurrentLocationServicesDisabled: (_) =>
              _myCurrentLocationServicesDisabled(),
          myCurrentLocationServiceRequestEnabled: (_) =>
              _myCurrentLocationServiceRequestEnabled(),
          myCurrentLocationServiceRequestDisabled: (_) =>
              _myCurrentLocationServiceRequestDisabled(),
          showLocationPermissionRationale: (_) =>
              _showLocationPermissionRationale(),
          dontShowLocationPermissionRationale: (_) =>
              _dontShowLocationPermissionRationale(),
          locationUpdateReceived: (_) => _locationUpdateReceived(_),
          locationSent: (_) => _locationSent,
          timeChangedLoading: (_) => _timeChangedLoading(),
          locationsReceived: (_) => _locationsReceived(_),
          cameraMovedLoading: (_) => _cameraMovedLoading(),
          errorReceived: (error) => _errorReceived(error),
          orElse: (_) {},
        );
      },
      builder: (context, state) {
        return state.whenOrElse(
          initial: (_) => _empty(context),
          initialLocationServiceRequestEnabled: (_) => _content(context),
          initialLocationServiceRequestDisabled: (_) => _content(context),
          myCurrentLocationServiceRequestEnabled: (_) => _content(context),
          myCurrentLocationServiceRequestDisabled: (_) => _content(context),
          initialLocationReceived: (_) => _content(context),
          timeChangedLoading: (_) => _content(context),
          locationSent: (_) => _content(context),
          locationsReceived: (_) => _content(context),
          errorReceived: (_) => _content(context),
          orElse: (_) => _content(context),
        );
      },
    );
  }

  Widget _content(context) {
    return _root(
        context,
        SafeArea(
            top: false,
            child: Stack(children: [
              _map(context),
              _timeSelectWidget(context),
              _mapButtons(context),
              _aboutButton(context)
            ])));
  }

  Widget _root(context, Widget body) {
    return Scaffold(
      body: body,
    );
  }

  Widget _empty(context) {
    return Scaffold(
        body: Container(
      decoration: backgroundGradientDecoration,
    ));
  }

  Widget _map(context) {
    return GoogleMap(
      mapType: MapType.normal,
      myLocationEnabled: true,
      myLocationButtonEnabled: false,
      initialCameraPosition: _getCameraPosition(_initialMapPosition),
      heatmaps: _heatmaps,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
      onCameraIdle: () => onCameraMoved(),
    );
  }

  CameraPosition _getCameraPosition(LatLng location) {
    return CameraPosition(
      target: location,
      zoom: defaultZoom,
    );
  }

  Widget _mapButtons(context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
          padding: const EdgeInsets.only(right: 8, bottom: 80),
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: FloatingActionButton(
                        child: Icon(Icons.my_location,
                            color: AppColors.MARINE_BLUE),
                        elevation: 5,
                        backgroundColor: Colors.white,
                        onPressed: _myLocationButtonPressed)),
                FloatingActionButton(
                    child:
                        Icon(Icons.access_time, color: AppColors.MARINE_BLUE),
                    elevation: 5,
                    backgroundColor: Colors.white,
                    onPressed: _timeButtonPressed)
              ])),
    );
  }

  Widget _aboutButton(context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 0, bottom: 68),
          child: IconButton(
            icon: Icon(Icons.help, color: AppColors.MARINE_BLUE),
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationIcon: Image(
                  image: AssetImage('assets/images/icon.png'),
                  width: 65,
                  height: 65,
                ),
                applicationName: AppStrings.ABOUT_APPLICATION_NAME,
                applicationVersion: AppStrings.ABOUT_APPLICATION_VERSION,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(AppStrings.ABOUT_APPLICATION_DESCRIPTION),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: AppStrings.ABOUT_PRIVACY_POLICY,
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              copyPrivacyPolicyAsset().then((file) {
                                OpenFile.open(file.path);
                              });
                            },
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ));
  }

  void _myLocationButtonPressed() {
    print("HSGHSLog MaterialMapPage _myLocationButtonPressed");
    _bloc.add(MapEvent.myLocationButtonPressed());
  }

  void _timeButtonPressed() {
    print("HSGHSLog MaterialMapPage _timeButtonPressed");
    _changeTime(DateTime.now().hour.toDouble());
  }

  Widget _timeSelectWidget(context) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _slider(context),
                  _divisions(context),
                ],
              ))
        ]);
  }

  Widget _slider(context) {
    return SliderTheme(
        data: SliderTheme.of(context).copyWith(
          trackShape: GradientTrackShape(),
          trackHeight: 2.0,
          thumbShape: CircleThumbShape(thumbRadius: 12.0, min: 0, max: 24),
          overlayColor: Color(0x20f88200),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 23.0),
          tickMarkShape: CustomTickMarkShape(_sliderValue),
          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
          valueIndicatorColor: AppColors.ORANGE,
          valueIndicatorTextStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        child: Slider(
          value: _sliderValue,
          min: 0.0,
          max: 24.0,
          divisions: 24,
          label: _getSliderLabel(),
          onChangeStart: (double value) {},
          onChangeEnd: (double value) {},
          onChanged: (double newValue) {
            _changeTime(newValue);
          },
        ));
  }

  String _getSliderLabel() {
    return '${_sliderValue.toInt()}:00';
  }

  Widget _divisions(context) {
    var divisionsList = [
      "00:00",
      "04:00",
      "08:00",
      "12:00",
      "16:00",
      "20:00",
      "24:00"
    ];

    List<Widget> divisionsWidgets = List();
    for (var division in divisionsList) {
      divisionsWidgets
          .add(Text(division, style: TextStyle(color: Color(0xFF005bcf))));
    }

    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: divisionsWidgets,
      ),
    );
  }

  void _getInitialLocation() async {
    print("HSGHSLog MaterialMapPage _getCurrentUserLocation");
    _bloc.add(MapEvent.getInitialLocation());
  }

  void _changeTime(double newValue) {
    print("HSGHSLog MaterialMapPage _changeTime $newValue");
    if (_sliderValue != newValue) {
      setState(() {
        _sliderValue = newValue;
        _bloc.add(MapEvent.changeTime());
      });
    }
  }

  void _initialLocationReceived(InitialLocationReceived params) async {
    print(
        "HSGHSLog MaterialMapPage _initialLocationReceived ${params.location}");
    _initialMapPosition = params.location;
    _moveToLocation(_initialMapPosition);
    _bloc.add(MapEvent.startListenLocationUpdates());
    _bloc.add(MapEvent.getLocationsForSelectedTime(
        hour: _sliderValue.toInt(), bounds: await getCurrentBounds()));
  }

  void _initialLocationDefault(InitialLocationDefault params) async {
    print(
        "HSGHSLog MaterialMapPage _initialLocationDefault ${params.location}");
    _initialMapPosition = params.location;
    if (params.locationServiceEnabled) {
      _bloc.add(MapEvent.getLocationsForSelectedTime(
          hour: _sliderValue.toInt(), bounds: await getCurrentBounds()));
    } else {
      _bloc.add(MapEvent.requestLocationServiceForInitialState());
    }
  }

  void _initialLocationServiceRequestEnabled(
      InitialLocationServiceRequestEnabled params) async {
    print("HSGHSLog MaterialMapPage _initialLocationServiceRequestEnabled");
    _bloc.add(MapEvent.getInitialLocation());
  }

  void _initialLocationServiceRequestDisabled(
      InitialLocationServiceRequestDisabled params) async {
    print("HSGHSLog MaterialMapPage _initialLocationServiceRequestEnabled");
  }

  void _myCurrentLocationPermissionGranted() async {
    print("HSGHSLog MaterialMapPage _myCurrentLocationPermissionGranted");
    _bloc.add(MapEvent.getMyLocation());
  }

  void _myCurrentLocationAvailable(MyCurrentLocationAvailable params) async {
    print(
        "HSGHSLog MaterialMapPage _myCurrentLocationAvailable ${params.location}");
    _moveToLocation(params.location);
  }

  void _moveToLocation(LatLng latLng) async {
    print("HSGHSLog MaterialMapPage _moveToLocation");
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
        CameraUpdate.newCameraPosition(_getCameraPosition(latLng)));
  }

  void _myCurrentLocationPermissionNotGrantedYet() async {
    print("HSGHSLog MaterialMapPage _myCurrentLocationPermissionNotGrantedYet");
    _bloc.add(MapEvent.shouldShowLocationPermissionRationale());
  }

  void _myCurrentLocationServicesDisabled() async {
    print("HSGHSLog MaterialMapPage _myCurrentLocationServicesDisabled");
    _bloc.add(MapEvent.requestLocationServiceForMyCurrentLocationButtonClick());
  }

  void _showLocationPermissionRationale() async {
    print("HSGHSLog MaterialMapPage _showLocationPermissionRationale");
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

  void _dontShowLocationPermissionRationale() {
    print("HSGHSLog MaterialMapPage _dontShowLocationPermissionRationale");
    _bloc.add(MapEvent.requestLocationPermission());
  }

  void _myCurrentLocationServiceRequestEnabled() {
    print("HSGHSLog MaterialMapPage _myCurrentLocationServiceRequestEnabled");
    _bloc.add(MapEvent.myLocationButtonPressed());
  }

  void _myCurrentLocationServiceRequestDisabled() {
    print("HSGHSLog MaterialMapPage _myCurrentLocationServiceRequestDisabled");
  }

  void _timeChangedLoading() async {
    print("HSGHSLog MaterialMapPage _timeChangedLoading");
    _bloc.add(MapEvent.getLocationsForSelectedTime(
        hour: _sliderValue.toInt(), bounds: await getCurrentBounds()));
  }

  void _locationUpdateReceived(LocationUpdateReceived params) {
    print("HSGHSLog MaterialMapPage _locationUpdateReceived");
  }

  void _locationSent() {
    print("HSGHSLog MaterialMapPage locationSent");
  }

  void _locationsReceived(LocationsReceived params) {
    print(
        "HSGHSLog MaterialMapPage _locationsReceived ${params.locations.length}");
    _heatmaps.clear();
    if (params.locations.isNotEmpty) {
      _showHeatmaps(params.locations);
    }
  }

  void _errorReceived(ErrorReceived params) {
    print("HSGHSLog MaterialMapPage Error: ${params.error}");
  }

  void _showHeatmaps(List<UserLocationWithTime> locations) {
    List<WeightedLatLng> points = <WeightedLatLng>[];
    for (var location in locations) {
      points.add(WeightedLatLng(point: location.toLatLng(), intensity: 1));
    }

    List<Color> _colors = [
      Colors.lightBlueAccent,
      Colors.lightBlue,
      Colors.blue,
      Color.fromRGBO(97, 77, 139, 1),
      Color.fromRGBO(155, 39, 70, 1),
      Colors.red,
    ];

    List<double> _startPoints = [0.2, 0.3, 0.5, 0.6, 0.9, 1];

    _heatmaps.add(Heatmap(
        heatmapId: HeatmapId("hitmapId"),
        points: points,
        radius: 50,
        visible: true,
        opacity: 0.2,
        gradient: HeatmapGradient(colors: _colors, startPoints: _startPoints)));
    print("HSGHSLog _MaterialMapPage showHeatmaps points:${points.length}");
  }

  void onCameraMoved() {
    print("HSGHSLog MaterialMapPage onCameraMoved");
    _bloc.add(MapEvent.cameraMoved());
  }

  Future<void> _cameraMovedLoading() async {
    print("HSGHSLog MaterialMapPage _cameraMovedLoading");
    _bloc.add(
        MapEvent.getLocationsForCameraMoved(bounds: await getCurrentBounds()));
  }

  Future<LatLngBounds> getCurrentBounds() async {
    final GoogleMapController controller = await _controller.future;
    return await controller.getVisibleRegion();
  }

  Future<File> copyPrivacyPolicyAsset() async {
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    File tempFile = File('$tempPath/6FeetPrivacyPolicy.pdf');
    ByteData bd = await rootBundle.load('assets/legal/6FeetPrivacyPolicy.pdf');
    await tempFile.writeAsBytes(bd.buffer.asUint8List(), flush: true);
    return tempFile;
  }
}
