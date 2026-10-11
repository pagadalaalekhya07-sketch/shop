// lib/models/product.dart

class Product {
  final String id;
  final String name;
  final double price;
  final String imageUrl;
  final String description;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });

  String get formattedPrice => '\$${price.toStringAsFixed(2)}';
}

const List<Product> sampleProducts = [
  // ---------- WESTERN WEAR ----------

  Product(
    id: 'w1',
    name: 'Blue Striped Peplum Top',
    price: 799.00,
    imageUrl:
        'https://images.unsplash.com/photo-1566206091558-7f218b696731?auto=format&fit=crop&w=600&q=85',
    description: 'Blue and white striped peplum top with a feminine style.',
  ),
  Product(
    id: 'w2',
    name: 'Pastel Puff Sleeve Top',
    price: 699.00,
    imageUrl:
        'https://images.unsplash.com/photo-1551163943-3f6a855d1153?auto=format&fit=crop&w=600&q=85',
    description: 'A soft pastel top for an elegant everyday look.',
  ),
  Product(
    id: 'w3',
    name: 'Elegant White Blouse',
    price: 749.00,
    imageUrl:
        'https://images.unsplash.com/photo-1598554747436-c9293d6a588f?auto=format&fit=crop&w=600&q=85',
    description: 'A classic white blouse for college and casual outings.',
  ),
  Product(
    id: 'w4',
    name: 'Smart Casual Outfit',
    price: 1299.00,
    imageUrl:
        'https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=600&q=85',
    description: 'A polished smart-casual look for everyday wear.',
  ),

  // ---------- TRADITIONAL WEAR ----------

  Product(
    id: 't1',
    name: 'Elegant Traditional Kurti',
    price: 799.00,
    imageUrl:
        'https://images.unsplash.com/photo-1617627143750-d86bc21e42bb?auto=format&fit=crop&w=600&q=85',
    description: 'An ethnic kurti for everyday wear and family gatherings.',
  ),
  Product(
    id: 't2',
    name: 'Traditional Saree',
    price: 1499.00,
    imageUrl:
        'https://images.unsplash.com/photo-1610030469983-98e550d6193c?auto=format&fit=crop&w=600&q=85',
    description: 'A graceful saree for celebrations and special occasions.',
  ),
  
  // ---------- WOMEN'S ACCESSORIES ----------

  Product(
    id: 'a1',
    name: 'Classic Handbag',
    price: 999.00,
    imageUrl:
        'https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=600&q=85',
    description: 'A versatile handbag for everyday essentials.',
  ),
  Product(
    id: 'a2',
    name: 'Elegant Shoulder Bag',
    price: 1199.00,
    imageUrl:
        'https://images.unsplash.com/photo-1590874103328-eac38a683ce7?auto=format&fit=crop&w=600&q=85',
    description: 'A stylish shoulder bag for outings and occasions.',
  ),
  Product(
    id: 'a3',
    name: 'Fashion Earrings',
    price: 299.00,
    imageUrl:
        'https://images.unsplash.com/photo-1611652022419-a9419f74343d?auto=format&fit=crop&w=600&q=85',
    description: 'Decorative earrings for Western and ethnic outfits.',
  ),
  Product(
    id: 'a4',
    name: 'Classic Sunglasses',
    price: 399.00,
    imageUrl:
        'https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=600&q=85',
    description: 'Classic sunglasses for a stylish everyday look.',
  ),

  // ---------- WOMEN'S FOOTWEAR ----------

  Product(
    id: 'f1',
    name: 'Casual Sneakers',
    price: 999.00,
    imageUrl:
        'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=85',
    description: 'Casual sneakers for everyday outfits and outings.',
  ),
  Product(
    id: 'f2',
    name: 'Elegant Party Heels',
    price: 899.00,
    imageUrl:
        'https://images.unsplash.com/photo-1543163521-1bf539c55dd2?auto=format&fit=crop&w=600&q=85',
    description: 'Dressy heels for parties and special occasions.',
  ),
  Product(
    id: 'f3',
    name: 'Minimal Flat Sandals',
    price: 499.00,
    imageUrl:
        'https://images.unsplash.com/photo-1562273138-f46be4ebdf33?auto=format&fit=crop&w=600&q=85',
    description: 'Comfortable flat sandals for daily wear.',
  ),
];