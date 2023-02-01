import 'package:parallel_markets/imports.dart';

void main() {
  runApp(
      const ParallelMarketsApp()
  );
}

class ParallelMarketsApp extends StatelessWidget {
  const ParallelMarketsApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.fuchsia: CupertinoPageTransitionsBuilder(),
          TargetPlatform.windows: CupertinoPageTransitionsBuilder(),
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.linux: CupertinoPageTransitionsBuilder(),
        }),
        fontFamily: "Nunito",
        primaryColor: Colors.red,
        // ignore: deprecated_member_use
        accentColor: Colors.redAccent,
        primaryColorDark: const Color(0xff0029cb),
        brightness: brightness,
      ),
      themedWidgetBuilder: (context, theme) => ParallelMarkets(
        theme: theme,
      ),
    );
  }
}

class ParallelMarkets extends StatefulWidget {
  const ParallelMarkets({Key? key, required this.theme}) : super(key: key);

  final ThemeData theme;

  @override
  _ParallelMarketsState createState() => _ParallelMarketsState();
}

class _ParallelMarketsState extends State<ParallelMarkets> {
  /*Future getUserInfo() async {
    await getUser();
    setState(() {});
    print(uid);
  }*/

  @override
  void initState() {
    //getUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parallel Markets',
      theme: widget.theme,
      debugShowCheckedModeBanner: false,
      home: const ParallelMarketsScreen(),
    );
  }
}