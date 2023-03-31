import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:simpa/view/home_page.dart';

import 'loginpage.dart';

class registersplash extends StatefulWidget {
  const registersplash({super.key});

  @override
  State<registersplash> createState() => _registersplashState();
}

class _registersplashState extends State<registersplash> {
 @override
  void initState() {
    super.initState();
    toHomePage();
  }

  toHomePage() async {
    await Future.delayed(const Duration(seconds: 2));

    Get.offAll(() =>homepage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/check (1) 1.png',height: 250,width: 250,fit: BoxFit.cover,),
          SizedBox(
            height: 30,
          ),
          Text(
            'The Registratin Request has been Sent',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          Text(
            'Sent to modern Community',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          )
        ],
      ),
    ));
  }
}
