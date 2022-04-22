import 'package:flutter/material.dart';
import 'package:onboarding/core/constants/colors_const.dart';
import 'package:onboarding/core/constants/size_const.dart';

class MyContainerForHomePage{
  static Container container(BuildContext context,String number, String text, Color textColor){
    return Container(
      margin:const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width * 0.43,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius:BorderRadius.all(Radius.circular(10))
      ),
      child:
      Padding(
        padding: EdgeInsets.only(left: 20,top: 18),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(number,style: TextStyle(color: textColor, fontSize: 20,fontWeight: FontWeight.bold),),
          Text(text,style: const TextStyle(fontSize: MyTextSizeConst.ktextSize, color: ColorsConst.ktextColor))
        ],),
      )
      
    );
  }
}