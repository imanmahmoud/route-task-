class Product {
  num? id;
  String? title;
  String? description;
  num? price;
  num? discountPercentage;
  num? rating;
  List<String>? images;

  Product(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.discountPercentage,
      this.rating,
      this.images});
}
