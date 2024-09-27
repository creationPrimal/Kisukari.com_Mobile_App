

class ConsultModel {
  ConsultModel({
    required this.type,
    required this.name,
    required this.date,
    required this.time,
    required this.status,
    required this.image,
  });
  String type;
  String name;
  String date;
  String time;
  String status;
  String image;
}

List<ConsultModel> consultlist = [
  ConsultModel(
    type: "audio",
    name: "Dr. Yasini Mustafa Joshua",
    date: "01-03-2024",
    time: "12:00 PM",
    status: "pending",
    image: "https://images.unsplash.com/photo-1582750433449-648ed127bb54?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEwfHx8ZW58MHx8fHx8"
  ),
  ConsultModel(
    type: "audio",
    name: "Dr. Yasini Mustafa Joshua",
    date: "01-03-2024",
    time: "12:00 PM",
    status: "completed",
    image: "https://images.unsplash.com/photo-1582750433449-648ed127bb54?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEwfHx8ZW58MHx8fHx8"
  ),
  ConsultModel(
    type: "video",
    name: "Dr. Yasini Mustafa Joshua",
    date: "01-03-2024",
    time: "12:00 PM",
    status: "failed",
    image: "https://images.unsplash.com/photo-1582750433449-648ed127bb54?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEwfHx8ZW58MHx8fHx8"
  ),
];