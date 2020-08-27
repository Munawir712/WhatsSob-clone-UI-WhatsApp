import 'package:flutter/material.dart';
import 'package:whatssob/ui/constant/constant.dart';
import 'package:whatssob/ui/pages/call.dart';
import 'package:whatssob/ui/pages/chat.dart';
import 'package:whatssob/ui/pages/status.dart';

class Menu1 extends StatefulWidget {
  @override
  _Menu1State createState() => _Menu1State();
}

class _Menu1State extends State<Menu1> {

  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
     top: false,
      maintainBottomViewPadding: true,
          child: Scaffold(
        body: DefaultTabController(
          initialIndex: 1,
              length: 4,
              child: NestedScrollView(
                headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      floating: true,
                      pinned: true,
                      title: Text('WhatsSob'),
                      backgroundColor: Colors.lightBlue,
                      actions: [
                        IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: null),
                        PopupMenuButton(
                          itemBuilder: (BuildContext context) {
                            return [
                              PopupMenuItem(child: Text('Grup baru')),
                              PopupMenuItem(child: Text('Siaran baru')),
                              PopupMenuItem(child: Text('WhatsApp Web')),
                              PopupMenuItem(child: Text('Pesan berbintang')),
                              PopupMenuItem(child: Text('Setelan')),
                            ];
                          },
                        )
                      ],
                      bottom: TabBar(
                          
                          isScrollable: true,
                          labelColor: Colors.white,
                          indicatorColor: Colors.white,
                          indicatorWeight: 4,
                          tabs: [
                            Container(width: 20,child: Tab(icon: Icon(Icons.camera_alt, size: 20,),)),
                            Container(width:MediaQuery.of(context).orientation == Orientation.portrait ? deviceWith(context) * 0.2 : deviceWith(context) / 4, child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Tab(child: Text("CHAT"),),
                                SizedBox(width: 3,),
                                CircleAvatar(
                                  radius: 10.0,
                                  backgroundColor: Colors.white,
                                  child: Text('4', style: TextStyle(fontSize: 10, color: Colors.lightBlue),),
                                )
                              ],
                            )),
                            Container(width:MediaQuery.of(context).orientation == Orientation.portrait ? deviceWith(context) * 0.2 : deviceWith(context) / 4, child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Tab(text:"STATUS",),
                                SizedBox(width: 3,),
                                Icon(Icons.brightness_1, size: 8,),
                              ],
                            )),
                            Container(width:(MediaQuery.of(context).orientation == Orientation.portrait) ?  deviceWith(context) * 0.2 : deviceWith(context) / 4, child: Tab(child: Text("PANGGILAN"),)),
                          ],
                        ),
                    ),
                    // SliverPersistentHeader(
                    //   delegate: _SliverAppBarDelegate(
                    //    color: Colors.lightBlue,
                    //    tabBar: TabBar(
                    //       isScrollable: true,
                    //       labelColor: Colors.white,
                    //       indicatorColor: Colors.white,
                    //       indicatorWeight: 4,
                    //       tabs: [
                    //         Tab(icon: Icon(Icons.camera_alt),),
                    //         Container(width:MediaQuery.of(context).orientation == Orientation.portrait ? deviceWith(context) * 0.2 : deviceWith(context) / 4, child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             Tab(child: Text("CHAT"),),
                    //             SizedBox(width: 3,),
                    //             CircleAvatar(
                    //               radius: 10.0,
                    //               backgroundColor: Colors.white,
                    //               child: Text('4', style: TextStyle(fontSize: 10, color: Colors.lightBlue),),
                    //             )
                    //           ],
                    //         )),
                    //         Container(width:MediaQuery.of(context).orientation == Orientation.portrait ? deviceWith(context) * 0.2 : deviceWith(context) / 4, child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             Tab(text:"STATUS",),
                    //             SizedBox(width: 3,),
                    //             Icon(Icons.brightness_1, size: 8,),
                    //           ],
                    //         )),
                    //         Container(width:(MediaQuery.of(context).orientation == Orientation.portrait) ?  80 : deviceWith(context) / 4, child: Tab(child: Text("PANGGILAN"),)),
                    //       ],
                    //     ),
                    //   ),
                    //   pinned: true,
                    // ),
                  ];
                },
                body: TabBarView(
                  children: [
                    Center(child: Text('Camera')),
                    Chat(),
                    Status(),
                    Call()
                  ],
                )
              ),
            ),
        
          ),
    );
  }

  


}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
   const _SliverAppBarDelegate({ this.tabBar, this.color});

    final TabBar tabBar;
    final Color color;

    @override
    double get minExtent => tabBar.preferredSize.height;
    @override
    double get maxExtent => tabBar.preferredSize.height;

    @override
    Widget build(
        BuildContext context, double shrinkOffset, bool overlapsContent) {
      return new Container(
        color: color,
        child: tabBar,
      );
    }

    @override
    bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
      return false;
    }
  }