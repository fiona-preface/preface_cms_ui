import 'package:equatable/equatable.dart';

class Options extends Equatable {
  final String? name;
  final String? extra;

  const Options({this.name, this.extra});

  factory Options.fromJson(Map<String, dynamic> json) => Options(
        name: json['name'] as String?,
        extra: json['extra'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'extra': extra,
      };

  Options copyWith({
    String? name,
    String? extra,
  }) {
    return Options(
      name: name ?? this.name,
      extra: extra ?? this.extra,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [name, extra];
}
