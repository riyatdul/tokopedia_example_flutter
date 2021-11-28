part of 'pages.dart';

class WishPage extends StatelessWidget {
  const WishPage({Key key}) : super(key: key);

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
                  hintText: 'Cari Wishlist',
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
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Kejar Diskon",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Atur",
                  style: TextStyle(
                      fontSize: 14,
                      color: primaryColor,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ItemWish(
              img: "assets/product1.jpg",
              title: "MANZONE Kaos Pria Lengan Pendek Ortega-White-XS",
            ),
            ItemWish(
              img: "assets/product2.jpg",
              title: "3Second Kaos Wanita",
            )
          ],
        ),
      ),
    );
  }
}
