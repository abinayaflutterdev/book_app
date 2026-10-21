class BookModelClass{

  final int numFound;
  final int start;
  final bool numFoundExact;
  final List<BookResponse> docs;

  BookModelClass({
    required this.numFound,
    required this.start,
    required this.numFoundExact,
    required this.docs,

});
  factory BookModelClass.fromJson(Map<String,dynamic>json){
    return BookModelClass(
        numFound: json['numFound'] ?? 0,
        start: json['start'] ?? 0,
        numFoundExact: json['numFoundExact'] ?? false,
      docs: (json['docs'] as List)
          .map((book) => BookResponse.fromJson(book))
          .toList(),
    );
  }
}

class BookResponse{

  final String title;
  final List<String> authorName;
  final int firstPublishYear;
  final int coverId;

  BookResponse({
    required this.title,
    required this.authorName,
    required this.firstPublishYear,
    required this.coverId,
});
  factory BookResponse.fromJson(Map<String,dynamic> json){
    return BookResponse(
        title: json['title'],
        authorName: List<String>.from(json['author_name'] ?? []),
        firstPublishYear: json['first_publish_year'] ?? 0,
        coverId: json['cover_i'] ?? 0);
  }
}
