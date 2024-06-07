import 'package:allure_health/Data/Repo/answer_repo.dart';
import 'package:allure_health/model/answer_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'post_answer_event.dart';
part 'post_answer_state.dart';

class PostAnswerBloc extends Bloc<PostAnswerEvent, PostAnswerState> {
  final AnswerRepo answerRepo;
  PostAnswerBloc(this.answerRepo) : super(PostAnswerInitial()) {
    on<AnswerEvent>((event, emit) async {
      try {
        final data = event.answer;
        final verdict = await answerRepo.postAnswer(data);
        emit(AnswerSuccess(verdict));
      } catch (e) {
        throw (e.toString());
      }
    });
  }
}
