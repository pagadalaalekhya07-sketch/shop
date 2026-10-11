import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../widgets/custom_widgets.dart';

// EXPERIMENT 5(b): Reading and mutating shared Provider state.
// EXPERIMENT 8: AnimatedSize when cart items change.

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>();
    final items = cart.items.values.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: items.isEmpty
          ? const Center(
              child: Text('Your cart is empty 🛒'),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(14),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];

                      return AnimatedSize(
                        duration: const Duration(milliseconds: 300),
                        child: Card(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: ListTile(
                            // Display the real product image.
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                item.product.imageUrl,
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                                errorBuilder:
                                    (context, error, stackTrace) {
                                  return const SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: Icon(
                                      Icons.image_not_supported,
                                      size: 30,
                                    ),
                                  );
                                },
                              ),
                            ),

                            title: Text(
                              item.product.name,
                            ),

                            subtitle: Text(
                              '${item.product.formattedPrice} x '
                              '${item.quantity}',
                            ),

                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.remove),
                                  onPressed: () {
                                    context
                                        .read<CartProvider>()
                                        .decrementQuantity(
                                          item.product.id,
                                        );
                                  },
                                ),

                                Text('${item.quantity}'),

                                IconButton(
                                  icon: const Icon(Icons.add),
                                  onPressed: () {
                                    context
                                        .read<CartProvider>()
                                        .incrementQuantity(
                                          item.product.id,
                                        );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                // Cart total and checkout button.
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Total',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            '\$${cart.totalPrice.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      CustomButton(
                        label: 'Checkout',
                        icon: Icons.arrow_forward,
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/checkout',
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}