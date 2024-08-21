







//table model
class MedicineList {
  MedicineList({
    required this.name,
    required this.qtyperday,
    required this.weeklytotal,
  });

  String name;
  int qtyperday;
  int weeklytotal;

}




List<MedicineList> medicinelistcontents = [
  MedicineList (
    name : "Metforming 500mg",
    qtyperday : 1,
    weeklytotal : 12,
  ),
  MedicineList (
    name : "Glimepiride 2mg",
    qtyperday : 2,
    weeklytotal : 12,
  ),
  MedicineList (
    name : "Hydralazine 50mg",
    qtyperday : 2,
    weeklytotal : 12,
  ),
  MedicineList (
    name : "Metforming 500mg",
    qtyperday : 1,
    weeklytotal : 12,
  ),
  
];