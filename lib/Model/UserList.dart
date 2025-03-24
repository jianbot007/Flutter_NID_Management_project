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

   factory User.fromJson(Map<String, dynamic> json) {
    return User(
      birthCertificateNo: json['birthCertificateNo'] ?? '',
      username: json['username'] ?? '',
      mobileNo: json['mobile_no'] ?? '',
      fatherName: json['father_name'] ?? '',
      motherName: json['mother_name'] ?? '',
      fatherNIDno: json['father_nid_no'] ?? '',
      motherNIDno: json['mother_nid_no'] ?? '',
      maritialStatus: json['marital_status'] ?? '',
      district: json['district'] ?? '',
      division: json['division'] ?? '',
      thana: json['thana'] ?? '',
      subDistrict: json['sub_district'] ?? '',
      villageName: json['village_name'] ?? '',
      voterIDno: json['voter_id_no'] ?? '',
      partnerName: json['partner_name'] ?? '',
      partnerNidno: json['partner_nid_no'] ?? '',
      gender: json['gender'] ?? '',
      pickedDon: json['pickedDon'] != null ? DateTime.tryParse(json['pickedDon']) : null,
      dob: json['dob'] ?? '',
      bloodGroup: json['bloodGroup'] ?? '',
    );
  }
}



