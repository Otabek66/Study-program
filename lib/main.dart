import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/provider/main_page_provider.dart';
import 'package:onboarding/provider/route_provider.dart';
import 'package:onboarding/provider/sign_up_provider.dart';
import 'package:onboarding/routes/my_routes.dart';
import 'package:onboarding/screens/main_page.dart';
import 'package:onboarding/screens/entrance_pages/sign_up_page.dart';
import 'package:provider/provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => MainPageProvider(),
    ),
    ChangeNotifierProvider(create: (_)=> SignUpProvider()),
     ChangeNotifierProvider(create: (_)=> RouteProvider())
  ],
  child: MyApp(),));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  MyRoutes routes = MyRoutes();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash',
      onGenerateRoute: routes.onGenerate,
    );
  }
}
