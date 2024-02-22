
//import 'dart:js_interop_unsafe';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire/uploadP.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class allwall extends StatefulWidget {
String cat;
allwall({required this.cat});

  @override
  State<allwall> createState() => _allwallState();
}

class _allwallState extends State<allwall> {
   Stream? catagoryStream;
  getontheload()async{
    catagoryStream=await DatabaseMethodes().getCategory(widget.cat);
    setState(() {
      
    });
 
  }
  @override
    void initState(){
    super.initState();
    getontheload();
   }
  Widget allwall1(){ 
    Stream? cat;
return StreamBuilder
(stream: cat,
  builder: (context,AsyncSnapshot snapshot){
    return snapshot.hasData?
    GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 6.0,
        childAspectRatio: 0.6),
        itemCount: snapshot.data.docs.length , 
    itemBuilder:(context ,index){
      DocumentSnapshot ds=snapshot.data.docs[index];
      return Container(
        child: ClipRRect(
          borderRadius:BorderRadius.circular(10) ,
        child: Image.network(ds["Image"],
        fit: BoxFit.cover,)),
      );
    }):Container(
      
    );
  },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50,left: 10,right: 10),
        child: Column(children: [
          Center(
            child: Text(widget.cat,style: TextStyle(color: Colors.black
            ,fontSize: 28),),
          ),
          SizedBox(height: 10,),
          Expanded
          (child: allwall1()),
        ],),
      ),
    );
  }
}