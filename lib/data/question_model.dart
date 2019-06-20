class Question{

  String _label;
  bool _value;

  Question(this._label, this._value);

  String getLabel(){
    return _label;
  }

  bool getValue(){
    return _value;
  }
  void setValue(bool value){
    _value = value;
  }
}

class QuestionCenter {

  List<Question> questionBank = [
    Question('Maintenance & Reliability\nPractices Assessment', false ),
    Question('MI Program Management', false ),
    Question('Program Improvement\nDetailed Creation', false ),
    Question('Create RBI Assessment &\nInspection Plan', false ),
    Question('Create Corrosion Modeling Diagrams (CMD) & Damage Mechanisms With Rates/Susceptibilities', false ),
    Question('Implement Integrity Operating Windows', false ),
    Question('Perform RBI On Tanks', false ),
    Question('Keep Program Evergreened/\nContinuously Improved', false ),

    Question('Maintenance and Relaibility Benchmarking Assessment', false ),
    Question('Reliability Evolution Asessment', false ),
    Question('Setup/Optimize Asset APM Key Performance Indicators', false ),
    Question('Develop/Facilitate Strategic APM Vision/Guidelines and Roadmap', false ),
    Question('Asset Heirarchy Development/Cleansing', false ),
    Question('Electronification of APM Documentation', false ),
    Question('Selection and Implementation/Cleansing/Maximization of APM Software', false ),
    Question('APM  Procedure Development/Update (Integrity, Inspection, Maintenance, Reliability)', false ),
    Question('APM Organizational Alignment', false ),

    Question('Equipment Criticality Analysis (FMECA)', false ),
    Question('Reliability Availability Maintainability (RAM) Simulation Modeling', false ),
    Question('Risk-Based Inspection Analysis and Implementation', false ),
    Question('Fitness for Service or Vessel Re-Rates', false ),
    Question('Run/Maintain Operations and Maintenace (Water/Wastewater only)', false ),
    Question('Run/Maintain Inspection Standard Services (Visual, Ultrasonics, etc.)', false ),
    Question('Development of Strategic Asset Strategies and Job Plans', false ),
    Question('Machine Learning Implementation and Real Time Monitoring (ROW\'s/IOW\'s)', false ),

  ];


}