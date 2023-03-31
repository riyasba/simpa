import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:simpa/view/constands/constands.dart';
import 'package:simpa/view/home_page.dart';
import 'package:simpa/view/register_page.dart';
import 'package:simpa/widgets/carousal.dart';
import 'package:simpa/widgets/textfield.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            child: Image.asset(
              'assets/images/Ellipse 1 (1).jpg',
              fit: BoxFit.contain,
            ),
          ), Padding(
            padding: const EdgeInsets.only(top: 50),
            child: carousal(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 37, right: 37),
            child: Padding(
              padding: const EdgeInsets.only(top: 240
              ),
              child: Container(
                height: 470,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3.5,
                        color: Color.fromARGB(255, 187, 185, 185),
                      ),
                    ]),
                child: Column(
                  children: [
                    ksizedbox10,
                    Text(
                      'Login',
                      style: ktextstyle,
                    ),
                    ksizedbox10,
                    Text(
                      'Welcome back to SIPMAA ',
                      style: ktextstyle22,
                    ),
                    Text(
                      'HR community ',
                      style: ktextstyle22,
                    ),
                    ksizedbox10,
                    textformfield(
                      text: 'Enter Email Id',
                      textt: 'Email ID',
                    ),
                    //  ksizedbox10,
                    textformfield(
                      text: 'Enter Password',
                      textt: "Password",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    ksizedbox10, ksizedbox10,
                    SizedBox(
                      height: 45,
                      width: 280,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Color(
                              0xFF3C73B1,
                            )),
                          ),
                          onPressed: () { //Get.off(homepage());
                          },
                          child: Text(
                            'Login ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    ksizedbox10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: ktextstyle15gry,
                        ),
                        TextButton(
                            onPressed: () {Get.to(registerpage());},
                            child: Text(
                              'Register Now',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF3C73B1)),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
       ],
      ),
    );
  }
}
