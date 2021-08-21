part of 'widgets.dart';

class RoundedCard extends StatelessWidget {
  final int index;
  final double screenWidth;
  const RoundedCard(this.index, this.screenWidth);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: screenWidth,
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Subscriber " + (index + 1).toString(),
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 2),
            Text(
              "subscribed into channel " +
                  (index + index + 1).toString() +
                  " seconds ago",
              style: TextStyle(fontSize: 13),
            ),
          ],
        ));
  }
}
