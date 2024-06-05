import 'package:allure_health/Data/Repo/auth_repo.dart';
import 'package:allure_health/Data/Repo/question_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../model/model.dart';

part 'fetch_data_event.dart';
part 'fetch_data_state.dart';

class FetchDataBloc extends Bloc<FetchDataEvent, FetchDataState> {
  final QuestionRepo questionRepo;
  final AuthRepo authRepo;
  FetchDataBloc(this.questionRepo, this.authRepo) : super(FetchDataInitial()) {
    on<FetchData>((event, emit) async {
      print("object");
      try {
        print("this");
        final token = await authRepo.getAccessToken();
        print(token);
        final questions = await questionRepo.getData(token);
        print(questions);
        emit(FetchDataSuccess(data: questions));
      } catch (e) {
        FetchDataFailure(e.toString());
      }
    });
  }
}
