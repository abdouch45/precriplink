import 'package:flutter/material.dart';
var obsc=true;
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery. of(context). size. height;
    final iskeyborad=MediaQuery.of(context).viewInsets.bottom !=0;
    return Scaffold(

      appBar: AppBar(
        title: Text('welcome',style: TextStyle(color:Colors.black)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white10,
      ),
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Align(child: Text('email:'),alignment: Alignment.topLeft,),
           SizedBox(height: 10,),
           TextField(decoration: InputDecoration(
             hintText: 'email',
             border: OutlineInputBorder(borderRadius: BorderRadius.all(
                 Radius.circular(10)
             ),gapPadding: 10
             )

           ),
           )
           ,SizedBox(height: 10,),
           Align(child: Text('mot de passe')
           ,alignment: Alignment.centerLeft,),
           SizedBox(height: 10,),
           TextField(decoration: InputDecoration(
               hintText: 'passeword',
               border: OutlineInputBorder(borderRadius: BorderRadius.all(
                   Radius.circular(10)
               ),gapPadding: 10
               ),
             suffixIcon: IconButton(
               onPressed: (){

                 setState(() {
                   if(obsc==true){
                     obsc=false;
                   }else
                     obsc=true;
                 });
               },
               icon:obsc==true ?Icon(Icons.visibility):Icon(Icons.visibility_off),
             ),

           ),
             obscureText:obsc ,
           ),
           SizedBox(height: 10,),
           Align(child: InkWell(child: Text("s'inscrire",style: TextStyle(decoration: TextDecoration.underline),
           ),onTap: (){
             print('test1');
           })
             ,alignment: Alignment.centerRight,),
          if(!iskeyborad) SizedBox(height: height*0.3,),
           ElevatedButton(onPressed: (){
             print('se connecter');
           }, child: Text('se connecter',style: TextStyle(color: Colors.black)
             ,)
             ,style:ElevatedButton.styleFrom(
               primary: Colors.grey,
               elevation:3,
               fixedSize: Size(200, 30)
             ),)
         ],
       ),
     ),
    );
  }
}


