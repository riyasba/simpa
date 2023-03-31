//import 'package:dropdownfield/dropdownfield.dart';
import 'package:dropdownfield2/dropdownfield2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:simpa/view/constands/constands.dart';
import 'package:simpa/view/register_splash.dart';
import 'package:simpa/widgets/textfield.dart';

class registerpage extends StatelessWidget {
  const registerpage({super.key});

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
          ),
          ListView(children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 37, right: 37, top: 40, bottom: 40),
              child: Container(
                height: 1570,
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
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/Asset 11 1.jpg',
                    ),
                  ),
                  ksizedbox10,
                  Text(
                    'Welcome to SIPMAA',
                    style: ktextstyle22,
                  ),
                  Text(
                    'HR community',
                    style: ktextstyle,
                  ),
                  ksizedbox10,
                  textformfield(text: 'First Name', textt: 'First Name'),
                  textformfield(text: 'Last Name', textt: 'Last Name'),
                  textformfield(
                      text: 'Enter Email ID', textt: 'Professinal Email ID'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('  Professional Qualification'),
                        ksizedbox10,
                        Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.grey[100],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '     Select Qualification',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 16),
                              ),
                              Icon(Icons.arrow_drop_down,
                                  size: 30.0, color: Colors.black),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // textformfield(
                  //     text: 'Select Qualification',
                  //     textt: 'Proffetional Qualification'),
                  textformfield(
                      text: 'Enter Official Email ID',
                      textt: 'Official Email ID'),
                  textformfield(
                      text: 'Current Company', textt: 'Current Company'),
                  textformfield(
                      text: 'Type your Current position',
                      textt: 'Current Position'),
                  textformfield(text: 'Address', textt: 'Address-1'),
                  textformfield(text: 'Address', textt: 'Address-2'),
                  textformfield(text: 'Type City', textt: 'City'),
                  textformfield(text: 'Type State', textt: 'State'),
                  textformfield(text: 'Type your Country', textt: 'Country'),
                  textformfield(text: 'Postal Code', textt: 'Postal Code'),
                  ksizedbox10,
                  ksizedbox10,
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
                        onPressed: () {
                          Get.off(registersplash());
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                  ),
                  ksizedbox10,
                ]),
              ),
            )
          ])
        ],
      ),
    );
  }
}
