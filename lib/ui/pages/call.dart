import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => _buildCall(), 
        separatorBuilder: (context, index) => Divider(indent: 60.0,), 
        itemCount: 5
      ),
    );
  }
}

 _buildCall() {
        return ListTile(
          leading: CircleAvatar(
            radius: 32.0,
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white,),
          ),
          title: Text(
            'MasBro',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.call_made, size: 18, color: Colors.lightGreenAccent[400],),
              SizedBox(width: 5,),
              Text('27 Desember 15.16', overflow: TextOverflow.ellipsis,),
            ],
          ),
          trailing: Icon(Icons.phone, color: Colors.lightBlue,)
        );
      }