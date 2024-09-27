

class RecomReportModel {
  RecomReportModel({
    required this.initialDate,
    required this.lastDate,
    required this.available,
  });
  String initialDate;
  String lastDate;
  bool available;
  
}

List<RecomReportModel> reports = [
  RecomReportModel(
    initialDate: "21-02-2024",
    lastDate: "07-03-2024",
    available: true
  ),
  RecomReportModel(
    initialDate: "21-02-2024",
    lastDate: "07-03-2024",
    available: false
  ),
];