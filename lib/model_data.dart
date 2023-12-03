class ModelData{
  static List<Item> item= [
    Item(image: 'assets/images/image_1.png', name: 'SAMANTHA', country: 'India', price: '459'),
    Item(image: 'assets/images/image_2.png', name: 'ANGELICA', country: 'America', price: '279'),
    Item(image: 'assets/images/image_3.png', name: 'DAROTA', country: 'Russia', price: '949'),

  ];

}
class Item{
  String? image;
  String? name;
  String? country;
  String? price;

  Item({required this.image, required this.name, required this.country, required this.price});
}