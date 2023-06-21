import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:task_app/custom_clock/clock.dart';
import 'package:task_app/custom_clock/clock_painter.dart';
import 'package:task_app/garph/graph.dart';
import 'package:task_app/shared/syles/Icon_broken.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color selectedColor = Colors.blueAccent;

  int x = 0;
  String dropdownvalue = 'Today';

  // List of items in our dropdown menu
  var items = [
    'Today',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.35,
            color: HexColor("#2060C0"),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(30),
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 40,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent.withOpacity(0.4),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20.0))),
                        child: TextFormField(
                          controller: searchController,
                          style: const TextStyle(
                            color: Colors.white70,
                          ),
                          decoration: const InputDecoration(
                            suffixIcon: Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(
                                  IconBroken.Search,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.white,
                                ),
                              ],
                            ),
                            label: Text("   Search"),
                            labelStyle:
                                TextStyle(color: Colors.white70, fontSize: 13),
                          ),
                        ),
                      ),
                      Stack(alignment: Alignment.topRight, children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.grey.withOpacity(0.4),
                              radius: 20,
                            ),
                          ],
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 8,
                          child: Text(
                            "4",
                            style: TextStyle(fontSize: 8),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.only(top: 150, start: 50),
            child: Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Patients",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    Text(
                      "12 total",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                          color: Colors.white.withOpacity(0.7)),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsetsDirectional.only(end: 10),
                  padding: const EdgeInsetsDirectional.all(5),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child:  Row(
                    children: [
                      Text('Today',style: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 12),),
                      Icon(Icons.keyboard_arrow_down,color: Colors.white.withOpacity(0.8),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.only(top: 200),
            child: CarouselSlider(
              items: [
                bannerItem(),
              ],
              options: CarouselOptions(
                height: 90,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.65,
              ),
            ),
          ),
          Center(
            child: Container(
              margin:
              const EdgeInsetsDirectional.only(start: 50, end: 30, top: 40),
              // padding: EdgeInsetsDirectional.only(bottom: 10),
              width: MediaQuery.of(context).size.width * 0.62,
              height: 65,
              decoration:  BoxDecoration(
                  color:  Colors.white.withOpacity(0.3),
                  borderRadius:
                  const BorderRadius.all(Radius.circular(10.0))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(0.6),
                      radius: 13,
                      child:  const Icon(
                        Icons.access_time_filled,
                        color: Colors.grey,
                        size: 18,
                      ),
                    ),
                    const SizedBox(width: 5,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nellie Lawrence",
                          textAlign: TextAlign.center,style: TextStyle(fontSize: 10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:
                          [
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.grey,
                            ),

                            SizedBox(height: 15,),
                            Text(
                              ' 08:00 AM - 8:40 AM',
                              textAlign: TextAlign.center,style: TextStyle(fontSize: 8,color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsetsDirectional.only(bottom: 80,start: 15),
              child: const Row(
                children: [
                  Text(
                    "Time",
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Events",
                    style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsetsDirectional.only(top: 70),
            margin: const EdgeInsetsDirectional.only(top: 220),
            child: const AppointmentBuilder(),
          ),
          _bottomNavigationBar(),
        ],
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: _navigationBar(),
      floatingActionButton: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          shape: BoxShape.circle,
        ),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.blueAccent,
                Colors.blueAccent,
                Colors.blueAccent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp,
            ),
          ),
          child: FloatingActionButton(
            elevation: .0,
            foregroundColor: Colors.white,
            splashColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Clock();
              }));
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _navigationBar() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 800),
      height: 60.0,
      color: Colors.transparent,
      child: BottomAppBar(
        elevation: 0.0,
        notchMargin: 0.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
          child: Column(
            children: [
              _iconsNavigationBar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconsNavigationBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.home,
            color: x == 0 ? selectedColor : Colors.grey,
          ),
          onPressed: () {
            x = 0;
            setState(() {});
          },
        ),
        Padding(
          padding: const EdgeInsets.only(right: 40),
          child: IconButton(
            icon: Icon(
              Icons.chair,
              color: x == 1 ? selectedColor : Colors.grey,
            ),
            onPressed: () {
              x = 1;
              setState(() {});
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: IconButton(
            icon: Icon(
              Icons.chat,
              color: x == 2 ? selectedColor : Colors.grey,
            ),
            onPressed: () {
              x = 2;
              setState(() {});
            },
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.person,
            color: x == 3 ? selectedColor : Colors.grey,
          ),
          onPressed: () {
            x = 3;
            setState(() {});
          },
        ),
      ],
    );
  }

  Widget bannerItem() {
    return Card(
      shape: const RoundedRectangleBorder(),
      color: HexColor("#2060C0"),
      elevation: 3,
      shadowColor: HexColor("#2090C0"),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 8, top: 5, end: 5),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Office No.248 /",
                  style: TextStyle(
                      fontSize: 13, color: Colors.white.withOpacity(0.7)),
                ),
                Text(
                  " 3 patients",
                  style: TextStyle(
                      fontSize: 10, color: Colors.white.withOpacity(0.6)),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.white70,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  " 8:30 AM - 02:00 PM ",
                  style: TextStyle(
                      fontSize: 10, color: Colors.white.withOpacity(0.6)),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.white.withOpacity(0.4),
                ),
                const SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.white.withOpacity(0.4),
                ),
                const SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.white.withOpacity(0.4),
                ),
                const Spacer(),
                 CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.blue.shade400,
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
