import 'package:flutter/material.dart';
import 'package:flutter_nid_management_project/Buttons%20&%20Container/Downbar.dart';
import 'package:flutter_nid_management_project/setColor.dart';

import '../Buttons & Container/HomePageButtons.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 150,
            width: double.infinity,
            color: setColor.GreenColor,
            child : const Text("হোম পেইজ",style : TextStyle(fontSize : 20,color : Colors.white,fontWeight: FontWeight.bold))
          ),
          Container(
              color: Colors.white,
              height: 572,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 200,
                    width: 300,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Image.asset("Image/NID.PNG", fit: BoxFit.cover),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const AccountSettingsButton(),
                  const SizedBox(
                    height: 30,
                  ),
                  const LostNID_Apllication_Button(),
                  const SizedBox(
                    height: 30,
                  ),
                  const NID_INfo_Update_Button(),
                  const SizedBox(
                    height: 30,
                  ),
                  const UnknownInfo(),
                  const SizedBox(
                    height: 50,
                  ),
                ]),
              )),
           const DownBar()
        ],
      )),
    );
  }
}



