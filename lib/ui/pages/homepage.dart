part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = (MediaQuery.of(context).size.height - 80 - 10);
    double screenWidth = (MediaQuery.of(context).size.height - 20);
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
        child: Column(
          children: [
            Container(
              height: screenHeight / 2,
              width: screenWidth,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amberAccent,
              ),
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: ClampingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Speakers",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Wrap(
                        runSpacing: 20.0,
                        spacing: 20.0,
                        children: displayCircleCards(),
                      ),
                    ],
                  )),
            ),
            SizedBox(height: 10),
            Container(
                height: screenHeight / 2,
                width: screenWidth,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black.withOpacity(0.5),
                ),
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Subscribers",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: displayRoundedCards(screenWidth),
                        )
                      ],
                    ))),
          ],
        ),
      ),
    );
  }

  List<Widget> displayCircleCards() {
    List<Widget> widgets = [];

    for (var i = 0; i < 20; i++) {
      widgets.add(CircleCard("https://source.unsplash.com/500x500/?people", i));
    }

    return widgets;
  }

  List<Widget> displayRoundedCards(double screenWidth) {
    List<Widget> widgets = [];
    for (var i = 0; i < 20; i++) {
      widgets.add(RoundedCard(i, screenWidth));
    }
    return widgets;
  }
}
