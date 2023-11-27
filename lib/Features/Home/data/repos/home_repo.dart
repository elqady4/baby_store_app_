import 'package:baby_store_app/Features/Home/data/models/photo_model/photo_mode.dart';
import 'package:baby_store_app/Features/Home/data/models/user_model/user_model.dart';
import 'package:baby_store_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<UserModel>>> fetchAllUsers();
  Future<Either<Failure,List<PhotoModel>>> fetchAllPhotos();
}