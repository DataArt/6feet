class UserLocationBounds {
  double latitude1;
  double longitude1;
  double latitude2;
  double longitude2;
  int timeFrom;

  UserLocationBounds(
      {this.latitude1, this.longitude1, this.latitude2, this.longitude2, this.timeFrom});

  UserLocationBounds.fromJson(Map<String, dynamic> json) {
    latitude1 = json['latitude1'];
    longitude1 = json['longitude1'];
    latitude2 = json['latitude2'];
    longitude2 = json['longitude2'];
    timeFrom = json['timeFrom'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude1'] = this.latitude1;
    data['longitude1'] = this.longitude1;
    data['latitude2'] = this.latitude2;
    data['longitude2'] = this.longitude2;
    data['timeFrom'] = this.timeFrom;
    return data;
  }
}
