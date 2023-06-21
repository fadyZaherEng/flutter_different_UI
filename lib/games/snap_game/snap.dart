import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:task_app/games/snap_game/game_over.dart';
class SnapGameScreen extends StatefulWidget {

  SnapGameScreen({super.key});

  @override
  State<SnapGameScreen> createState() => _SnapGameScreenState();
}

class _SnapGameScreenState extends State<SnapGameScreen> {
  var gameHasStarted = false;
  int numOfSquare = 540;
  int numOfRow = 20;
  List<int> snakePosition = [45, 65, 85, 105, 125];
  int foodPosition = Random().nextInt(539);
  var direction='down';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        leading:Center(
          child: GestureDetector(
            onTap: () {
              if (gameHasStarted == false) {
                startGame();
              }
            },
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color:Colors.deepPurple,
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Text(
                "Start",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        title:  const Text(
          "@ c r e a t e d b y f e d o",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onVerticalDragUpdate: (details){
          if(direction!='up'&&details.delta.dy>0){
            direction='down';
          }
          else if(direction!='down'&&details.delta.dy<0){
            direction='up';
          }
        },
        onHorizontalDragUpdate: (details){
          if(direction!='left'&&details.delta.dx>0){
            direction='right';
          }else if(direction!='right'&&details.delta.dx<0){
            direction='left';
          }
        },
        child: GridView.builder(
          itemCount: numOfSquare,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: numOfRow,
          ),
          itemBuilder: (context, idx) {
            if (snakePosition.contains(idx)) {
              return DrawGame(Colors.cyan);
            } else if (idx == foodPosition) {
              return DrawGame(Colors.green);
            } else {
              return DrawGame(Colors.grey[900]!);
            }
          },
        ),
      ),
    );
  }

  //draw game
  Widget DrawGame(Color color) {
    return Container(
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
  void startGame() {
    gameHasStarted=true;
    const duration=Duration(milliseconds: 150);
    Timer.periodic(duration, (timer) {
      updateSnake();
      if(gameOver()){
        timer.cancel();
        gameHasStarted=false;
       const ShowGameOverScreen();
      }
    });
  }
  void updateSnake() {
   setState(() {
     switch(direction)
     {
       case 'down':
         if(snakePosition.last>numOfSquare-numOfRow){
           snakePosition.add(snakePosition.last+(numOfRow-numOfSquare));
         }else{
           snakePosition.add(snakePosition.last+numOfRow);
         }
         break;
       case 'up':
         if(snakePosition.last<numOfRow){
           snakePosition.add(snakePosition.last-(numOfRow+numOfSquare));
         }else{
           snakePosition.add(snakePosition.last-numOfRow);
         }
         break;
       case 'left':
         if(snakePosition.last%numOfRow==0){
           snakePosition.add(snakePosition.last-1+numOfRow);
         }else{
           snakePosition.add(snakePosition.last-1);
         }
         break;
       case 'right':
         if((snakePosition.last+1)%numOfRow==0){
           snakePosition.add(snakePosition.last+1-numOfRow);
         }else{
           snakePosition.add(snakePosition.last+1);
         }
         break;
       default:
     }
     if(snakePosition.last==foodPosition){
       generateNewFood();
     }else{
       snakePosition.removeAt(0);
     }
   });
   // if(snakePosition.last==539){
   //   int length=snakePosition.length;
   //   snakePosition.clear();
   //   for(int i=numOfSquare-numOfRow-1;i<length;i++){
   //     snakePosition.add(i);
   //   }
   // }
  }
  bool gameOver() {
    int count=0;
    for(int i=0;i<snakePosition.length;i++){
      count=0;
      for(int j=0;j<snakePosition.length;j++){
        if(snakePosition[i]==snakePosition[j]){
          count++;
        }
        if(count==2) return true;
      }
    }
    return false;
  }
  void generateNewFood() {
     foodPosition = Random().nextInt(539);
  }
}


