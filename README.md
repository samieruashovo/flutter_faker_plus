<div align="center">
  <h1>flutter_faker_plus</h1>   
  <p>A comprehensive fake data generator for Flutter/Dart applications.</p>
  <img src="https://github.com/user-attachments/assets/2ae53583-2c76-4ebd-9747-e6271fb54949" alt="flutter_faker_plus Screenshot" width="600"/>
</div>

---

## 🚀 Features

- **User Profiles**: Generate random user profiles with:
  - Name
  - Email
  - Phone number
  - Address
  - Date of birth
  - Gender
  - Profile picture URL
  - Bio
- **E-commerce Products**: Create random product data including:
  - Product name
  - Price
  - Category
- **Geolocation**: Generate random latitude and longitude coordinates.
- **Future Plans**:
  - Add image URLs for e-commerce products.
  - Support additional fake data types.
  - Implement a fake QR code generator.

---

# Flutter Faker Data Generator Example

This example demonstrates how to generate fake user, product, and location data using the `flutter_faker_plus` library in Flutter.

```dart
Widget build(BuildContext context) {
    // Generate fake user, product, and location data using flutter_faker_plus.
    final user = UserProfile.generate(); // Generate a fake user profile.
    final product =
        EcommerceProduct.generate(); // Generate a fake e-commerce product.
    final location = GeoLocation.generate(); // Generate a fake geo-location.

    return MaterialApp(
      home: Scaffold(
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
              Image.network(user.profilePictureUrl),
              Text('Bio: ${user.bio}'),

              SizedBox(height: 20),

              Text('E-Commerce Product:', style: TextStyle(fontSize: 20)),
              Text('Product: ${product.name}'),
              Text('Category: ${product.category}'),
              Text('Price: \$${product.price}'),

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
```

## 🛠 Installation

Add `flutter_faker_plus` to your `pubspec.yaml` file:
```yaml
dependencies:
  flutter_faker_plus: ^0.0.1
