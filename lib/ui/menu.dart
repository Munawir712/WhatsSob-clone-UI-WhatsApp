import 'package:flutter/material.dart';
import 'package:whatssob/ui/constant/constant.dart';
import 'package:whatssob/ui/pages/call.dart';
import 'package:whatssob/ui/pages/camera.dart';
import 'package:whatssob/ui/pages/chat.dart';
import 'package:whatssob/ui/pages/status.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {

  TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(() => setState((){}));
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: (
          _tabController.index == 1 ? 
          FloatingActionButton(onPressed: null, child: Icon(Icons.message)) : 
          _tabController.index == 2 ? FloatingActionButton(onPressed: null, child: Icon(Icons.add)) :
          _tabController.index == 3 ? FloatingActionButton(onPressed: null, child: Icon(Icons.phone),) : null),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return <Widget>[
               SliverAppBar(
              title: Text('WhatsSob'),
              pinned: true,
              floating: true,
              actions: [
                IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: null),
                PopupMenuButton(
                  itemBuilder: (BuildContext context) {
                    if (_tabController.index == 1) {
                      return [
                      PopupMenuItem(child: Text('Grup baru')),
                      PopupMenuItem(child: Text('Siaran baru')),
                      PopupMenuItem(child: Text('WhatsSob Web')),
                      PopupMenuItem(child: Text('Pesan berbintang')),
                      PopupMenuItem(child: Text('Setelan')),
                      ];
                    } if(_tabController.index == 2) {
                      return [
                      PopupMenuItem(child: Text('Privasi status')),
                      PopupMenuItem(child: Text('Setelan')),
                      
                      ];
                    } if (_tabController.index == 3) {
                      return [
                      PopupMenuItem(child: Text('Hapus log panggilan')),
                      PopupMenuItem(child: Text('Setelan')),
                      ];
                    } else 
                    return null;
                  },
                )
              ],
              bottom: PreferredSize(child: Container(
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  indicatorWeight: 4,
                  tabs: [
                    Container( width: 20, child: Tab(icon: Icon(Icons.camera_alt, size: 20,),)),
                    Container( width:deviceWith(context) * 0.2, child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Tab(child: Text("CHAT"),),
                        SizedBox(width: 3,),
                        Tab(
                          icon: CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Colors.white,
                          child: Text('4', style: TextStyle(fontSize: 10, color: Colors.lightBlue),),
                          ),
                        )
                      ],
                    )),
                    Container(width:deviceWith(context) * 0.2, child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Tab(text:"STATUS",),
                        SizedBox(width: 3,),
                        Icon(Icons.brightness_1, size: 8,),
                      ],
                    )),
                    Container(width: deviceWith(context) * 0.2, child: Tab(child: Text("PANGGILAN", style: TextStyle(fontSize: 13,)))),
                  ],
                ),
              ),
              preferredSize: Size.fromHeight(50.0),
              )
            ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
            Camera(),
            Chat(),
            Status(),
            Call()
          ]),
        ),
      );
  }

  


}

// class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//     _SliverAppBarDelegate(this._tabBar);

//     final TabBar _tabBar;

//     @override
//     double get minExtent => _tabBar.preferredSize.height;
//     @override
//     double get maxExtent => _tabBar.preferredSize.height;

//     @override
//     Widget build(
//         BuildContext context, double shrinkOffset, bool overlapsContent) {
//       return new Container(
//         decoration: BoxDecoration(
//         color: Colors.lightBlue,
//         ),
//         child: _tabBar,
//       );
//     }

//     @override
//     bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
//       return false;
//     }
//   }