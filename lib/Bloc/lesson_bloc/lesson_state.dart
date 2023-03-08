part of 'lesson_bloc.dart';

@immutable
abstract class LessonState {}

class LessonLoadingState extends LessonState {}

class LessonLoadedState extends LessonState {
  final List<Lesson> lessons;

  LessonLoadedState({required this.lessons});
}

class LessonErrorState extends LessonState {}
