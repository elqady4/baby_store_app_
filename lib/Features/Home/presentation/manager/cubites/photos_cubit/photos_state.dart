part of 'photos_cubit.dart';

sealed class PhotosState extends Equatable {
  const PhotosState();

  @override
  List<Object> get props => [];
}

final class PhotosInitial extends PhotosState {}
final class PhotosLoading extends PhotosState {}
final class PhotosSuccess extends PhotosState {
    final List<PhotoModel> photos;

  const PhotosSuccess({required this.photos});
}
final class PhotosFailure extends PhotosState {
  final String errMessage;

  const PhotosFailure({required this.errMessage});
}