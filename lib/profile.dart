import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_data/Sign_up.dart';
import 'package:project_data/constans.dart';
import 'package:project_data/login.dart';

class Profile extends StatefulWidget {


  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> listF = ['الفرقة الاولى','الفرقة الثانية','الفرقة الثالثة','الفرقة الرابعة'];
  String selectItem = 'الفرقة الثانية';
  List<String> listSH = ['الشريعة والقانون - عربي','الشريعة والقانون - انجليزي',];
  String selectItemSH = 'الشريعة والقانون - عربي';
  List<String> list7 = ['انتساب','انتظام',];
  String selectItem7 = 'انتساب';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              LinearProgressIndicator(value: 1,),
              buildItem(),
              LinearProgressIndicator(value: 0.6,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('الاسم بالكامل',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Container(

                        height:35,
                        decoration: BoxDecoration(
                            color: Color(0xffD6E4F0),
                            borderRadius: BorderRadius.circular(7) ),
                        child: TextFormField(
                    enabled: false,
                     textAlign: TextAlign.end,
                            textAlignVertical: TextAlignVertical.bottom,

                            decoration: InputDecoration(
                                hintText: '${getName()}',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
                            ),



                        ),
                      ),
                      SizedBox(height: 15,),
                      Text('الرقم القومي',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Container(

                        height:35,
                        decoration: BoxDecoration(
                            color: Color(0xffD6E4F0),
                            borderRadius: BorderRadius.circular(7) ),
                        child: TextFormField(
                          enabled: false,
                          textAlign: TextAlign.end,
                          textAlignVertical: TextAlignVertical.bottom,

                          decoration: InputDecoration(
hintText: '${getId()}',

                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
                          ),



                        ),
                      ),

                      SizedBox(height: 15,),
                      Text('الفرقة',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Container(

                        height:35,
                        decoration: BoxDecoration(



                          border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(7),

                        ),
                        padding: EdgeInsets.all(2),
                        child: DropdownButton<String>(




                          isExpanded: true,



                          value: selectItem,
                          items: listF.map((item) =>
                              DropdownMenuItem<String>(
                                alignment: Alignment.centerRight,

                                value: item,
                              child: Text(
                                item,),
                              )).toList(),
                          onChanged: (item) => setState(() {
                            selectItem = item!;
                          })
                        ),

                      ),
                      SizedBox(height: 15,),
                      Text('رقم الجلوس',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Container(

                        height:35,
                        decoration: BoxDecoration(
                            color: Color(0xffD6E4F0),
                            borderRadius: BorderRadius.circular(7) ),
                        child: TextFormField(

textDirection: TextDirection.rtl,
                          textAlign: TextAlign.end,
                          textAlignVertical: TextAlignVertical.bottom,

                          decoration: InputDecoration(
                            hintText: '${getNumber()}',


                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
                          ),



                        ),
                      ),
                      SizedBox(height: 15,),
                      Text('الشعبة',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Container(

                        height:35,
                        decoration: BoxDecoration(

                            color: Color(0xffD6E4F0),
                            borderRadius: BorderRadius.circular(7) ),
                        child: DropdownButton<String>(




                            isExpanded: true,



                            value: selectItemSH,
                            items: listSH.map((item) =>
                                DropdownMenuItem<String>(
                                  alignment: Alignment.centerRight,

                                  value: item,
                                  child: Text(
                                    item,),
                                )).toList(),
                            onChanged: (item) => setState(() {
                              selectItemSH = item!;
                            })
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text('نظام الالتحاق',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Container(
                        height:35,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                           // color: Color(0xffD6E4F0),
                            borderRadius: BorderRadius.circular(7) ),
                         child:
                         DropdownButton<String>(




                             isExpanded: true,



                             value: selectItem7,
                             items: list7.map((item) =>
                                 DropdownMenuItem<String>(
                                   alignment: Alignment.centerRight,


                                   value: item,
                                   child: Text(
                                     item,),
                                 )).toList(),
                             onChanged: (item) => setState(() {
                               selectItem7 = item!;
                             })
                         ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: MaterialButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>login()),);
                        },
                          color: Colors.indigo,
                        child: Text('تسجيل الخروج',style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
