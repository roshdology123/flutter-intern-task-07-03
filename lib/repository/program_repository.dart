import 'dart:convert';

import '../Models/program.dart';
import 'package:http/http.dart' as http;

class ProgramRepository {
  Future<List<Program>> getPrograms() async {
    final response = await http.get(
        Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/programs'));
    final data = jsonDecode(response.body);

    final List<Program> programs = [];
    for (var programData in data['items']) {
      programs.add(Program(
        id: programData['id'],
        name: programData['name'],
        category: programData['category'],
        lesson: programData['lesson'],
        createdAt: programData['createdAt'],
      ));
    }
    return programs;
  }
}
