

//table model
class BpTableItems {
  BpTableItems({
    required this.date,
    required this.time,
    required this.pressure,
    required this.heartbeat,
  });

  String date;
  String time;
  double pressure;
  double heartbeat;

}




List<BpTableItems> tableitemcontents = [
  BpTableItems (
    date : "13-10-2024",
    time : "10:00",
    pressure : 11.1,
    heartbeat : 11.1,
  ),
  BpTableItems (
    date : "14-10-2024",
    time : "10:00",
    pressure : 11.1,
    heartbeat : 12.3,
  ),
  BpTableItems (
    date : "15-10-2024",
    time : "10:00",
    pressure : 11.1,
    heartbeat : 8.54,
  ),
  BpTableItems (
    date : "16-10-2024",
    time : "10:00",
    pressure : 11.1,
    heartbeat : 14.54,
  ),
  BpTableItems (
    date : "17-10-2024",
    time : "10:00",
    pressure : 11.1,
    heartbeat : 2,
  ),
  BpTableItems (
    date : "18-10-2024",
    time : "10:00",
    pressure : 11.1,
    heartbeat : 11.1,
  ),
  BpTableItems (
    date : "18-10-2024",
    time : "10:00",
    pressure : 11.1,
    heartbeat : 3.45,
  ),
  BpTableItems (
    date : "13-10-2024",
    time : "10:00",
    pressure : 11.1,
    heartbeat : 7.5,
  ),

  
];