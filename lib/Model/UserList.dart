class User {
  String birthCertificateNo;
  String username;
  String mobileNo;
  String fatherName;
  String motherName;
  String fatherNIDno;
  String motherNIDno;
  String maritialStatus;
  String district;
  String division;
  String thana;
  String subDistrict;
  String villageName;
  String voterIDno;
  String partnerName;
  String partnerNidno;
  String gender;
  DateTime? pickedDon;
  String dob;
  String bloodGroup;

  User({
    required this.birthCertificateNo,
    required this.username,
    required this.mobileNo,
    required this.fatherName,
    required this.motherName,
    required this.fatherNIDno,
    required this.motherNIDno,
    required this.maritialStatus,
    required this.district,
    required this.division,
    required this.thana,
    required this.subDistrict,
    required this.villageName,
    required this.voterIDno,
    required this.partnerName,
    required this.partnerNidno,
    required this.gender,
    this.pickedDon,
    required this.dob,
    required this.bloodGroup,
  });
}

class UserList {
  List<User> users = [];

  void addUser(User user) {
    users.add(user);
  }

  void removeUser(User user) {
    users.remove(user);
  }

  User? getUser(String birthCirtificateNo) {
    return users.firstWhere((user) => user.birthCertificateNo == birthCirtificateNo); //Need to add orElse oif doesnt match
  }

  void displayUsers() {
    for (var user in users) {
      print("Username: ${user.username}, Mobile No: ${user.mobileNo}");
     
    }
  }
}
