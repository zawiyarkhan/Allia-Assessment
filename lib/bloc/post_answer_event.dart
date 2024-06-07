part of 'post_answer_bloc.dart';

@immutable
sealed class PostAnswerEvent {}

final class AnswerEvent extends PostAnswerEvent {
  final AnswersModel answer;

  AnswerEvent(this.answer);
}
