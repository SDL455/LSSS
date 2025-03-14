// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  int? id;
  String? staffId;
  String? firstName;
  String? lastName;
  String? firstNameEn;
  String? lastNameEn;
  String? gender;
  DateTime? birthday;
  int? age;
  String? education;
  int? height;
  String? documentStatus;
  String? birthProvince;
  String? birthDistrict;
  String? birthVillage;
  String? currentProvince;
  String? currentDistrict;
  String? currentVillage;
  String? resident;
  String? tel;
  String? phone;
  String? ethnic;
  DateTime? joinSecurityDate;
  dynamic passTrainingDate;
  dynamic joinkvDate;
  dynamic joinPoliceDate;
  DateTime? joinBackupPartyDate;
  DateTime? joinPartyDate;
  DateTime? dateSetByGov;
  String? positionByGov;
  dynamic positionSetBySecurity;
  dynamic duty;
  int? department;
  int? unit;
  String? profile;
  String? identity;
  dynamic residentCertificate;
  dynamic familyBook;
  String? username;
  dynamic role;
  String? employeeType;
  String? employeeActive;
  String? employeeStatus;
  dynamic rank;
  DateTime? createdDate;
  int? createdBy;
  DateTime? editDate;
  int? editBy;
  dynamic deletedDate;
  dynamic deletedBy;
  dynamic remark;
  int? status;
  String? position;
  dynamic leaveReason;
  bool? isHasInsurance;
  String? verifyInfo;
  DateTime? expiredDate;
  String? verifyDocumentType;
  DateTime? issueDate;
  dynamic joinWomenDate;
  String? accessToken;

  UserModel({
    this.id,
    this.staffId,
    this.firstName,
    this.lastName,
    this.firstNameEn,
    this.lastNameEn,
    this.gender,
    this.birthday,
    this.age,
    this.education,
    this.height,
    this.documentStatus,
    this.birthProvince,
    this.birthDistrict,
    this.birthVillage,
    this.currentProvince,
    this.currentDistrict,
    this.currentVillage,
    this.resident,
    this.tel,
    this.phone,
    this.ethnic,
    this.joinSecurityDate,
    this.passTrainingDate,
    this.joinkvDate,
    this.joinPoliceDate,
    this.joinBackupPartyDate,
    this.joinPartyDate,
    this.dateSetByGov,
    this.positionByGov,
    this.positionSetBySecurity,
    this.duty,
    this.department,
    this.unit,
    this.profile,
    this.identity,
    this.residentCertificate,
    this.familyBook,
    this.username,
    this.role,
    this.employeeType,
    this.employeeActive,
    this.employeeStatus,
    this.rank,
    this.createdDate,
    this.createdBy,
    this.editDate,
    this.editBy,
    this.deletedDate,
    this.deletedBy,
    this.remark,
    this.status,
    this.position,
    this.leaveReason,
    this.isHasInsurance,
    this.verifyInfo,
    this.expiredDate,
    this.verifyDocumentType,
    this.issueDate,
    this.joinWomenDate,
    this.accessToken,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        staffId: json["staffId"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        firstNameEn: json["firstNameEN"],
        lastNameEn: json["lastNameEN"],
        gender: json["gender"],
        birthday:
            json["birthday"] == null ? null : DateTime.parse(json["birthday"]),
        age: json["age"],
        education: json["education"],
        height: json["height"],
        documentStatus: json["documentStatus"],
        birthProvince: json["birthProvince"],
        birthDistrict: json["birthDistrict"],
        birthVillage: json["birthVillage"],
        currentProvince: json["currentProvince"],
        currentDistrict: json["currentDistrict"],
        currentVillage: json["currentVillage"],
        resident: json["resident"],
        tel: json["tel"],
        phone: json["phone"],
        ethnic: json["ethnic"],
        joinSecurityDate: json["joinSecurityDate"] == null
            ? null
            : DateTime.parse(json["joinSecurityDate"]),
        passTrainingDate: json["passTrainingDate"],
        joinkvDate: json["joinkvDate"],
        joinPoliceDate: json["joinPoliceDate"],
        joinBackupPartyDate: json["joinBackupPartyDate"] == null
            ? null
            : DateTime.parse(json["joinBackupPartyDate"]),
        joinPartyDate: json["joinPartyDate"] == null
            ? null
            : DateTime.parse(json["joinPartyDate"]),
        dateSetByGov: json["dateSetByGov"] == null
            ? null
            : DateTime.parse(json["dateSetByGov"]),
        positionByGov: json["positionByGov"],
        positionSetBySecurity: json["positionSetBySecurity"],
        duty: json["duty"],
        department: json["department"],
        unit: json["unit"],
        profile: json["profile"],
        identity: json["identity"],
        residentCertificate: json["residentCertificate"],
        familyBook: json["familyBook"],
        username: json["username"],
        role: json["role"],
        employeeType: json["employeeType"],
        employeeActive: json["employeeActive"],
        employeeStatus: json["employeeStatus"],
        rank: json["rank"],
        createdDate: json["createdDate"] == null
            ? null
            : DateTime.parse(json["createdDate"]),
        createdBy: json["createdBy"],
        editDate:
            json["editDate"] == null ? null : DateTime.parse(json["editDate"]),
        editBy: json["editBy"],
        deletedDate: json["deletedDate"],
        deletedBy: json["deletedBy"],
        remark: json["remark"],
        status: json["status"],
        position: json["position"],
        leaveReason: json["leaveReason"],
        isHasInsurance: json["isHasInsurance"],
        verifyInfo: json["verifyInfo"],
        expiredDate: json["expiredDate"] == null
            ? null
            : DateTime.parse(json["expiredDate"]),
        verifyDocumentType: json["verifyDocumentType"],
        issueDate: json["issueDate"] == null
            ? null
            : DateTime.parse(json["issueDate"]),
        joinWomenDate: json["joinWomenDate"],
        accessToken: json["accessToken"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "staffId": staffId,
        "firstName": firstName,
        "lastName": lastName,
        "firstNameEN": firstNameEn,
        "lastNameEN": lastNameEn,
        "gender": gender,
        "birthday": birthday?.toIso8601String(),
        "age": age,
        "education": education,
        "height": height,
        "documentStatus": documentStatus,
        "birthProvince": birthProvince,
        "birthDistrict": birthDistrict,
        "birthVillage": birthVillage,
        "currentProvince": currentProvince,
        "currentDistrict": currentDistrict,
        "currentVillage": currentVillage,
        "resident": resident,
        "tel": tel,
        "phone": phone,
        "ethnic": ethnic,
        "joinSecurityDate": joinSecurityDate?.toIso8601String(),
        "passTrainingDate": passTrainingDate,
        "joinkvDate": joinkvDate,
        "joinPoliceDate": joinPoliceDate,
        "joinBackupPartyDate": joinBackupPartyDate?.toIso8601String(),
        "joinPartyDate": joinPartyDate?.toIso8601String(),
        "dateSetByGov": dateSetByGov?.toIso8601String(),
        "positionByGov": positionByGov,
        "positionSetBySecurity": positionSetBySecurity,
        "duty": duty,
        "department": department,
        "unit": unit,
        "profile": profile,
        "identity": identity,
        "residentCertificate": residentCertificate,
        "familyBook": familyBook,
        "username": username,
        "role": role,
        "employeeType": employeeType,
        "employeeActive": employeeActive,
        "employeeStatus": employeeStatus,
        "rank": rank,
        "createdDate": createdDate?.toIso8601String(),
        "createdBy": createdBy,
        "editDate": editDate?.toIso8601String(),
        "editBy": editBy,
        "deletedDate": deletedDate,
        "deletedBy": deletedBy,
        "remark": remark,
        "status": status,
        "position": position,
        "leaveReason": leaveReason,
        "isHasInsurance": isHasInsurance,
        "verifyInfo": verifyInfo,
        "expiredDate": expiredDate?.toIso8601String(),
        "verifyDocumentType": verifyDocumentType,
        "issueDate": issueDate?.toIso8601String(),
        "joinWomenDate": joinWomenDate,
        "accessToken": accessToken,
      };
}
