
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/views/home_view.dart';
import 'package:page_transition/page_transition.dart';

class Splash_Screen extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(

      backgroundColor: Color(0xffE2E2FA),elevation: 0
      ,systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Color(0xffE2E2FA)),)
      ,body:
      AnimatedSplashScreen(
        backgroundColor: Color(0xffE2E2FA),
          animationDuration: Duration(seconds: 7),
          pageTransitionType: PageTransitionType.leftToRightWithFade,
          splashTransition: SplashTransition.scaleTransition,splashIconSize: 200
          ,splash: Column(children: [
            Text("welcome",style: TextStyle(fontSize: 50,

    fontWeight: FontWeight.bold,fontFamily: "Trash Talk",color: Colors.purple),
    ), ClipRRect(
          borderRadius: BorderRadius.circular(50)
          ,child:Image.asset("assets/images.jpeg",width: 200,) ,),

    ],), nextScreen: Home_view()
      ),
    );
  }
}

