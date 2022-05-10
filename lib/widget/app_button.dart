import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  const AppButton({Key? key}) : super(key: key);

  @override
  _AppButtonState createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  Color _color = Colors.blue.shade100;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 40,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.blue.shade100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(left: 4,top: 4,bottom: 4),
            padding: EdgeInsets.only(top:3,left: 3 ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: _color,
            ),
            child: GestureDetector(
              onTap: (){
                setState((){
                  _color = Colors.blue;
                }
                );
              },
              child: Text("Yes",
                style: TextStyle(fontSize: 20,color: Colors.white),
              ),

            ),
          ),
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(left: 4,top: 4,bottom: 4),
            padding: EdgeInsets.only(top:3,left: 3 ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: _color,
            ),
            child: GestureDetector(
              onTap: (){
                setState((){
                  _color = Colors.blue;
                }
                );
              },
              child: Text("No",
                style: TextStyle(fontSize: 20,color: Colors.white),
              ),

            ),
          ),

        ],
      ),
    );
  }
}
