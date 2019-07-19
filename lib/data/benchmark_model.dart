


import 'package:flutter_xlider/flutter_xlider.dart';

List<String> plantReplacementRange = ['\$100K','\$200K', '\$500K', '\$1M', '\$10M', '\$100M','\$200M', '\$500M', '\$1B', '\$10B', '\$100B'];


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
    this.placeReplacementValue,
    this.scopeMaintenanceCost ,
    this.annualMaintenanceCost ,
    this.availableUnitMeasure ,
    this.scopeOfAvailability ,
    this.operationAssetUtilization ,
    this.emergencyWorkOrder ,
    this.emergencyWork,
  });

  String getPlantReplacementValue(){
    return placeReplacementValue;
  }

  void setPlantReplacementValue(String value){
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
//  List<String> getAnnualMaintenanceRange(){
//    return ['\$0','\$10K','\$20K', '\$50K', '\$100K', '\$500K', '\$1M', '\$10M', '\$20M', '\$50M', '\$100M'];
//  }
  void setAnnualMaintenanceCost(String value){
    annualMaintenanceCost = value;
  }
  String getAvailableUnitMeasure(){
    return availableUnitMeasure;
  }
  List<String>  getAvailableUnitMeasureList(){
    return ['Annual % Avalability','Semi Annual % Avalability', 'Quarter % Avalability'];
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
//  List<String> getOperationAssetUtilizationRange(){
//    return ['\$0','\$10K','\$20K', '\$50K', '\$100K', '\$500K', '\$1M', '\$10M', '\$20M', '\$50M', '\$100M'];
//  }

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
//  List<String> getEmergencyWorkRange(){
//    return ['0%','10%', '20%', '30%', '40%', '50%', '60%', '70%', '80%', '90%', '100%'];
//  }

  void setEmergencyWork(String value){
    emergencyWork = value;
  }

  List<FlutterSliderFixedValue> getPlantSliderRange(){

    List<FlutterSliderFixedValue> res = [];
    for(int i = 0; i <= 100; i++){
      FlutterSliderFixedValue tick;
      if (i < 10){
        tick = FlutterSliderFixedValue(percent: i, value: '\$100K');
      }
      else if (i < 20) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$200K');
      }
      else if (i < 30) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$500K');
      }
      else if (i < 40) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$1M');
      }
      else if (i < 50) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$10M');
      }
      else if (i < 60) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$100M');
      }
      else if (i < 70) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$200M');
      }
      else if (i < 80) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$500M');
      }
      else if (i < 90) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$1B');
      }
      else if (i < 98) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$10B');
      }
      else if (i >= 98) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$100B');
      }
      res.add(tick);
    }

    return res;
  }

  List<FlutterSliderFixedValue> getAnnualMaintenanceRange(){

    List<FlutterSliderFixedValue> res = [];
    for(int i = 0; i <= 100; i++){
      FlutterSliderFixedValue tick;
      if (i < 10){
        tick = FlutterSliderFixedValue(percent: i, value: '\$10K');
      }
      else if (i < 20) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$20K');
      }
      else if (i < 30) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$50K');
      }
      else if (i < 40) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$100K');
      }
      else if (i < 50) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$500K');
      }
      else if (i < 60) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$1M');
      }
      else if (i < 70) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$5M');
      }
      else if (i < 80) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$10M');
      }
      else if (i < 90) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$20M');
      }
      else if (i < 98) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$50M');
      }
      else if (i >= 98) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$100M');
      }
      res.add(tick);
    }

    return res;
  }

  List<FlutterSliderFixedValue> getOperationAssetUtilizationRange(){

    List<FlutterSliderFixedValue> res = [];
    for(int i = 0; i <= 100; i++){
      FlutterSliderFixedValue tick;
      if (i < 10){
        tick = FlutterSliderFixedValue(percent: i, value: '\$10K');
      }
      else if (i < 20) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$20K');
      }
      else if (i < 30) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$50K');
      }
      else if (i < 40) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$100K');
      }
      else if (i < 50) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$500K');
      }
      else if (i < 60) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$1M');
      }
      else if (i < 70) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$5M');
      }
      else if (i < 80) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$10M');
      }
      else if (i < 90) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$20M');
      }
      else if (i < 98) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$50M');
      }
      else if (i >= 98) {
        tick = FlutterSliderFixedValue(percent: i, value: '\$100M');
      }
      res.add(tick);
    }

    return res;
  }

  List<FlutterSliderFixedValue> getEmergencyWorkRange(){

    List<FlutterSliderFixedValue> res = [];
    for(int i = 0; i <= 100; i++){
      FlutterSliderFixedValue tick;
      if (i <= 3){
        tick = FlutterSliderFixedValue(percent: i, value: '0%');
      }
      else if (i < 20) {
        tick = FlutterSliderFixedValue(percent: i, value: '10%');
      }
      else if (i < 30) {
        tick = FlutterSliderFixedValue(percent: i, value: '20%');
      }
      else if (i < 40) {
        tick = FlutterSliderFixedValue(percent: i, value: '30%');
      }
      else if (i < 50) {
        tick = FlutterSliderFixedValue(percent: i, value: '40%');
      }
      else if (i < 60) {
        tick = FlutterSliderFixedValue(percent: i, value: '50%');
      }
      else if (i < 70) {
        tick = FlutterSliderFixedValue(percent: i, value: '60%');
      }
      else if (i < 80) {
        tick = FlutterSliderFixedValue(percent: i, value: '70%');
      }
      else if (i < 90) {
        tick = FlutterSliderFixedValue(percent: i, value: '80%');
      }
      else if (i < 98) {
        tick = FlutterSliderFixedValue(percent: i, value: '90%');
      }
      else if (i >= 98) {
        tick = FlutterSliderFixedValue(percent: i, value: '100%');
      }
      res.add(tick);
    }

    return res;
  }


}

