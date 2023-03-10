import 'package:freezed_annotation/freezed_annotation.dart';

import 'author.dart';
import 'category.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required String uuid,
    required String title,
    required String authorName,
    required String description,
    required Category category,
    required Author author,
    required String? imageUrl,
    required String link,
    required String? amazonImage
  }) = _Book;

  factory Book.fromJson(Map<String, Object?> json) => _$BookFromJson(json);
}
