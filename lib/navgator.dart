//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fire/Home.dart';
import 'package:fire/cat.dart';
import 'package:fire/search.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Navgator extends StatefulWidget {
  const Navgator({super.key});

  @override
  State<Navgator> createState() => _NavgatorState();
}

class _NavgatorState extends State<Navgator> {
  int currenTabIndex=0;
  late List<Widget>pages;
  late Home home;
  late Cat cat;
  late Search search;
  late Widget currentPage;
  @override
  void initState(){
    home=Home();
    search=Search();
    cat= Cat();
    pages=[home,search,cat];
    currentPage=Home();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar( 
        buttonBackgroundColor: Colors.black,
        height: 30,color: Colors.grey,
        backgroundColor: Colors.white,
      animationDuration: Duration(milliseconds: 500),onTap: (int index) {
        setState(() {
          currenTabIndex=index;
        });
      },
        items: [
        Icon(Icons.home_outlined,color: Colors.white,),
        Icon(Icons.search_off,color: Colors.white,),
        Icon(Icons.category,color: Colors.white,)
      ]),
      body: pages[currenTabIndex],
      
    );
  }
}