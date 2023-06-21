import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_app/custom_clock/clock_painter.dart';
import 'package:intl/intl.dart';

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  late Timer _timer;
  int selectedIndex = 0;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(minutes: 1), (timer) {
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#2060C0"),
      appBar: AppBar(
        backgroundColor: HexColor("#2060C0"),
        elevation: 0.0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: const Text(
          "Today",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: Colors.white),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.settings, color: Colors.white),
          )
        ],
      ),
      body: Stack(children: [
        const Padding(
          padding: EdgeInsetsDirectional.only(top: 30, start: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Office N0. 248",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                "3 Patients",
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
            ],
          ),
        ),
        Center(
          child: Transform.rotate(
            angle: -(ClockPainter.oneDegreeInRadian * 90),
            child: CustomPaint(
              willChange: true,
              size: const Size.square(180),
              painter: ClockPainter(),
            ),
          ),
        ),
        Center(
            child: Text(
          "${DateTime.now().hour} : ${DateTime.now().minute}  PM",
          style: const TextStyle(color: Colors.white, fontSize: 18),
        )),
        Container(
          margin: EdgeInsetsDirectional.only(bottom: 15),
          child: PageView(
            onPageChanged: (idx) {
              selectedIndex = idx;
              setState(() {

              });
            },
            children: [
              Align(alignment: Alignment.bottomCenter, child: pageViewItem()),
              Align(alignment: Alignment.bottomCenter, child: pageViewItem()),
              Align(alignment: Alignment.bottomCenter, child: pageViewItem()),
              Align(alignment: Alignment.bottomCenter, child: pageViewItem()),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsetsDirectional.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                selectedIndex == 0
                    ? PageIndicator(30.0, Colors.lightBlue.withOpacity(0.4))
                    : PageIndicator(15.0, Colors.grey),
                selectedIndex == 1
                    ? PageIndicator(30.0, Colors.lightBlue.withOpacity(0.4))
                    : PageIndicator(15.0, Colors.grey),
                selectedIndex == 2
                    ? PageIndicator(30.0, Colors.lightBlue.withOpacity(0.4))
                    : PageIndicator(15.0, Colors.grey),
                selectedIndex == 3
                    ? PageIndicator(30.0, Colors.lightBlue.withOpacity(0.4))
                    : PageIndicator(15.0, Colors.grey),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    _timer.cancel();

    super.dispose();
  }

  Widget pageViewItem() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin:
          const EdgeInsetsDirectional.symmetric(vertical: 10, horizontal: 10),
      padding:
          const EdgeInsetsDirectional.symmetric(vertical: 10, horizontal: 10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              //
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.grey.withOpacity(0.8),
              ),
              const SizedBox(
                width: 2,
              ),
              Text(DateFormat('hh:mm a').format(DateTime.now())),
              const Spacer(),
              Container(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
                color: Colors.green.withOpacity(0.5),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Confirmed",
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            "Teeth Drilling",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "The application may be doing too much work on its main thread",
            maxLines: 3,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey.withOpacity(0.7),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Arthur Clayton",
                style: TextStyle(color: Colors.black, fontSize: 15),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget PageIndicator(double width, Color color) {
    return Container(
      width: width,
      height: 8.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
