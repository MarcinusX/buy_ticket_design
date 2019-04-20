import 'package:flutter/material.dart';

class ExhibitionBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        color: Color(0xFF162A49),
        borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Text(
            'Booked Exhibition',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              ExhibitionSmallCard(assetName: 'steve-johnson.jpg'),
              SizedBox(width: 16),
              ExhibitionSmallCard(assetName: 'efe-kurnaz.jpg'),
              SizedBox(width: 16),
              ExhibitionSmallCard(assetName: 'rodion-kutsaev.jpg'),
              Spacer(),
              MenuButton(),
            ],
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class ExhibitionSmallCard extends StatelessWidget {
  final String assetName;

  const ExhibitionSmallCard({Key key, @required this.assetName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        'assets/$assetName',
        width: 44,
        height: 44,
        fit: BoxFit.cover,
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.menu,
      color: Colors.white,
      size: 28,
    );
  }
}
