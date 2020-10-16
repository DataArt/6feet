import 'package:dio/dio.dart';
import 'package:http_certificate_pinning/certificate_pinning_interceptor.dart';
import 'package:tracking/domain/ApiConstants.dart';
import 'package:tracking/domain/model/Result.dart';
import 'package:tracking/domain/model/UserLocation.dart';
import 'package:tracking/domain/model/UserLocationBounds.dart';
import 'package:tracking/domain/model/UserLocationWithTime.dart';

class ApiProvider {
  final Dio _dio =
      Dio(BaseOptions(baseUrl: ApiConstants.BASE_URL, headers: {'key': ApiConstants.API_KEY}))
        ..interceptors.add(CertificatePinningInterceptor([
          ApiConstants.CERT_KEY
        ]));

  Future<Result<UserLocationWithTime>> sendLocation(
      UserLocation location) async {
    try {
      Response response = await _dio.post("/location", data: location.toJson());
      return Result.success(UserLocationWithTime.fromJson(response.data));
    } on DioError catch (e) {
      return Result.error(e.message, e.response.statusCode);
    }
  }

  Future<Result<List<UserLocationWithTime>>> getLocationsByPosition(
      UserLocationBounds locationBounds) async {
    try {
      Response response = await _dio.post("/location_by_position",
          data: locationBounds.toJson());
      List<UserLocationWithTime> locations = response.data
          .map<UserLocationWithTime>(
              (dynamic location) => UserLocationWithTime.fromJson(location))
          .toList();
      return Result.success(locations);
    } on DioError catch (e) {
      return Result.error(e.message, e.response.statusCode);
    }
  }
}
