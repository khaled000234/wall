import 'package:fire/allwall.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cat extends StatefulWidget {
  const Cat({super.key});

  @override
  State<Cat> createState() => _CatState();
}

class _CatState extends State<Cat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
        
        margin: EdgeInsets.only(top: 50),
          
          child: Column(
           
            children: [
              
              Text(
                "category",style: TextStyle(color: 
                Colors.black,fontSize: 20,fontFamily:"ProtestGuerrilla",fontWeight: FontWeight.bold),
                
              ),
              SizedBox(height: 20,),
             GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=> allwall(cat: "ekeke")));
              },
               child: Container(
                 margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
                ),
                child: Stack(children: [
                       
                  ClipRRect(borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/image/HD-wallpaper-anime-boy-anime-boy-anime-boys-cute-cute-anime-boy-cute-anime-boys-lonely-sad-anime-boy-sad-anime-boys-thumbnail.jpg",width: MediaQuery.of(context)
                    .size.width,height: 140,fit: BoxFit.cover,)),
                    Container(
                      width: MediaQuery.of(context).size.width,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text("ekeke",style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),)
                ],),
               ),
             ),
             SizedBox(height: 13,),
              GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=> allwall(cat: "Food")));
              },
                child: Container(
                 margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
                ),
                child: Stack(children: [
                        
                  ClipRRect(borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/image/HD-wallpaper-anime-boy-anime-boy-anime-boys-cute-cute-anime-boy-cute-anime-boys-lonely-sad-anime-boy-sad-anime-boys-thumbnail.jpg",
                    width: MediaQuery.of(context)
                    .size.width,height: 140,fit: BoxFit.cover,)),
                    Container(
                      width: MediaQuery.of(context).size.width,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text("Food",style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),)
                ],),
                             ),
              ),
                 SizedBox(height: 13,),
              Container(
               margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
              ),
              child: Stack(children: [
        
                ClipRRect(borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/image/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2020__07__20200715-studio-ghibli-Howls_BaconEggs1500-ebebd31467c24b89af81d18bc73f638e.jpg",width: MediaQuery.of(context)
                  .size.width,height: 140,fit: BoxFit.cover,)),
                  Container(
                    width: MediaQuery.of(context).size.width,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text("FOOD",style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),)
              ],),
             ),
               SizedBox(height: 13,),
              Container(
               margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
              ),
              child: Stack(children: [
        
                ClipRRect(borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/image/maxresdefault.jpg",width: MediaQuery.of(context)
                  .size.width,height: 140,fit: BoxFit.cover,)),
                  Container(
                    width: MediaQuery.of(context).size.width,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text("Bulding",style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),)
              ],),
             ),
             
            ],
          ),
        ),
      ),
      
    );
  }
}