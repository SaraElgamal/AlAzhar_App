import 'package:flutter/material.dart';
import 'package:project_data/constans.dart';

class Subjects extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        body: Column(
        children: [
        LinearProgressIndicator(value: 1,),
         mainRow(),
          Stack(
            children: [
              Container(
                color: Color(0xff0A2674),
                width: double.infinity,
                height: 130,
              ),
              Positioned(
                  top: 30,
                  left: 210,
                  child: Row(
                    children: [
                      Text(
                        'لوحة التحكم',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_back_ios,
                        size: 14,
                        color: Colors.blueAccent,
                      ),
                      Text(
                        'الرئيسية',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  )),
              Positioned(
                  top: 55,
                  left: 230,
                  child: Text(
                    'محاضراتي',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  )),

              ],
          ),
          LinearProgressIndicator(value: 0.6,),

          SizedBox(height: 40,),
          Container(
            margin: EdgeInsetsDirectional.symmetric(horizontal: 20),
           color: Colors.grey[300],
            child: TextFormField(

              decoration: InputDecoration(
                enabled: false,
               hintTextDirection: TextDirection.rtl,
                hintStyle: TextStyle(
                  fontSize: 20
                ),

                hintText: 'محاضرات البث المباشر',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 40,),
          Divider(
            color: Colors.grey,
          ),
    ],
    ),
        ),
    );
  }
}
