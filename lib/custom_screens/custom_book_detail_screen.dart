import 'package:book_app/model_class/book_model_class.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomBookDetailScreen extends StatelessWidget {

  final String bookTitle;
  final List<String> authorName;
  final int year;

  const CustomBookDetailScreen({
    super.key,
    required this.bookTitle,
    required this.authorName,
    required this.year,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(3.0.sh),
      child: Column(
        children: [
          Text(bookTitle),
          SizedBox(height: 2.0.h,),

          Text(authorName.first),
          SizedBox(height: 2.0.h,),

          Text(year.toString()),
        ],
      ),
    );
  }
}
