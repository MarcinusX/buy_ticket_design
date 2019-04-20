import 'package:buy_tickets_design/exhibition_bottom_sheet.dart';
import 'package:buy_tickets_design/sliding_cards.dart';
import 'package:buy_tickets_design/tabs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(Theme.of(context).typography.black.title);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Header(),
            SizedBox(height: 16),
            Tabs(),
            SizedBox(height: 16),
            SlidingCardsView(),
            Spacer(),
            ExhibitionBottomSheet(),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 22),
      child: Text(
        'Shenzhen',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
