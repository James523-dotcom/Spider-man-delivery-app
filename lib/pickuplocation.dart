import 'package:flutter/material.dart';
import 'package:spidermanapp2/droplocation.dart';

class Pickuplocation extends StatelessWidget {
  const Pickuplocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pick Up Location"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 226, 219, 219)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(Icons.search),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset('assets/map.png'),
              SizedBox(
                height: 10,
              ),
               Material(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed:(){}, child: Text("City", style: TextStyle(
                        color: Colors.black,
                      ),),),
                    ),
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
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed:(){}, child: Text("Quarter", style: TextStyle(
                        color: Colors.black,
                      ),)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ), Material(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Brief Description",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10)
                        ),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                   Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: TextButton( onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Droplocation()));
                },
                  child: Text("Next", 
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