import 'package:parallel_markets/imports.dart';

class LargeScreenTopBarContents extends StatefulWidget {
  final double opacity;

  const LargeScreenTopBarContents(this.opacity, {Key? key}) : super(key: key);

  @override
  _LargeScreenTopBarContentsState createState() =>
      _LargeScreenTopBarContentsState();
}

class _LargeScreenTopBarContentsState extends State<LargeScreenTopBarContents> {
  void changeBrightness() {
    DynamicTheme.of(context)!.setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }

  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  //bool _isProcessing = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color:
            Theme.of(context).bottomAppBarColor, //.withOpacity(widget.opacity),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Text(
                'Sudan Horizon Scanner',
                style: TextStyle(
                  fontSize: screenSize.width / 75,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: screenSize.width / 30),
                      /*InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[0] = true
                                : _isHovering[0] = false;
                          });
                        },
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (context) => const DigitalAvatarScreen(),
                            ),
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                          Text(
                          'Digital Avatar',
                          style: TextStyle(
                            fontSize: screenSize.width / 100,
                          ),
                        ),
                            const SizedBox(height: 5),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[0],
                              child: Container(
                                height: 2,
                                width: screenSize.width / 15,
                                color: primaryColour,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width / 75),*/
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[1] = true
                                : _isHovering[1] = false;
                          });
                        },
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (context) => const ParallelMarketsScreen(),
                            ),
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Screen 2',
                                  style: TextStyle(
                                    fontSize: screenSize.width / 100,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[1],
                              child: Container(
                                height: 2,
                                width: screenSize.width / 11,
                                color: primaryColour,
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              //TODO: delete
              IconButton(
                icon: const Icon(Icons.brightness_6),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                color: primaryColour,
                onPressed: changeBrightness,
              ),
              SizedBox(
                width: screenSize.width / 200,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 5.0),
                child: InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[6] = true : _isHovering[6] = false;
                    });
                  },
                  onTap: () {},
                  /*userEmail == null
                      ? () {
                          showDialog(
                            context: context,
                            builder: (context) => AuthDialog(),
                          );
                        }
                      : null,*/
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Sign in', /*
                        style: TextStyle(
                          color: _isHovering[5] ? Colors.white : Colors.white70,
                        ),*/
                      ),
                      const SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[6],
                        child: Container(
                          height: 2,
                          width: 43,
                          color: primaryColour,
                        ),
                      ),
                    ],
                  ) /*userEmail == null
                      ? Text(
                          'Sign in',
                          style: TextStyle(
                            color: _isHovering[3] ? Colors.white : Colors.white70,
                          ),
                        )
                      : Row(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundImage: imageUrl != null
                                  ? NetworkImage(imageUrl!)
                                  : null,
                              child: imageUrl == null
                                  ? const Icon(
                                      Icons.account_circle,
                                      size: 30,
                                    )
                                  : Container(),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              name ?? userEmail!,
                              style: TextStyle(
                                color: _isHovering[3]
                                    ? Colors.white
                                    : Colors.white70,
                              ),
                            ),
                            const SizedBox(width: 10),
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.blueGrey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: _isProcessing
                                  ? null
                                  : () async {
                                      setState(() {
                                        _isProcessing = true;
                                      });
                                      await signOut().then((result) {
                                        print(result);
                                        Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                            fullscreenDialog: true,
                                            builder: (context) => HomePage(),
                                          ),
                                        );
                                      }).catchError((error) {
                                        print('Sign Out Error: $error');
                                      });
                                      setState(() {
                                        _isProcessing = false;
                                      });
                                    },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  bottom: 8.0,
                                ),
                                child: _isProcessing
                                    ? const CircularProgressIndicator()
                                    : const Text(
                                        'Sign out',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                              ),
                            )
                          ],
                        )*/
                  ,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
