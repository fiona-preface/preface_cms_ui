import 'package:equatable/equatable.dart';

class AddOn extends Equatable {
  final String? name;
  final String? extra;

  const AddOn({this.name, this.extra});

  factory AddOn.fromJson(Map<String, dynamic> json) => AddOn(
        name: json['name'] as String?,
        extra: json['Extra'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'Extra': extra,
      };

  AddOn copyWith({
    String? name,
    String? extra,
  }) {
    return AddOn(
      name: name ?? this.name,
      extra: extra ?? this.extra,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [name, extra];
}
