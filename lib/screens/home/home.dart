import 'package:flutter/material.dart';
import 'package:jivonjor/utils/app_images.dart';
import 'package:jivonjor/utils/appconstants.dart';
import 'package:jivonjor/responsive.dart';
import 'package:jivonjor/screens/login/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: const Scaffold(
        body: LoginScreen(),
      ),
      tablet: const Scaffold(
        body: LoginScreen(),
      ),
      desktop: Scaffold(
        body: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.indiaFlag,
              ),
              const SizedBox(width: 100.0,),
              const SizedBox(width: 500,child: Card(elevation: 10.0,child: LoginScreen(),),),
            ],
          ),
        ),
      ),
    );
  }
}
