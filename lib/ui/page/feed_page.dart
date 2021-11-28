part of 'pages.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Cari Gamis',
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none),
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Icon(
              MdiIcons.emailOutline,
              color: Colors.black54,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          InkWell(
            onTap: () {},
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    MdiIcons.bellOutline,
                    color: Colors.black54,
                  ),
                ),
                Positioned(
                  top: 18,
                  left: 12,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            MdiIcons.cartOutline,
            color: Colors.black54,
          ),
          SizedBox(
            width: 8,
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              MdiIcons.menu,
              color: Colors.black54,
            ),
          ),
          SizedBox(
            width: 16,
          ),
        ],
        bottom: TabBar(
          controller: controller,
          unselectedLabelColor: Colors.grey,
          labelColor: primaryColor,
          labelStyle: regularText.copyWith(
              color: Colors.amber, fontWeight: FontWeight.w600),
          tabs: <Widget>[
            Tab(
              text: 'Update',
            ),
            Tab(
              text: 'Explore',
            ),
          ],
        ),
      ),
      body: TabBarView(controller: controller, children: [
        UpdateTab(),
        ExploreTab(),
      ]),
    );
  }
}

class UpdateTab extends StatelessWidget {
  const UpdateTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nonton yang Seru Seru",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 16),
          Container(
            // margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(1, 2), // changes position of shadow
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 42,
                      width: 42,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/3s.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(24)),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "3 Second Official",
                          style: regularText.copyWith(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "2 Jam yang lalu",
                          style: regularText.copyWith(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(MdiIcons.dotsHorizontal)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "PROMO Akhir Tahun 3Second Official",
                        style: regularText.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "...",
                        style: regularText.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      Container(
                        height: 268,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: primaryColor.withOpacity(0.2),
                            image: DecorationImage(
                                image: AssetImage("assets/product1.jpg"),
                                fit: BoxFit.fill)),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Spesial untukmu di aakhir tahun",
                        style: regularText.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
