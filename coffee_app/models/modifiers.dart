import 'package:equatable/equatable.dart';

class Modifiers extends Equatable {
  final String? name;

  const Modifiers({this.name});

  factory Modifiers.fromJson(Map<String, dynamic> json) => Modifiers(
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
      };

  Modifiers copyWith({
    String? name,
  }) {
    return Modifiers(
      name: name ?? this.name,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [name];
}
