class ContainerListModel {
  bool? bookableFlag;
  String? sizeTypeName;
  String? sizeTypeDisplayName;
  String? typeCd;
  String? displayOrder;
  String? sizeCd;
  bool? activeFlag;
  bool? reeferFlag;
  bool? shipperOwnedFlag;
  bool? carrierOwnedFlag;
  bool? outOfGaugeCargoFlag;
  String? unitOfMeasurementAbbreviationVal;
  String? isoContainerSizeTypeName;
  String? isoContainerSizeTypeCd;
  String? profileName;
  String? payloadWeight;
  String? payloadWeightUnits;
  String? tareWeight;
  String? tareWeightUnits;

  ContainerListModel(
      {this.bookableFlag,
      this.sizeTypeName,
      this.sizeTypeDisplayName,
      this.typeCd,
      this.displayOrder,
      this.sizeCd,
      this.activeFlag,
      this.reeferFlag,
      this.shipperOwnedFlag,
      this.carrierOwnedFlag,
      this.outOfGaugeCargoFlag,
      this.unitOfMeasurementAbbreviationVal,
      this.isoContainerSizeTypeName,
      this.isoContainerSizeTypeCd,
      this.profileName,
      this.payloadWeight,
      this.payloadWeightUnits,
      this.tareWeight,
      this.tareWeightUnits});

  ContainerListModel.fromJson(Map<String, dynamic> json) {
    bookableFlag = json['bookableFlag'];
    sizeTypeName = json['sizeTypeName'];
    sizeTypeDisplayName = json['sizeTypeDisplayName'];
    typeCd = json['typeCd'];
    displayOrder = json['displayOrder'];
    sizeCd = json['sizeCd'];
    activeFlag = json['activeFlag'];
    reeferFlag = json['reeferFlag'];
    shipperOwnedFlag = json['shipperOwnedFlag'];
    carrierOwnedFlag = json['carrierOwnedFlag'];
    outOfGaugeCargoFlag = json['outOfGaugeCargoFlag'];
    unitOfMeasurementAbbreviationVal = json['unitOfMeasurementAbbreviationVal'];
    isoContainerSizeTypeName = json['isoContainerSizeTypeName'];
    isoContainerSizeTypeCd = json['isoContainerSizeTypeCd'];
    profileName = json['profileName'];
    payloadWeight = json['payloadWeight'];
    payloadWeightUnits = json['payloadWeightUnits'];
    tareWeight = json['tareWeight'];
    tareWeightUnits = json['tareWeightUnits'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bookableFlag'] = this.bookableFlag;
    data['sizeTypeName'] = this.sizeTypeName;
    data['sizeTypeDisplayName'] = this.sizeTypeDisplayName;
    data['typeCd'] = this.typeCd;
    data['displayOrder'] = this.displayOrder;
    data['sizeCd'] = this.sizeCd;
    data['activeFlag'] = this.activeFlag;
    data['reeferFlag'] = this.reeferFlag;
    data['shipperOwnedFlag'] = this.shipperOwnedFlag;
    data['carrierOwnedFlag'] = this.carrierOwnedFlag;
    data['outOfGaugeCargoFlag'] = this.outOfGaugeCargoFlag;
    data['unitOfMeasurementAbbreviationVal'] =
        this.unitOfMeasurementAbbreviationVal;
    data['isoContainerSizeTypeName'] = this.isoContainerSizeTypeName;
    data['isoContainerSizeTypeCd'] = this.isoContainerSizeTypeCd;
    data['profileName'] = this.profileName;
    data['payloadWeight'] = this.payloadWeight;
    data['payloadWeightUnits'] = this.payloadWeightUnits;
    data['tareWeight'] = this.tareWeight;
    data['tareWeightUnits'] = this.tareWeightUnits;
    return data;
  }
}
