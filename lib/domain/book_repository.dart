import 'package:book_store/domain/model/book_model.dart';
import 'package:book_store/domain/model/category_model.dart';
import 'package:book_store/utilities/app_constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BookRepository {
  Future<List<BookModel>> fetchBooks() async {
    try {
      return books.map((e) => BookModel.fromJson(e)).toList();
    } catch (error) {
      debugPrint("error fetching the books $error");
      return [];
    }
  }

  Future<List<CategoryModel>> fetchCategories() async {
    try {
      return bookCategories.map((e) => CategoryModel.fromJson(e)).toList();
    } catch (error) {
      debugPrint("error fetching the categories $error");
      return [];
    }
  }

}
