import 'package:flutter/material.dart';
import 'package:spidermanapp2/calls.dart';
import 'package:spidermanapp2/history.dart';
import 'package:spidermanapp2/pickuplocation.dart';
import 'package:spidermanapp2/profile.dart';
import 'package:spidermanapp2/saveplaces.dart';
import 'package:spidermanapp2/signin.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dashboard", style: TextStyle(
          fontWeight: FontWeight.w600
        ),),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerHeader(child: Text("Menu", style: TextStyle(
              fontWeight: FontWeight.w600,
            ),)),
            Container(
              height: 70,
              width: 280,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Text("BALANCE", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),),
                    SizedBox(
                      width: 120,
                    ),
                    Column(
                      children: [
                        Text("10 WEB",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400
                    ),),
                    Text("1000 XAF", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400
                    ),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Text("Send", style: TextStyle(
                fontSize: 15
              ),),
              onTap: (){},
            ),
             ListTile(
              leading: Text("History", style: TextStyle(
                fontSize: 15
              ),),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => History()));
              },
            ),
             ListTile(
              leading: Text("Call", style: TextStyle(
                fontSize: 15
              ),),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Calls()));
              },
            ),
             ListTile(
              leading: Text("Save Places", style: TextStyle(
                fontSize: 15
              ),),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Saveplaces()));
              },
            ),
             ListTile(
              leading: Text("Settings", style: TextStyle(
                fontSize: 15
              ),),
              onTap: (){},
            ),
             ListTile(
              leading: Text("Info", style: TextStyle(
                fontSize: 15
              ),),
              onTap: (){},
              style: ListTileStyle.drawer,
            ),
             ListTile(
              leading: Text("Log out", style: TextStyle(
                fontSize: 15
              ),),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signin()));
              },
              style: ListTileStyle.drawer,
            ),
          ],
        ),
      ),
        floatingActionButton: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle
        ),
        child: IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile()));
        }, icon: Image.asset('assets/subprofile.png'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Image.asset('assets/map.png'),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 228, 223, 223),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 8),
                      child: Column(
                        children: [
                          Text("Where to?"),
                          Image.asset('assets/car.png')
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    IconButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Pickuplocation()));
                    }, icon: Icon(Icons.arrow_forward_ios),
                    color: Colors.red,
                    alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
              ),
               SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 142,
                    width: 144,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 228, 223, 223),
                       borderRadius: BorderRadius.circular(10)
                    ),
                     child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ndokoti"),
                          SizedBox(
                            height: 70,
                          ),
                          Image.asset('assets/car.png')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 142,
                    width: 170,
                     decoration: BoxDecoration(
                      color:  Color.fromARGB(255, 228, 223, 223),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("New Bell"),
                          SizedBox(
                            height: 70,
                          ),
                          Image.asset('assets/car.png')
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 142,
                    width: 144,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 228, 223, 223),
                       borderRadius: BorderRadius.circular(10)
                    ),
                     child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Bonamoussadi"),
                          SizedBox(
                            height: 70,
                          ),
                          Image.asset('assets/car.png')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 142,
                    width: 170,
                     decoration: BoxDecoration(
                      color:  Color.fromARGB(255, 228, 223, 223),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Deido"),
                          SizedBox(
                            height: 70,
                          ),
                          Image.asset('assets/car.png')
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}