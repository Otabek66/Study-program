import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onboarding/core/constants/colors_const.dart';
import 'package:onboarding/core/constants/size_const.dart';
import 'package:onboarding/provider/user_name.dart';
import 'package:onboarding/widgets/home_page_container.dart';
import 'package:onboarding/widgets/my_bold_text.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List submenu = [
      Image.asset('assets/submenu/course.png'),
      Image.asset('assets/submenu/subjects.png'),
      Image.asset('assets/submenu/class.png'),
      Image.asset('assets/submenu/presence.png')
    ];
    List submenuName = ['Course', 'Subjects', 'Class', 'Presence'];
    return Scaffold(
      backgroundColor: Color(0xFFF3F5F8),
      body: Column(
        children: [
          Expanded(
              flex: 362,
              child: Container(
                margin: EdgeInsets.only(top: size.height * 0.04),
                color: Color(0xFFF3F5F8),
                child: Column(children: [
                  SizedBox(
                    height: size.height * 0.05,
                    child: Row(
                      children: [
                        Text('Hi, ${context.watch<ForUserName>().username}'),
                        SizedBox(width: size.width  * 0.018,),
                        SvgPicture.asset(
                          'assets/icons/notification.svg',
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Text('Here is you activity today,'),
                  Padding(
                    padding: EdgeInsets.all(size.height * 0.012),
                    child: Column(children: [
                      Row(
                        children: [
                          MyContainerForHomePage.container(
                              context, '89%', 'Presence', Color(0xFFB45309)),
                          MyContainerForHomePage.container(context, '100%',
                              'Completeness', Color(0xFF4178D4))
                        ],
                      ),
                      Row(
                        children: [
                          MyContainerForHomePage.container(
                              context, '18', 'Assigments', Color(0xFF52B6DF)),
                          MyContainerForHomePage.container(context, '12',
                              'Total Subjects', Color(0xFFF59E0B))
                        ],
                      )
                    ]),
                  ),
                ]),
              )),
          Expanded(
            flex: 350,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, ind) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Container(
                                  margin: const EdgeInsets.only(left: 40),
                                  height: 48,
                                  width: 48,
                                  child: submenu[ind]),
                                  onTap: (){},
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                submenuName[ind],
                                style: const TextStyle(
                                    fontSize: MyTextSizeConst.ktextSize,
                                    color: ColorsConst.ktextColor),
                              ),
                            )
                          ],
                        );
                      },
                      itemCount: 4,
                    ),
                  ),
                  SizedBox(
                    height: 210,
                    child: Image.asset('assets/submenu/schedule.png'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
