import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/components/doctorCard.dart';
class Doctorhome extends StatefulWidget {
  const Doctorhome({Key? key}) : super(key: key);

  @override
  State<Doctorhome> createState() => _DoctorhomeState();
}

class _DoctorhomeState extends State<Doctorhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar:BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){}, icon:   SvgPicture.asset('assets/home.svg',height: 30,)) ,
              IconButton(onPressed: (){}, icon:  SvgPicture.asset('assets/adduser.svg',height: 30,)),
              Container(width: 40,),
              IconButton(onPressed: (){}, icon:   SvgPicture.asset('assets/recl3.svg',height: 30,)),
              IconButton(onPressed: (){}, icon:  SvgPicture.asset('assets/managec.svg',height: 30,)),
            ],
          ),
        ),

      ) ,
  body: SingleChildScrollView(

    child: Padding(
      padding: EdgeInsets.only(left: 10,top: 30,bottom: 10,right: 10),
      child: Column(

        children: [
          Container(height: 30,),
          TextField(decoration: InputDecoration(
           contentPadding: EdgeInsets.all(0),
            hintText: 'rechercher',
            border: OutlineInputBorder(borderRadius: BorderRadius.all(
                Radius.circular(10)
            )
            ),
            prefixIcon: Icon(Icons.search)

          ),

          ),
         Container(height: 20,)
         ,
         DoctorCard(
          patientNom: 'abdou',
           patientPrenom: 'chihoub',
           year: '10/10/2023',
           email: 'achihoub5@gmail.com',

  ),
        ],
      ),
    ),
  ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        elevation: 0,
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
