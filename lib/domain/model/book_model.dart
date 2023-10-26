// To parse this JSON data, do
//
//     final bookModel = bookModelFromJson(jsonString);

import 'dart:convert';

List<BookModel> bookModelFromJson(String str) => List<BookModel>.from(json.decode(str).map((x) => BookModel.fromJson(x)));

String bookModelToJson(List<BookModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BookModel {
    String name;
    String author;
    String category;
    String image;
    double rating;
    String duration;
    String pages;

    BookModel({
        required this.name,
        required this.author,
        required this.category,
        required this.image,
        required this.rating,
        required this.duration,
        required this.pages,
    });

    factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        name: json["name"],
        author: json["author"],
        category: json["category"],
        image: json["image"],
        rating: json["rating"]?.toDouble(),
        duration: json["duration"],
        pages: json["pages"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "author": author,
        "category": category,
        "image": image,
        "rating": rating,
        "duration": duration,
        "pages": pages,
    };
}
