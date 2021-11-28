part of 'widgets.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  const CustomBottomNavbar({this.selectedIndex = 0, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(0);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              margin: EdgeInsets.only(left: 24),
              decoration: BoxDecoration(),
              child: Center(
                child: Icon(
                  MdiIcons.home,
                  size: 32,
                  color: (selectedIndex == 0) ? primaryColor : Colors.grey,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(1);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(),
              child: Center(
                child: Icon(
                  MdiIcons.image,
                  size: 32,
                  color: (selectedIndex == 1) ? primaryColor : Colors.grey,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(2);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(),
              child: Center(
                child: Icon(
                  MdiIcons.store,
                  size: 32,
                  color: (selectedIndex == 2) ? primaryColor : Colors.grey,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(3);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(),
              child: Center(
                child: Icon(
                  MdiIcons.heart,
                  size: 32,
                  color: (selectedIndex == 3) ? primaryColor : Colors.grey,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(4);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              margin: EdgeInsets.only(right: 24),
              decoration: BoxDecoration(),
              child: Center(
                child: Icon(
                  MdiIcons.receipt,
                  size: 32,
                  color: (selectedIndex == 4) ? primaryColor : Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
