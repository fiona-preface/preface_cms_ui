import 'package:equatable/equatable.dart';

import 'add_on.dart';
import 'modifiers.dart';
import 'options.dart';

class Items extends Equatable {
  final String? item;
  final String? sellingPrice;
  final List<Options>? options;
  final List<AddOn>? addOn;
  final List<Modifiers>? modifiers;

  const Items({
    this.item,
    this.sellingPrice,
    this.options,
    this.addOn,
    this.modifiers,
  });

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        item: json['item'] as String?,
        sellingPrice: json['sellingPrice'] as String?,
        options: (json['options'] as List<dynamic>?)
            ?.map((e) => Options.fromJson(e as Map<String, dynamic>))
            .toList(),
        addOn: (json['addOn'] as List<dynamic>?)
            ?.map((e) => AddOn.fromJson(e as Map<String, dynamic>))
            .toList(),
        modifiers: (json['modifiers'] as List<dynamic>?)
            ?.map((e) => Modifiers.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'item': item,
        'sellingPrice': sellingPrice,
        'options': options?.map((e) => e.toJson()).toList(),
        'addOn': addOn?.map((e) => e.toJson()).toList(),
        'modifiers': modifiers?.map((e) => e.toJson()).toList(),
      };

  Items copyWith({
    String? item,
    String? sellingPrice,
    List<Options>? options,
    List<AddOn>? addOn,
    List<Modifiers>? modifiers,
  }) {
    return Items(
      item: item ?? this.item,
      sellingPrice: sellingPrice ?? this.sellingPrice,
      options: options ?? this.options,
      addOn: addOn ?? this.addOn,
      modifiers: modifiers ?? this.modifiers,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      item,
      sellingPrice,
      options,
      addOn,
      modifiers,
    ];
  }
}
