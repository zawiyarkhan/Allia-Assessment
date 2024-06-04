part of 'fetch_data_bloc.dart';

@immutable
sealed class FetchDataState {}

final class FetchDataInitial extends FetchDataState {}

final class FetchDataSuccess extends FetchDataState {
  final List<Question> data;

  FetchDataSuccess({required this.data});
}

final class FetchDataFailure extends FetchDataState {
  final String error;

  FetchDataFailure(this.error);
}
