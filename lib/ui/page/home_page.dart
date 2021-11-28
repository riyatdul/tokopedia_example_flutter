part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
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
              color: Colors.white,
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
                    color: Colors.white,
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
            color: Colors.white,
          ),
          SizedBox(
            width: 8,
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              MdiIcons.menu,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 24,
                      ),
                      Text(
                        "Dikirim ke Rumah InsanR",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Positioned(
                    top: 30,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Icon(
                                    MdiIcons.wallet,
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Rp. 20.000",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 10),
                                    ),
                                    Text(
                                      "Go Pay",
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 8),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Icon(
                                    MdiIcons.hexagon,
                                    size: 22,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "Rp. 20.000",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 10),
                                      ),
                                      Text(
                                        "Go Pay",
                                        style: TextStyle(
                                            color: Colors.black54, fontSize: 8),
                                      )
                                    ],
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MenuIcon(
                    title: "Official Store",
                    iconData: MdiIcons.checkDecagram,
                    colors: primaryColor,
                  ),
                  MenuIcon(
                    title: "Lihat Semua",
                    iconData: MdiIcons.viewDashboard,
                    colors: primaryColor,
                  ),
                  MenuIcon(
                    title: "Kebutuhan Harian",
                    iconData: MdiIcons.googleCirclesExtended,
                    colors: primaryColor,
                  ),
                  MenuIcon(
                    title: "Handphone & Tablet",
                    iconData: MdiIcons.tab,
                    colors: primaryColor,
                  ),
                  MenuIcon(
                    title: "Top Up & Tagihan",
                    iconData: MdiIcons.receipt,
                    colors: Colors.blueAccent,
                  ),
                  MenuIcon(
                    title: "Perawatan Hewan",
                    iconData: MdiIcons.dogService,
                    colors: Colors.orange,
                  ),
                  MenuIcon(
                    title: "Keuangan",
                    iconData: MdiIcons.cash,
                    colors: Colors.yellow,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
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
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MenuIcon(
                    title: "Peduli Lindungi",
                    iconData: MdiIcons.heartBoxOutline,
                    colors: Colors.blueAccent,
                  ),
                  MenuIcon(
                    title: "Usaha Lokal",
                    iconData: MdiIcons.viewDashboard,
                    colors: primaryColor,
                  ),
                  MenuIcon(
                    title: "Promo Gajian",
                    iconData: MdiIcons.cashCheck,
                    colors: primaryColor,
                  ),
                  MenuIcon(
                    title: "Bazar Hari ini",
                    iconData: MdiIcons.store,
                    colors: Colors.redAccent,
                  ),
                  MenuIcon(
                    title: "Live Shopping",
                    iconData: MdiIcons.receipt,
                    colors: primaryColor,
                  ),
                  MenuIcon(
                    title: "Tokopedia seru",
                    iconData: MdiIcons.emoticonHappyOutline,
                    colors: primaryColor,
                  ),
                  MenuIcon(
                    title: "Bayar di Tempat",
                    iconData: MdiIcons.dumpTruck,
                    colors: Colors.orange,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            KejarDiskonHome(),
            SizedBox(
              height: 32,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Spesial di Tokopedia Hari ini",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 16,
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
                                  bottom: 0,
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/sofa.png"))),
                                  )),
                              Positioned(
                                  right: 0,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.teal,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(8))),
                                    child: Text(
                                      "Furnitur",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )),
                              Positioned(
                                  left: 8,
                                  bottom: 2,
                                  child: Container(
                                    width: 100,
                                    child: Text(
                                      "Temukan Pilihan Elektronik",
                                      style: TextStyle(
                                          fontSize: 14,
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
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
