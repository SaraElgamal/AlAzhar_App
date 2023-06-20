import 'package:flutter/material.dart';
import 'package:project_data/login.dart';
import 'package:project_data/subjects.dart';

var nameController = TextEditingController();
var idController = TextEditingController();
var numberController = TextEditingController();

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var passcontroller = TextEditingController();
  var vcontroller = TextEditingController();

  final formKey = GlobalKey<FormState>();
  List<String> listF = [
    'الفرقة الاولى',
    'الفرقة الثانية',
    'الفرقة الثالثة',
    'الفرقة الرابعة'
  ];

  String selectItem = 'الفرقة الثانية';

  List<String> listSH = [
    'الشريعة والقانون - عربي',
    'الشريعة والقانون - انجليزي',
  ];

  String selectItemSH = 'الشريعة والقانون - عربي';

  List<String> list7 = [
    'انتساب',
    'انتظام',
  ];

  String selectItem7 = 'انتساب';
  List<String> listm = ['شافعي', 'ملكي', 'حنبلي', 'حنفي'];

  String selectItemm = 'شافعي';
  List<String> listg = ['مصر', 'وافد'];

  String selectItemg = 'مصر';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Form(
      key: formKey,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 45,
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
                          color: Colors.grey[700],
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
              ),
              Text(
                'الاشتراك في منصة التعلم الالكتروني',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '*الاسم باللغة العربية',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: nameController,
                      textDirection: TextDirection.ltr,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'من فضلك أدخل الاسم                                                                               ';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.name,
                      textAlign: TextAlign.end,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0.0),
                        constraints: BoxConstraints(
                          maxHeight: 70,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      ' الإيميل',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'من فضلك أدخل الايميل                                                                               ';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.end,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0.0),
                        constraints: BoxConstraints(
                          maxHeight: 70,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      ' كلمة السر',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: passcontroller,
                      onFieldSubmitted: (value) {
                        if (formKey.currentState!.validate()) ;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'كلمة السر غير صالحة                                                                               ';
                        } else if (value.length < 4) {
                          return 'كلمة السر قصيرة';
                        }

                        return null;
                      },
                      textAlign: TextAlign.end,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0.0),
                        constraints: BoxConstraints(
                          maxHeight: 70,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'التحقق من كلمة السر',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: vcontroller,
                      onFieldSubmitted: (value) {
                        if (formKey.currentState!.validate()) {}
                      },
                      validator: (value) {
                        if (vcontroller.text != passcontroller.text) {
                          return 'كلمة السر غير متطابقة                                                                               ';
                        }
                        return null;
                      },
                      obscureText: true,
                      textAlign: TextAlign.end,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0.0),
                        constraints: BoxConstraints(
                          maxHeight: 70,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      ' الرقم القومي أو الهوية الشخصية',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: idController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'من فضلك أدخل رقمك القومي                                                                               ';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.end,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0.0),
                        constraints: BoxConstraints(
                          maxHeight: 70,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'الفرقة الحالية',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      padding: EdgeInsets.all(2),
                      child: DropdownButton<String>(
                          isExpanded: true,
                          value: selectItem,
                          items: listF
                              .map((item) => DropdownMenuItem<String>(
                                    alignment: Alignment.centerRight,
                                    value: item,
                                    child: Text(
                                      item,
                                    ),
                                  ))
                              .toList(),
                          onChanged: (item) => setState(() {
                                selectItem = item!;
                              })),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'القسم / التخصص',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      height: 35,
                      child: DropdownButton<String>(
                          isExpanded: true,
                          value: selectItemSH,
                          items: listSH
                              .map((item) => DropdownMenuItem<String>(
                                    alignment: Alignment.centerRight,
                                    value: item,
                                    child: Text(
                                      item,
                                    ),
                                  ))
                              .toList(),
                          onChanged: (item) => setState(() {
                                selectItemSH = item!;
                              })),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'المذهب',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      height: 35,
                      child: DropdownButton<String>(
                          isExpanded: true,
                          value: selectItemm,
                          items: listm
                              .map((item) => DropdownMenuItem<String>(
                                    alignment: Alignment.centerRight,
                                    value: item,
                                    child: Text(
                                      item,
                                    ),
                                  ))
                              .toList(),
                          onChanged: (item) => setState(() {
                                selectItemm = item!;
                              })),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'رقم الجلوس',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: numberController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'من فضلك أدخل رقم الجلوس                                                                               ';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.end,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0.0),
                        constraints: BoxConstraints(
                          maxHeight: 70,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'رقم الموبايل',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'الرقم غير صالح                                                                                                    ';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.end,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0.0),
                        constraints: BoxConstraints(
                          maxHeight: 70,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('الحالة (انتظام / انتساب)'),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 35,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          // color: Color(0xffD6E4F0),
                          borderRadius: BorderRadius.circular(7)),
                      child: DropdownButton<String>(
                          isExpanded: true,
                          value: selectItem7,
                          items: list7
                              .map((item) => DropdownMenuItem<String>(
                                    alignment: Alignment.centerRight,
                                    value: item,
                                    child: Text(
                                      item,
                                    ),
                                  ))
                              .toList(),
                          onChanged: (item) => setState(() {
                                selectItem7 = item!;
                              })),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('الجنسية'),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 35,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          // color: Color(0xffD6E4F0),
                          borderRadius: BorderRadius.circular(7)),
                      child: DropdownButton<String>(
                          isExpanded: true,
                          value: selectItemg,
                          items: listg
                              .map((item) => DropdownMenuItem<String>(
                                    alignment: Alignment.centerRight,
                                    value: item,
                                    child: Text(
                                      item,
                                    ),
                                  ))
                              .toList(),
                          onChanged: (item) => setState(() {
                                selectItemg = item!;
                              })),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('لم يتم اختيار أي ملف'),
                        SizedBox(
                          width: 5,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Text('اختيار ملف'),
                          color: Colors.grey[300],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          shape: OutlineInputBorder(),
                          child: Row(
                            children: [
                              Icon(
                                Icons.keyboard_return_outlined,
                                size: 16,
                              ),
                              Text('رجوع'),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        MaterialButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Subjects()));
                            }
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.save,
                                color: Colors.white,
                                size: 14,
                              ),
                              Text(
                                'حفظ',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          color: Colors.indigo[900],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

getName() {

getLoginName();
  var get = nameController.text;
  if (get.isEmpty) {
get = getLoginName();
  } else if (get.isNotEmpty && getLoginName().toString().isNotEmpty)
  {
    get = get;

  }

  return get;
}

getId() {
  var get = idController.text;
  if(get == null || get.isEmpty) {
    return '2136547' ;
  }
  return get;
}

getNumber() {
  var get = numberController.text ;
  if(get == null || get.isEmpty) {
    return '5647' ;
  }
  return get;
}
