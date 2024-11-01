import 'package:flutter/material.dart';
import 'package:flutter_nid_management_project/Buttons%20&%20Container/Downbar.dart';
import 'package:flutter_nid_management_project/Buttons%20&%20Container/TextFields.dart';
import 'package:flutter_nid_management_project/setColor.dart';

class Account_Settings extends StatelessWidget {
  Account_Settings({super.key});
  // ignore: non_constant_identifier_names
  final TextEditingController _OldPassController = TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController _NewPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body : Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget> [
                Container(
                alignment: Alignment.bottomLeft,
                  height: 150,
                  width: double.infinity,
                  color: setColor.GreenColor,
                  child :  TextButton(
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
                        child : const Text("পূর্ববর্তী",style : TextStyle(fontSize : 15,color : Colors.white)),
                      ),
                    ),
                ),
                Container(
                  height: 572,
                  width: double.infinity,
                   child: SingleChildScrollView(
                          child: Column(children: [
                          const SizedBox(
                  height: 30,
                ),
                    GestureDetector(
                      child: Container(
                          alignment: Alignment.center,
                          height: 110,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black, width: 1)),
                          child: const Text("Face Scan")),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      child: Container(
                          alignment: Alignment.center,
                          height: 110,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black, width: 1)),
                          child: const Text("Finger Print")),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      hinttext: 'পুরাতন পাসওয়ার্ড',
                      IS_Password: true,
                      controller: _OldPassController,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      hinttext: "নতুন পাসওয়ার্ড",
                      IS_Password: true,
                      controller: _NewPassController,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextButton(
                      onPressed: () {},
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
                        child : Text("জমা দিন",style : TextStyle(fontSize : 15,color : Colors.white)),
                      ),
                    ),
                      const SizedBox( height: 30, )
                             ])),               ),
                
                 const DownBar(),
        ] ),
    );
  }
}
