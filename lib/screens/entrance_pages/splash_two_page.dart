import 'package:flutter/material.dart';
import 'package:onboarding/widgets/my_bold_text.dart';

class SplashTwoPage extends StatelessWidget {
  const SplashTwoPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size  size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(children: [
          Stack(
            children: [
              SizedBox(
                height: size.height * 0.54187,
                width: double.infinity,
                child: Image.asset('assets/splash/image2.png', fit: BoxFit.cover,),
              ),
              Image.asset('assets/splash/frontimage2.png',fit: BoxFit.cover,),
              Positioned(
                top: size.height* 0.4482,
                left: size.width*0.352,
                child: SizedBox(
                  height: size.height * 0.04433,
                  width: size.width * 0.29568,
                  child: Image.asset('assets/splash/logo.png')),
              )
            ],
          ),
         MyBoldText.myBoldText('Find your favorite class', color: Colors.black,textSize: 24.0),
         
        ]),
      ),
    );
  }
}