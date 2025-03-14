import 'package:collection/collection.dart';

class GroupByGender {
  String? gender;
  int? total;

  GroupByGender({this.gender, this.total});

  @override
  String toString() => 'GroupByGender(gender: $gender, total: $total)';

  factory GroupByGender.fromJson(Map<String, dynamic> json) => GroupByGender(
        gender: json['gender'] as String?,
        total: json['total'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'gender': gender,
        'total': total,
      };

  GroupByGender copyWith({
    String? gender,
    int? total,
  }) {
    return GroupByGender(
      gender: gender ?? this.gender,
      total: total ?? this.total,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! GroupByGender) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => gender.hashCode ^ total.hashCode;
}
