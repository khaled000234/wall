import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List wallp=["assets/image/HD-wallpaper-anime-anime-anime-collage-thumbnail.jpg",
  "assets/image/HD-wallpaper-anime-anime-collage.jpg"];
  int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
      margin: EdgeInsets.only(top: 50,left: 20,right: 20),
       child: Column(
        children: [
          Row(
            children: [
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(60),
                child: ClipRRect(
                  borderRadius:BorderRadius.circular(60),
                  child: Image.asset("assets/image/HD-wallpaper-anime-boy-anime-boy-anime-boys-cute-cute-anime-boy-cute-anime-boys-lonely-sad-anime-boy-sad-anime-boys-thumbnail.jpg",height: 50,width: 50,fit: BoxFit.cover,)),
              ),
              SizedBox(height: 80,),
               Text("wallify",style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,fontWeight: FontWeight.bold 
               ),),
               
            ],
          ),
          SizedBox(height: 20,),
          CarouselSlider.builder(itemCount: wallp.length, itemBuilder: (context,index,realIindex){
              final res=wallp[index];
              return vImage(res,index);
               }, options:CarouselOptions(

                height: MediaQuery.of(context).size.height/1.5,
                // viewportFraction: 1,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex=index;
                  });
                },
               ) ),
               SizedBox(height: 20,),
               Center(child: buildIndicator()),
              
        ],
       ),
     ),
    

    );
  }
  Widget buildIndicator()=>AnimatedSmoothIndicator(activeIndex:activeIndex ,count:4 ,effect:SlideEffect(
    dotWidth: 15,dotHeight: 15,activeDotColor: Colors.blue
  ) ,);
  Widget vImage(String urlImage,int index)=>Container(
   margin: EdgeInsets.only(left: 20),
    height: MediaQuery.of(context).size.height/1.5,
    width: MediaQuery.of(context).size.width,
    child:ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(urlImage,fit: BoxFit.cover,))

  );
}