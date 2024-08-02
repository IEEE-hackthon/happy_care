import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  final Function(String) onTagSelected;

  const CategorySelector(
      {super.key,
      required this.onTagSelected,
      required this.selectedTagBackgroundColor,
      required this.allTags});

  final List<String> allTags;
  final Color selectedTagBackgroundColor;

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;

  static const Color unselectedTagBackgroundColor = Colors.grey;
  static const Color selectedTagTextColor = Colors.white;
  static const Color unselectedTagTextColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.allTags.length,
            itemBuilder: (context, index) {
              final String tag = widget.allTags[index];
              final bool isSelected = selectedIndex == index;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                    widget.onTagSelected(tag);
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 2, bottom: 2),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: isSelected
                          ? widget.selectedTagBackgroundColor
                          : unselectedTagBackgroundColor.withOpacity(0.2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Center(
                        child: Text(
                          tag,
                          style: TextStyle(
                            color: isSelected
                                ? selectedTagTextColor
                                : unselectedTagTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
