import 'package:flutter/material.dart';

class Camera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        iconTheme: IconThemeData(color: Colors.white)
      ),
          child: Stack(
        alignment: Alignment(0, 1),
        children: [
          Container(color: Colors.blueGrey,),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.keyboard_arrow_up),
                Container(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List<Widget>.generate(10, (index) => Container(
                      color: Colors.red,
                      width: 70.0,
                      margin: EdgeInsets.all(4.0),
                      )
                    ),
                  ),
                ),
                SizedBox(height: 5.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(icon: Icon(Icons.flash_off, ), onPressed: (){}),
                    Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: ShapeDecoration(
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          borderSide: BorderSide(width: 3.0, color: Colors.white)
                        )
                      ),
                    ),
                    IconButton(icon: Icon(Icons.camera_alt,), onPressed: (){})
                  ],
                ),
                SizedBox(height: 8.0),
                Container(
                  padding: EdgeInsets.only(bottom: 3.0),
                  child: Text('Tahan untuk video, ketuk untuk foto', style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}