







//table model
class MedicineTableItems {
  MedicineTableItems({
    required this.date,
    required this.time1,
    required this.time2,
    required this.time3,
    required this.name1,
    required this.name2,
    required this.name3,
    required this.qty1,
    required this.qty2,
    required this.qty3,
  });

  String date;
  String time1;
  String time2;
  String time3;
  String name1;
  String name2;
  String name3;
  int qty1;
  int qty2;
  int qty3;

}




List<MedicineTableItems> tableitemcontents = [
  MedicineTableItems (
    date : "July 4",
    time1 : "10:00",
    time2 : "07:51",
    time3 : "08:02",
    name1 : "Metformin 500mg",
    name2 : "Glimepiride 2mg",
    name3 : "Hydralazine 50mg",
    qty1 : 1,
    qty2 : 2,
    qty3 : 3,
  ),
  MedicineTableItems (
    date : "July 3",
    time1 : "10:00",
    time2 : "07:51",
    time3 : "08:02",
    name1 : "Metformin 500mg",
    name2 : "Glimepiride 2mg",
    name3 : "Hydralazine 50mg",
    qty1 : 1,
    qty2 : 2,
    qty3 : 3,
  ),
  MedicineTableItems (
    date : "July 2",
    time1 : "10:00",
    time2 : "07:51",
    time3 : "08:02",
    name1 : "Metformin 500mg",
    name2 : "Glimepiride 2mg",
    name3 : "Hydralazine 50mg",
    qty1 : 1,
    qty2 : 2,
    qty3 : 3,
  ),
  MedicineTableItems (
    date : "July 1",
    time1 : "10:00",
    time2 : "07:51",
    time3 : "08:02",
    name1 : "Metformin 500mg",
    name2 : "Glimepiride 2mg",
    name3 : "Hydralazine 50mg",
    qty1 : 1,
    qty2 : 2,
    qty3 : 3,
  ),
 
];