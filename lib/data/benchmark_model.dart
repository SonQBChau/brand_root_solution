


import 'package:flutter_xlider/flutter_xlider.dart';

final List<String> plantReplacementRange = ['\$100K','\$200K', '\$500K', '\$1M', '\$10M', '\$100M','\$200M', '\$500M', '\$1B', '\$10B', '\$100B'];
final List<String> annualMaintenanceRange = ['\$10K','\$20K', '\$50K', '\$100K', '\$500K', '\$1M','\$5M', '\$10M', '\$20M', '\$50M', '\$100M'];
final List<String> operationAssetUtilizationRange = ['\$10K','\$20K', '\$50K', '\$100K', '\$500K', '\$1M','\$5M', '\$10M', '\$20M', '\$50M', '\$100M'];
final List<String> emergencyWorkRange = ['0%','10%','20%','30%','40%','50%','60%','70%','80%','90%','100%'];

final List<String> scopeMaintenanceList = ['Routine + Turnaround Maintenance Costs','Others'];
final List<String> availableUnitMeasureList = ['Annual % Avalability','Semi Annual % Avalability', 'Quarter % Avalability'];
final List<String> scopeOfAvailabilityList = ['Operational Assets Utilization','Others'];
final List<String> emergencyWorkOrderList = ['Emergency Work Orders % Total Work Orders','Others'];

class Benchmark {
  String placeReplacementValue;
  String scopeMaintenanceCost ;
  String annualMaintenanceCost;
  String availableUnitMeasure ;
  String scopeOfAvailability;
  String operationAssetUtilization;
  String emergencyWorkOrder;
  String emergencyWork ;

  Benchmark({
    this.placeReplacementValue,
    this.scopeMaintenanceCost,
    this.annualMaintenanceCost,
    this.availableUnitMeasure,
    this.scopeOfAvailability,
    this.operationAssetUtilization,
    this.emergencyWorkOrder,
    this.emergencyWork,
  });



  String getPlantReplacementValue(){
    if (placeReplacementValue == null){
      return plantReplacementRange[2];
    }
    return placeReplacementValue;
  }

  void setPlantReplacementValue(String value){
    placeReplacementValue = value;
  }

  String getScopeMaintenanceCost(){
    if (scopeMaintenanceCost == null){
      return scopeMaintenanceList[0];
    }
    return scopeMaintenanceCost;
  }
  List<String> getScopeMaintenanceList(){
    return scopeMaintenanceList;
  }
  void setScopeMaintenanceCost(String value){
    scopeMaintenanceCost = value;
  }

  String getAnnualMaintenanceCost(){
    if (annualMaintenanceCost == null){
      return annualMaintenanceRange[4];
    }
    return annualMaintenanceCost;
  }

  void setAnnualMaintenanceCost(String value){
    annualMaintenanceCost = value;
  }
  String getAvailableUnitMeasure(){
    if (availableUnitMeasure == null){
      return availableUnitMeasureList[0];
    }
    return availableUnitMeasure;
  }
  List<String>  getAvailableUnitMeasureList(){
    return availableUnitMeasureList;
  }

  void setAvailableUnitMeasure(String value){
    availableUnitMeasure = value;
  }
  String getScopeOfAvailability(){
    if (scopeOfAvailability == null){
      return scopeOfAvailabilityList[0];
    }
    return scopeOfAvailability;
  }
  List<String>  getScopeOfAvailabilityList(){
    return scopeOfAvailabilityList;
  }

  void setScopeOfAvailability(String value){
    scopeOfAvailability = value;
  }
  String getOperationAssetUtilization(){
    if (operationAssetUtilization == null){
      return operationAssetUtilizationRange[7];
    }
    return operationAssetUtilization;
  }


  void setOperationAssetUtilization(String value){
    operationAssetUtilization = value;
  }
  String getEmergencyWorkOrder(){
    if (emergencyWorkOrder == null){
      return emergencyWorkOrderList[0];
    }
    return emergencyWorkOrder;
  }
  List<String>  getEmergencyWorkOrderList(){
    return emergencyWorkOrderList;
  }

  void setEmergencyWorkOrder(String value){
    emergencyWorkOrder = value;
  }
  String getEmergencyWork(){
    if (emergencyWork == null){
      return emergencyWorkRange[0];
    }
    return emergencyWork;
  }
//  List<String>  getEmergencyWorkRange(){
//    return emergencyWorkRange;
//  }


  void setEmergencyWork(String value){
    emergencyWork = value;
  }

  List<FlutterSliderFixedValue> generateSliderRange(List<String> sliderRange){
    List<FlutterSliderFixedValue> res = [];
    for(int i = 0; i <= 100; i++){
      FlutterSliderFixedValue tick;
      if (i < 10){
        tick = FlutterSliderFixedValue(percent: i, value: sliderRange[0]);
      }
      else if (i < 20) {
        tick = FlutterSliderFixedValue(percent: i, value: sliderRange[1]);
      }
      else if (i < 30) {
        tick = FlutterSliderFixedValue(percent: i, value: sliderRange[2]);
      }
      else if (i < 40) {
        tick = FlutterSliderFixedValue(percent: i, value: sliderRange[3]);
      }
      else if (i < 50) {
        tick = FlutterSliderFixedValue(percent: i, value: sliderRange[4]);
      }
      else if (i < 60) {
        tick = FlutterSliderFixedValue(percent: i, value: sliderRange[5]);
      }
      else if (i < 70) {
        tick = FlutterSliderFixedValue(percent: i, value: sliderRange[6]);
      }
      else if (i < 80) {
        tick = FlutterSliderFixedValue(percent: i, value: sliderRange[7]);
      }
      else if (i < 90) {
        tick = FlutterSliderFixedValue(percent: i, value: sliderRange[8]);
      }
      else if (i < 98) {
        tick = FlutterSliderFixedValue(percent: i, value: sliderRange[9]);
      }
      else if (i >= 98) {
        tick = FlutterSliderFixedValue(percent: i, value: sliderRange[10]);
      }
      res.add(tick);
    }

    return res;
  }

  double sliderValueToDouble(String value, sliderRange){
    double result = 0;
    if (value == sliderRange[1]){
      result = 10;
    }
    else if (value == sliderRange[2]){
      result = 20;
    }
    else if (value == sliderRange[3]){
      result = 30;
    }
    else if (value == sliderRange[4]){
      result = 40;
    }
    else if (value == sliderRange[5]){
      result = 50;
    }
    else if (value == sliderRange[6]){
      result = 60;
    }
    else if (value == sliderRange[7]){
      result = 70;
    }
    else if (value == sliderRange[8]){
      result = 80;
    }
    else if (value == sliderRange[9]){
      result = 90;
    }
    else if (value == sliderRange[10]){
      result = 100;
    }

    return result;
  }

  List<FlutterSliderFixedValue> getPlantSliderRange(){
    return generateSliderRange(plantReplacementRange);
  }

  double convertPlantValueToDouble(String value){
    return sliderValueToDouble(value, plantReplacementRange);
  }



  List<FlutterSliderFixedValue> getAnnualMaintenanceRange(){
    return generateSliderRange(annualMaintenanceRange);
  }
  double convertMaintenanceValueToDouble(String value){
    return sliderValueToDouble(value, annualMaintenanceRange);
  }

  List<FlutterSliderFixedValue> getOperationAssetUtilizationRange(){
    return generateSliderRange(operationAssetUtilizationRange);
  }
  double convertUtilizationValueToDouble(String value){
    return sliderValueToDouble(value, operationAssetUtilizationRange);
  }

  List<FlutterSliderFixedValue> getEmergencyWorkRange(){
    return generateSliderRange(emergencyWorkRange);
  }
  double convertEmergencyValueToDouble(String value){
    return sliderValueToDouble(value, emergencyWorkRange);
  }


}

