// lib/core/models/report_customer_model.dart
import 'dart:convert';

ReportCustomerModel reportCustomerModelFromJson(String str) =>
    ReportCustomerModel.fromJson(json.decode(str));

String reportCustomerModelToJson(ReportCustomerModel data) =>
    json.encode(data.toJson());

class ReportCustomerModel {
  int? total;
  int? vientianeCustomers;
  int? nonVientianeCustomers;

  ReportCustomerModel({
    this.total,
    this.vientianeCustomers,
    this.nonVientianeCustomers,
  });

  factory ReportCustomerModel.fromJson(Map<String, dynamic> json) =>
      ReportCustomerModel(
        total: json["total"],
        vientianeCustomers: json["vientianeCustomers"],
        nonVientianeCustomers: json["nonVientianeCustomers"],
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "vientianeCustomers": vientianeCustomers,
        "nonVientianeCustomers": nonVientianeCustomers,
      };
}
