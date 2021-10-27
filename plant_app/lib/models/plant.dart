class Plant {
  final String title, country, description, image;
  final int price;

  Plant(this.title, this.country, this.description, this.price, this.image);
}

List<Plant> plants = [
  Plant('Plant1', 'Russia', description, 100, 'assets/images/image_1.png'),
  Plant('Plant2', 'China', description, 200, 'assets/images/image_2.png'),
  Plant('Plant3', 'VietNam', description, 300, 'assets/images/image_3.png')
];

const String description =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
