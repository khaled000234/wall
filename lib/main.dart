import 'package:fire/Home.dart';
import 'package:fire/Login.dart';
import 'package:fire/cat.dart';
import 'package:fire/firebase_options.dart';
import 'package:fire/navgator.dart';
import 'package:fire/search.dart';
import 'package:fire/uploadP.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   options: const FirebaseOptions(  apiKey: 'AIzaSyBDWQcRJL5jXuZSla_0ledIogYFTlB8GGQ',
    appId: '1:420708588564:android:48d2a6edabeb89baa9db01',
    messagingSenderId: '420708588564',
    projectId: 'wallp-6aff9',
    storageBucket: 'wallp-6aff9.appspot.com',)
   
   // DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp( home: Login(),
    );
  }
}
 //cloud_firestore: ^4.15.4