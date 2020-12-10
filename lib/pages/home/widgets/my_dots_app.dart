import 'package:flutter/material.dart';


class MyDotsApp extends StatelessWidget {
  final  int currentIndex;
  final double top;
  final bool showMenu;


  const MyDotsApp({Key key, this.currentIndex, this.showMenu, this.top}) : super(key: key);

  Color getColor(int index){
    return index == currentIndex ? Colors.white : Colors.white38; 
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        child: AnimatedOpacity(
            duration: Duration(milliseconds: 200),
            opacity: showMenu ? 0 : 1,
            child: Row(
            children: <Widget>[
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: 7,
              width: 7,
              decoration: BoxDecoration(
                color: getColor(0), shape: BoxShape.circle
              ),
            ),
            SizedBox(width: 8,),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: 7,
              width: 7,
              decoration: BoxDecoration(
                color: getColor(1), shape: BoxShape.circle
              ),
            ),
            SizedBox(width: 8,),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: 7,
              width: 7,
              decoration: BoxDecoration(
                color: getColor(2), shape: BoxShape.circle
              ),
            ),
          ],
        ),
      ),
    );
  }
}