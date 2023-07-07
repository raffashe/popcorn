import 'dart:convert';

class Movieproduct {
  final String status;
  final String title;
  final String description;
  final String image;
  Movieproduct({
    required this.status,
    required this.title,
    required this.description,
    required this.image,
  });

  Movieproduct copyWith({
    String? status,
    String? title,
    String? description,
    String? image,
  }) {
    return Movieproduct(
      status: status ?? this.status,
      title: title ?? this.title,
      description: description ?? this.description,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'title': title,
      'description': description,
      'image': image,
    };
  }

  factory Movieproduct.fromMap(Map<String, dynamic> map) {
    return Movieproduct(
      status: map['status'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Movieproduct.fromJson(String source) =>
      Movieproduct.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Movieproduct(status: $status, title: $title, description: $description, image: $image)';
  }

  @override
  bool operator ==(covariant Movieproduct other) {
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
