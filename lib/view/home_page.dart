import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:simpa/view/create.dart';

import 'constands/constands.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                    ),
                    Image.asset(
                      'assets/images/Asset 11 1.jpg',
                      height: 120,
                      width: 120,
                      fit: BoxFit.contain,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {Get.to(createpost());},
                            icon: Icon(Icons.add_a_photo_rounded)),
                        Icon(Icons.add_alert_rounded),
                      ],
                    )
                  ],
                ),
                height: 150,
                width: double.infinity,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8, right: 15, left: 15),
                child: Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.search_rounded),
                      SizedBox(
                        width: 25,
                      ),
                      Text('search',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                  height: 49,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 3.0,
                          color: Color.fromARGB(255, 164, 161, 161),
                        ),
                      ]),
                ),
              )
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 15, left: 15, top: 5, bottom: 5),
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Riyas',
                                      style: ktextstyle22,
                                    ),
                                    Text('Chennai')
                                  ],
                                ),
                              ],
                            ),
                            Text('2 hours ago')
                          ],
                        ),ksizedbox10,
                        Text(
                            'Flutter is an open-source UI software development kit\ncreated by Google.It is used to develop cross-platform applications fLinux, macOS, Windows, Google\nFuchsia, web from a single')
                    ,ksizedbox10,ClipRRect(borderRadius: BorderRadius.circular(10),
                      child: Image.network('https://www.nps.org.au/assets/NPS/images/_1080x596_crop_center-center_80_none/Opioids_New_Comp_Digital_1080x600px.jpg',height: 200,width: double.infinity,fit: BoxFit.cover,))  ],
                    ),
                  ),
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 3.5,
                          color: Color.fromARGB(255, 164, 161, 161),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
