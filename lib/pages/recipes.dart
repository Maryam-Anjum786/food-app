import 'package:flutter/material.dart';
import 'package:food_app/controller.dart';
import 'package:food_app/pages/detail.dart';
import 'package:get/get.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class Recipes extends StatelessWidget {
  Controller controller = Get.put(Controller());
  Recipes({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      bottomNavigationBar: Obx(
        () => SlidingClippedNavBar(
          barItems: [
            BarItem(title: 'Home', icon: Icons.home),
            BarItem(title: 'Search', icon: Icons.search),
            BarItem(title: 'Favourites', icon: Icons.favorite_outline),
            BarItem(title: 'Email', icon: Icons.email),
          ],
          selectedIndex: controller.selectedIndex.value,
          onButtonPressed: controller.onItemTapped,
          activeColor: const Color(0xffFAC752),
          inactiveColor: Colors.black.withOpacity(0.8),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
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
      backgroundColor: Colors.white.withOpacity(0.6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: width * 0.05,
                right: width * 0.05,
                top: height * 0.05,
                bottom: height * 0.015),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hi Zesan',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height * 0.023,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1),
                ),
                const CircleAvatar(
                  radius: 29,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=400'),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Text(
              'What do you want\nfor dinner',
              style: TextStyle(
                color: Colors.black,
                fontSize: height * 0.024,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.7,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.045,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.03),
            child: SizedBox(
              width: width,
              height: height * 0.055,
              child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Obx(() => Padding(
                          padding: EdgeInsets.only(
                              left: width * 0.025, right: width * 0.025),
                          child: GestureDetector(
                            onTap: () {
                              controller.selectedContIndex.value = index;
                            },
                            child: Container(
                              width: width * 0.22,
                              height: height,
                              decoration: BoxDecoration(
                                  color: controller.selectedContIndex.value ==
                                          index
                                      ? const Color(0xffF5BF42)
                                      : Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(25)),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x264B4B4B),
                                      blurRadius: 15.53,
                                      offset: Offset(0, 1.94),
                                      spreadRadius: 0,
                                    )
                                  ]),
                              child: const Center(
                                child: Image(
                                  image: AssetImage('assets/images/burger.png'),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ),
                        ));
                  }),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: width * 0.05,
              top: height * 0.04,
            ),
            child: Text(
              'Recommended',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: SizedBox(
              height: height * 0.515,
              width: width,
              child: GestureDetector(
                onTap: () {
                  Get.to(const Detail());
                },
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 40,
                            childAspectRatio: 0.75),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          height: height * 0.3,
                          width: width,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: height * 0.24,
                                  decoration: const BoxDecoration(
                                      color: Color(0xffFFFFFF),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x264B4B4B),
                                          blurRadius: 15.53,
                                          offset: Offset(0, 1.94),
                                          spreadRadius: 0,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(17))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: height * 0.082,
                                      ),
                                      Text(
                                        'Korean Bibimbap',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: height * 0.016,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1),
                                      ),
                                      Text(
                                        'Korean mixed rice',
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.7),
                                            fontSize: height * 0.012,
                                            height: 2,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: width * 0.04,
                                          right: width * 0.04,
                                          top: height * 0.028,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "\$24",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: height * 0.017,
                                              ),
                                            ),
                                            Icon(
                                              Icons.favorite_outline,
                                              color: Colors.black,
                                              size: height * 0.027,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                child: Container(
                                  width: width * 0.3,
                                  height: height * 0.13,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/korean.png'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ],
                          ));
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
