import 'package:allure_health/Routes/route_constants.dart';
import 'package:allure_health/bloc/post_answer_bloc.dart';
import 'package:allure_health/model/answer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class AllDonePage extends StatelessWidget {
  const AllDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PostAnswerBloc dataBloc = BlocProvider.of<PostAnswerBloc>(context);
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<PostAnswerBloc, PostAnswerState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 17,
                ),
                child: Image.asset("assets/allDone.png"),
              ),
              Text(
                "Self Report Completed",
                style: GoogleFonts.sourceSerif4(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 17),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      List<Answer> list = [];
                      Answer answer =
                          Answer(questionId: 2, selectedOptionId: 3);
                      list.add(answer);
                      AnswersModel ans = AnswersModel(answers: list);

                      dataBloc.add(AnswerEvent(ans));

                      if (state is AnswerSuccess) {
                        final verdict = state.verdict;
                        if (verdict) {
                          GoRouter.of(context)
                              .push(Uri(path: '/likert').toString());
                        } else {
                          return;
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xff2E959E),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.0),
                      ),
                      padding: const EdgeInsets.all(16.0),
                    ),
                    child: Text(
                      "Go To Home",
                      style: GoogleFonts.sourceSans3(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
