import 'package:flutter/material.dart';
import 'package:onboarding/core/constants/colors_const.dart';
import 'package:onboarding/core/constants/size_const.dart';
import 'package:onboarding/core/extensions/context_extension.dart';
import 'package:onboarding/widgets/my_bold_text.dart';

class SplashTwoPage extends StatelessWidget {
  const SplashTwoPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size  size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: context.h,
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
          sizedBox(size.height*0.048),
          MyBoldText.myBoldText('Find your favorite class', color: Colors.black,textSize: 24.0),
          SizedBox(
            width: size.width * 0.7293,
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit enim, ac amet ultrices.', style: TextStyle(overflow: TextOverflow.clip, fontSize: MyTextSizeConst.ktextSize,color: ColorsConst.ktextColor),textAlign: TextAlign.center,)),

             Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.3),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.050,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (_,__) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width *
                                      0.010),
                              child: Align(
                                alignment: Alignment.center,
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundColor: __ == 3
                                      ? ColorsConst.kprimaryColor
                                      : Colors.blue.shade100,
                                ),
                              ),
                            );
                          },
                          itemCount: 3,
                        ),
                      ),
                    ),
                  ),

        ]),
      ),
    );
  }
  SizedBox sizedBox(double size){
    return SizedBox(height: size,);
  }
}