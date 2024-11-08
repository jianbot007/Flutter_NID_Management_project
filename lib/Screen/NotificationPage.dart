import 'package:flutter/material.dart';
import 'package:flutter_nid_management_project/setColor.dart';

class NotificationScreen extends StatelessWidget {
  
  final String NotificationText; 
   const NotificationScreen({super.key, required this.NotificationText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body : Center(child: Container(
        height: 400,
        width : 350,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius : BorderRadius.circular(20),
           border: Border.all(color: Colors.black, width: 1)
        ),
        child : Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Container(
            padding : const EdgeInsets.all(20),
            child: Text(NotificationText,style : const TextStyle(fontSize : 15))),
          const SizedBox(height: 30,),
           TextButton(
                      onPressed: () {
                        Navigator.pop(context,"Back");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 100,
                        decoration : BoxDecoration(
                          color: setColor.RedColor,
                          shape : BoxShape.rectangle,
                          border : Border.all(width: 1,color: Colors.black),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child : const Text("ঠিক আছে",style : TextStyle(fontSize : 15,color : Colors.white)),
                      ),
                    ),

        ],)
      
      ),),
    );
  }
}