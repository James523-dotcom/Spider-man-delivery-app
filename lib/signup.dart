import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: Text("Sign Up", style: TextStyle(
          fontWeight: FontWeight.w500,
        ),),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 281,
                width: 250,
                child: Image.asset('assets/mobilelogin.png')),
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
                        child: Icon(Icons.person, size: 20,),
                      ),
                      hintText: "Name",
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
                height: 20,
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
                      hintText: "Email",
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
                height: 20,
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
                height: 20,
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
                        child: Icon(Icons.lock, size: 20,),
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
                },
                  child: Text("Sign Up", 
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
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  TextButton(onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
                  }, child: Text("Sign In", style: TextStyle(
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