// 5. Տրված է Product դաս.
// class Product {
// String name;
// String category;
// double price;
// }
// Գրել Map<String, double> totalByCategory(List<Product> products) ֆունկցիա, որը
// վերադարձնում է յուրաքանչյուր category-ի համար այդ category-ի բոլոր ապրանքների
// գների գումարը։

class Product {
  String name;
  String category;
  double price;
  Product(this.name, this.category, this.price);
}

Map<String, double> totalByCategory(List<Product> products) {
  Map<String, double> sum = {};

  for (Product product in products) {
    if (sum.containsKey(product.category)) {
      sum[product.category] = sum[product.category]! + product.price;
    } else {
      sum[product.category] = product.price;
    }
  }
  return sum;
}

void main() {
List<Product> products = [
  Product("Հեռախոս", "Էլեկտրոնիկա", 160000),
  Product("Հեռուստացույց", "Էլեկտրոնիկա", 210000),
  Product("Հաց", "Մթերք", 300),
  Product("Մածուն", "Մթերք", 600),
  Product("Տետր", "Գրենական պիտույքներ", 400),
  Product("Քանոն", "Գրենական պիտույքներ", 200),
];
  Map<String, double> result = totalByCategory(products);
  print(result);
}
