import 'dart:io';


class CalculateLogic{

  late int num1;
  late int num2;
  late String operator;
  double result=0.0;

  void caluclate(int num1,String operator, int num2){
    if(operator=="+"){
      result=(num1+num2).toDouble();
    }
    else if (operator == "-"){
      result=(num1-num2).toDouble() ;
    }
    else if(operator=="*"){
      result=(num1*num2).toDouble();
    }
    else if(operator=="/"){
      result=(num1/num2).toDouble();
    }
  }
}