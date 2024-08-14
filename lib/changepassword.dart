import 'package:flutter/material.dart';

class Changepassword extends StatelessWidget {
  const Changepassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Change Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/resetpassword.png"),
              Text("Fill the spaces below to reset your password"),
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                  decoration: InputDecoration(
                    hintText: "Old Password",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10)
                  ),
                )),
              ),
               SizedBox(
                height: 10,
              ),
              Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                  decoration: InputDecoration(
                    hintText: "New Password",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10)
                  ),
                )),
              ),
               SizedBox(
                height: 10,
              ),
              Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10)
                  ),
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
                child: TextButton( onPressed: () {},
                  child: Text("Change Password", 
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
        ),
      ),
    );
  }
}