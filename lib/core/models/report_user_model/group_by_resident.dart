import 'package:collection/collection.dart';

class GroupByResident {
  String? resident;
  int? total;

  GroupByResident({this.resident, this.total});

  @override
  String toString() => 'GroupByResident(resident: $resident, total: $total)';

  factory GroupByResident.fromJson(Map<String, dynamic> json) {
    return GroupByResident(
      resident: json['resident'] as String?,
      total: json['total'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'resident': resident,
        'total': total,
      };

  GroupByResident copyWith({
    String? resident,
    int? total,
  }) {
    return GroupByResident(
      resident: resident ?? this.resident,
      total: total ?? this.total,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! GroupByResident) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => resident.hashCode ^ total.hashCode;
}
