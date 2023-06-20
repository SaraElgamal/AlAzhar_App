
import 'package:flutter/material.dart';
import 'package:project_data/Sign_up.dart';
import 'package:project_data/login.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>login()),);
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset("assets/images/logo.jpeg",height: 300,width: 300,),
            ),
          ),
          const Text("Developed by Team SDK",style: TextStyle(color: Colors.grey,

          ),),
        ],
      ),
    );
  }
}