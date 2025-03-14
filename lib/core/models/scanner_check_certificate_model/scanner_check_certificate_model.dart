// To parse this JSON data, do
//
//     final checkCertificateModel = checkCertificateModelFromJson(jsonString);

import 'dart:convert';

CheckCertificateModel checkCertificateModelFromJson(String str) =>
    CheckCertificateModel.fromJson(json.decode(str));

String checkCertificateModelToJson(CheckCertificateModel data) =>
    json.encode(data.toJson());

class CheckCertificateModel {
  int? id;
  int? customerId;
  String? certificateNo;
  DateTime? contractedDate;
  String? customerName;
  String? location;
  String? street;
  String? province;
  String? district;
  String? village;
  String? phone;
  String? fax;
  String? businessRegistrationNo;
  DateTime? businessRegistrationDate;
  String? serviceUsername;
  String? placeToService;
  double? widthSize;
  double? lengthSize;
  double? area;
  String? serviceProvince;
  String? serviceDistrict;
  String? serviceVillage;
  DateTime? startDate;
  DateTime? endDate;
  int? securityAmount;
  dynamic serviceLocation;
  String? paymentType;
  String? invoiceType;
  int? periodAmount;
  dynamic paymentInfo;
  int? pricePerUnit;
  int? amount;
  String? moneyInText;
  String? customerSignBy;
  String? securitySignBy;
  int? totalSecurityShift1;
  int? totalSecurityShift2;
  dynamic totalSecurityShift3;
  String? status;
  DateTime? createdAt;
  int? createdBy;
  dynamic editDate;
  dynamic editBy;
  dynamic deletedDate;
  dynamic deletedBy;
  String? remark;
  bool? isDeleted;
  dynamic serviceUserPassport;
  UserCreated? userCreated;
  dynamic userEdit;
  dynamic userDeleted;
  Customer? customer;
  List<dynamic>? guardPlace;

  CheckCertificateModel({
    this.id,
    this.customerId,
    this.certificateNo,
    this.contractedDate,
    this.customerName,
    this.location,
    this.street,
    this.province,
    this.district,
    this.village,
    this.phone,
    this.fax,
    this.businessRegistrationNo,
    this.businessRegistrationDate,
    this.serviceUsername,
    this.placeToService,
    this.widthSize,
    this.lengthSize,
    this.area,
    this.serviceProvince,
    this.serviceDistrict,
    this.serviceVillage,
    this.startDate,
    this.endDate,
    this.securityAmount,
    this.serviceLocation,
    this.paymentType,
    this.invoiceType,
    this.periodAmount,
    this.paymentInfo,
    this.pricePerUnit,
    this.amount,
    this.moneyInText,
    this.customerSignBy,
    this.securitySignBy,
    this.totalSecurityShift1,
    this.totalSecurityShift2,
    this.totalSecurityShift3,
    this.status,
    this.createdAt,
    this.createdBy,
    this.editDate,
    this.editBy,
    this.deletedDate,
    this.deletedBy,
    this.remark,
    this.isDeleted,
    this.serviceUserPassport,
    this.userCreated,
    this.userEdit,
    this.userDeleted,
    this.customer,
    this.guardPlace,
  });

  factory CheckCertificateModel.fromJson(Map<String, dynamic> json) =>
      CheckCertificateModel(
        id: json["id"],
        customerId: json["customerId"],
        certificateNo: json["certificateNo"],
        contractedDate: json["contractedDate"] == null
            ? null
            : DateTime.parse(json["contractedDate"]),
        customerName: json["customerName"],
        location: json["location"],
        street: json["street"],
        province: json["province"],
        district: json["district"],
        village: json["village"],
        phone: json["phone"],
        fax: json["fax"],
        businessRegistrationNo: json["businessRegistrationNo"],
        businessRegistrationDate: json["businessRegistrationDate"] == null
            ? null
            : DateTime.parse(json["businessRegistrationDate"]),
        serviceUsername: json["serviceUsername"],
        placeToService: json["placeToService"],
        widthSize: json["widthSize"]?.toDouble(),
        lengthSize: json["lengthSize"]?.toDouble(),
        area: json["area"]?.toDouble(),
        serviceProvince: json["serviceProvince"],
        serviceDistrict: json["serviceDistrict"],
        serviceVillage: json["serviceVillage"],
        startDate: json["startDate"] == null
            ? null
            : DateTime.parse(json["startDate"]),
        endDate:
            json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
        securityAmount: json["securityAmount"],
        serviceLocation: json["serviceLocation"],
        paymentType: json["paymentType"],
        invoiceType: json["invoiceType"],
        periodAmount: json["periodAmount"],
        paymentInfo: json["paymentInfo"],
        pricePerUnit: json["pricePerUnit"],
        amount: json["amount"],
        moneyInText: json["moneyInText"],
        customerSignBy: json["customerSignBy"],
        securitySignBy: json["securitySignBy"],
        totalSecurityShift1: json["totalSecurityShift1"],
        totalSecurityShift2: json["totalSecurityShift2"],
        totalSecurityShift3: json["totalSecurityShift3"],
        status: json["status"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        createdBy: json["createdBy"],
        editDate: json["editDate"],
        editBy: json["editBy"],
        deletedDate: json["deletedDate"],
        deletedBy: json["deletedBy"],
        remark: json["remark"],
        isDeleted: json["isDeleted"],
        serviceUserPassport: json["serviceUserPassport"],
        userCreated: json["userCreated"] == null
            ? null
            : UserCreated.fromJson(json["userCreated"]),
        userEdit: json["userEdit"],
        userDeleted: json["userDeleted"],
        customer: json["customer"] == null
            ? null
            : Customer.fromJson(json["customer"]),
        guardPlace: json["guardPlace"] == null
            ? []
            : List<dynamic>.from(json["guardPlace"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "customerId": customerId,
        "certificateNo": certificateNo,
        "contractedDate": contractedDate?.toIso8601String(),
        "customerName": customerName,
        "location": location,
        "street": street,
        "province": province,
        "district": district,
        "village": village,
        "phone": phone,
        "fax": fax,
        "businessRegistrationNo": businessRegistrationNo,
        "businessRegistrationDate": businessRegistrationDate?.toIso8601String(),
        "serviceUsername": serviceUsername,
        "placeToService": placeToService,
        "widthSize": widthSize,
        "lengthSize": lengthSize,
        "area": area,
        "serviceProvince": serviceProvince,
        "serviceDistrict": serviceDistrict,
        "serviceVillage": serviceVillage,
        "startDate": startDate?.toIso8601String(),
        "endDate": endDate?.toIso8601String(),
        "securityAmount": securityAmount,
        "serviceLocation": serviceLocation,
        "paymentType": paymentType,
        "invoiceType": invoiceType,
        "periodAmount": periodAmount,
        "paymentInfo": paymentInfo,
        "pricePerUnit": pricePerUnit,
        "amount": amount,
        "moneyInText": moneyInText,
        "customerSignBy": customerSignBy,
        "securitySignBy": securitySignBy,
        "totalSecurityShift1": totalSecurityShift1,
        "totalSecurityShift2": totalSecurityShift2,
        "totalSecurityShift3": totalSecurityShift3,
        "status": status,
        "createdAt": createdAt?.toIso8601String(),
        "createdBy": createdBy,
        "editDate": editDate,
        "editBy": editBy,
        "deletedDate": deletedDate,
        "deletedBy": deletedBy,
        "remark": remark,
        "isDeleted": isDeleted,
        "serviceUserPassport": serviceUserPassport,
        "userCreated": userCreated?.toJson(),
        "userEdit": userEdit,
        "userDeleted": userDeleted,
        "customer": customer?.toJson(),
        "guardPlace": guardPlace == null
            ? []
            : List<dynamic>.from(guardPlace!.map((x) => x)),
      };
}

class Customer {
  int? id;
  String? customerAccountId;
  String? customerId;
  String? customerName;
  String? username;
  String? password;
  String? phone;
  String? location;
  String? street;
  String? province;
  String? district;
  String? village;
  String? fax;
  String? businessRegistrationNo;
  DateTime? businessRegistrationDate;
  String? serviceUsername;
  int? customerType;
  String? remark;
  DateTime? createdAt;
  int? createdBy;
  DateTime? editDate;
  int? editBy;
  dynamic deletedDate;
  dynamic deletedBy;
  bool? isDeleted;
  dynamic serviceUserPassport;
  dynamic recommender;

  Customer({
    this.id,
    this.customerAccountId,
    this.customerId,
    this.customerName,
    this.username,
    this.password,
    this.phone,
    this.location,
    this.street,
    this.province,
    this.district,
    this.village,
    this.fax,
    this.businessRegistrationNo,
    this.businessRegistrationDate,
    this.serviceUsername,
    this.customerType,
    this.remark,
    this.createdAt,
    this.createdBy,
    this.editDate,
    this.editBy,
    this.deletedDate,
    this.deletedBy,
    this.isDeleted,
    this.serviceUserPassport,
    this.recommender,
  });

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        id: json["id"],
        customerAccountId: json["customerAccountId"],
        customerId: json["customerId"],
        customerName: json["customerName"],
        username: json["username"],
        password: json["password"],
        phone: json["phone"],
        location: json["location"],
        street: json["street"],
        province: json["province"],
        district: json["district"],
        village: json["village"],
        fax: json["fax"],
        businessRegistrationNo: json["businessRegistrationNo"],
        businessRegistrationDate: json["businessRegistrationDate"] == null
            ? null
            : DateTime.parse(json["businessRegistrationDate"]),
        serviceUsername: json["serviceUsername"],
        customerType: json["customerType"],
        remark: json["remark"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        createdBy: json["createdBy"],
        editDate:
            json["editDate"] == null ? null : DateTime.parse(json["editDate"]),
        editBy: json["editBy"],
        deletedDate: json["deletedDate"],
        deletedBy: json["deletedBy"],
        isDeleted: json["isDeleted"],
        serviceUserPassport: json["serviceUserPassport"],
        recommender: json["recommender"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "customerAccountId": customerAccountId,
        "customerId": customerId,
        "customerName": customerName,
        "username": username,
        "password": password,
        "phone": phone,
        "location": location,
        "street": street,
        "province": province,
        "district": district,
        "village": village,
        "fax": fax,
        "businessRegistrationNo": businessRegistrationNo,
        "businessRegistrationDate": businessRegistrationDate?.toIso8601String(),
        "serviceUsername": serviceUsername,
        "customerType": customerType,
        "remark": remark,
        "createdAt": createdAt?.toIso8601String(),
        "createdBy": createdBy,
        "editDate": editDate?.toIso8601String(),
        "editBy": editBy,
        "deletedDate": deletedDate,
        "deletedBy": deletedBy,
        "isDeleted": isDeleted,
        "serviceUserPassport": serviceUserPassport,
        "recommender": recommender,
      };
}

class UserCreated {
  int? id;
  String? firstName;
  String? lastName;

  UserCreated({
    this.id,
    this.firstName,
    this.lastName,
  });

  factory UserCreated.fromJson(Map<String, dynamic> json) => UserCreated(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
      };
}
