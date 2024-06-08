import 'package:flutter/material.dart';
import 'package:untile5/six.dart';
class sevan extends StatefulWidget {
  const sevan({super.key});

  @override
  State<sevan> createState() => _sevanState();
}

class _sevanState extends State<sevan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
     leading:
       GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) =>six())
             );
           },
           child: Padding(
             padding: const EdgeInsets.only(right:20.0,top: 30.0),
             child: Icon(Icons.arrow_back,),
           )
       ),actions: [
       Padding(
         padding: const EdgeInsets.only(top: 11.0,right:80.0),
         child: Container(height: MediaQuery.of(context).size.height/9,
           width: MediaQuery.of(context).size.width/1.6,
           decoration: BoxDecoration(
           border: Border.all(color: Colors.black,),borderRadius: BorderRadius.circular(25),

         ),child: Padding(
           padding: const EdgeInsets.only(right: 240.0),
           child: Icon(Icons.search),
         ),

         ),
       ),
   ]
   ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Container(height: MediaQuery.of(context).size.height/5,
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image  : AssetImage('assets/img_12.png'),fit: BoxFit.fill,
                    ),
                  )
              ),
            ),
            Text('Tea shop',style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 30
            ),)
          ],
        ),
      ),
    );
  }
}
