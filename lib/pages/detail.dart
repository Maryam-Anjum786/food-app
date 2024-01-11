import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.white.withOpacity(0.6),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: height * 0.02),
        child: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: const Color(0XffFAC752),
          onPressed: () {},
          child: Icon(
            Icons.lock,
            color: Colors.black.withOpacity(0.8),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: width * 0.04,
                right: width * 0.04,
                top: height * 0.05,
                bottom: height * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Container(
                    width: width * 0.15,
                    height: height * 0.06,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: height * 0.03,
                    )),
                  ),
                  onTap: () {
                    Get.back();
                  },
                ),
                Container(
                  width: width * 0.15,
                  height: height * 0.06,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                      child: Icon(
                    Icons.favorite,
                    color: Colors.black,
                    size: height * 0.03,
                  )),
                ),
              ],
            ),
          ),
          Container(
            width: width,
            height: height * 0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/korean.png')),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: width * 0.05,
                top: height * 0.035,
                bottom: height * 0.01,
                right: width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Korean Bibimbap',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height * 0.025,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '\$24',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height * 0.023,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: width * 0.05, bottom: height * 0.025),
            child: const Row(
              children: [
                Icon(
                  Icons.star,
                  color: Color(0xffFAC134),
                ),
                Icon(
                  Icons.star,
                  color: Color(0xffFAC134),
                ),
                Icon(
                  Icons.star,
                  color: Color(0xffFAC134),
                ),
                Icon(
                  Icons.star,
                  color: Color(0xffFAC134),
                ),
                Icon(
                  Icons.star,
                  color: Color(0xffFAC134),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: width * 0.06,
                right: width * 0.06,
                bottom: height * 0.015),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.local_fire_department,
                      color: Color(0xffDC6222),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Text(
                      '341 calories',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    const Icon(
                      Icons.directions_bike_rounded,
                      color: Color(0xffFAC134),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Text(
                      '20-25 min',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Container(
                      width: width * 0.25,
                      height: height * 0.05,
                      decoration: const BoxDecoration(
                        color: Color(0xffFAC134),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 12.0),
                              child: Icon(
                                Icons.minimize_sharp,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '2',
                              style: TextStyle(color: Colors.black),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Text(
              'Details',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: height * 0.02,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the  standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: height * 0.014),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Text(
              'ingredients',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: height * 0.02,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width * 0.15,
                  height: height * 0.055,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage('assets/images/bowl.png'))),
                ),
                Container(
                  width: width * 0.15,
                  height: height * 0.055,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage('assets/images/egg.png'))),
                ),
                Container(
                  width: width * 0.15,
                  height: height * 0.055,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage('assets/images/mushroom.png'))),
                ),
                Container(
                  width: width * 0.15,
                  height: height * 0.055,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage('assets/images/spinach.png'))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
