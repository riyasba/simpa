import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simpa/view/constands/constands.dart';

class carousal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CarouselSlider(
          items: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  height: 10,
                  color: Colors.white,
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/group-users 1.jpg'),
                      Text(
                        'SIPMAA \n HR Community',
                        style: ktextstyle,
                      )
                    ],
                  )),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  height: 10,
                  color: Colors.white,
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/group-users 1.jpg'),
                      Text(
                        'SIPMAA \n HR Community',
                        style: ktextstyle,
                      )
                    ],
                  )),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  height: 10,
                  color: Colors.white,
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/group-users 1.jpg'),
                      Text(
                        'SIPMAA \n HR Community',
                        style: ktextstyle,
                      )
                    ],
                  )),
            ),
          ],

          //Slider Container properties
          options: CarouselOptions(
            height: 120.0,
          enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
         //   autoPlayCurve: Curves.easeInCubic,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 3200),
            viewportFraction: 0.8,
          ),
        ),
      ],
    );
  }
}
