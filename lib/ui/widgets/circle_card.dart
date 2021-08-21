part of 'widgets.dart';

class CircleCard extends StatelessWidget {
  final String imageUrl;
  final int index;
  const CircleCard(this.imageUrl, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
       
        child: Column(
          children: [
            Container(
              width: 80,
              height: 80,
              child: Stack(
                children: [
                  SpinKitFadingCircle(
                    color: Colors.pinkAccent,
                    size: 70,
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: CachedNetworkImageProvider(
                              'https://source.unsplash.com/500x500/?people,' +
                                  index.toString()),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Speaker " + (index + 1).toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
