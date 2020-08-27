import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: ListView(
       children: [
         ListTile(
           leading: CircleAvatar(
             backgroundColor: Colors.grey,
             child: Icon(Icons.person),
             radius: 32.0,
           ),
           title: Text('Status saya'),
           subtitle: Text('20 menit yang lalu'),
           trailing: IconButton(icon: Icon(Icons.more_horiz), onPressed: null),
         ),
         statusTerkini(),
         ListView.separated(
           shrinkWrap: true,
           physics: ScrollPhysics(),
           itemBuilder: (BuildContext context, index) => buildStatus(),
           separatorBuilder: (BuildContext context, index) => Divider(indent: 60.0,),
           itemCount: 2,
         ),
         statusSudahDilihat(),
         ListView.separated(
           shrinkWrap: true,
           physics: ScrollPhysics(),
           itemBuilder: (context, index) => buildStatus(), 
           separatorBuilder: (context, index) => Divider(indent: 60.0,), 
           itemCount: 5
        )
       ],
     )
    );
  }
}

buildStatus() {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.grey,
      child: Icon(Icons.person),
      radius: 32,
    ),
    title: Text('My Friend'),
    subtitle: Text('50 menit yang lalu'),
  );
}

Widget statusTerkini() {
  return Container(
    height: 30,
    padding: EdgeInsets.only(left: 10),
    alignment: Alignment.centerLeft,
    color: Colors.black12,
    child: Text('Pembaruan terkini', style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),),
    );
}

Widget statusSudahDilihat() {
  return Container(
    height: 30,
    padding: EdgeInsets.only(left: 10),
    alignment: Alignment.centerLeft,
    color: Colors.black12,
    child: Text('Pembaruan yang telah dilihat', style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),),
    );
}