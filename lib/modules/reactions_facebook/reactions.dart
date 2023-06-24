import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:task_app/modules/reactions_facebook/emoji_model.dart';

class ReactionScreen extends StatefulWidget {
  const ReactionScreen({super.key});

  @override
  State<ReactionScreen> createState() => _ReactionScreenState();
}

class _ReactionScreenState extends State<ReactionScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  int currentIdx=0;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int curretHoveredEmoji = 50;
  double currentHoverPosition = 0;

  final List<Emoji> emojis = [
    Emoji(path: 'assets/images/like.json', scale: 1.7),
    Emoji(path: 'assets/images/love.json', scale: 1.5),
    Emoji(path: 'assets/images/care.json', scale: 0.7),
    Emoji(path: 'assets/images/laughing.json', scale: 0.8),
    Emoji(path: 'assets/images/wow.json', scale: 0.85),
    Emoji(path: 'assets/images/crying.json', scale: 0.85),
    //Emoji(path: 'assets/images/angry.json', scale: 0.85),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Reactions',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(
              horizontal: 2,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int i = 0; i < emojis.length; i++)
                  InkWell(
                    onTapCancel: (){
                      currentIdx=i;
                      print("onTapCancel $i");
                    },
                    onFocusChange: (idx){
                      currentIdx=i;
                      print("onFocusChange $idx");
                    },
                    onTap: (){
                      currentIdx=i;
                      print("onTap $i");
                    },
                    onSecondaryTapCancel: (){
                      currentIdx=i;
                      print("onSecondaryTapCancel $i");
                    },
                    onSecondaryTap: (){
                      currentIdx=i;
                      print("onSecondaryTap $i");
                    },
                    onTapUp: (TapUpDetails onTap){
                     // onTap.globalPosition
                      currentIdx=i;
                      print("onTapUp $i");
                    },
                    onLongPress: (){
                      currentIdx=i;
                      print("onLongPress $i");
                    },
                    onTapDown: (tap){
                      currentIdx=i;
                      print("onTapDown $i");
                    },
                    onSecondaryTapDown: (tap){
                      currentIdx=i;
                      print("onSecondaryTapDown $i");
                    },
                    onSecondaryTapUp: (tap){
                      currentIdx=i;
                      print("onSecondaryTapUp $i");
                    },
                    onDoubleTap: (){
                      currentIdx=i;
                      print("onDoubleTap $i");
                    },
                    onHighlightChanged: (x){
                      currentIdx=i;
                      print("onHighlightChanged $i");
                    },
                    child: Transform.scale(
                      scale: emojis[i].scale +
                          (curretHoveredEmoji == i ? 0.7 : 0),
                      child: Lottie.asset(
                        emojis[i].path,
                        controller:
                            curretHoveredEmoji == i ? _controller : null,
                        height: 45,
                        animate: false,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onLongPress: () => _controller.repeat(),
            onLongPressEnd: (_) {
              setState(() {
                curretHoveredEmoji = 50;
              });
              _controller.stop();
              _controller.reset();
              print("ffffffffffffffffffff${curretHoveredEmoji.toString()}");
            },
            onLongPressDown: (details) {
              setState(() {
                curretHoveredEmoji = 2;
              });
              currentHoverPosition = details.localPosition.dx;
              print("ffffffffffffffffffff${currentHoverPosition.toString()}");
              },
            onLongPressMoveUpdate: (details) {
              final dragDifference =
                  details.localPosition.dx - currentHoverPosition;
              if (dragDifference.abs() > 40) {
                dragDifference > 0 ? nextEmoji() : previousEmoji();
                currentHoverPosition = details.localPosition.dx;
              }
              print("ffffffffffffffffffff${currentHoverPosition.toString()}");
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Text(
                "Like",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text("LONG PRESS THE LIKE BUTTON")
        ],
      ),
    );
  }

  void nextEmoji() {
    if (curretHoveredEmoji < emojis.length - 1) {
      setState(() {
        curretHoveredEmoji++;
      });
    }
  }

  void previousEmoji() {
    if (curretHoveredEmoji > 0) {
      setState(() {
        curretHoveredEmoji--;
      });
    }
  }
}
