


import 'package:flutter_xlider/flutter_xlider.dart';

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
    this.placeReplacementValue = '\$100K',
    this.scopeMaintenanceCost = 'Routine + Turnaround Maintenance Costs',
    this.annualMaintenanceCost  = '\$100K',
    this.availableUnitMeasure = 'Annual % Avalability',
    this.scopeOfAvailability  = 'Operational Asset Utilization',
    this.operationAssetUtilization  = '\$1M',
    this.emergencyWorkOrder  = 'Emergency Work Orders % Total Work Orders',
    this.emergencyWork = '0%',
  });

  String getPlaceReplacementValue(){
    return placeReplacementValue;
  }
  List<String> getPlaceReplacementRange(){
    return ['\$0','\$100K','\$200K', '\$500K', '\$1M', '\$10M', '\$100M', '\$500M', '\$1B', '\$10B', '\$100B'];
  }
  void setPlaceReplacementValue(String value){
    placeReplacementValue = value;
  }
  String getScopeMaintenanceCost(){
    return scopeMaintenanceCost;
  }
  List<String>  getScopeMaintenanceList(){
    return ['Routine + Turnaround Maintenance Costs','Others'];
  }
  void setScopeMaintenanceCost(String value){
    scopeMaintenanceCost = value;
  }

  String getAnnualMaintenanceCost(){
    return annualMaintenanceCost;
  }
  List<String> getAnnualMaintenanceRange(){
    return ['\$0','\$10K','\$20K', '\$50K', '\$100K', '\$500K', '\$1M', '\$10M', '\$20M', '\$50M', '\$100M'];
  }
  void setAnnualMaintenanceCost(String value){
    annualMaintenanceCost = value;
  }
  String getAvailableUnitMeasure(){
    return availableUnitMeasure;
  }
  List<String>  getAvailableUnitMeasureList(){
    return ['Annual % Avalability','Semi Annual % Avalability'];
  }

  void setAvailableUnitMeasure(String value){
    availableUnitMeasure = value;
  }
  String getScopeOfAvailability(){
    return scopeOfAvailability;
  }
  List<String>  getScopeOfAvailabilityList(){
    return ['Operational Assets Utilization','Others'];
  }

  void setScopeOfAvailability(String value){
    scopeOfAvailability = value;
  }
  String getOperationAssetUtilization(){
    return operationAssetUtilization;
  }
  List<String> getOperationAssetUtilizationRange(){
    return ['\$0','\$10K','\$20K', '\$50K', '\$100K', '\$500K', '\$1M', '\$10M', '\$20M', '\$50M', '\$100M'];
  }

  void setOperationAssetUtilization(String value){
    operationAssetUtilization = value;
  }
  String getEmergencyWorkOrder(){
    return emergencyWorkOrder;
  }
  List<String>  getEmergencyWorkOrderList(){
    return ['Emergency Work Orders % Total Work Orders','Others'];
  }

  void setEmergencyWorkOrder(String value){
    emergencyWorkOrder = value;
  }
  String getEmergencyWork(){
    return emergencyWork;
  }
  List<String> getEmergencyWorkRange(){
    return ['0%','10%', '20%', '30%', '40%', '50%', '60%', '70%', '80%', '90%', '100%'];
  }

  void setEmergencyWork(String value){
    emergencyWork = value;
  }

  List<FlutterSliderFixedValue> getSliderRange(){

    List<FlutterSliderFixedValue> res = [];
    for(int i = 0; i <= 100; i++){
      FlutterSliderFixedValue tick;
      if (i < 20){
        tick = FlutterSliderFixedValue(percent: i, value: '\$100K');
      }
      else if (i < 40) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$500K');
      }
      else if (i < 60) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$1M');
      }
      else if (i < 80) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$500M');
      }
      else if (i < 100) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$10B');
      }
      else if (i == 100) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$100B');
      }
      res.add(tick);
    }

    return res;
  }


}

