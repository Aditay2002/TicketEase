import 'package:flutter/cupertino.dart';
import 'package:get/get.dart' ;
class AppLayout{
  static getSize(BuildContext context){
     return MediaQuery.of(context).size;
  }
  static getScreenHeight(){
    return  Get.height;
  }
  static getScreenwidth(){
    return  Get.width;
  }
  static getHeight(double pixels){
    double x=getScreenHeight()/pixels;
    return getScreenHeight()/x;
  }
  static getWidth(double pixels){
    double x=getScreenwidth()/pixels;
    return getScreenwidth()/x;
  }

}