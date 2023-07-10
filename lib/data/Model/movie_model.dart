import 'dart:convert';

class MovieProduct {
  final String status;
  final String title;
  final String description;
  final String image;
  MovieProduct({
    required this.status,
    required this.title,
    required this.description,
    required this.image,
  });

  MovieProduct copyWith({
    String? status,
    String? title,
    String? description,
    String? image,
  }) {
    return MovieProduct(
      status: status ?? this.status,
      title: title ?? this.title,
      description: description ?? this.description,
      image: image ?? this.image,
    );
  }

// --- serialização
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'title': title,
      'description': description,
      'img_url': image,
    };
  }

  String toJson() => json.encode(toMap());
// --- desserialização

  factory MovieProduct.fromMap(Map<String, dynamic> map) {
    print(map);
    return MovieProduct(
      status: map['status'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      image: map['img_url'] as String,
    );
  }

  factory MovieProduct.fromJson(String source) =>
      MovieProduct.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MovieProduct(status: $status, title: $title, description: $description, image: $image)';
  }

  @override
  bool operator ==(covariant MovieProduct other) {
    if (identical(this, other)) return true;

    return other.status == status &&
        other.title == title &&
        other.description == description &&
        other.image == image;
  }

  @override
  int get hashCode {
    return status.hashCode ^
        title.hashCode ^
        description.hashCode ^
        image.hashCode;
  }
}
