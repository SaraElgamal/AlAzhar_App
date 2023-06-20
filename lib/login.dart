import 'package:flutter/material.dart';
import 'package:project_data/Sign_up.dart';
import 'package:project_data/subjects.dart';
var nameC = TextEditingController();

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final formKey = GlobalKey<FormState>();

  bool? a = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(

                  children: [
                    LinearProgressIndicator(
                      value: 1,

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('جامعة الازهر',style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold

                            ),),
                            Text('كلية الشريعة و القانون بالقاهرة',style: TextStyle(color: Colors.grey,
                                fontSize: 18

                            ),)

                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20,right:10),
                          child: Image.asset('assets/images/logo.jpeg',height: 80,),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      height: 2,
                      color: Colors.grey,
                      endIndent: 20,
                      indent: 20,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('تسجيل الدخول الى منصة التعلم الالكترونى',
                      style:TextStyle(
                        color:Colors.blueAccent,
                        fontSize: 18,
                        //  fontWeight: FontWeight.bold
                      ) ,),
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: TextFormField(
                        controller: nameC,
                        validator: (value){
                          if(value==null ||value.isEmpty ){
                            return '                                                                         هذا الحقل مطلوب';
                          }
                          return null ;
                        },
                        textAlign: TextAlign.end,
                        onFieldSubmitted: (value){
                          if(formKey.currentState!.validate());
                        },
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                            labelText: ('اسم المستخدم أو الرقم القومى'),


                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: TextFormField(
                        validator: (value){
                          if(value==null ||value.isEmpty ){
                            return 'هذا الحقل مطلوب                                                                         ';
                          }
                          return null ;
                        },
                        onFieldSubmitted: (value){
                          if(formKey.currentState!.validate());
                        },
                        textAlign: TextAlign.end,

                        decoration: InputDecoration(
                            labelText: ('كلمة المرور'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton( color: Colors.blueAccent,
                            padding: EdgeInsets.only(
                              left: 40,
                              right: 40,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                            ),
                            onPressed: (){
                              if(formKey.currentState!.validate())
                              {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context)=> Subjects()));
                              }



                            },
                            child: Text('دخول',
                              style: TextStyle(
                                  color: Colors.white
                              ),),
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(

                                children: [
                                  Checkbox(


                                  value: a, onChanged:( value) {
                                  setState(() {
                                    a = value ;
                                  });


                                },
                                    checkColor: a! ? Colors.white : Colors.blue,
                                ),
                                  Text('تذكرنى'),
                                ],
                              ),
                              Row(

                                children: [
                                  TextButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=> SignUp()));
                                  },
                                      child:Text('سجل الأن',
                                        style: TextStyle(
                                            color: Colors.blueAccent
                                        ),) ),
                                  Text('لا تملك حساب ؟'),

                                ],
                              ),
                              Row(
                                children: [
                                  TextButton(onPressed: (){},
                                      child:Text('تغير كلمة المرور',
                                        style: TextStyle(
                                            color: Colors.blueAccent
                                        ),) ),
                                ],
                              )
                            ],

                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

          )
      ),
    )
    ;
  }
}
var deleteItem = nameC.text;
delete(var delete)
{
  if(delete == '' )
  {
    delete = nameC.text;
  } else if (delete.toString().isNotEmpty) {
    delete = '';
  }
}
   getLoginName()
{
  var get = deleteItem;
 delete(deleteItem);
  return get;
}
