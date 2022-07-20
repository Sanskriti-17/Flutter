import 'dart:math';

class bmiCalculator {
  bmiCalculator({required this.height,required this.weight});
  int height=1;
  int weight=1;

  double _bmi=0;

  bmicalculate(){
    _bmi= weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1) ;
  }

  getResult(){
    if(_bmi>25){
      return 'OVERWEIGHT';
    }else if(_bmi<18.5){
      return 'UNDERWEIGHT';
    }else{
      return 'NORMAL';
    }
  }

  getResultString(){
    if(_bmi>=25){
      return 'You have a higher than normal body weight. Try to exercise more';
    }else if(_bmi<=18.5){
      return 'You have a less than normal body weight. You should eat more';
    }else{
      return 'You have a normal body weight good job';
    }
  }
}