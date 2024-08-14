import 'package:flutter/material.dart';
import 'package:spidermanapp2/neworder.dart';

class Packageinformation extends StatefulWidget {
  const Packageinformation({super.key});

  @override
  State<Packageinformation> createState() => _PackageinformationState();
}

class _PackageinformationState extends State<Packageinformation> {
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems =[
      DropdownMenuItem(child: Text("Electronics"), value: "Electronics",),
      DropdownMenuItem(child: Text("Electronics"), value: "Phones"),
      DropdownMenuItem(child: Text("Electronics"), value: "Devices"),
      DropdownMenuItem(child: Text("Electronics"), value: "Computers"),
    ];
    return menuItems;
  }
  String selectedValue = "Electronics";
   List<DropdownMenuItem<String>> get dropdownItem{
    List<DropdownMenuItem<String>> menuItems =[
      DropdownMenuItem(child: Text("0kg - 10kg"), value: "Electronics",),
      DropdownMenuItem(child: Text("10kg - 20kg"), value: "Phones"),
      DropdownMenuItem(child: Text("20kg - 30kg"), value: "Devices"),
      DropdownMenuItem(child: Text("30kg - 40kg"), value: "Computers"),
    ];
    return menuItems;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Package Information"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Vehicle Preference", style: TextStyle(
                          fontWeight: FontWeight.w600
                        ),),
                      ),
                    ],
                  ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Material(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none 
                      )
                    ),
                    value: selectedValue,
                    items: dropdownItems, onChanged: (String? newValue){
                      setState(() {
                        selectedValue = newValue!;
                      });
                    }),
                ),
              ),
              SizedBox(
                height: 20,
              ),
               Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Weight", style: TextStyle(
                          fontWeight: FontWeight.w600
                        ),),
                      ),
                    ],
                  ),
               Padding(
                padding: const EdgeInsets.all(8),
                child: Material(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none 
                      ),
                      
                    ),
                    value: selectedValue,
                    items: dropdownItem, onChanged: (String? newValue){
                      setState(() {
                        selectedValue = newValue!;
                      });
                    }),
                ),
              ),
              SizedBox(
                height: 20,
              ),
               Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Description", style: TextStyle(
                          fontWeight: FontWeight.w600
                        ),),
                      ),
                    ],
                  ),
              Material(
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
                            hintText: "Type description",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10)
                          ),
                        )
                      ),
                    ),
          
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Vehicle Preference", style: TextStyle(
                          fontWeight: FontWeight.w600
                        ),),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MaterialButton(onPressed: (){}, child: Image.asset('assets/car2.png'),),
                        MaterialButton(onPressed: (){}, child: Image.asset('assets/bike.png'),),
                        MaterialButton(onPressed: (){}, child: Image.asset('assets/car2.png'),),
                        MaterialButton(onPressed: (){}, child: Image.asset('assets/bike.png'),),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
             
                    Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: TextButton( onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Neworder()));
                  },
                    child: Text("Next", 
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 17
                    ),
                    textAlign: TextAlign.center,
                    ),
                  ),)
            ],
          ),
        ),
      ),
    );
  }
}