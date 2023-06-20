

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_data/Sign_up.dart';
import 'package:project_data/login.dart';
import 'package:project_data/profile.dart';
import 'package:project_data/screen_table.dart';
import 'package:project_data/subjects.dart';

class buildItem extends StatefulWidget {
  @override
  State<buildItem> createState() => _buildItemState();
}

class _buildItemState extends State<buildItem> {
  File? _image;

  Future getImage(bool isCamera) async {
    var image;
    if (isCamera) {
      image = await ImagePicker.platform.pickImage(source: ImageSource.camera);
    } else
      image = await ImagePicker.platform.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        mainRow(),
        Stack(
          children: [
            Container(
              color: Color(0xff0A2674),
              width: double.infinity,
              height: 150,
            ),
            Positioned(
              top: 20,
              left: 20,
              child: CircleAvatar(
                radius: 58,
                backgroundImage: AssetImage('assets/images/playstore.png'),
              ),
            ),
            Positioned(
              top: 88,
              left: 100,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueAccent,
                  ),
                  child: IconButton(
                      onPressed: () {
                        showBottomSheet(
                            context: context,
                            builder: (context) => Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.blueAccent,
                               spreadRadius: 3,
                               ),
                             ],
                                color: Colors.white,

                                borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),),
                              ),
                              
                              height: 120,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,

                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blueAccent, ),
                                      child: IconButton(
                                        onPressed : (){
                                            getImage(true);
                                        },
                                        icon: Icon(
                                          Icons.camera_alt_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    Container(
height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blueAccent, ),
                                      child: IconButton(
                                        onPressed : (){
                                            getImage(false);
                                        },
                                        icon: Icon(
                                          Icons.photo,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),);

                      },
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                      ),)),
            ),
            Positioned(
                top: 50,
                left: 206,
                child: Row(
                  children: [
                    Text(
                      'الملف الشخصي',
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
                top: 75,
                left: 200,
                child: Text(
                  'الملف الشخصي',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                )),
// Text(''),
          ],
        ),
      ],
    );
  }}
  Widget mainRow() =>  Row(
    children: [
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child:
                  PopupMenuButton(
                      constraints: BoxConstraints(minWidth: double.infinity),
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.arrow_drop_down,
                                  size: 30,color: Colors.blueAccent[700],
                                ),

                                Padding(
                                    padding: EdgeInsets.only(left: 219),
                                    child: Text(
                                      "الرئيسية",
                                      style: TextStyle(color: Colors.blueAccent[700],
                                        fontWeight: FontWeight.bold,
                                      ),

                                    ))
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                          ],
                        )),
                  PopupMenuItem(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ScareenTable()));
                        },
                        child: Row(
                        children: [
                          Icon(Icons.arrow_drop_down,
                          size: 30,color: Colors.blueAccent[700],
                          ),
                        Padding(
                        padding: EdgeInsets.only(left: 170),
                        child: Text(
                        "الجدول الدراسي",
                          style: TextStyle(color: Colors.blueAccent[700],
                            fontWeight: FontWeight.bold,),

                        ),
                        )
                        ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                    ],
                  )),
                  PopupMenuItem(

                  child: Column(
                    children: [
                      InkWell(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Subjects()));
                        },
                        child: Row(
                        children: [
                          Icon(Icons.arrow_drop_down,
                            size: 30,color: Colors.blueAccent[700],
                          ),
                        Padding(
                        padding: EdgeInsets.only(left: 210),
                        child: Text(
                        "محاضراتي",
style: TextStyle(color: Colors.blueAccent[700],
fontWeight: FontWeight.bold, ),

                        ))
                        ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                    ],
                  )),
                  PopupMenuItem(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.arrow_drop_down,
                                  size: 30,color: Colors.blueAccent[700],
                                ),

                                Padding(
                                    padding: EdgeInsets.only(left: 230),
                                    child: Text(
                                      "النتيجة",
                                      style: TextStyle(color: Colors.blueAccent[700],
                                        fontWeight: FontWeight.bold,
                                      ),

                                    ))
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                          ],
                        )),
                    PopupMenuItem(
                        child: InkWell(
                          onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));
                          },
                          child: Row(
                            children: [
                              Icon(Icons.arrow_drop_down,
                                size: 30,color: Colors.blueAccent[700],
                              ),
Spacer(),
                              Text(
                                "مرحبا ${getName()}" ,
                                style: TextStyle(color: Colors.blueAccent[700],
                                  fontWeight: FontWeight.bold,
                                ),

                              )
                            ],
                          ),
                        )),
],
                //color: Colors.white,
elevation: 20.0,

            position: PopupMenuPosition.under,
                  offset: Offset(0, 22),
                   icon: Icon(
                     Icons.menu,
                     color: Colors.white,
                   ),
                  ),

          ),
        ],
      ),
      SizedBox(
        width: 30,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'جامعة الازهر',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'كلية الشريعة والقانون بالقاهرة',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
      Image.asset(
        'assets/images/logo.jpeg',
        height: 80,
        width: 80,
      ),
    ],
  );

