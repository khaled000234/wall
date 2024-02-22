
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';

class uploadP extends StatefulWidget {
  const uploadP({super.key});
  @override
  State<uploadP> createState() => _uploadPState();
}
class _uploadPState extends State<uploadP> {
  final List<String >catitem=['wildLife','foods','Nature','City'];
  String?value;
  final ImagePicker _picker =ImagePicker();
  File? seletedImage;
  Future getImage()async{
   var image= await _picker.pickImage(source: ImageSource.gallery);
   seletedImage =File(image!.path);
   setState(() {
     
   });
  }
  uploadItem()async{
    if(seletedImage!=null){
      String addId=randomAlphaNumeric(10);
      Reference firebaseStorageRef=FirebaseStorage.instance.ref().
      child("Images").child(addId);
      final UploadTask task =firebaseStorageRef.putFile(seletedImage!);
      var downloadUrl =await(await task).ref.getDownloadURL();
      Map<String,dynamic>addItem={
        "Image":downloadUrl,
        "Id":addId,
      };
      await DatabaseMethodes().addwallpaper(addItem,addId,value!).
      then((value){
Fluttertoast.showToast(
        msg: "has been add ",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );
      });

    }
  }
  @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: AppBar( 
        leading: GestureDetector(onTap: (){
        Navigator.pop(context);

      },child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,),
      ),
      centerTitle: true,
        title: Text("Add the pic",style: TextStyle(color: Colors.black,fontFamily: "ProtestGuerrilla"),),),
        body: Container(child: Column(children: [
       seletedImage==null? GestureDetector(
        onTap: (){
          getImage();
        },
         child: Center(
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(20),
              child: Center(
                child: Container(
                  width: 250,height: 300,decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 1.5),
                    borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.camera_alt_outlined,color: Colors.black,)
                    ,
                ),
              ),
            ),
          ),
       ):   Center(
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(20),
              child: Center(
                child: Container(
                  width: 250,height: 300,decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 1.5),
                    borderRadius: BorderRadius.circular(20)
                    ),

                    child: Image.file(seletedImage!,fit: BoxFit.cover,)
                    ,
                ),
              ),
            ),
          ),
       
        SizedBox(height: 40,),
        Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
           
          ),
         child: DropdownButtonHideUnderline(  
          child:DropdownButton<String>
          (items: catitem.map((item) =>DropdownMenuItem<String>(
            value: item,
            child: Text(
            item,style: TextStyle(fontSize: 18,color: Colors.black),
           )) ).toList(),
           onChanged: ((value)=>setState(() {
             this.value=value;
           })),
           hint: Text(" select category"),
           value: value,
           )),

        ),
        SizedBox(height: 20,),
        GestureDetector(
          onTap: (){
          uploadItem();
          }, child: Container(
            padding: EdgeInsets.symmetric(vertical:12 ),
            margin: EdgeInsets.symmetric(horizontal: 2),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
            child: Center(child: Text("save",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.bold ),),),
           
          ),
        )

        ],),),
    );
  }
}

class DatabaseMethodes {
  Future addwallpaper (
    Map<String,dynamic>wallpaperInfMap,
  String id,String cat)async{
    return await FirebaseFirestore.instance.collection(cat).
    doc(id)
    .set(wallpaperInfMap);


  }
  Future<Stream<QuerySnapshot>>getCategory(String name )async{
    return await FirebaseFirestore.instance.collection(name).snapshots();
  }
}