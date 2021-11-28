part of 'components.dart';

class MenuIcon extends StatelessWidget {
  final String title;
  final Color colors;
  final IconData iconData;
  const MenuIcon({
    Key key,
    this.title,
    this.colors,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      margin: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: colors,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "$title",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 9, color: Colors.black87),
          )
        ],
      ),
    );
  }
}
