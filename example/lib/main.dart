import 'package:flutter/material.dart';
import 'package:flutter_faker_plus/flutter_faker_plus.dart';

void main() => runApp(FakeDataApp());

class FakeDataApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = UserProfile.generate();
    final product = EcommerceProduct.generate();
    final location = GeoLocation.generate();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Fake Data Generator Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('User Profile:', style: TextStyle(fontSize: 20)),
              Text('Name: ${user.name}'),
              Text('Email: ${user.email}'),
              Text('Phone: ${user.phoneNumber}'),
              Text('Address: ${user.address}'),
              Text('Date of Birth: ${user.dateOfBirth}'),
              Text('Gender: ${user.gender}'),
              Image.network(
                  user.profilePictureUrl), // Display the profile picture
              Text('Bio: ${user.bio}'),
              SizedBox(height: 20),
              Text('E-Commerce Product:', style: TextStyle(fontSize: 20)),
              Text('Product: ${product.name}'),
              Text('Category: ${product.category}'),
              Text('Price: \$${product.price}'),
              // Image.network(product.imageUrl),
              SizedBox(height: 20),
              Text('Geo-Location:', style: TextStyle(fontSize: 20)),
              Text('Latitude: ${location.latitude}'),
              Text('Longitude: ${location.longitude}'),
            ],
          ),
        ),
      ),
    );
  }
}
