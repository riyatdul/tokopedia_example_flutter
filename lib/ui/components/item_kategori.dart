part of 'components.dart';

class ItemKategori extends StatelessWidget {
  final String title;
  const ItemKategori({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Text(
            "$title",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12,
                color: Colors.black54,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 4,
          ),
          Icon(
            MdiIcons.chevronDown,
            color: Colors.black54,
          )
        ],
      ),
    );
  }
}
