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

  static final List<Map<String, dynamic>> _productData = [
    // Electronics
    {
      'name': 'Laptop',
      'category': 'Electronics',
      'image': 'https://example.com/images/laptop.jpg'
    },
    {
      'name': 'Smartphone',
      'category': 'Electronics',
      'image': 'https://example.com/images/smartphone.jpg'
    },
    {
      'name': 'Tablet',
      'category': 'Electronics',
      'image': 'https://example.com/images/tablet.jpg'
    },
    {
      'name': 'Headphones',
      'category': 'Electronics',
      'image': 'https://example.com/images/headphones.jpg'
    },
    {
      'name': 'Camera',
      'category': 'Electronics',
      'image': 'https://example.com/images/camera.jpg'
    },
    {
      'name': 'Smartwatch',
      'category': 'Electronics',
      'image': 'https://example.com/images/smartwatch.jpg'
    },
    {
      'name': 'TV',
      'category': 'Electronics',
      'image': 'https://example.com/images/tv.jpg'
    },
    {
      'name': 'Projector',
      'category': 'Electronics',
      'image': 'https://example.com/images/projector.jpg'
    },
    {
      'name': 'Bluetooth Speaker',
      'category': 'Electronics',
      'image': 'https://example.com/images/bluetooth_speaker.jpg'
    },
    {
      'name': 'Game Console',
      'category': 'Electronics',
      'image': 'https://example.com/images/game_console.jpg'
    },

    // Fashion
    {
      'name': 'T-shirt',
      'category': 'Fashion',
      'image': 'https://example.com/images/tshirt.jpg'
    },
    {
      'name': 'Jeans',
      'category': 'Fashion',
      'image': 'https://example.com/images/jeans.jpg'
    },
    {
      'name': 'Jacket',
      'category': 'Fashion',
      'image': 'https://example.com/images/jacket.jpg'
    },
    {
      'name': 'Sneakers',
      'category': 'Fashion',
      'image': 'https://example.com/images/sneakers.jpg'
    },
    {
      'name': 'Sweater',
      'category': 'Fashion',
      'image': 'https://example.com/images/sweater.jpg'
    },
    {
      'name': 'Dress',
      'category': 'Fashion',
      'image': 'https://example.com/images/dress.jpg'
    },
    {
      'name': 'Shorts',
      'category': 'Fashion',
      'image': 'https://example.com/images/shorts.jpg'
    },
    {
      'name': 'Skirt',
      'category': 'Fashion',
      'image': 'https://example.com/images/skirt.jpg'
    },
    {
      'name': 'Socks',
      'category': 'Fashion',
      'image': 'https://example.com/images/socks.jpg'
    },
    {
      'name': 'Cap',
      'category': 'Fashion',
      'image': 'https://example.com/images/cap.jpg'
    },

    // Home Appliances
    {
      'name': 'Washing Machine',
      'category': 'Home Appliances',
      'image': 'https://example.com/images/washing_machine.jpg'
    },
    {
      'name': 'Refrigerator',
      'category': 'Home Appliances',
      'image': 'https://example.com/images/refrigerator.jpg'
    },
    {
      'name': 'Microwave',
      'category': 'Home Appliances',
      'image': 'https://example.com/images/microwave.jpg'
    },
    {
      'name': 'Blender',
      'category': 'Home Appliances',
      'image': 'https://example.com/images/blender.jpg'
    },
    {
      'name': 'Coffee Maker',
      'category': 'Home Appliances',
      'image': 'https://example.com/images/coffee_maker.jpg'
    },
    {
      'name': 'Dishwasher',
      'category': 'Home Appliances',
      'image': 'https://example.com/images/dishwasher.jpg'
    },
    {
      'name': 'Toaster',
      'category': 'Home Appliances',
      'image': 'https://example.com/images/toaster.jpg'
    },
    {
      'name': 'Air Conditioner',
      'category': 'Home Appliances',
      'image': 'https://example.com/images/air_conditioner.jpg'
    },
    {
      'name': 'Heater',
      'category': 'Home Appliances',
      'image': 'https://example.com/images/heater.jpg'
    },
    {
      'name': 'Fan',
      'category': 'Home Appliances',
      'image': 'https://example.com/images/fan.jpg'
    },

    // Beauty
    {
      'name': 'Lipstick',
      'category': 'Beauty',
      'image': 'https://example.com/images/lipstick.jpg'
    },
    {
      'name': 'Mascara',
      'category': 'Beauty',
      'image': 'https://example.com/images/mascara.jpg'
    },
    {
      'name': 'Foundation',
      'category': 'Beauty',
      'image': 'https://example.com/images/foundation.jpg'
    },
    {
      'name': 'Perfume',
      'category': 'Beauty',
      'image': 'https://example.com/images/perfume.jpg'
    },
    {
      'name': 'Blush',
      'category': 'Beauty',
      'image': 'https://example.com/images/blush.jpg'
    },
    {
      'name': 'Nail Polish',
      'category': 'Beauty',
      'image': 'https://example.com/images/nail_polish.jpg'
    },
    {
      'name': 'Shampoo',
      'category': 'Beauty',
      'image': 'https://example.com/images/shampoo.jpg'
    },
    {
      'name': 'Conditioner',
      'category': 'Beauty',
      'image': 'https://example.com/images/conditioner.jpg'
    },
    {
      'name': 'Face Mask',
      'category': 'Beauty',
      'image': 'https://example.com/images/face_mask.jpg'
    },
    {
      'name': 'Moisturizer',
      'category': 'Beauty',
      'image': 'https://example.com/images/moisturizer.jpg'
    },

    // Kitchen Appliances
    {
      'name': 'Air Fryer',
      'category': 'Kitchen Appliances',
      'image': 'https://example.com/images/air_fryer.jpg'
    },
    {
      'name': 'Coffee Grinder',
      'category': 'Kitchen Appliances',
      'image': 'https://example.com/images/coffee_grinder.jpg'
    },
    {
      'name': 'Slow Cooker',
      'category': 'Kitchen Appliances',
      'image': 'https://example.com/images/slow_cooker.jpg'
    },
    {
      'name': 'Microwave Oven',
      'category': 'Kitchen Appliances',
      'image': 'https://example.com/images/microwave_oven.jpg'
    },
    {
      'name': 'Kettle',
      'category': 'Kitchen Appliances',
      'image': 'https://example.com/images/kettle.jpg'
    },
    {
      'name': 'Rice Cooker',
      'category': 'Kitchen Appliances',
      'image': 'https://example.com/images/rice_cooker.jpg'
    },
    {
      'name': 'Electric Grill',
      'category': 'Kitchen Appliances',
      'image': 'https://example.com/images/electric_grill.jpg'
    },
    {
      'name': 'Juicer',
      'category': 'Kitchen Appliances',
      'image': 'https://example.com/images/juicer.jpg'
    },
    {
      'name': 'Bread Maker',
      'category': 'Kitchen Appliances',
      'image': 'https://example.com/images/bread_maker.jpg'
    },
    {
      'name': 'Blender',
      'category': 'Kitchen Appliances',
      'image': 'https://example.com/images/blender.jpg'
    },

    // Office Supplies
    {
      'name': 'Desk',
      'category': 'Office Supplies',
      'image': 'https://example.com/images/desk.jpg'
    },
    {
      'name': 'Chair',
      'category': 'Office Supplies',
      'image': 'https://example.com/images/chair.jpg'
    },
    {
      'name': 'Monitor',
      'category': 'Office Supplies',
      'image': 'https://example.com/images/monitor.jpg'
    },
    {
      'name': 'Keyboard',
      'category': 'Office Supplies',
      'image': 'https://example.com/images/keyboard.jpg'
    },
    {
      'name': 'Mouse',
      'category': 'Office Supplies',
      'image': 'https://example.com/images/mouse.jpg'
    },
    {
      'name': 'Printer',
      'category': 'Office Supplies',
      'image': 'https://example.com/images/printer.jpg'
    },
    {
      'name': 'Notebook',
      'category': 'Office Supplies',
      'image': 'https://example.com/images/notebook.jpg'
    },
    {
      'name': 'Pen',
      'category': 'Office Supplies',
      'image': 'https://example.com/images/pen.jpg'
    },
    {
      'name': 'Lamp',
      'category': 'Office Supplies',
      'image': 'https://example.com/images/lamp.jpg'
    },
    {
      'name': 'Stapler',
      'category': 'Office Supplies',
      'image': 'https://example.com/images/stapler.jpg'
    },

    // Toys & Games
    {
      'name': 'Toy Car',
      'category': 'Toys & Games',
      'image': 'https://example.com/images/toy_car.jpg'
    },
    {
      'name': 'Action Figure',
      'category': 'Toys & Games',
      'image': 'https://example.com/images/action_figure.jpg'
    },
    {
      'name': 'Doll',
      'category': 'Toys & Games',
      'image': 'https://example.com/images/doll.jpg'
    },
    {
      'name': 'Puzzle',
      'category': 'Toys & Games',
      'image': 'https://example.com/images/puzzle.jpg'
    },
    {
      'name': 'Board Game',
      'category': 'Toys & Games',
      'image': 'https://example.com/images/board_game.jpg'
    },
    {
      'name': 'Lego Set',
      'category': 'Toys & Games',
      'image': 'https://example.com/images/lego_set.jpg'
    },
    {
      'name': 'Plush Toy',
      'category': 'Toys & Games',
      'image': 'https://example.com/images/plush_toy.jpg'
    },
    {
      'name': 'Kite',
      'category': 'Toys & Games',
      'image': 'https://example.com/images/kite.jpg'
    },
    {
      'name': 'Remote Control Car',
      'category': 'Toys & Games',
      'image': 'https://example.com/images/remote_control_car.jpg'
    },
    {
      'name': 'Toy Train',
      'category': 'Toys & Games',
      'image': 'https://example.com/images/toy_train.jpg'
    },

    // Pet Supplies
    {
      'name': 'Pet Food',
      'category': 'Pet Supplies',
      'image': 'https://example.com/images/pet_food.jpg'
    },
    {
      'name': 'Pet Bed',
      'category': 'Pet Supplies',
      'image': 'https://example.com/images/pet_bed.jpg'
    },
    {
      'name': 'Leash',
      'category': 'Pet Supplies',
      'image': 'https://example.com/images/leash.jpg'
    },
    {
      'name': 'Cat Toy',
      'category': 'Pet Supplies',
      'image': 'https://example.com/images/cat_toy.jpg'
    },
    {
      'name': 'Dog Collar',
      'category': 'Pet Supplies',
      'image': 'https://example.com/images/dog_collar.jpg'
    },
    {
      'name': 'Fish Tank',
      'category': 'Pet Supplies',
      'image': 'https://example.com/images/fish_tank.jpg'
    },
    {
      'name': 'Bird Cage',
      'category': 'Pet Supplies',
      'image': 'https://example.com/images/bird_cage.jpg'
    },
    {
      'name': 'Pet Shampoo',
      'category': 'Pet Supplies',
      'image': 'https://example.com/images/pet_shampoo.jpg'
    },
    {
      'name': 'Pet Carrier',
      'category': 'Pet Supplies',
      'image': 'https://example.com/images/pet_carrier.jpg'
    },
    {
      'name': 'Pet Brush',
      'category': 'Pet Supplies',
      'image': 'https://example.com/images/pet_brush.jpg'
    }
  ];

  static EcommerceProduct generate() {
    // Define a static method that generates a random EcommerceProduct instance.

    final productData =
        _productData[RandomUtils.randomInt(0, _productData.length - 1)];
    // Select a random product from the `_productData` list.
    // `RandomUtils.randomInt(0, _productData.length - 1)` generates a random index within the valid range of the `_productData` list.

    final price = RandomUtils.randomDouble(50.0, 2000.0);
    // Generate a random price between 50.0 and 2000.0 using `RandomUtils.randomDouble`.

    return EcommerceProduct(
      name: productData['name'],
      // Assign the 'name' field of the selected product data to the `name` property of the product.

      price: double.parse(price.toStringAsFixed(2)),
      // Round the random price to two decimal places using `toStringAsFixed(2)` and then parse it back to a double.

      category: productData['category'],
      // Assign the 'category' field of the selected product data to the `category` property of the product.
    );
  }
}
