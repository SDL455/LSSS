import 'package:collection/collection.dart';
import 'group_by_current_province.dart';
import 'group_by_employee_active.dart';
import 'group_by_employee_status.dart';
import 'group_by_employee_type.dart';
import 'group_by_gender.dart';
import 'group_by_resident.dart';

class ReportUserModel {
  int? totalEmployee;
  List<GroupByGender>? groupByGender;
  List<GroupByEmployeeActive>? groupByEmployeeActive;
  List<GroupByEmployeeStatus>? groupByEmployeeStatus;
  List<GroupByEmployeeType>? groupByEmployeeType;
  List<GroupByResident>? groupByResident;
  List<GroupByCurrentProvince>? groupByCurrentProvince;

  ReportUserModel({
    this.totalEmployee,
    this.groupByGender,
    this.groupByEmployeeActive,
    this.groupByEmployeeStatus,
    this.groupByEmployeeType,
    this.groupByResident,
    this.groupByCurrentProvince,
  });

  @override
  String toString() {
    return 'ReportUserModel(totalEmployee: $totalEmployee, groupByGender: $groupByGender, groupByEmployeeActive: $groupByEmployeeActive, groupByEmployeeStatus: $groupByEmployeeStatus, groupByEmployeeType: $groupByEmployeeType, groupByResident: $groupByResident, groupByCurrentProvince: $groupByCurrentProvince)';
  }

  factory ReportUserModel.fromJson(Map<String, dynamic> json) {
    return ReportUserModel(
      totalEmployee: json['totalEmployee'] as int?,
      groupByGender: (json['groupByGender'] as List<dynamic>?)
          ?.map((e) => GroupByGender.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupByEmployeeActive: (json['groupByEmployeeActive'] as List<dynamic>?)
          ?.map(
              (e) => GroupByEmployeeActive.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupByEmployeeStatus: (json['groupByEmployeeStatus'] as List<dynamic>?)
          ?.map(
              (e) => GroupByEmployeeStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupByEmployeeType: (json['groupByEmployeeType'] as List<dynamic>?)
          ?.map((e) => GroupByEmployeeType.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupByResident: (json['groupByResident'] as List<dynamic>?)
          ?.map((e) => GroupByResident.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupByCurrentProvince: (json['groupByCurrentProvince'] as List<dynamic>?)
          ?.map(
              (e) => GroupByCurrentProvince.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'totalEmployee': totalEmployee,
        'groupByGender': groupByGender?.map((e) => e.toJson()).toList(),
        'groupByEmployeeActive':
            groupByEmployeeActive?.map((e) => e.toJson()).toList(),
        'groupByEmployeeStatus':
            groupByEmployeeStatus?.map((e) => e.toJson()).toList(),
        'groupByEmployeeType':
            groupByEmployeeType?.map((e) => e.toJson()).toList(),
        'groupByResident': groupByResident?.map((e) => e.toJson()).toList(),
        'groupByCurrentProvince':
            groupByCurrentProvince?.map((e) => e.toJson()).toList(),
      };

  ReportUserModel copyWith({
    int? totalEmployee,
    List<GroupByGender>? groupByGender,
    List<GroupByEmployeeActive>? groupByEmployeeActive,
    List<GroupByEmployeeStatus>? groupByEmployeeStatus,
    List<GroupByEmployeeType>? groupByEmployeeType,
    List<GroupByResident>? groupByResident,
    List<GroupByCurrentProvince>? groupByCurrentProvince,
  }) {
    return ReportUserModel(
      totalEmployee: totalEmployee ?? this.totalEmployee,
      groupByGender: groupByGender ?? this.groupByGender,
      groupByEmployeeActive:
          groupByEmployeeActive ?? this.groupByEmployeeActive,
      groupByEmployeeStatus:
          groupByEmployeeStatus ?? this.groupByEmployeeStatus,
      groupByEmployeeType: groupByEmployeeType ?? this.groupByEmployeeType,
      groupByResident: groupByResident ?? this.groupByResident,
      groupByCurrentProvince:
          groupByCurrentProvince ?? this.groupByCurrentProvince,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ReportUserModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      totalEmployee.hashCode ^
      groupByGender.hashCode ^
      groupByEmployeeActive.hashCode ^
      groupByEmployeeStatus.hashCode ^
      groupByEmployeeType.hashCode ^
      groupByResident.hashCode ^
      groupByCurrentProvince.hashCode;
}
