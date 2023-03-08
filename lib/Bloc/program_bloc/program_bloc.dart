import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_intern_0603/repository/program_repository.dart';
import 'package:meta/meta.dart';

import '../../Models/program.dart';

part 'program_event.dart';
part 'program_state.dart';

class ProgramBloc extends Bloc<ProgramEvent, ProgramState> {
  final ProgramRepository repository;

  ProgramBloc({required this.repository}) : super(ProgramLoadingState()) {
    on<LoadProgramsEvent>((event, emit) async {
      print("Event: $event");
      emit(ProgramLoadingState());
      try {
        final programs = await repository.getPrograms();
        emit(ProgramLoadedState(programs: programs));
      } catch (e) {
        print("Error loading programs: $e");
        emit(ProgramErrorState());
      }
    });
  }
}
