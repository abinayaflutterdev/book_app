import 'package:book_app/book_app/book_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:book_app/custom_screens/custom_book_screen.dart';
import 'package:book_app/model_class/book_model_class.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Models'),
      ),
      body: Consumer<BookModelClass>(
          builder: (context,books,child){
            return ListView.builder(
              itemCount:  books.docs.length,
                itemBuilder: (context,index){
                final book = books.docs[index];

                return CustomBookScreen(
                    bookTitle: book.title,
                    author: book.authorName,
                    year: book.firstPublishYear,
                    coverId: book.coverId,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BookDetailScreen(book: book)));
                    },
                );
                });

          })

    );
  }
}
