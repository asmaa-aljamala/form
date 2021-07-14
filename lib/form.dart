
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutterform/saveddata.dart';

class Form1 extends StatefulWidget{

  @override
  _Form1State createState() => _Form1State();
}

class _Form1State extends State<Form1> {

GlobalKey<FormState>formkey=GlobalKey<FormState>();
sendForm(){
  formkey .currentState.validate();//ما تنفد حاجة الا اذا تاكدت من الشروط الفليدشن
  // if()
}
  TextEditingController controller =  TextEditingController();
  TextEditingController controller2 =  TextEditingController();
  String valuetext='';
  bool isAspted = false;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       shadowColor: Colors.black12,
       title: Text(('Forms')),
     ),
     body: Container(
       child: Form(
         key: formkey,
         child: Column(children: [
           TextFormField(
             controller: controller,
             onChanged: (v){
             this.valuetext=v;
               setState(() {
                 this.valuetext=v;
               });
               Text('value');
               decoration: InputDecoration(
                 labelText: 'value'

               );
             }
           ),

           TextFormField(
             controller: controller2,
               onChanged: (v){
                 this.valuetext=v;
                 setState(() {
                   this.valuetext=v;
                 });
                 Text('value');
                 decoration: InputDecoration(
                     labelText: 'value'

                 );
               }
           ),
           SizedBox(
             height: 20,
           ),
         CheckboxListTile(
            title: Text('Accept'),
         value: isAspted,
         onChanged: (v) {
           setState(() {
             this.isAspted =v;
           });
         }),
           RaisedButton(
               color: Colors.red,
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20)),
               child: Text('submit'),
               onPressed: () {
                 if(this.isAspted){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                     return savedData(controller.text,controller2.text);
                   }
                   ));
                   // }else{
                   // showDialog(context:context , builder:() );
                 }
               })

         ],),
       ),
     ),
   );
  }
}

echo "# form" >> README.md
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/asmaa-aljamala/form.git
git push -u origin main