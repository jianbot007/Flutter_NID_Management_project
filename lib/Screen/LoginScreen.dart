import 'package:flutter/material.dart';
import 'package:flutter_nid_management_project/Buttons%20&%20Container/Loading_screen.dart';
import 'package:flutter_nid_management_project/Buttons%20&%20Container/TextFields.dart';
import 'package:flutter_nid_management_project/Screen/Homepage.dart';
import 'package:flutter_nid_management_project/Screen/SignupScreen.dart';
import 'package:flutter_nid_management_project/setColor.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final TextEditingController _nId_No_controller = TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController _Password_controller = TextEditingController();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex : 1,
              child: SizedBox(
                //  height : 100,
                width: double.infinity,
                child: Image.asset("Image/JATIOPORICHOYHOMEPAGE.PNG",
                    fit: BoxFit.fill),
              ),
            ),
            Expanded(
              flex : 5,
                child: SingleChildScrollView(
                    child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                SizedBox(
                  height: 120,
                  width: 200,
                  child: Image.asset("Image/Bangladeshi flag.png",
                      fit: BoxFit.fill),
                ),
                const SizedBox(height: 40),
                const Text("বাংলাদেশ জাতীয় পরিচয়পত্র",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                const SizedBox(height: 60),
                CustomTextField(
                  hinttext: "NID নং",
                  controller: _nId_No_controller,
                  IS_Password: false,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hinttext: "পাসওয়ার্ড",
                  controller: _Password_controller,
                  IS_Password: true,
                ),
                const SizedBox(height: 40),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                           Navigator.push(
                            context,  MaterialPageRoute(builder: (context) => const LoadingScreen(nextScreen: Homepage(),))
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: setColor.RedColor,
                              shape: BoxShape.rectangle,
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text("লগইন",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        ),
                      ),
                      const SizedBox(width: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,  MaterialPageRoute(builder: (context) => const LoadingScreen(nextScreen: SignUpScreen(),))
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: setColor.RedColor,
                              shape: BoxShape.rectangle,
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text("তথ্য নিবন্ধন",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        ),
                      ),
                    ]),
                 
              ],
            )))
          ],
        ));
  }
}
