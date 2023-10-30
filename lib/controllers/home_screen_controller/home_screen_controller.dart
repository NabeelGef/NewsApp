import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newstask/data/model/news_model.dart';
import 'package:newstask/views/HomeScreen/widgets/make_custome-news.dart';

import '../../consts/texts.dart';

class HomeScreenController extends GetxController{
  TextEditingController textform1 = TextEditingController();
  TextEditingController textform2 = TextEditingController();

  RxList<Article>? list1= <Article>[].obs;
  RxList<Article>? list2=<Article>[].obs;


  Widget GenerateNews(index){
    if(index<list1!.length){
      return MakeCustomeNews(data: list1![index]);
    }
    else {
      index = index - list1!.length;
      return MakeCustomeNews(data: list2![index]);
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