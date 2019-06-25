import 'package:flutter/material.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool loading = true;

//  @override
//  void initState() {
//    Future.delayed(Duration(seconds: 3)).then((_SplashPageState){
//      setState(() {
//        loading = false;
//      });
//    });
//    super.initState();
//  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen.navigate(
      name: 'asset/intro.flr',
      next: Home(),
      until: () => Future.delayed(Duration(seconds: 5), () {
        setState(() {
          loading = false;
        });
      }),
      isLoading: loading,
      loopAnimation: '1',
      endAnimation: '1',
      startAnimation: '1',
    );
  }
}

