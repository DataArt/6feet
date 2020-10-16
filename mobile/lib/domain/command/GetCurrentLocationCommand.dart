import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter_heatmap/google_maps_flutter_heatmap.dart';
import 'package:tracking/domain/command/Command.dart';
import 'package:tracking/domain/model/Result.dart';

class GetCurrentLocationCommand extends Command<Result<LatLng>> {
  GetCurrentLocationCommand();

  @override
  Future<Result<LatLng>> run() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    return Result.success(LatLng(position.latitude, position.longitude));
  }
}
