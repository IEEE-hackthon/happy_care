import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child:
                          Icon(Icons.search, color: Colors.black54, size: 32),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                        ),
                        style: const TextStyle(color: Colors.black),
                        onSubmitted: (text) {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10),
            IconButton(
              icon: const Icon(Icons.filter_list,
                  color: Colors.black54, size: 32),
              onPressed: () {
                // Handle filter action
              },
            ),
          ],
        ),
      ),
    );
  }
}
