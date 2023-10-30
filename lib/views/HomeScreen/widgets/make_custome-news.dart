import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../consts/app_colors.dart';
import '../../basewidgets/base_text_widget.dart';


class MakeCustomeNews extends StatelessWidget {
  MakeCustomeNews({Key? key , required this.data}) : super(key: key);
  String data;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 25.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
         border: Border.all(color: AppColors.blue)
        ),
        child: BaseTextWidget(data));
  }
}
