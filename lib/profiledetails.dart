import 'package:flutter/material.dart';

class Profiledetails extends StatelessWidget {
  const Profiledetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile Details"),
      ),
      body:  Padding(
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
           padding: const EdgeInsets.all(18),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Full Name"),
                ],
              ),
               Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)
                ),
                 child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 228, 223, 223),
                          borderRadius: BorderRadius.circular(14)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("John Doe"),
                        )),
               ),
               SizedBox(
                height: 10,
               ),
                Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email"),
                ],
              ),
               Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)
                ),
                 child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 228, 223, 223),
                          borderRadius: BorderRadius.circular(14)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("johndoe@gmail.com"),
                        )),
               ),
               SizedBox(
                height: 10,
               ),
                Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Gender"),
                ],
              ),
               Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)
                ),
                 child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 228, 223, 223),
                          borderRadius: BorderRadius.circular(14)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("Male"),
                        )),
               ),
               SizedBox(
                height: 10,
               ),
                Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Phone Number"),
                ],
              ),
               Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)
                ),
                 child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 228, 223, 223),
                          borderRadius: BorderRadius.circular(14)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("+237677756413"),
                        )),
               ),
               SizedBox(
                height: 30,
               ),
               Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: TextButton( onPressed: (){},
                  child: Text("Save", 
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 17
                  ),
                  textAlign: TextAlign.center,
                  ),
                ),
                
              ),
             ],
           ),
          )
            ],
          ),
        ),
    );
  }
}