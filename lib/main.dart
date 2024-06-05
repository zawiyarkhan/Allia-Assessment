import 'package:allure_health/Data/Data%20Provider/auth_data_provider.dart';
import 'package:allure_health/Data/Data%20Provider/question_data_provider.dart';
import 'package:allure_health/Data/Repo/auth_repo.dart';
import 'package:allure_health/Data/Repo/question_repo.dart';
import 'package:allure_health/Views/Pages/all_done.dart';
import 'package:allure_health/Views/Pages/likert_scale.dart';
import 'package:allure_health/Views/Pages/openingPage.dart';
import 'package:allure_health/Views/Pages/single_choice_question.dart';
import 'package:allure_health/bloc/fetch_data_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => QuestionRepo(QuestionDataProvider()),
        ),
        RepositoryProvider(
          create: (context) => AuthRepo(AuthDataProvider()),
        ),
      ],
      child: BlocProvider(
        create: (context) => FetchDataBloc(
          context.read<QuestionRepo>(),
          context.read<AuthRepo>(),
        ),
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const LikertScale(),
        ),
      ),
    );
  }
}
