import 'package:flutter/material.dart';
import 'package:spidermanapp2/bottom_navigation_bar.dart';
import 'package:spidermanapp2/resetpassword1.dart';
import 'package:spidermanapp2/signup.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign In", style: TextStyle(
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
              Image.asset('assets/computerlogin.png'),
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
                        child: Icon(Icons.phone, size: 20,),
                      ),
                      hintText: "Phone Number",
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
                      hintText: "Password",
                       suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          _isObscure =! _isObscure;
                        });
                      }, icon: Icon(_isObscure?
                      Icons.visibility_off:
                      Icons.visibility)),
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                     
                    ),
                    obscureText: _isObscure
                    
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Resetpassword1()));
                    }, child:  Text("Forgot Password?", style: TextStyle(color: Colors.black),),),
                  ],
                ),
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => dashboardPage()));
                },
                  child: Text("Sign In", 
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
                  }, child: Text("Sign Up", style: TextStyle(
                    color: Colors.red
                  ),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}