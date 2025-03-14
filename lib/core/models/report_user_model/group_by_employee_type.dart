import 'package:collection/collection.dart';

class GroupByEmployeeType {
  String? employeeType;
  int? total;

  GroupByEmployeeType({this.employeeType, this.total});

  @override
  String toString() {
    return 'GroupByEmployeeType(employeeType: $employeeType, total: $total)';
  }

  factory GroupByEmployeeType.fromJson(Map<String, dynamic> json) {
    return GroupByEmployeeType(
      employeeType: json['employeeType'] as String?,
      total: json['total'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'employeeType': employeeType,
        'total': total,
      };

  GroupByEmployeeType copyWith({
    String? employeeType,
    int? total,
  }) {
    return GroupByEmployeeType(
      employeeType: employeeType ?? this.employeeType,
      total: total ?? this.total,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! GroupByEmployeeType) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => employeeType.hashCode ^ total.hashCode;
}
