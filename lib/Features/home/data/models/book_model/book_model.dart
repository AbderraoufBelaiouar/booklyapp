import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'access_info.dart';
import 'sale_info.dart';
import 'volume_info.dart';

class BookModel extends Equatable {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;

  const BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    required this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
  });

  factory BookModel.fromMap(Map<String, dynamic> data) {
    return BookModel(
      kind: data['kind'] as String?,
      id: data['id'] as String?,
      etag: data['etag'] as String?,
      selfLink: data['selfLink'] as String?,
      volumeInfo:
          VolumeInfo.fromMap(data['volumeInfo'] as Map<String, dynamic>),
      saleInfo: data['saleInfo'] == null
          ? null
          : SaleInfo.fromMap(data['saleInfo'] as Map<String, dynamic>),
      accessInfo: data['accessInfo'] == null
          ? null
          : AccessInfo.fromMap(data['accessInfo'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toMap() => {
        'kind': kind,
        'id': id,
        'etag': etag,
        'selfLink': selfLink,
        'volumeInfo': volumeInfo.toMap(),
        'saleInfo': saleInfo?.toMap(),
        'accessInfo': accessInfo?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [BookModel].
  factory BookModel.fromJson(String data) {
    return BookModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [BookModel] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props {
    return [
      kind,
      id,
      etag,
      selfLink,
      volumeInfo,
      saleInfo,
      accessInfo,
    ];
  }
}
