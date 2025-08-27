import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  // either is used to handel errors form adrtz package
Future<Either<Failures,List<BookModel>>> fetchFeaturedBooks();
Future<Either<Failures,List<BookModel>>> fetchBestSellerBooks();
}
