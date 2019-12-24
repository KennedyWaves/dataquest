import 'dart:math';

class Utils{
  static double filter(double value, {double maximum, double minimum}){
    if(max!=null && min != null){
      return [[value,minimum].reduce(max),maximum].reduce(min);
    }

    if(max!=null && min == null){
      return [value, maximum].reduce(min);
    }

    if(max==null && min != null){
      return [value, minimum].reduce(max);
    }
    return value;
  }
}