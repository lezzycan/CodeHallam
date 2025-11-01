class CoursesModel {
  final String courseTitle;
  final String numLessons;
  final String time;
  final String ratings;
  final String asset;

  CoursesModel(
      {required this.asset,
      required this.courseTitle,
      required this.numLessons,
      required this.time,
      required this.ratings});
}

List<CoursesModel> topCoursesContent = [
  CoursesModel(
      courseTitle: 'Machine Learning full courses',
      numLessons: '20',
      time: '20hr 30 min',
      ratings: '4.8',
      asset: 'assets/images/machineL.jpg'),
  CoursesModel(
      courseTitle: 'AI full courses',
      numLessons: '20',
      time: '6hr 30min',
      ratings: '4.8',
      asset: 'assets/images/ai.jpg'),
];

List<CoursesModel> freeCoursesContent = [
  CoursesModel(
      courseTitle: 'Tableau full courses',
      numLessons: '20',
      time: '10hrs',
      ratings: '4.7',
      asset: 'assets/images/Tableau.jpg'),
  CoursesModel(
      courseTitle: 'Excel full courses',
      numLessons: '20',
      time: '6hr 30min',
      ratings: '4.8',
      asset: 'assets/images/Excel.jpg'),
];

List<CoursesModel> popularCoursesContent = [
  CoursesModel(
      courseTitle: 'Python full courses',
      numLessons: '10',
      time: '10hr 30 min',
      ratings: '4.8',
      asset: 'assets/images/Python.jpg'),
  CoursesModel(
      courseTitle: 'Data Analytics courses',
      numLessons: '20',
      time: '6hr 30min',
      ratings: '4.8',
      asset: 'assets/images/data analytics.jpg'),
];