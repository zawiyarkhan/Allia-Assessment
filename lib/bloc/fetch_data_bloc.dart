import 'package:allure_health/Data/Repo/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../model/model.dart';

part 'fetch_data_event.dart';
part 'fetch_data_state.dart';

class FetchDataBloc extends Bloc<FetchDataEvent, FetchDataState> {
  final AuthRepo authRepo;
  FetchDataBloc(this.authRepo) : super(FetchDataInitial()) {
    on<FetchData>((event, emit) {
      try {} catch (e) {}
    });
  }
}
