import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

class fullScren extends StatefulWidget {
String imagepath;
fullScren({required this.imagepath});

  @override
  State<fullScren> createState() => _fullScrenState();
}

class _fullScrenState extends State<fullScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(tag:widget.imagepath , child: Container(
            height:  MediaQuery.of(context).size.height,
            width:  MediaQuery.of(context).size.width,
            child: CachedNetworkImage(imageUrl: widget.imagepath,fit: BoxFit.cover,)
          )),
          Container(
            margin: EdgeInsets.only(bottom: 50),
            height: MediaQuery.of(context).size.height,
            width:  MediaQuery.of(context).size.width,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              
              GestureDetector(onTap: (){
                _save();
              },
                child: Stack(
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/2,
                      decoration: BoxDecoration(border: Border.all(color: Colors.white54,width: 1)
                      ,borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors:[Color(0x36ffffff),Color(0x0fffffff)]
                        )),child: Column(
                          children: [
                            Text("set wallpaper",style: TextStyle(
                             fontSize: 16.0,color: Colors.white ,
                            ),),
                                Text("image will be saved  ",style: TextStyle(
                             fontSize: 16.0,color: Colors.white 
                            ),)
                          ],
                        ),
                        ),
                      
                    
                  ],
                ),
              ),
              SizedBox(height: 20,),
                 GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                   child: Text("cancl ",style: TextStyle(
                             fontSize: 16.0,color: Colors.white 
                            ),),
                 )
            ],),
          )
        ],
      ),
    );
  }
  _save ()async{
    var response = await Dio().get(widget.imagepath,options: Options(
      responseType: ResponseType.bytes)
    );
    final result =await ImageGallerySaver.saveImage(Uint8List.fromList(response.data));
    print (result);
    Navigator.pop(context);
  }
}