// import 'dart:js_interop_unsafe';

// import 'dart:html';
import 'dart:convert';

import 'package:fire/widget.dart';
import 'package:http/http.dart'as http;

import 'package:fire/photo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<PhotoM>photos=[];
  TextEditingController searchcontroller = new TextEditingController();
  bool search=false;
  getSearche(String searchQuery)async{
    await http.get(Uri.parse(
      "https://api.pexels.com/v1/search?query=$searchQuery&per_page=30"),
      headers:{"Authorization":"NRQjvHC4hax8Pnxru1FszlAQuT2nqBPqq34S6qusfdDZPOP9JbceMZ4c"}).then((value){
Map<String ,dynamic>jsonData=jsonDecode(value.body);
jsonData["photos"].forEach((element){
PhotoM photom=new PhotoM();
photom=PhotoM.fromMap(element);
photos.add(photom);

});setState(() {
  search=true;
  print(photos);

});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Center(
              child:  Text(
              "search ",style: TextStyle(color: 
              Colors.black,fontSize: 20,fontFamily:"ProtestGuerrilla",fontWeight: FontWeight.bold),

              
            ),
            ),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 3),
              margin: EdgeInsets.symmetric(horizontal: 20.0),

              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.grey, borderRadius:BorderRadius.circular(10)),
              child: TextField(
                controller: searchcontroller,
                decoration: InputDecoration(border: InputBorder.none,
              suffixIcon: GestureDetector( onTap: (){
                getSearche(searchcontroller.text);
              },
                
                child: search?GestureDetector(onTap: (){
               
                  photos=[];
                  search=false;
                  setState(() {
                    
                  });
                },
                  child: Icon(Icons.close,color: Colors.black,)):Icon(Icons.search_outlined,color: Colors.black,)
                  ))),
             

            ),
            SizedBox(height: 20,),
            Expanded(child: wallpaper(photos, context))
          ],
        ),
      ),
    );
  }
}