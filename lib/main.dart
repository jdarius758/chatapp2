import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'package:flutter/foundation.dart';

Future<void>
 main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    // firebase web  database connection *****

    await Firebase.initializeApp(
        options: FirebaseOptions(
          apiKey: "AIzaSyAaxZJucxo4L8x4TrKkbtfop9FLaSlGyGM",
          appId: "1:501677046190:web:a4a1e3ae5b29427a69f03f",
          messagingSenderId: "501677046190",
          projectId: "chatapp-14df3",
        ));
  }
    else {
    await Firebase.initializeApp();
  }





  // firebase Andriod  database connection ****


  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chat',
      theme: ThemeData(
        primaryColor: Colors.orange[900],
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}