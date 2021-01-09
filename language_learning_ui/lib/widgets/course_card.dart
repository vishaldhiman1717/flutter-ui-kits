import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_learning_ui/constants.dart';
import 'package:language_learning_ui/models/course_model.dart';

class CourseCard extends StatelessWidget {
  final CourseModel course;
  CourseCard({this.course});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(120.0),
      width: ScreenUtil().setWidth(145.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: this.course.color,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            this.course.name,
            style: TextStyle(
              color: Constants.primaryTextColor,
              fontWeight: FontWeight.w600,
              fontSize: 14.0,
            ),
          )
        ],
      ),
    );
  }
}
