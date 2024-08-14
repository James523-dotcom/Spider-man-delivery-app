import 'package:flutter/material.dart';
import 'package:spidermanapp2/resetpassword2.dart';

class Resetpassword1 extends StatelessWidget {
  const Resetpassword1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: Text("Reset Password", style: TextStyle(
          fontWeight: FontWeight.w500,
        ),),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset('assets/resetpassword.png'),
              SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Text("Enter your email address so we can help you recover your password",
                    textAlign: TextAlign.center,),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 245, 243, 243),
                    
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.email, size: 20,),
                      ),
                      hintText: "Enter Email",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 15)
                    ),
                    
                  ),
                ),
              ),
                SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
               Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: TextButton( onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Resetpassword2()));
                },
                  child: Text("Reset Password", 
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 17
                  ),
                  textAlign: TextAlign.center,
                  ),
                ),
                
              ),
              SizedBox(
                height: 80,
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}