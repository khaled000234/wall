import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire/uploadP.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  final GlobalKey<FormState>_formakey=GlobalKey<FormState>();
  TextEditingController usernamecontroller=new TextEditingController();
  TextEditingController passwordcontroller=new TextEditingController();
  @override
  Widget build(BuildContext context) {
return Scaffold(
key: _formakey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      	child: Container(
	        child: Column(
	          children: <Widget>[
	            Container(
	              height: 400,
	              decoration: BoxDecoration(
	                image: DecorationImage(
	                  image: AssetImage('assets/image/background.png'),
	                  fit: BoxFit.fill
	                )
	              ),
	              child: Stack(
	                children: <Widget>[
	                  Positioned(
	                    left: 30,
	                    width: 80,
	                    height: 200,
	                    child: FadeInUp(duration: Duration(seconds: 1), child: Container(
	                      decoration: BoxDecoration(
	                        image: DecorationImage(
	                          image: AssetImage('assets/image/light-1.png')
	                        )
	                      ),
	                    )),
	                  ),
	                  Positioned(
	                    left: 140,
	                    width: 80,
	                    height: 150,
	                    child: FadeInUp(duration: Duration(milliseconds: 1200), child: Container(
	                      decoration: BoxDecoration(
	                        image: DecorationImage(
	                          image: AssetImage('assets/image/light-2.png')
	                        )
	                      ),
	                    )),
	                  ),
	                  Positioned(
	                    right: 40,
	                    top: 40,
	                    width: 80,
	                    height: 150,
	                    child: FadeInUp(duration: Duration(milliseconds: 1300), child: Container(
	                      decoration: BoxDecoration(
	                        image: DecorationImage(
	                          image: AssetImage('assets/image/clock.png')
	                        )
	                      ),
	                    )),
	                  ),
	                  Positioned(
	                    child: FadeInUp(duration: Duration(milliseconds: 1600), child: Container(
	                      margin: EdgeInsets.only(top: 50),
	                      child: Center(
	                        child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
	                      ),
	                    )),
	                  )
	                ],
	              ),
	            ),
	            Padding(
	              padding: EdgeInsets.all(30.0),
	              child: Column(
	                children: <Widget>[
	                  FadeInUp(duration: Duration(milliseconds: 1800), child: Container(
	                    padding: EdgeInsets.all(5),
	                    decoration: BoxDecoration(
	                      color: Colors.white,
	                      borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color.fromRGBO(143, 148, 251, 1)),
	                      boxShadow: [
	                        BoxShadow(
	                          color: Color.fromRGBO(143, 148, 251, .2),
	                          blurRadius: 20.0,
	                          offset: Offset(0, 10)
	                        )
	                      ]
	                    ),
	                    child: Column(
	                      children: <Widget>[
	                        Container(
	                          padding: EdgeInsets.all(8.0),
	                          decoration: BoxDecoration(
	                            border: Border(bottom: BorderSide(color:  Color.fromRGBO(143, 148, 251, 1)))
	                          ),
	                          child: TextFormField(
                              controller: usernamecontroller,
                  validator: (value){
                   if (value==null || value.isEmpty) {
                    return "please cahick for emil";
                     } },
	                            decoration: InputDecoration(
	                              border: InputBorder.none,
	                              hintText: "Email ",
	                              hintStyle: TextStyle(color: Colors.grey[700])
	                            ),
	                          ),
	                        ),
                          SizedBox(height: 10,),
	                        Container(
	                          padding: EdgeInsets.all(8.0),
	                          child: TextFormField(
                                 controller: passwordcontroller,
                  validator: (value){
                   if (value==null || value.isEmpty) {
                    return "please cahick for pass";
                     } },
                                decoration: InputDecoration(border: InputBorder.none,hintText: "password",
	                              hintStyle: TextStyle(color: Colors.grey[700])
	                            ),
	                          ),
	                        )
	                      ],
	                    ),
	                  )),
	                  SizedBox(height: 30,),


                    GestureDetector(
                      onTap: (){
                       Login();
                       print("looooooooooooooooooooooooooooooooooooooo");
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color:Colors.blue ,borderRadius: BorderRadius.circular(15),
                        ),
                        child:Center(
                          child: Text("long in ", style: TextStyle(color: Colors.white),)
                          ),
                        ),
                    )
                    
	                
	                ],
	              ),
	            )
	          ],
	        ),
	      ),
      )
    );



    // return Scaffold(
    
    //   body: Container(
    //     child: Stack(
    //       key: _formakey,
    //       children: [
    //         Container(
    //           // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2),
    //         // padding: EdgeInsets.only(top: 45.0,left: 20,right: 20.0),
    //         decoration: BoxDecoration(
    //           border: Border.all(
    //             color: Colors.white,
    //           ),
    //         ),
               
    //             child: TextFormField( controller: usernamecontroller,
    //               validator: (value){
    //               if (value==null || value.isEmpty) {
    //              return "pleasd check for username";
    //               }
    //             },decoration: InputDecoration(border: InputBorder.none,hintText: "username",
    //             hintStyle: TextStyle(color: Colors.grey)
    //             ),
    //             ),
               
            
    //         ),
    //              SizedBox(height: 20,),
    //          Container(
    //           // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2),
    //         // padding: EdgeInsets.only(top: 45.0,left: 20,right: 20.0),
      
              
    //             child: TextFormField( controller: passwordcontroller,
    //               validator: (value){
    //                if (value==null || value.isEmpty) {
    //                 return "please cahick for pass";
    //                  }
    //             },decoration: InputDecoration(border: InputBorder.none,hintText: "password",
    //             hintStyle: TextStyle(color: Colors.grey)
    //             ),
    //             ),
    //            )
            
            
    //       ],
    //     ),
    //   ),
    // );
  }
  Login(){
    FirebaseFirestore.instance.collection("Adim").get().then((snapshot){
snapshot.docs.forEach((result){
if(result.data()['id'] !=usernamecontroller.text.trim()){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor:Colors.orangeAccent,
    content:Text("email",
    style:TextStyle(fontSize:18),
    ),
  )
  
  );
}
if(result.data()['password'] !=passwordcontroller.text.trim()){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor:Colors.orangeAccent,
    content:Text("password",
    style:TextStyle(fontSize:18),
    ),
  ));
}else {
  Route route = MaterialPageRoute(builder: (context)=>uploadP());
  Navigator.pushReplacement(context,route);
}

  });
   } );
  }



}
