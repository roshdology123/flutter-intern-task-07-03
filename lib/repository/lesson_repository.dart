import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/lesson.dart';

class LessonRepository {
  Future<List<Lesson>> getLessons() async {
    final response = await http.get(
        Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/lessons'));
    final data = jsonDecode(response.body);
    final List<Lesson> lessons = [];
    for (var lessonData in data['items']) {
      lessons.add(Lesson(
        id: lessonData['id'],
        name: lessonData['name'],
        category: lessonData['category'],
        duration: lessonData['duration'],
        locked: lessonData['locked'],
        createdAt: lessonData['createdAt'],
      ));
    }
    return lessons;
  }
}
