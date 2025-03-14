import 'package:collection/collection.dart';

class GroupByCurrentProvince {
  dynamic currentProvince;
  int? total;

  GroupByCurrentProvince({this.currentProvince, this.total});

  @override
  String toString() {
    return 'GroupByCurrentProvince(currentProvince: $currentProvince, total: $total)';
  }

  factory GroupByCurrentProvince.fromJson(Map<String, dynamic> json) {
    return GroupByCurrentProvince(
      currentProvince: json['currentProvince'] as dynamic,
      total: json['total'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'currentProvince': currentProvince,
        'total': total,
      };

  GroupByCurrentProvince copyWith({
    dynamic currentProvince,
    int? total,
  }) {
    return GroupByCurrentProvince(
      currentProvince: currentProvince ?? this.currentProvince,
      total: total ?? this.total,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! GroupByCurrentProvince) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => currentProvince.hashCode ^ total.hashCode;
}
