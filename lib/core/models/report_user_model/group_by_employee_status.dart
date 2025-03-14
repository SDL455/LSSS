import 'package:collection/collection.dart';

class GroupByEmployeeStatus {
  String? employeeStatus;
  int? total;

  GroupByEmployeeStatus({
    this.employeeStatus,
    this.total,
  });

  @override
  String toString() {
    return 'GroupByEmployeeStatus(employeeStatus: $employeeStatus, total: $total)';
  }

  factory GroupByEmployeeStatus.fromJson(Map<String, dynamic> json) {
    return GroupByEmployeeStatus(
      employeeStatus: json['employeeStatus'] as String?,
      total: json['total'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'employeeStatus': employeeStatus,
        'total': total,
      };

  GroupByEmployeeStatus copyWith({
    String? employeeStatus,
    int? total,
  }) {
    return GroupByEmployeeStatus(
      employeeStatus: employeeStatus ?? this.employeeStatus,
      total: total ?? this.total,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! GroupByEmployeeStatus) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => employeeStatus.hashCode ^ total.hashCode;
}
