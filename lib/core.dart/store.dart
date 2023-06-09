// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:course_management_system/Widgets/Student.dart';
import 'package:course_management_system/Widgets/classes.dart';
import 'package:course_management_system/Widgets/teacher.dart';
import 'package:velocity_x/velocity_x.dart';

class Mystore extends VxStore {
  // for Student
  MyClass currentclass = MyClass(
      class_name: "", image: "", Teacher_name: "", class_id: "", Assigned: []);
  bool Logged_in_student = false;
  Student student = Student(
      name: "", image: "", Student_id: "", myclasses: [], MyAssignments: []);

  // for teacher
  bool Logged_in_teacher = false;
  Teacher teacher = Teacher(name: "", image: "", Teacher_id: "", myclasses: []);

  Mystore() {
    currentclass = MyClass(
        class_name: "",
        image: "",
        Teacher_name: "",
        class_id: "",
        Assigned: []);

    // for student
    bool Logged_in_student = false;
    student = Student(
        name: "", image: "", Student_id: "", myclasses: [], MyAssignments: []);

    // for teacher
    bool Logged_in_teacher = false;
    teacher = Teacher(name: "", image: "", Teacher_id: "", myclasses: []);
  }
}
