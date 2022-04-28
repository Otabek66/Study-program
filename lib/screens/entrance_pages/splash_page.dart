
import 'package:flutter/material.dart';
import 'package:onboarding/core/constants/size_const.dart';
import 'package:onboarding/widgets/my_bold_text.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
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
        SizedBox(
          width: double.infinity,
          height: size.height,
          child: Column(
            children: [
            sizedbox(size, 0.049),
          SizedBox(
          height: size.height * 0.05,
          child: Image.asset('assets/splash/logo.png'),
        ),
        sizedbox(size, 0.5578),
        MyBoldText.myBoldText('    Hello and\nwelcome there!',
            color: Colors.white, textSize: 42),
        sizedbox(size, 0.0197),
        const Text(
          " Get an overview of how you are performing\nand motivate yourself to achieve even moew.",
          style: TextStyle(
              fontSize: MyTextSizeConst.ktextSize, color: Colors.white),
        ),
            sizedbox(size, 0.0615),
            ElevatedButton(
              child: Text("Let's Start"),
            onPressed:(){Navigator.pushNamed(context, 'splashtwo');} ,)
        ],))
      ]),
    );
  }

  SizedBox sizedbox(Size size, double height) => SizedBox(height: size.height * height,);
}
