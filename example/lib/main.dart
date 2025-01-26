import 'package:flutter/material.dart';

import 'package:flutter_faker_plus/flutter_faker_plus.dart';
// Import the flutter_faker_plus package for generating fake data.

void main() => runApp(FakeDataApp());

class FakeDataApp extends StatelessWidget {
  const FakeDataApp({super.key});
  @override
  Widget build(BuildContext context) {
    // Generate fake user, product, and location data using flutter_faker_plus.
    final user = UserProfile.generate(); // Generate a fake user profile.
    final product =
        EcommerceProduct.generate(); // Generate a fake e-commerce product.
    final location = GeoLocation.generate(); // Generate a fake geo-location.

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fake Data Generator Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('User Profile:', style: TextStyle(fontSize: 20)),
              // Displays a heading for the user profile section.

              Text('Name: ${user.name}'),
              // Displays the generated user's name.

              Text('Email: ${user.email}'),
              // Displays the generated user's email.

              Text('Phone: ${user.phoneNumber}'),
              // Displays the generated user's phone number.

              Text('Address: ${user.address}'),
              // Displays the generated user's address.

              Text('Date of Birth: ${user.dateOfBirth}'),
              // Displays the generated user's date of birth.

              Text('Gender: ${user.gender}'),
              // Displays the generated user's gender.

              Image.network(user.profilePictureUrl),
              // Displays the user's profile picture from a network URL.

              Text('Bio: ${user.bio}'),
              // Displays the generated user's bio.

              SizedBox(height: 20),
              // Adds vertical spacing of 20 pixels.

              Text('E-Commerce Product:', style: TextStyle(fontSize: 20)),
              // Displays a heading for the product section.

              Text('Product: ${product.name}'),
              // Displays the product name.

              Text('Category: ${product.category}'),
              // Displays the product category.

              Text('Price: \$${product.price}'),
              // Displays the product price prefixed with a dollar sign.

              SizedBox(height: 20),
              // Adds vertical spacing of 20 pixels.

              Text('Geo-Location:', style: TextStyle(fontSize: 20)),
              // Displays a heading for the geo-location section.

              Text('Latitude: ${location.latitude}'),
              // Displays the generated latitude.

              Text('Longitude: ${location.longitude}'),
              // Displays the generated longitude.
            ],
          ),
        ),
      ),
    );
  }
}
