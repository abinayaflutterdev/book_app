import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomBookScreen extends StatelessWidget {

  final String bookTitle;
  final List<String> author;
  final int year;
  final int coverId;
  final VoidCallback onTap;

  const CustomBookScreen({
    super.key,
    required this.bookTitle,
    required this.author,
    required this.year,
    required this.coverId,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: EdgeInsetsGeometry.all(3.0.sh),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(bookTitle),

            Text(author.first),

            Text(year.toString()),

            Text(coverId.toString()),
          ],
        ),
      ),
    );
  }
}
