import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:book_app/custom_screens/custom_book_detail_screen.dart';
import 'package:book_app/model_class/book_model_class.dart';

class BookDetailScreen extends StatefulWidget {

  final BookResponse book;

  const BookDetailScreen({
    super.key,
    required this.book
  });

  @override
  State<BookDetailScreen> createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Details'),),

      body: CustomBookDetailScreen(
          bookTitle: widget.book.title,
          authorName: widget.book.authorName,
          year: widget.book.firstPublishYear,
        )
    );
  }
}
