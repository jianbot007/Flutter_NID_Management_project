import 'package:flutter/material.dart';
import 'package:flutter_nid_management_project/Screen/AccountSettingsPage.dart';
import 'package:flutter_nid_management_project/Screen/UnknownInfo_screen.dart';

class AccountSettingsButton extends StatefulWidget {
  const AccountSettingsButton({super.key});

  @override
  State<AccountSettingsButton> createState() => _AccountSettingsButtonState();
}

class _AccountSettingsButtonState extends State<AccountSettingsButton> {
  bool isLoading = false;

  void Loading_Navigation() {
    setState(() {
      isLoading = !isLoading;
    });

    Future.delayed(const Duration(seconds: 1), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Account_Settings()));
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Loading_Navigation();
        },
        child: isLoading
            ? CircularProgressIndicator(
                color: Colors.green,
              )
            : Container(
                height: 50,
                width: 300,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: (10)),
                child: const Text(
                  "একাউন্ট সেটিংস",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
              ));
  }
}

class LostNID_Apllication_Button extends StatefulWidget {
  const LostNID_Apllication_Button({super.key});

  @override
  State<LostNID_Apllication_Button> createState() =>
      _LostNID_Apllication_ButtonState();
}

class _LostNID_Apllication_ButtonState
    extends State<LostNID_Apllication_Button> {
  bool isLoading = false;

  void Loading_Navigation() {
    setState(() {
      isLoading = !isLoading;
    });

    Future.delayed(const Duration(seconds: 1), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => UnknownInfo_screen()));
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Loading_Navigation();
        },
        child: isLoading
            ? CircularProgressIndicator(
                color: Colors.green,
              )
            : Container(
                height: 50,
                width: 300,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: (10)),
                child: const Text(
                  "হারানো NID আবেদন",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
              ));
  }
}

class NID_INfo_Update_Button extends StatefulWidget {
  const NID_INfo_Update_Button({super.key});

  @override
  State<NID_INfo_Update_Button> createState() => _NID_INfo_Update_ButtonState();
}

class _NID_INfo_Update_ButtonState extends State<NID_INfo_Update_Button> {
  bool isLoading = false;

  void Loading_Navigation() {
    setState(() {
      isLoading = !isLoading;
    });

    Future.delayed(const Duration(seconds: 1), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => UnknownInfo_screen()));
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Loading_Navigation();
        },
        child: isLoading
            ? CircularProgressIndicator(
                color: Colors.green,
              )
            : Container(
                height: 50,
                width: 300,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: (10)),
                child: const Text(
                  "NID তথ্য সংশোধন",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
              ));
  }
}

class UnknownInfo extends StatefulWidget {
  const UnknownInfo({Key? key}) : super(key: key);

  @override
  _UnknownInfoState createState() => _UnknownInfoState();
}

class _UnknownInfoState extends State<UnknownInfo> {
  bool isLoading = false;

  void Loading_Navigation() {
    setState(() {
      isLoading = !isLoading;
    });

    Future.delayed(const Duration(seconds: 1), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => UnknownInfo_screen()));
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Loading_Navigation();
      },
      child: isLoading
          ? CircularProgressIndicator(
              color: Colors.green,
            )
          : Container(
              height: 50,
              width: 300,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 10),
              child: const Text(
                "অজানা তথ্য",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
    );
  }
}