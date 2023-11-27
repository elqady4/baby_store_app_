import 'package:baby_store_app/Features/Home/data/models/photo_model/photo_mode.dart';
import 'package:baby_store_app/Features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'photos_state.dart';

class PhotosCubit extends Cubit<PhotosState> {
  PhotosCubit(this.homeRepo) : super(PhotosInitial());

    final HomeRepo homeRepo;

  Future<void> fetchAllPhotos() async {
    emit(PhotosLoading());
    var result = await homeRepo.fetchAllPhotos();
    result.fold((failure) {
      emit(PhotosFailure(errMessage: failure.errMessage));
    }, (photos) {
      emit(PhotosSuccess(photos: photos));
    });
  }
}
