import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Bloc/program_bloc/program_bloc.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<ProgramBloc, ProgramState>(
        builder: (context, state) {
          if (state is ProgramLoadingState) {
            return Row(
              children: const [
                CircularProgressIndicator(),
              ],
            );
          } else if (state is ProgramLoadedState) {
            return ListView.builder(
                itemCount: state.programs.length,
                itemBuilder: (context, index) {
                  final program = state.programs[index];

                  return ListTile(
                    title: Text(program.name),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Category: ${program.category}'),
                        Text('Lesson: ${program.lesson}'),
                        Text('Created At: ${program.createdAt}'),
                      ],
                    ),
                  );
                });
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
    );
  }
}
