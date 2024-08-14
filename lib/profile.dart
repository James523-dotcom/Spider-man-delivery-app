import 'package:flutter/material.dart';
import 'package:spidermanapp2/changepassword.dart';
import 'package:spidermanapp2/profiledetails.dart';
import 'package:spidermanapp2/signin.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("Profile", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600
        ),),
      ),
      body: Stack(
        children: [
          Container(
            height: 700,
            decoration: BoxDecoration(
              color: Colors.red
            ),
          ),
           Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Container(
            height: 600,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 230, 222, 222),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                    width: 145,
                    height: 145,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle   
                    ),
                    child: Image.asset('assets/subprofile.png')
                    ),
                    SizedBox(
                      height: 13,
                    ),
              Text("John Doe", style: TextStyle(
                fontWeight: FontWeight.w600
              ),),
              SizedBox(
                height: 4,
              ),
              Text("johndoe@gmail.com", style: TextStyle(
                fontSize: 12
              ),),
              SizedBox(
                height: 20,
              ),
              Padding(
           padding: const EdgeInsets.all(14),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)
                ),
                 child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 204, 197, 197),
                          borderRadius: BorderRadius.circular(14)
                        ),
                        child: TextButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profiledetails()));
                        }, child: Row(
                          children: [
                            Icon(Icons.person, color: Colors.red,),
                            Text("  "),
                            Text("Profile details", style: TextStyle(
                              color: Colors.black
                            ),),
                          ],
                        )
                            )),
               ),
               SizedBox(
                height: 10,
               ),
                Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)
                ),
                 child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 204, 197, 197),
                          borderRadius: BorderRadius.circular(14)
                        ),
                        child: TextButton(onPressed: (){}, child: Row(
                          children: [
                            Icon(Icons.settings, color: Colors.red,),
                            Text("  "),
                            Text("Settings", style: TextStyle(
                              color: Colors.black
                            ),),
                          ],
                        )
                        
                        )),
               ),
               SizedBox(
                height: 10,
               ),
                Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)
                ),
                 child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 204, 197, 197),
                          borderRadius: BorderRadius.circular(14)
                        ),
                        child: TextButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Changepassword()));
                        }, child: Row(
                          children: [
                            Icon(Icons.lock, color: Colors.red,),
                            Text("  "),
                            Text("Change Password", style: TextStyle(
                              color: Colors.black
                            ),),
                          ],
                        )
                        
                        )),
               ),
               SizedBox(
                height: 10,
               ),
                Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)
                ),
                 child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 204, 197, 197),
                          borderRadius: BorderRadius.circular(14)
                        ),
                        child: TextButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signin()));
                        }, child: Row(
                          children: [
                            Icon(Icons.logout, color: Colors.red,),
                            Text("  "),
                            Text("Log out", style: TextStyle(
                              color: Colors.black
                            ),),
                          ],
                        )
                        
                        )),
               ),
               SizedBox(
                height: 10,
               )
             ],
           ),
                   )
            ],
          ),
        ),
        
        ],
      ),
    );
  }
}