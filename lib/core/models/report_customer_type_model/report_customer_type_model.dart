// To parse this JSON data, do
//
//     final reportCustomersType = reportCustomersTypeFromJson(jsonString);

import 'dart:convert';

ReportCustomersType reportCustomersTypeFromJson(String str) =>
    ReportCustomersType.fromJson(json.decode(str));

String reportCustomersTypeToJson(ReportCustomersType data) =>
    json.encode(data.toJson());

class ReportCustomersType {
  int? totalType;
  List<CustomerType>? customerTypes;

  ReportCustomersType({
    this.totalType,
    this.customerTypes,
  });

  factory ReportCustomersType.fromJson(Map<String, dynamic> json) =>
      ReportCustomersType(
        totalType: json["totalType"],
        customerTypes: json["customerTypes"] == null
            ? []
            : List<CustomerType>.from(
                json["customerTypes"]!.map((x) => CustomerType.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "totalType": totalType,
        "customerTypes": customerTypes == null
            ? []
            : List<dynamic>.from(customerTypes!.map((x) => x.toJson())),
      };
}

class CustomerType {
  String? title;
  int? totalCustomer;

  CustomerType({
    this.title,
    this.totalCustomer,
  });

  factory CustomerType.fromJson(Map<String, dynamic> json) => CustomerType(
        title: json["title"],
        totalCustomer: json["totalCustomer"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "totalCustomer": totalCustomer,
      };
}
