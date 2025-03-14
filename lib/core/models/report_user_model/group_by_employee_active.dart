import 'package:collection/collection.dart';

class GroupByEmployeeActive {
  String? employeeActive;
  int? total;

  GroupByEmployeeActive({this.employeeActive, this.total});

  @override
  String toString() {
    return 'GroupByEmployeeActive(employeeActive: $employeeActive, total: $total)';
  }

  factory GroupByEmployeeActive.fromJson(Map<String, dynamic> json) {
    return GroupByEmployeeActive(
      employeeActive: json['employeeActive'] as String?,
      total: json['total'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'employeeActive': employeeActive,
        'total': total,
      };

  GroupByEmployeeActive copyWith({
    String? employeeActive,
    int? total,
  }) {
    return GroupByEmployeeActive(
      employeeActive: employeeActive ?? this.employeeActive,
      total: total ?? this.total,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! GroupByEmployeeActive) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => employeeActive.hashCode ^ total.hashCode;
}
