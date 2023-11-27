import 'package:baby_store_app/Features/Home/data/models/photo_model/photo_mode.dart';
import 'package:baby_store_app/Features/Home/data/models/user_model/user_model.dart';
import 'package:baby_store_app/Features/Home/data/repos/home_repo.dart';
import 'package:baby_store_app/core/errors/failures.dart';
import 'package:baby_store_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<UserModel>>> fetchAllUsers() async {
    try {
      var data = await apiService.get(endPoint: 'users');

      List<UserModel> users = [];
      for (var item in data) {
        try {
          users.add(UserModel.fromJson(item));
        } catch (e) {
          users.add(UserModel.fromJson(item));
        }
      }

      return right(users);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<PhotoModel>>> fetchAllPhotos() async {
    try {
      var data = await apiService.get(endPoint: 'photos');

      List<PhotoModel> photos = [];
      for (var item in data) {
        try {
          photos.add(PhotoModel.fromJson(item));
        } catch (e) {
          photos.add(PhotoModel.fromJson(item));
        }
      }

      return right(photos);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
