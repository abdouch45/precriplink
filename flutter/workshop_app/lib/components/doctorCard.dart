import 'package:flutter/material.dart';
import 'package:workshop_app/screens/doctor/fiche.dart';
class DoctorCard extends StatelessWidget {
  const DoctorCard({this.patientNom,this.patientPrenom,this.email,this.year,Key? key}) : super(key: key);

  final  patientNom;
  final  patientPrenom;
  final  email;
  final  year;

  @override
  Widget build(BuildContext context) {
    void showDetails(){
      Navigator.push(
        context ,
        MaterialPageRoute(builder: (context) => const Fiche()),


      );
    }
    return InkWell(
      onTap: (){
        showDetails();
        print("this is me card");
      },
      child: Card(
        margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
        elevation: 1,
       child: Padding(
         padding: EdgeInsets.all(10),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [

             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(patientNom+' '+patientPrenom,style: TextStyle(
                   fontSize: 16,
                   fontWeight: FontWeight.bold
                 ),)
                 ,IconButton(onPressed: () { print('icon button');
                 showDetails();},
                 icon:Icon(Icons.arrow_forward_ios_rounded))
               ],
             ),
        Text(email,style: TextStyle(
            fontSize: 14,
        ),),
             Align(
               child: Text(year,style: TextStyle(
                   fontSize: 12,
                   fontWeight: FontWeight.w100
               ),
               ),
               alignment: Alignment.centerRight,
             )


           ],
         ),
       ),
      ),
    );
  }
}
