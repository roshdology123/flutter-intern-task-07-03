import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intern_0603/Bloc/lesson_bloc/lesson_bloc.dart';
import 'package:flutter_intern_0603/Widgets/category_tile.dart';
import 'package:flutter_intern_0603/Widgets/program_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Bloc/program_bloc/program_bloc.dart';
import 'app_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: const Color(0xffEEF3FD),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBar(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'Hello, Priya!',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'What do you wanna learn today?',
                      style: TextStyle(color: Color(0xff6D747A)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      CategoryTile(
                          title: 'Programs',
                          iconPath: 'assets/icons/Book-mark.svg'),
                      CategoryTile(
                          title: 'Get help',
                          iconPath: 'assets/icons/help-circle.svg'),
                    ],
                  ),
                  Row(
                    children: const [
                      CategoryTile(
                          title: 'Learn',
                          iconPath: 'assets/icons/Book-open.svg'),
                      CategoryTile(
                          title: 'DD Tracker',
                          iconPath: 'assets/icons/trello.svg'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                      child: Text(
                        'Programs for you',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Row(
                          children: [
                            const Text(
                              'View all',
                              style: TextStyle(
                                  color: Color(0xff6D747A), fontSize: 12),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset('assets/icons/arrow-right.svg')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: BlocBuilder<ProgramBloc, ProgramState>(
                    builder: (context, state) {
                      if (state is ProgramLoadingState) {
                        return Row(
                          children: const [
                            CircularProgressIndicator(),
                          ],
                        );
                      } else if (state is ProgramLoadedState) {
                        return Row(
                          children: state.programs
                              .map((program) => ProgramCard(
                                    cardTitle: program.category,
                                    cardDescription: program.name,
                                    cardInfo: "${program.lesson} Lessons",
                                    imgPath: 'assets/icons/Frame 122.svg',
                                  ))
                              .toList(),
                        );
                      } else if (state is ProgramErrorState) {
                        return Row(
                          children: const [
                            Text("Error loading programs"),
                          ],
                        );
                      } else {
                        return const Text('Something Went Wrong !');
                      }
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                      child: Text(
                        'Events and experiences',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Row(
                          children: [
                            const Text(
                              'View all',
                              style: TextStyle(
                                  color: Color(0xff6D747A), fontSize: 12),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset('assets/icons/arrow-right.svg')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: BlocBuilder<ProgramBloc, ProgramState>(
                    builder: (context, state) {
                      if (state is ProgramLoadingState) {
                        return Row(
                          children: const [
                            CircularProgressIndicator(),
                          ],
                        );
                      } else if (state is ProgramLoadedState) {
                        return Row(
                          children: state.programs
                              .map((program) => ProgramCard(
                                    cardTitle: program.category,
                                    cardDescription: program.name,
                                    cardInfo: "${program.lesson} Lessons",
                                    imgPath: 'assets/icons/Frame 122.svg',
                                  ))
                              .toList(),
                        );
                      } else if (state is ProgramErrorState) {
                        return Row(
                          children: const [
                            Text("Error loading programs"),
                          ],
                        );
                      } else {
                        return const Text('Something Went Wrong !');
                      }
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                      child: Text(
                        'Lessons for you',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Row(
                          children: [
                            const Text(
                              'View all',
                              style: TextStyle(
                                  color: Color(0xff6D747A), fontSize: 12),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset('assets/icons/arrow-right.svg')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: BlocBuilder<LessonBloc, LessonState>(
                    builder: (context, state) {
                      if (state is LessonLoadingState) {
                        return Row(
                          children: const [
                            CircularProgressIndicator(),
                          ],
                        );
                      } else if (state is LessonLoadedState) {
                        return Row(
                          children: state.lessons
                              .map((lesson) => ProgramCard(
                                    cardTitle: lesson.category,
                                    cardDescription: lesson.name,
                                    cardInfo: lesson.duration > 60
                                        ? Duration(seconds: lesson.duration)
                                                .inMinutes
                                                .toString() +
                                            " minute"
                                        : "Less than a minute",
                                    imgPath: 'assets/icons/Frame 122.svg',
                                    isLock: lesson.locked,
                                  ))
                              .toList(),
                        );
                      } else if (state is ProgramErrorState) {
                        return Row(
                          children: const [
                            Text("Error loading programs"),
                          ],
                        );
                      } else {
                        return const Text('Something Went Wrong !');
                      }
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
