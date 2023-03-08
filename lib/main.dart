import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intern_0603/Bloc/lesson_bloc/lesson_bloc.dart';
import 'package:flutter_intern_0603/Bloc/program_bloc/program_bloc.dart';
import 'package:flutter_intern_0603/repository/lesson_repository.dart';
import 'package:flutter_intern_0603/repository/program_repository.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => LessonRepository()),
        RepositoryProvider(create: (context) => ProgramRepository())
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ProgramBloc>(
            create: (context) => ProgramBloc(
              repository: ProgramRepository(),
            )..add(LoadProgramsEvent()),
          ),
          BlocProvider<LessonBloc>(
            create: (context) => LessonBloc(
              repository: LessonRepository(),
            )..add(LoadLessonsEvent()),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          home: HomeScreen(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
