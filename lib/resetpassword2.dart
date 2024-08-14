import 'package:flutter/material.dart';

class Resetpassword2 extends StatelessWidget {
  const Resetpassword2({super.key});

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
              Image.asset('assets/confirmed.png'),
              SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Check your Email", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Text("Enter your email address so we can help you recover your password",
                    textAlign: TextAlign.center,),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
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
                  child: Text("Open Mail", 
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