import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  final List<String> imageUrls = [
    'https://absolutenewyork.com/cdn/shop/files/niacinamide_skincare_web_image_1f265486-69b0-41ab-a969-9d9607593658_800x.png?v=1734984943',
    'https://media-photos.depop.com/b1/17351106/1446631819_50e2100087354f44b404a21d9f989903/P0.jpg',
    'https://mir-s3-cdn-cf.behance.net/project_modules/1400/6e61bd161264581.63c2201917e55.png',
    'https://images.squarespace-cdn.com/content/v1/647f8348d8827b4b214aa98b/aed51241-17b8-4023-900a-54c857844bd0/Herbivore_Botanicals_Evergreen_05-22_600.jpg',
    'https://tse2.mm.bing.net/th/id/OIP.ax2hIv9gNa_p6y-AVdFaBQHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imageUrls.length,
      itemBuilder: (ctx, i) {
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Image.network(imageUrls[i], fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Product ${i + 1}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
