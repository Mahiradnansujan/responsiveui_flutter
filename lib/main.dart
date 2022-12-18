import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsiveui/widgets/count_widget.dart';

void main(){
  runApp(MyApp()
  );
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Ui',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){},
          icon: Icon(FontAwesomeIcons.moon))
        ],
      ),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Expanded(
                     child: CountWidget(),
                   ),
                   SizedBox(width: 10,),
                   Expanded(
                     child: CountWidget(),
                   ),
                  ],
                ),
              ),
            ),
              
              
            //2nd
              
              Expanded(
                child: Card(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              width: 150,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("cm"),
                                  Switch(
                                    value: true, 
                                    onChanged: (value){},
                                  ),
                                  Text("ft"),
                                ],
                              ),
                            ),
                          ),
                          Container(child: Text("Height")),
                          SizedBox(height: 15,),
                          Expanded(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 150,
                                    height: 120,
                                    decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(27),
                                     ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("4"),
                                        SizedBox(width: 15),
                                        Icon(Icons.arrow_downward)
                                      ],
                                    ),
                                  ),
                                  
                                  
                                  Container(
                                    width: 150,
                                    height: 120,
                                    decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(27),
                                ),
                                    child: Row(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("4"),
                                        SizedBox(width: 15),
                                        Icon(Icons.arrow_downward)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ),

               Expanded(
                 child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Gender"),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("I'm"),
                            Text("Male"),
                            Switch(value: true, onChanged: (value){},
                            ),
                            Text("Female")
                          ],
                        ),
                      ),
                    ],
                  ),
                 ),
               ), 
               SizedBox(height: 14,
               width: 200,),
                ElevatedButton(
                  
      child: Text(
        "Calculate".toUpperCase(),
        style: TextStyle(fontSize: 14)
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            side: BorderSide(color: Colors.red)
          )
        )
      ),
      onPressed: () => null
    )

          ],
        ),
      ),

      
  
    );
  }
}





