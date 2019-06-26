class Benchmark {
  String placeReplacementValue ;
  String scopeMaintenanceCost ;
  String annualMaintenanceCost;
  String availableUnitMeasure ;
  String scopeOfAvailability;
  String operationAssetUtilization;
  String emergencyWorkOrder;
  String emergencyWork ;

  Benchmark({
    this.placeReplacementValue = '\$1B',
    this.scopeMaintenanceCost = 'Routine + Turnaround Maintenance Costs',
    this.annualMaintenanceCost  = '\$20MM',
    this.availableUnitMeasure = 'Annual % Avalability',
    this.scopeOfAvailability  = 'Operational Asset Utilization',
    this.operationAssetUtilization  = '96%',
    this.emergencyWorkOrder  = 'Emergency Work Orders % Total Work Orders',
    this.emergencyWork = '2%',
  });

  String getPlaceReplacementValue(){
    return placeReplacementValue;
  }
  void setPlaceReplacementValue(String value){
    placeReplacementValue = value;
  }
  String getScopeMaintenanceCost(){
    return scopeMaintenanceCost;
  }
  void setScopeMaintenanceCost(String value){
    scopeMaintenanceCost = value;
  }
  String getAnnualMaintenanceCost(){
    return annualMaintenanceCost;
  }
  void setAnnualMaintenanceCost(String value){
    annualMaintenanceCost = value;
  }
  String getAvailableUnitMeasure(){
    return availableUnitMeasure;
  }
  void setAvailableUnitMeasure(String value){
    availableUnitMeasure = value;
  }
  String getScopeOfAvailability(){
    return scopeOfAvailability;
  }
  void setScopeOfAvailability(String value){
    scopeOfAvailability = value;
  }
  String getOperationAssetUtilization(){
    return operationAssetUtilization;
  }
  void setOperationAssetUtilization(String value){
    operationAssetUtilization = value;
  }
  String getEmergencyWorkOrder(){
    return emergencyWorkOrder;
  }
  void setEmergencyWorkOrder(String value){
    emergencyWorkOrder = value;
  }
  String getEmergencyWork(){
    return emergencyWork;
  }
  void setEmergencyWork(String value){
    emergencyWork = value;
  }


}
