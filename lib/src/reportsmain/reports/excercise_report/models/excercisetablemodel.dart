







//table model
class ExcerciseTableItems {
  ExcerciseTableItems({
    required this.date,
    required this.steps,
    required this.excercise,
    required this.time,
    required this.calorie,
  });

  String date;
  int steps;
  String excercise;
  int time;
  int calorie;

}




List<ExcerciseTableItems> tableitemcontents = [
  ExcerciseTableItems (
    date : "13-10-2024",
    steps : 1123,
    excercise : "Kukimbia",
    time : 11,
    calorie : 11,
  ),
  ExcerciseTableItems (
    date : "13-10-2024",
    steps : 143,
    excercise : "Kuruka kamba",
    time : 335,
    calorie : 335,
  ),
  ExcerciseTableItems (
    date : "13-10-2024",
    steps : 3265,
    excercise : "Kukimbia",
    time : 321,
    calorie : 321,
  ),
  ExcerciseTableItems (
    date : "13-10-2024",
    steps : 6003,
    excercise : "Kuruka kamba",
    time : 140,
    calorie : 140,
  ),
  ExcerciseTableItems (
    date : "13-10-2024",
    steps : 3432,
    excercise : "Yoga",
    time : 170,
    calorie : 170,
  ),
  ExcerciseTableItems (
    date : "13-10-2024",
    steps : 176,
    excercise : "Kukimbia",
    time : 320,
    calorie : 320,
  ),
  ExcerciseTableItems (
    date : "13-10-2024",
    steps : 4350,
    excercise : "Yoga",
    time : 151,
    calorie : 151,
  ),
];