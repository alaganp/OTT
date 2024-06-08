import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:untile5/eight.dart';
import 'package:untile5/sevan.dart';
import 'package:untile5/third.dart';
class six extends StatefulWidget {
  const six({super.key});

  @override
  State<six> createState() => _sixState();
}

class _sixState extends State<six> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        //leading: const Text('hjh'),
        backgroundColor: Colors.cyan,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.cyan),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(child:Image(image:AssetImage('assests/img_1.png')),),
                ),
                accountName: Text('alagan P',style: TextStyle(
                    fontSize: 28
                ),),
                accountEmail:Text('alagan08@gmail.com')),
            ListTile(
              leading: Icon(
                  Icons.home
              ),
              title: const Text('Catalog'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                  Icons.help_center
              ),title: const Text('Language'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                  Icons.add_box_outlined
              ),
              title:const Text('Help Center'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                  Icons.settings
              ),
              title: const Text('Settings'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                  Icons.touch_app_outlined
              ),title: const Text('About app'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                  Icons.assignment_ind_outlined
              ),
              title: const Text('Log out'),
              onTap: (){
                try {
                  final GoogleSignIn goo = new GoogleSignIn();
                  goo.signOut();
                  Navigator.push(context,MaterialPageRoute(builder: (context) => third()  ) );
                }catch(e){
                  print(e);
                }
              },
            )
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height:20
        ),Text("Unique Food Business Ideas For 2024"
          ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width/1.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image  : AssetImage('assets/img_7.png'),fit: BoxFit.fill,
            ),
            ),
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>sevan())
                    );
                  },
            ),
          ),),
            SizedBox(height:50
          ),Text('10 Reasons Why Restaurants Fail & how to Avoid The Mistakes',
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

             Container(height: MediaQuery.of(context).size.height/4,
               width:MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image  : AssetImage('assets/img_8.png'),fit: BoxFit.fill,
                  ),
                ),child: GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) =>eight())
                     );
                   },
            ),
             )
        ],
      ),
    );
  }
}
