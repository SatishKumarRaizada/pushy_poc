class NotificationModel {
  String? shipmentId;
  String? operatorCode;
  String? message;
  String? vessel;
  String? voyage;
  String? departurePort;
  String? vesselDepartTime;
  String? routingUrl;
  String? eventName;

  NotificationModel(
      {this.shipmentId,
      this.operatorCode,
      this.message,
      this.vessel,
      this.voyage,
      this.departurePort,
      this.vesselDepartTime,
      this.routingUrl,
      this.eventName});

  NotificationModel.fromJson(Map<String, dynamic> json) {
    shipmentId = json['shipmentId'];
    operatorCode = json['operatorCode'];
    message = json['message'];
    vessel = json['vessel'];
    voyage = json['voyage'];
    departurePort = json['departurePort'];
    vesselDepartTime = json['vesselDepartTime'];
    routingUrl = json['routingUrl'];
    eventName = json['eventName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['shipmentId'] = this.shipmentId;
    data['operatorCode'] = this.operatorCode;
    data['message'] = this.message;
    data['vessel'] = this.vessel;
    data['voyage'] = this.voyage;
    data['departurePort'] = this.departurePort;
    data['vesselDepartTime'] = this.vesselDepartTime;
    data['routingUrl'] = this.routingUrl;
    data['eventName'] = this.eventName;
    return data;
  }
}
