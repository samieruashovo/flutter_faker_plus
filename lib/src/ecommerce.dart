import 'utils/ecommerce_product_data.dart';
import 'utils/random_utils.dart';

class EcommerceProduct {
  final String name;
  final double price;
  final String category;
  // final String imageUrl;

  EcommerceProduct({
    required this.name,
    required this.price,
    required this.category,
    // required this.imageUrl,
  });

  /// Generates a random [EcommerceProduct] instance.
  ///
  /// This method generates a random product with the following attributes:
  /// - A random product name and category selected from the predefined `ecommerceProductData` list.
  /// - A random price between 50.0 and 2000.0, generated using `RandomUtils.randomDouble`.
  ///   The price is rounded to two decimal places for precision.
  ///
  /// The generated product is returned as an [EcommerceProduct] object with the
  /// selected product name, price, and category.
  ///
  /// Example:
  /// ```dart
  /// EcommerceProduct product = EcommerceProduct.generate();
  /// print(product.name);  // Output: A random product name.
  /// print(product.price); // Output: A random price between 50.0 and 2000.0.
  /// print(product.category); // Output: The product category.
  /// ```
  static EcommerceProduct generate() {
    final productData = ecommerceProductData[
        RandomUtils.randomInt(0, ecommerceProductData.length - 1)];
    final price = RandomUtils.randomDouble(50.0, 2000.0);

    return EcommerceProduct(
      name: productData['name'],
      price: double.parse(price.toStringAsFixed(2)),
      category: productData['category'],
    );
  }
}
