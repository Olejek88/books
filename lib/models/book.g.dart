// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      authorName: json['authorName'] as String,
      description: json['description'] as String,
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
      imageUrl: json['imageUrl'] as String?,
      link: json['link'] as String,
      amazonImage: json['amazonImage'] as String?,
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'authorName': instance.authorName,
      'description': instance.description,
      'category': instance.category,
      'author': instance.author,
      'imageUrl': instance.imageUrl,
      'link': instance.link,
      'amazonImage': instance.amazonImage,
    };
