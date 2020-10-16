import 'package:google_maps_flutter_heatmap/google_maps_flutter_heatmap.dart';
import 'package:intl/intl.dart';

class UserLocationWithTime {
  double latitude;
  double longitude;
  String time;

  UserLocationWithTime({this.latitude, this.longitude, this.time});

  UserLocationWithTime.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['time'] = this.time;
    return data;
  }

  DateTime getDateTime() {
    if (time != null && time.isNotEmpty) {
      try {
        DateFormat dateFormat = DateFormat('EEE, d MMM yyyy HH:mm:ss z');
        return dateFormat.parse(time);
      } on FormatException {
        return null;
      }
    } else {
      return null;
    }
  }

  LatLng toLatLng() {
    return LatLng(latitude, longitude);
  }
}
