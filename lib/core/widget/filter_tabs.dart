import 'package:event/core/widget/anmiate_builder.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'custom_tab.dart';

class FilterTabs extends StatefulWidget {
  final List<String> tabs;
  final void Function(int index)? onTabSelected;

  const FilterTabs({
    super.key,
    required this.tabs,
    this.onTabSelected,
  });

  @override
  State<FilterTabs> createState() => _FilterTabsState();
}

class _FilterTabsState extends State<FilterTabs> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: width * 0.045),
      itemCount: widget.tabs.length,
      itemBuilder: (context, index) {
        final isSelected = selectedIndex == index;

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
            widget.onTabSelected?.call(index);
          },
          child: isSelected
              ? AnimateBuilder(
                  columnCount: 1,
                  position: 0,
                  child: CustomTab(
                    text: widget.tabs[index],
                    textColor: isSelected ? kPrimaryColor : kTextGrey,
                    backgroundColor: isSelected
                        ? kPrimaryColor.withOpacity(0.2)
                        : kIconButton,
                  ),
                )
              : CustomTab(
                  text: widget.tabs[index],
                  textColor: isSelected ? kPrimaryColor : kTextGrey,
                  backgroundColor:
                      isSelected ? kPrimaryColor.withOpacity(0.2) : kIconButton,
                ),
        );
      },
    );
  }
}
