import 'package:flutter/material.dart';
import 'package:project_data/constans.dart';
import 'package:project_data/profile.dart';

class ScareenTable extends StatefulWidget {
  @override
  State<ScareenTable> createState() => _ScareenTableState();
}

class _ScareenTableState extends State<ScareenTable> {
  List<String> listF = ['الفرقة الاولى','الفرقة الثانية','الفرقة الثالثة','الفرقة الرابعة'];

  String selectItem = 'الفرقة الثانية';

  List<String> listSH = ['الشريعة والقانون - عربي','الشريعة والقانون - انجليزي',];

  String selectItemSH = 'الشريعة والقانون - عربي';

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
                   height: 200,
                 ),


                 Positioned(
                     top: 30,
                     left: 206,
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
                     left: 200,
                     child: Text(
                       'الجدول الدراسي',
                       style: TextStyle(color: Colors.white, fontSize: 22),
                     ),
                 ),
                 Container(
                   margin: EdgeInsetsDirectional.only(top: 150,end: 20,start: 20),

                   height:35,
                   decoration: BoxDecoration(

                       color: Colors.white,
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
                 Container(
                   margin: EdgeInsetsDirectional.only(top: 100,end: 20,start: 20),
                   height:35,

                   decoration: BoxDecoration(
                     color: Colors.white,



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


               ],
             ),
            LinearProgressIndicator(value: 0.6,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(

                children: <Widget>[
                  Center(
                    child: Text(
                      'الجدول الدراسي', style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                    ),
                  ),
                  DataTable(
                    columns: [
                      DataColumn(label: Text('اليوم', style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),),),
                      DataColumn(label: Text('المادة', style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),),),
                      DataColumn(label: Text('الدكتور', style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),),),
                      DataColumn(label: Text('الوقت', style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),),),
                    ],
                    rows: [
                      DataRow(

                          cells: [
                        DataCell(Text('الثلاثاء', style: TextStyle(
                            fontSize: 20,),),),
                        DataCell(Text('القانون', style: TextStyle(
                            fontSize: 20, ),)),
                        DataCell(Text('محمد حسن', style: TextStyle(
                            fontSize: 20, ),)),
                        DataCell(Text('10 ص', style: TextStyle(
                            fontSize: 20, ),)),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('الاحد', style: TextStyle(
                            fontSize: 20, ),),),
                        DataCell(Text(' شريعة', style: TextStyle(
                            fontSize: 20, ),)),
                        DataCell(Text('احمد محمود', style: TextStyle(
                            fontSize: 20, ),)),
                        DataCell(Text('10 ص', style: TextStyle(
                            fontSize: 20, ),)),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('الخميس', style: TextStyle(
                            fontSize: 20, ),),),
                        DataCell(Text(' اقتصاد',style: TextStyle(
                            fontSize: 20, ),)),
                        DataCell(Text('مجدي عبده', style: TextStyle(
                            fontSize: 20, ),)),
                        DataCell(Text('9ص',style: TextStyle(
                          fontSize: 20, ))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('الاثنين', style: TextStyle(
                            fontSize: 20, ),),),
                        DataCell(Text(' حديث',style: TextStyle(
                            fontSize: 20, ),)),
                        DataCell(Text('اسامه سعيد', style: TextStyle(
                            fontSize: 20, ),)),
                        DataCell(Text('11ص',style: TextStyle(
                          fontSize: 20, ))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('الاحد', style: TextStyle(
                            fontSize: 20, ),),),
                        DataCell(Text(' مدنية',style: TextStyle(
                            fontSize: 20, ),)),
                        DataCell(Text('مجدي محمد', style: TextStyle(
                            fontSize: 20, ),)),
                        DataCell(Text('10ص',style: TextStyle(
                          fontSize: 20, ))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('السبت', style: TextStyle(
                            fontSize: 20, ),),),
                        DataCell(Text(' قران',style: TextStyle(
                            fontSize: 20, ),)),
                        DataCell(Text('احمد عبده', style: TextStyle(
                            fontSize: 20, ),)),
                        DataCell(Text('9ص',style: TextStyle(
                          fontSize: 20, ))),
                      ]),
                    ],

                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
