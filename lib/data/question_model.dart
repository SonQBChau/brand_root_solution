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
    Question('Maintenance & Reliability Practices Assessment', false ),
    Question('MI Program Management', false ),
    Question('Program Improvement Detailed Creation', false ),
    Question('Create RBI Assessment & Inspection Plan', false ),
    Question('Create Corrosion Modeling Diagrams (CMD) & Damage Mechanisms With Rates/Susceptibilities', false ),
    Question('Implement Integrity Operating Windows', false ),
    Question('Perform RBI On Tanks', false ),
    Question('Keep Program Evergreened/ Continuouslu Improved', false ),
  ];

//  String getLabel(int index){
//    return questionBank[index]._label;
//  }
//
//  bool getValue (int index){
//    return questionBank[index]._value;
//  }
//
//  void setValue (int index, bool value){
//    questionBank[index]._value = value;
//  }
}