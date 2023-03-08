import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Models/lesson.dart';
import '../../repository/lesson_repository.dart';
part 'lesson_event.dart';
part 'lesson_state.dart';

class LessonBloc extends Bloc<LessonEvent, LessonState> {
  final LessonRepository repository;

  LessonBloc({required this.repository}) : super(LessonLoadingState()) {
    on<LoadLessonsEvent>((event, emit) async {
      emit(LessonLoadingState());
      try {
        final lessons = await repository.getLessons();
        emit(LessonLoadedState(lessons: lessons));
      } catch (e) {
        print(e);
        emit(LessonErrorState());
      }
    });
  }
}
