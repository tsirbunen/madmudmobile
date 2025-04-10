import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class Collection with _$Collection {
  const factory Collection({
    required String id,
    required String name,
  }) = _Collection;

  factory Collection.fromJson(Map<String, Object?> json) =>
      _$CollectionFromJson(json);
}
