part of 'post_answer_bloc.dart';

@immutable
sealed class PostAnswerState {}

final class PostAnswerInitial extends PostAnswerState {}

final class AnswerSuccess extends PostAnswerState {
  final bool verdict;

  AnswerSuccess(this.verdict);
}
