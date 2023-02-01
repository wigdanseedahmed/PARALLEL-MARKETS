///----------------------------- 🌎 PROJECT IMPORTS -----------------------------///
import 'package:parallel_markets/imports.dart';

Column iconBuilder(icon, title, context) {
  return Column(
    children: <Widget>[
      Icon(
        icon,
        size: 28,
        color: kBlueChill,
      ),
      const SizedBox(
        height: 8.0,
      ),
      Text(
        title,
        style:  const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w300,
          color: kBlueChill,
        ),
      ),
    ],
  );
}