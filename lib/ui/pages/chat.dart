import 'package:flutter/material.dart';
import 'package:whatssob/ui/constant/constant.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => _buildChat(), 
        separatorBuilder: (context, index) => Divider(indent: 60.0,), 
        itemCount: 20,
          ),
    );
  }
}

      _buildChat() {
        return ListTile(
          leading: CircleAvatar(
            radius: 32.0,
            backgroundColor: Colors.grey,
            child: FlutterLogo(),
          ),
          title: Text(
            'User',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Text('007253826323: Lah kok ada hitam', overflow: TextOverflow.ellipsis,),
          trailing: Container(
            width: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('11/12/20', style: TextStyle(fontSize: 12),),
                SizedBox(height: 5,),
                Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius:
                            BorderRadius.circular(
                                100)),
                    child: Text('14.000',
                        overflow:
                            TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold
                        )
                      )
                    ),
              ],
            ),
          ),
        );
      }


      // SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Container(
      //         child: InkWell(
      //           onTap: () {},
      //           child: Row(
      //             children: [
      //               Padding(
      //                 padding: const EdgeInsets.only(left:8.0, right: 8.0),
      //                 child: CircleAvatar(
      //                   radius: 30,
      //                   child: FlutterLogo(),
      //                 ),
      //               ),
      //               SizedBox(
      //                 width: 5,
      //               ),
      //               Flexible(
      //                 child: Container(
      //                   width: deviceWith(context),
      //                   padding: EdgeInsets.only(top: 20, bottom: 20),
      //                   decoration: BoxDecoration(
      //                       border: Border(
      //                           bottom: BorderSide(color: Colors.grey))),
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                     children: [
      //                       Flexible(
      //                         child: Column(
      //                           crossAxisAlignment: CrossAxisAlignment.start,
      //                           children: [
      //                             Text(
      //                               "#JTeam 2020 t dobat nasuha sd sds",
      //                               overflow: TextOverflow.ellipsis,
      //                               maxLines: 1,
      //                               style: TextStyle(fontSize: 19),
      //                             ),
      //                             Text(
      //                               "membalas asdhh uiashd oisahd oisah sdsdds a ",
      //                               overflow: TextOverflow.ellipsis,
      //                               maxLines: 1,
      //                               style: TextStyle(color: Colors.black45),
      //                             )
      //                           ],
      //                         ),
      //                       ),
      //                       Padding(
      //                         padding: const EdgeInsets.only(right:8.0),
      //                         child: Column(
      //                           children: [
      //                             Text("11.02"),
      //                             SizedBox(
      //                               height: 5,
      //                             ),
      //                             Container(
      //                               width: 80,
      //                               child: Row(
      //                                 mainAxisAlignment: MainAxisAlignment.center,
      //                                 children: [
      //                                   Icon(Icons.speaker_notes_off),
      //                                   SizedBox(width: 3,),
      //                                   Flexible(
      //                                     child: Container(
      //                                         padding: EdgeInsets.all(2),
      //                                         decoration: BoxDecoration(
      //                                             color: Colors.lightBlueAccent,
      //                                             borderRadius:
      //                                                 BorderRadius.circular(
      //                                                     100)),
      //                                         child: Text('14.000',
      //                                             overflow:
      //                                                 TextOverflow.ellipsis,
      //                                             style: TextStyle(
      //                                               color: Colors.white,
      //                                             ))),
      //                                   ),
      //                                 ],
      //                               ),
      //                             )
      //                           ],
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //     ],
      //   ),
      // ),