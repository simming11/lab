class Hobby {
  final String name;
   bool value;

  Hobby({required this.name, required this.value});

  static List<Hobby> getHobby() {
    return [
      Hobby(name: "ดู tiktok", value: false),
      Hobby(name: "ดู facebook", value: false),
      Hobby(name: "ดู youtube", value: true ),

    ];
  }
}
