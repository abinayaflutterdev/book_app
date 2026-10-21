# Flutter Book App

## About the Project

This is a simple book application developed using Flutter and Dart. It fetches book information from the Open Library API and displays a list of books with their details. It demonstrates API integration, asynchronous programming, and state management using the Provider package.

## Features

- Fetch book data from the Open Library API
- Display a list of books
- Show book titles, author names, and publication years
- Navigate from the book list screen to the book detail screen
- Display loading and error states while fetching API data
- Manage asynchronous API data using FutureProvider

## Technologies Used

- Flutter
- Dart
- Provider package
- FutureProvider
- HTTP package
- Open Library API

## Concepts Learned

- `Future`
- `async` and `await`
- `FutureProvider`
- `Provider`
- `Consumer`
- REST API Integration
- JSON Parsing
- Model Classes
- Factory Constructors
- Asynchronous Programming
- Navigation using `Navigator`
- Reusable Custom Widgets
- Constructor and Parameter Passing

## Project Structure

- `book_model_class.dart` – Defines the book model and converts JSON data into Dart objects.
- `book_provider_screen.dart` – Handles book data fetching from the Open Library API.
- `book_screen.dart` – Displays the list of books.
- `book_detail_screen.dart` – Displays the selected book's details.
- `custom_book_screen.dart` – Defines the reusable custom widget for displaying book information.
- `custom_book_detail_screen.dart` – Defines the reusable custom widget for the book detail screen.
- `main.dart` – Configures the application and Provider setup.

## Getting Started

1. Clone or download this repository.
2. Open the project folder in Android Studio or VS Code.
3. Run `flutter pub get` to install dependencies.
4. Run `flutter run` to launch the application.

## API Used

**Open Library API**

Book search endpoint:

`https://openlibrary.org/search.json?q=harry+potter`

## Author

Abinaya
