part of 'program_bloc.dart';

@immutable
abstract class ProgramState {}

class ProgramLoadingState extends ProgramState {}

class ProgramLoadedState extends ProgramState {
  final List<Program> programs;

  ProgramLoadedState({required this.programs});
}

class ProgramErrorState extends ProgramState {}
