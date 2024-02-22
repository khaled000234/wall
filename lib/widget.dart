import 'package:cached_network_image/cached_network_image.dart';
import 'package:fire/fullScreen.dart';
import 'package:fire/photo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
Widget wallpaper (List<PhotoM>listPhoto,BuildContext context){
  return Container(
padding: EdgeInsets.symmetric(horizontal: 16),
child: GridView.count(padding: EdgeInsets.all(4.0),
  crossAxisCount: 2,childAspectRatio: 0.6,
mainAxisSpacing: 6.0,crossAxisSpacing: 6,children:
listPhoto.map((PhotoM photom){
return GridTile(child: GestureDetector(
  onTap: (){
   Navigator.push(context, MaterialPageRoute(builder:(context)=>fullScren(imagepath:photom.src!.portrait!) )); 
  },
  child: Hero(tag: photom.src!.portrait!, child: Container(
    child: CachedNetworkImage(imageUrl: photom.src!.portrait!,fit: BoxFit.cover,
    ),
  )),
));
}).toList(),
),
  );
}