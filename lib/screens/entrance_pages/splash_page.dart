import 'package:flutter/material.dart';
import 'package:onboarding/core/constants/size_const.dart';
import 'package:onboarding/widgets/my_bold_text.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Image.asset(
              'assets/splash/image.png',
              fit: BoxFit.cover,
            )),
        SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Image.asset(
              'assets/splash/frontimage.png',
              fit: BoxFit.cover,
            )),
        Positioned(
          left: 153,
          top: 45,
          child: SizedBox(
            height: size.height * 0.05,
            child: Image.asset('assets/splash/logo.png'),
          ),
        ),
        Positioned(
          left: 62,
          bottom: 211,
          child: MyBoldText.myBoldText('    Hello and\nwelcome there!',color: Colors.white,textSize: 42),),
          Positioned(
            left: 68,
            bottom: 130,
            child: Text(" Get an overview of how you are performing\nand motivate yourself to achieve even moew.",style: TextStyle(fontSize: MyTextSizeConst.ktextSize, color: Colors.white),))
      ]),
    );
  }
}
