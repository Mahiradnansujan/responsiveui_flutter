import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountWidget extends StatelessWidget {
  const CountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
     elevation: 8,
                child: Container(
                  //height: 150,
                 // width: MediaQuery.of(context).size.width /2-23,
     child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
     children: [
       Text("Age (In Year)"),
       Text("18"),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           ElevatedButton(
           onPressed: () {},
           child: Icon(Icons.add, color: Color.fromARGB(255, 154, 7, 180),
           size: 40.0,),
           style: ElevatedButton.styleFrom(
         shape: CircleBorder(),
         backgroundColor: Colors.purple.withOpacity(0.22)
            ),
              ),
              ElevatedButton(
           onPressed: () {},
           child: Icon(Icons.remove, color: Color.fromARGB(255, 154, 7, 180),
           size: 40.0,),
           style: ElevatedButton.styleFrom(
         shape: CircleBorder(),
         backgroundColor: Colors.purple.withOpacity(0.22) 
            ),
              )
         ],
       )
     ],
                  ),
                ),
              );
  }
}