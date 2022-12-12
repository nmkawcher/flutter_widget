import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


 class HomePage extends StatelessWidget {
   const HomePage({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {

     double screenWidth = MediaQuery.of(context).size.width;
     print(screenWidth);

     return SafeArea(
       child: Scaffold(
         backgroundColor: Colors.white38,
         body: Column(
           children: [

             Container(
               width: screenWidth,
               padding: const EdgeInsets.all(10),
               decoration: const BoxDecoration(
                 color: Colors.white
               ),
               child: Text('Doctor Para',style: TextStyle(color: Colors.black,fontSize: 16),),
             ),

             SizedBox(height: 10,),

             Padding(padding: EdgeInsets.all(15),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Expanded(child: serviceWidget('Doctor', Icons.person,10)),
                 Expanded(child: serviceWidget('Appointment', Icons.note_alt_outlined,10)),
                 Expanded(child: serviceWidget('Prescription', Icons.person,10)),
                 Expanded(child: serviceWidget('Emg Doctor', Icons.person,0))
               ],
             ),
             ),
             Padding(padding: EdgeInsets.only(left: 15,right: 15,bottom: 15),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Expanded(child: serviceWidget('Doctor', Icons.person,10)),
                 Expanded(child: serviceWidget('Appointment', Icons.note_alt_outlined,10)),
                 Expanded(child: serviceWidget('Prescription', Icons.person,10)),
                 Expanded(child: serviceWidget('Emg Doctor', Icons.person,0))
               ],
             ),
             ),
             Container(
               width: MediaQuery.of(context).size.width,
               margin: EdgeInsets.only(left: 10,right: 10),
               height: 100,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 image: DecorationImage(fit:BoxFit.cover,image: NetworkImage('https://img.freepik.com/free-vector/blue-technology-digital-banner-design_1017-32257.jpg?w=2000',))
               ),

             )
           ],
         ),
       ),
     );
   }

   Widget serviceWidget(String text,IconData sIcon,double margin){
     return Container(
       margin: EdgeInsets.only(right: margin),
       padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
       decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(5),
           color: Colors.white
       ),
       child: Column(
         children: [
           Icon(sIcon,size: 25,color: Colors.amber,),
           SizedBox(height: 5,),
           Text(text,style: TextStyle(color: Colors.black,fontSize: 16),overflow: TextOverflow.ellipsis,)
         ],
       ),
     );
   }

 }

 // top section
 //service group 1
 //banner
 //service group 2
 //slider section



