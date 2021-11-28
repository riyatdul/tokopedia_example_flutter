part of 'pages.dart';

class OfficialPageStore extends StatelessWidget {
  const OfficialPageStore({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
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
        bottom: PreferredSize(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 28.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200],
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(1, 2), // changes position of shadow
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.black87,
                    size: 16,
                  ),
                  Text(
                    "Dikirim ke Rumah InsanR",
                    style: TextStyle(color: Colors.black87, fontSize: 12),
                  )
                ],
              ),
            ),
            preferredSize: Size.fromHeight(28.0)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              height: 120,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/welcomebannner-home.png"))),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        margin: EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        margin: EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        margin: EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        margin: EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                  Spacer(),
                  Text(
                    "Lihat Semua",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200],
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(1, 3), // changes position of shadow
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    MdiIcons.archive,
                    size: 22,
                    color: Colors.purple,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Pasti Ready",
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w900,
                        fontSize: 10),
                  ),
                  Spacer(),
                  Icon(
                    MdiIcons.tag,
                    size: 22,
                    color: Colors.purple,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Pasti Ori",
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w900,
                        fontSize: 10),
                  ),
                  Spacer(),
                  Icon(
                    MdiIcons.shield,
                    size: 22,
                    color: Colors.purple,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Garansi",
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w900,
                        fontSize: 10),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(color: Colors.teal[300]),
                      child: Stack(
                        children: [
                          Positioned(
                              right: 8,
                              bottom: 8,
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image: AssetImage("assets/sofa.png"))),
                              )),
                          Positioned(
                              top: 8,
                              left: 8,
                              child: Container(
                                height: 26,
                                width: 60,
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)),
                              )),
                          Positioned(
                              left: 8,
                              bottom: 2,
                              child: Container(
                                width: 100,
                                child: Text(
                                  "Diskon Hingga 40%",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(color: Colors.red[300]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
