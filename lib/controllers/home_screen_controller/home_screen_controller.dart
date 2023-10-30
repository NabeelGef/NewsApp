import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newstask/views/HomeScreen/widgets/make_custome-news.dart';

import '../../consts/texts.dart';

class HomeScreenController extends GetxController{
  TextEditingController textform1 = TextEditingController();
  TextEditingController textform2 = TextEditingController();

  List<String> list1= [
    "Car","Cat","Cup","Coffee"
  ];
  List<String> list2=[
    "Ball","Bee","Bind","Bro",
  ];


  Widget GenerateNews(index){
    if(index<list1.length){
      return MakeCustomeNews(data: list1[index]);
    }
    else {
      index = index - list1.length;
      return MakeCustomeNews(data: list2[index]);
    }
  }

  String? validation1(){
    if(textform1.text.isEmpty){
      return isRequired;
    }
    return null;
  }
  String? validation2(){
    if(textform1.text.isEmpty){
      return isRequired;
    }
    return null;
  }
}