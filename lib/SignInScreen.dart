import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: 0.0),
            child:
                // Adobe XD layer: 'Background' (shape)
                Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 56.0, end: 60.0),
            Pin(size: 28.0, end: 80.0),
            child:
                // Adobe XD layer: 'Don’t have a accoun…' (text)
                SingleChildScrollView(
                    child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: 'Don’t have a account? ',
                  ),
                  TextSpan(
                    text: 'Sign up ',
                    style: TextStyle(
                      fontSize: 24,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            )),
          ),
          Pinned.fromPins(
            Pin(size: 138.0, middle: 0.5021),
            Pin(size: 48.0, middle: 0.4346),
            child:
                // Adobe XD layer: 'Sign in button' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 4.0, end: 4.0),
                  child:
                      // Adobe XD layer: 'Rectangle 2' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffffc700),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 66.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Sign in' (text)
                      SingleChildScrollView(
                          child: Text(
                    'Sign in ',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 22,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  )),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 148.0, middle: 0.5022),
            Pin(size: 21.0, middle: 0.4374),
            child:
                // Adobe XD layer: 'Forget password ?' (text)
                SingleChildScrollView(
                    child: Text(
              'Forget password ?',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            )),
          ),
          Pinned.fromPins(
            Pin(start: 44.0, end: 48.0),
            Pin(size: 43.0, middle: 0.3251),
            child:
                // Adobe XD layer: 'Rectangle 14' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.5, color: const Color(0xff121212)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x40000000),
                    offset: Offset(0, 4),
                    blurRadius: 8,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 250.9, middle: 0.5076),
            Pin(size: 22.0, middle: 0.3278),
            child:
                // Adobe XD layer: 'Password field' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 80.0, middle: 0.2224),
                  Pin(start: 1.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Password' (text)
                      SingleChildScrollView(
                          child: Text(
                    'Password',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      color: const Color(0xffb8b8b8),
                    ),
                    textAlign: TextAlign.left,
                  )),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'lock' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'Vector' (shape)
                            SvgPicture.string(
                          _svg_8fwwsn,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'Vector (Stroke)' (shape)
                            SvgPicture.string(
                          _svg_gq1oyy,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 26.6, end: 0.0),
                  Pin(start: 2.3, end: 0.6),
                  child:
                      // Adobe XD layer: 'eye open' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'eye open' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'Vector (Stroke)' (shape)
                                  SvgPicture.string(
                                _svg_js0k8n,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 9.0, middle: 0.5),
                              Pin(size: 9.0, middle: 0.5),
                              child:
                                  // Adobe XD layer: 'Vector (Stroke)' (shape)
                                  SvgPicture.string(
                                _svg_ycl5rx,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 44.0, end: 48.0),
            Pin(size: 43.0, middle: 0.2393),
            child:
                // Adobe XD layer: 'Email field' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Rectangle 15' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.5, color: const Color(0xff121212)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 66.0, middle: 0.2627),
                  Pin(start: 1.0, end: 1.0),
                  child:
                      // Adobe XD layer: 'Email ID' (text)
                      Text(
                    'Email ID',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      color: const Color(0xffb8b8b8),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20.0, start: 18.0),
                  Pin(size: 20.0, middle: 0.4783),
                  child:
                      // Adobe XD layer: '@' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'Vector' (shape)
                            SvgPicture.string(
                          _svg_l6vupe,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 90.0, start: 28.0),
            Pin(size: 35.0, start: 105.0),
            child:
                // Adobe XD layer: 'Sign in' (text)
                SingleChildScrollView(
                    child: Text(
              'Sign in',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            )),
          ),
          Pinned.fromPins(
            Pin(start: -1.0, end: 1.0),
            Pin(start: 0.0, end: 0.0),
            child:
                // Adobe XD layer: 'Background' (shape)
                Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 56.0, end: 56.0),
            Pin(size: 28.0, end: 80.0),
            child:
                // Adobe XD layer: 'Don’t have a accoun…' (text)
                SingleChildScrollView(
                    child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: 'Don’t have a account? ',
                  ),
                  TextSpan(
                    text: 'Sign up ',
                    style: TextStyle(
                      fontSize: 24,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            )),
          ),
          Pinned.fromPins(
            Pin(size: 138.0, middle: 0.5021),
            Pin(size: 40.0, middle: 0.421),
            child:
                // Adobe XD layer: 'Sign in button' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Rectangle 2' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffffc700),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 4),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 78.0, middle: 0.5),
                  Pin(start: 2.0, end: 3.0),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontFamily: 'segeo ui',
                      fontSize: 26,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 44.0, end: 48.0),
            Pin(size: 43.0, middle: 0.3251),
            child:
                // Adobe XD layer: 'Rectangle 15' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.5, color: const Color(0xff121212)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x40000000),
                    offset: Offset(0, 4),
                    blurRadius: 8,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 44.0, end: 48.0),
            Pin(size: 43.0, middle: 0.2393),
            child:
                // Adobe XD layer: 'Email field' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Rectangle 15' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.5, color: const Color(0xff121212)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 4),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 126.0, start: 24.0),
            Pin(size: 52.0, start: 88.0),
            child:
                // Adobe XD layer: 'Sign in' (text)
                Text(
              'Sign in',
              style: TextStyle(
                fontFamily: 'segeo ui',
                fontSize: 34,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 24.0, end: 23.0),
            Pin(size: 174.0, middle: 0.7618),
            child:
                // Adobe XD layer: '13218 2' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 24.0, end: 23.0),
            Pin(size: 174.0, middle: 0.7618),
            child:
                // Adobe XD layer: '13218 1' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/singinimage.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_8fwwsn =
    '<svg viewBox="63.0 259.0 18.0 22.0" ><path transform="translate(63.0, 259.0)" d="M 0.8709677457809448 9.871795654296875 L 0.8709677457809448 9.025641441345215 C 0.3899497091770172 9.025641441345215 0 9.40449333190918 0 9.871795654296875 L 0.8709677457809448 9.871795654296875 Z M 17.12903213500977 9.871795654296875 L 18 9.871795654296875 C 18 9.40449333190918 17.61003875732422 9.025641441345215 17.12903213500977 9.025641441345215 L 17.12903213500977 9.871795654296875 Z M 17.12903213500977 21.15384674072266 L 17.12903213500977 22.00000190734863 C 17.61003875732422 22.00000190734863 18 21.62114906311035 18 21.15384674072266 L 17.12903213500977 21.15384674072266 Z M 0.8709677457809448 21.15384674072266 L 0 21.15384674072266 C 0 21.62114906311035 0.3899497091770172 22.00000190734863 0.8709677457809448 22.00000190734863 L 0.8709677457809448 21.15384674072266 Z M 0.8709677457809448 10.71794891357422 L 17.12903213500977 10.71794891357422 L 17.12903213500977 9.025641441345215 L 0.8709677457809448 9.025641441345215 L 0.8709677457809448 10.71794891357422 Z M 16.25806427001953 9.871795654296875 L 16.25806427001953 21.15384674072266 L 18 21.15384674072266 L 18 9.871795654296875 L 16.25806427001953 9.871795654296875 Z M 17.12903213500977 20.30769348144531 L 0.8709677457809448 20.30769348144531 L 0.8709677457809448 22.00000190734863 L 17.12903213500977 22.00000190734863 L 17.12903213500977 20.30769348144531 Z M 1.74193549156189 21.15384674072266 L 1.74193549156189 9.871795654296875 L 0 9.871795654296875 L 0 21.15384674072266 L 1.74193549156189 21.15384674072266 Z M 5.22580623626709 5.358974456787109 C 5.22580623626709 3.333925247192383 6.915599822998047 1.692307710647583 9 1.692307710647583 L 9 0 C 5.953529357910156 0 3.483870983123779 2.399297475814819 3.483870983123779 5.358974456787109 L 5.22580623626709 5.358974456787109 Z M 9 1.692307710647583 C 11.08440017700195 1.692307710647583 12.77419281005859 3.333925247192383 12.77419281005859 5.358974456787109 L 14.51612854003906 5.358974456787109 C 14.51612854003906 2.399297475814819 12.04652881622314 0 9 0 L 9 1.692307710647583 Z M 3.483870983123779 5.358974456787109 L 3.483870983123779 9.871795654296875 L 5.22580623626709 9.871795654296875 L 5.22580623626709 5.358974456787109 L 3.483870983123779 5.358974456787109 Z M 12.77419281005859 5.358974456787109 L 12.77419281005859 9.871795654296875 L 14.51612854003906 9.871795654296875 L 14.51612854003906 5.358974456787109 L 12.77419281005859 5.358974456787109 Z" fill="#d20505" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gq1oyy =
    '<svg viewBox="63.0 259.0 18.0 22.0" ><path transform="translate(63.0, 259.0)" d="M 1.74193549156189 10.71794891357422 L 16.25806427001953 10.71794891357422 L 16.25806427001953 20.30769348144531 L 1.74193549156189 20.30769348144531 L 1.74193549156189 10.71794891357422 Z M 0 9.871795654296875 C 0 9.404492378234863 0.3899496793746948 9.025641441345215 0.8709677457809448 9.025641441345215 L 3.483870983123779 9.025641441345215 L 3.483870983123779 5.358974456787109 C 3.483870983123779 4.838293552398682 3.560305833816528 4.334956169128418 3.702869415283203 3.858974695205688 C 4.232367515563965 2.091123342514038 5.674089908599854 0.7006397843360901 7.499999523162842 0.2005178183317184 C 7.976925373077393 0.06988649070262909 8.480061531066895 0 9 0 C 9.519940376281738 0 10.0230770111084 0.06988447904586792 10.5 0.2005121409893036 C 12.32593441009521 0.7006292343139648 13.76764392852783 2.091116666793823 14.29713439941406 3.858974695205688 C 14.43969535827637 4.334956169128418 14.51612854003906 4.838293552398682 14.51612854003906 5.358974456787109 L 14.51612854003906 9.025641441345215 L 17.12903213500977 9.025641441345215 C 17.61003875732422 9.025641441345215 18 9.404492378234863 18 9.871795654296875 L 18 21.15384674072266 C 18 21.62114906311035 17.61003875732422 22.00000190734863 17.12903213500977 22.00000190734863 L 0.8709677457809448 22.00000190734863 C 0.3899496793746948 22.00000190734863 0 21.62114906311035 0 21.15384674072266 L 0 9.871795654296875 Z M 12.44494819641113 3.858974695205688 C 12.05984115600586 3.025493860244751 11.36366558074951 2.357116937637329 10.5 1.993319153785706 C 10.04024314880371 1.799658179283142 9.533023834228516 1.692307710647583 9 1.692307710647583 C 8.466976165771484 1.692307710647583 7.959755897521973 1.799658060073853 7.499999523162842 1.993319034576416 C 6.636333465576172 2.357116937637329 5.940158367156982 3.025493860244751 5.555051326751709 3.858974695205688 C 5.343489170074463 4.316854953765869 5.22580623626709 4.824563026428223 5.22580623626709 5.358974456787109 L 5.22580623626709 9.025641441345215 L 12.77419281005859 9.025641441345215 L 12.77419281005859 5.358974456787109 C 12.77419281005859 4.824563026428223 12.65651035308838 4.316854953765869 12.44494819641113 3.858974695205688 Z" fill="#d20505" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_js0k8n =
    '<svg viewBox="287.3 261.3 26.6 19.1" ><path transform="translate(287.25, 261.25)" d="M 1.609758377075195 9.550000190734863 C 1.743476867675781 9.778794288635254 1.945027947425842 10.10912322998047 2.21207594871521 10.50711059570312 C 2.747315645217896 11.30479049682617 3.540820121765137 12.36701488494873 4.572974681854248 13.4266939163208 C 6.648967742919922 15.5580472946167 9.609955787658691 17.60000038146973 13.32143020629883 17.60000038146973 C 17.03287887573242 17.60000038146973 19.99386596679688 15.5580472946167 22.06986808776855 13.42669296264648 C 23.10202598571777 12.36701393127441 23.89553451538086 11.30478954315186 24.43077850341797 10.50710868835449 C 24.69782829284668 10.10912227630615 24.89938163757324 9.778794288635254 25.03310012817383 9.550000190734863 C 24.89938163757324 9.321206092834473 24.69782829284668 8.990877151489258 24.43077850341797 8.592891693115234 C 23.89553451538086 7.795210838317871 23.10202598571777 6.732986927032471 22.06986808776855 5.6733078956604 C 19.99386596679688 3.541952848434448 17.03287887573242 1.5 13.32143020629883 1.5 C 9.609955787658691 1.5 6.648967742919922 3.541953802108765 4.572974681854248 5.673306941986084 C 3.540820121765137 6.732985496520996 2.747315645217896 7.795209884643555 2.21207594871521 8.592889785766602 C 1.945027947425842 8.990878105163574 1.743476867675781 9.321205139160156 1.609758377075195 9.550000190734863 Z M 25.89286041259766 9.550000190734863 C 26.55841255187988 9.204255104064941 26.55827522277832 9.203989028930664 26.55811882019043 9.203688621520996 L 26.55660057067871 9.200780868530273 L 26.5531005859375 9.194111824035645 L 26.54104232788086 9.171395301818848 C 26.53076362609863 9.152149200439453 26.51600074768066 9.124783515930176 26.49678802490234 9.089839935302734 C 26.45837020874023 9.019960403442383 26.40212821960449 8.919717788696289 26.32833290100098 8.79344654083252 C 26.18079948425293 8.54100227355957 25.96276473999023 8.18394660949707 25.67635726928711 7.757108688354492 C 25.10445022583008 6.904788970947266 24.25509452819824 5.767013549804688 23.14439010620117 4.626692771911621 C 20.93466377258301 2.358047485351562 17.60993766784668 0 13.32143020629883 0 C 9.032898902893066 0 5.70817232131958 2.358046531677246 3.498451471328735 4.626693725585938 C 2.387749195098877 5.767014503479004 1.538397073745728 6.904790878295898 0.9664945006370544 7.757110595703125 C 0.6800885200500488 8.183948516845703 0.462056577205658 8.54100513458252 0.3145243525505066 8.793449401855469 C 0.2407298684120178 8.919719696044922 0.184488520026207 9.019963264465332 0.1460702270269394 9.089842796325684 C 0.126858577132225 9.124786376953125 0.1120957583189011 9.152152061462402 0.1018157452344894 9.171398162841797 L 0.08975891768932343 9.19411563873291 L 0.08625797927379608 9.200783729553223 L 0.08514063060283661 9.202922821044922 C 0.08498458564281464 9.20322322845459 0.08444583415985107 9.204257965087891 0.75 9.550000190734863 L 0.08444581925868988 9.204257965087891 C -0.02814860641956329 9.421002388000488 -0.02814860641956329 9.678997993469238 0.08444581925868988 9.895742416381836 L 0.75 9.550000190734863 C 0.08444583415985107 9.895742416381836 0.08428977429866791 9.895442962646484 0.08444581925868988 9.895742416381836 L 0.08514063060283661 9.897077560424805 L 0.08625797927379608 9.89921760559082 L 0.08975891768932343 9.905885696411133 L 0.1018157452344894 9.92860221862793 C 0.1120957583189011 9.947848320007324 0.126858577132225 9.975214004516602 0.1460702270269394 10.01015853881836 C 0.184488520026207 10.08003711700439 0.2407298684120178 10.1802806854248 0.3145243525505066 10.30655097961426 C 0.462056577205658 10.55899524688721 0.6800885200500488 10.91605281829834 0.9664945006370544 11.3428897857666 C 1.538397073745728 12.19520950317383 2.387749195098877 13.33298587799072 3.498451471328735 14.47330760955811 C 5.70817232131958 16.7419548034668 9.032898902893066 19.10000038146973 13.32143020629883 19.10000038146973 C 17.60993766784668 19.10000038146973 20.93466377258301 16.74195289611816 23.14439010620117 14.47330760955811 C 24.25509452819824 13.33298683166504 25.10445022583008 12.19521141052246 25.67635726928711 11.34289169311523 C 25.96276473999023 10.91605472564697 26.18079948425293 10.55899810791016 26.32833290100098 10.30655384063721 C 26.40212821960449 10.18028354644775 26.45837020874023 10.08003997802734 26.49678802490234 10.01016044616699 C 26.51600074768066 9.975216865539551 26.53076362609863 9.947851181030273 26.54104232788086 9.928605079650879 L 26.5531005859375 9.905888557434082 L 26.55660057067871 9.89922046661377 L 26.55771827697754 9.897080421447754 C 26.55787467956543 9.896780967712402 26.55841255187988 9.895745277404785 25.89286041259766 9.550000190734863 Z M 25.89286041259766 9.550000190734863 L 26.55841255187988 9.895745277404785 C 26.6710090637207 9.678998947143555 26.67071533203125 9.420434951782227 26.55811882019043 9.203688621520996 L 25.89286041259766 9.550000190734863 Z" fill="#d20505" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ycl5rx =
    '<svg viewBox="296.0 266.3 9.0 9.0" ><path transform="translate(296.05, 266.28)" d="M 0 4.52142858505249 C 0 2.024255037307739 2.024255037307739 0 4.52142858505249 0 C 7.01860237121582 0 9.04285717010498 2.024255037307739 9.04285717010498 4.52142858505249 C 9.04285717010498 7.01860237121582 7.01860237121582 9.04285717010498 4.52142858505249 9.04285717010498 C 2.024255037307739 9.04285717010498 0 7.01860237121582 0 4.52142858505249 Z M 4.52142858505249 1.5 C 2.852682113647461 1.5 1.5 2.852682113647461 1.5 4.52142858505249 C 1.5 6.19017505645752 2.852682113647461 7.54285717010498 4.52142858505249 7.54285717010498 C 6.19017505645752 7.54285717010498 7.54285717010498 6.19017505645752 7.54285717010498 4.52142858505249 C 7.54285717010498 2.852682113647461 6.19017505645752 1.5 4.52142858505249 1.5 Z" fill="#d20505" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l6vupe =
    '<svg viewBox="62.0 195.0 20.0 20.0" ><path transform="translate(62.0, 195.0)" d="M 14.28566646575928 10 C 14.28566646575928 12.36688899993896 12.36688899993896 14.28566646575928 10 14.28566646575928 C 7.633066654205322 14.28566646575928 5.71428918838501 12.36688899993896 5.71428918838501 10 C 5.71428918838501 7.633066654205322 7.633066654205322 5.71428918838501 10 5.71428918838501 C 12.36688899993896 5.71428918838501 14.28566646575928 7.633066654205322 14.28566646575928 10 Z M 14.28566646575928 10 L 14.28566646575928 11.42855548858643 C 14.28566646575928 13.00655555725098 15.5648889541626 14.28566646575928 17.14288902282715 14.28566646575928 C 18.15644454956055 14.28566646575928 19.04689025878906 13.75788879394531 19.55400085449219 12.96199989318848 C 19.83644485473633 12.51900005340576 20 11.99288845062256 20 11.42855548858643 L 20 10 C 20 4.477155685424805 15.52288913726807 0 10 0 C 4.477155685424805 0 0 4.477155685424805 0 10 C 0 15.52288913726807 4.477155685424805 20 10 20 C 12.12466621398926 20 14.09455585479736 19.33744430541992 15.71433353424072 18.20755577087402" fill="none" stroke="#d20505" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" /></svg>';
