<div align="center">
  <h1>flutter_faker_plus</h1>   
  <p>A comprehensive fake data generator for Flutter/Dart applications.</p>![Screenshot_1738064327](https://github.com/user-attachments/assets/4441c926-0fb6-4de1-8c34-32feb3b23560)

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
- **Lorem Ipsum**: Added Lorem Ipsum placeholder text.
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
    final UserProfile user =
        UserProfile.generate(); // Generate a fake user profile.
    final EcommerceProduct product =
        EcommerceProduct.generate(); // Generate a fake e-commerce product.
    final GeoLocation location =
        GeoLocation.generate(); // Generate a fake geo-location.

    final LoremIpsum loremIpsum = LoremIpsum();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fake Data Generator Example'),
        ),
        body: SingleChildScrollView(
          child: Padding(
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

                SizedBox(height: 20),
                // Adds vertical spacing of 20 pixels.

                Text('Lorem Ipsum:', style: TextStyle(fontSize: 20)),
                Text(
                  loremIpsum.generate(words: 20),
                ),
                SizedBox(height: 5),
                Text(
                  loremIpsum.generate(
                      words: 60, paragraphs: 3, showLoremIpsum: true),
                ),
              ],
            ),
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
