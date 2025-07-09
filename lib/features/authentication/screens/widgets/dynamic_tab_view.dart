import 'package:flutter/material.dart';

class DynamicTabView extends StatelessWidget {
  final List<String> tabTitles;
  final List<Widget> tabContents;

  const DynamicTabView({
    super.key,
    required this.tabTitles,
    required this.tabContents,
  }) : assert(tabTitles.length == tabContents.length, 'Tabs and contents must match.');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          labelColor: Colors.deepPurple,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.deepPurple,
          tabs: tabTitles.map((title) => Tab(text: title)).toList(),
        ),
        Expanded(
          child: TabBarView(
            children: tabContents,
          ),
        ),
      ],
    );
  }
}
