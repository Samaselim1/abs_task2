import 'package:flutter/material.dart';

class WebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set the background color to black
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section with Black Background and Navigation Links
            Container(
              color: Colors.black87, // Darker shade for the header
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    // Logo and Title Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Logo and Title
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/logo.png',
                              height: 30,
                              width: 30,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "MINING",
                              style: TextStyle(
                                color: Colors.orange, // Keep orange for logo
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        // Contact Us Button (Right aligned)
                        ElevatedButton(
                          onPressed: () {
                            // Contact Us action
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange, // Keep orange for button
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          ),
                          child: Text("Contact Us", style: TextStyle(fontSize: 12)),
                        ),
                      ],
                    ),
                    SizedBox(height: 8), // Space between logo and nav links
                    // Navigation Links in the header section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildNavItem("Home"),
                        _buildNavItem("About Us"),
                        _buildNavItem("Products"),
                        _buildNavItem("Packing"),
                        _buildNavItem("Quality Control"),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Main Header Section with Background Image and Centered Content
            Container(
              height: 250, // Reduced height for the header with the background image
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/header_background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
                children: [
                  // Logo and Title
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "MINING",
                          style: TextStyle(
                            color: Colors.orange, // Keep orange for logo
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  // Text and Discover Button
                  Text(
                    "Discover The Foundation Of Excellence In Mining",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Use white for text
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8), // Space before subtext
                  Text(
                    "Explore our offerings of silica sand, salt, gypsum, and more.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white, // Use white for subtext
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16), // Space before button
                  ElevatedButton(
                    onPressed: () {
                      // Discover action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange, // Keep orange for button
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    ),
                    child: Text(
                      "Discover",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Main Content with Products Grid (2 Rows, 3 Columns)
            Container(
              color: Colors.black, // Black background for content
              padding: EdgeInsets.symmetric(vertical: 16),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), // Disable scrolling for the grid
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.75, // Adjust the aspect ratio for the grid items
                ),
                itemCount: 6, // Number of products
                itemBuilder: (context, index) {
                  return _buildProductCard(index);
                },
              ),
            ),

            // Footer Section with Dark Background
            Container(
              color: Colors.black87, // Darker footer background
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  Text(
                    "© 2024 MINING. All Rights Reserved.",
                    style: TextStyle(
                      color: Colors.white, // White text for footer
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Follow Us: Facebook | Twitter | LinkedIn",
                    style: TextStyle(
                      color: Colors.white, // White text for footer links
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white, // White text for navigation links
          fontSize: 14,
        ),
      ),
    );
  }
  Widget _buildProductCard(int index) {
    return Expanded(
      child: Card(
        elevation: 4,
        color: Colors.black45, // Dark background for product cards
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Product Image (Smaller size)
              Image.asset(
                'assets/images/product.png',
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 8), // Space between image and text
              // Product Name
              Text(
                'Product ${index + 1}',
                style: TextStyle(
                  fontSize: 14,  // Smaller font size
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // White text for product name
                ),
              ),
              SizedBox(height: 8),
              // Product Description
              Text(
                'This is a description for Product ${index + 1}. It gives more details about the product features and benefits.',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8), // Space before button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Orange button color
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6), // Reduced padding for the button
                ),
                child: Text("Read More", style: TextStyle(fontSize: 10)),  // Smaller button text
              ),
            ],
          ),
        ),
      ),
    );
  }
}