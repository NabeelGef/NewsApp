import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import '../../consts/app_colors.dart';
import '../../consts/text_styles.dart';
import '../../consts/texts.dart';
import '../../controllers/home_screen_controller/home_screen_controller.dart';
import '../basewidgets/base_text_form_field.dart';
import '../basewidgets/base_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BaseTextWidget("News App",style: ultraBigBoldTextStyle,color: AppColors.white,),
      ),
      body:  MakeHomeBody(),

    );
  }
}
class MakeHomeBody extends StatelessWidget {
  MakeHomeBody({Key? key}) : super(key: key);
  final HomeScreenController homeScreenController = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BaseTextFormField(
          controller: homeScreenController.textform1,
          style: bigBoldTextStyle,
          validator:(value) => homeScreenController.validation1(),
          decoration: InputDecoration(
            hintText: hint1,
            suffixIcon: const Icon(Icons.search),
            contentPadding: const EdgeInsets.all(15)
          ),
        ),
        SizedBox(height: 25.h,),
        BaseTextFormField(
          controller: homeScreenController.textform2,
          style: bigBoldTextStyle,
          validator:(value) => homeScreenController.validation2(),
          decoration: InputDecoration(
              hintText: hint2,
              suffixIcon: const Icon(Icons.search),
              contentPadding: const EdgeInsets.all(15)
          ),
        ),
        SizedBox(height: 25.h),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(height: 15.h,);
            },
              itemCount: homeScreenController.list1.length+homeScreenController.list2.length,
              itemBuilder: (context, index) {
               return homeScreenController.GenerateNews(index);
          }),
        )

      ],
    );
  }
}

