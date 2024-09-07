import 'package:either_dart/either.dart';
import 'package:recipes_app/core/network/exceptions.dart';

typedef EitherResponse<T> = Future<Either<ApiException, T>>;