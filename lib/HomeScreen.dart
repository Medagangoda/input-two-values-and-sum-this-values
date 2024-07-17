import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  final TextEditingController num1controller = TextEditingController(); // add numbers tow input this variable add to value
  final TextEditingController num2controller = TextEditingController();

  double count = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [

              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "First name",
                ),
              ),


              SizedBox(height: 12), 


              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "enter the number",
                ),
              ),

              SizedBox(height: 20,),

              MaterialButton(
                onPressed: (){
                  print("your enter is successful ");
                },
                color: Colors.blue,
                child: Text("Conform",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),

              TextField(
                controller: num1controller,//input value one
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "First number",
                ),
              ),


              SizedBox(height: 12), 


              TextField(
                controller: num2controller,//input value two
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "second number",
                ),
              ),


              SizedBox(height: 12), 

              MaterialButton(
                onPressed: (){
                  double num1 = double.parse(num1controller.text);
                  double num2 = double.parse(num2controller.text);

                  setState(() {
                    count = num2+num2;
                  });
                },
                color: Colors.blue,
                child: Text("ADD +",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),

              Text("count: $count",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold,fontSize: 30),),

            ],
          ),
        ),
      ),
    );
  }
}