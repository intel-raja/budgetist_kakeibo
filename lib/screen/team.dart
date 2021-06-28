        import 'package:flutter/material.dart';
        
        
        class TeamScreen extends StatefulWidget {
        @override
        _TeamScreenState createState() => _TeamScreenState();
        }
        
        class _TeamScreenState extends State<TeamScreen> {
        @override
        Widget build(BuildContext context) {
        // Figma Flutter Generator TeamScreen - FRAME
        
        return Container(
      width: 375,
      height: 812,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 123,
        left: 0,
        child: Container(
        width: 375,
        height: 689,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
      color : Color.fromRGBO(101, 0, 252, 1),
  )
      )
      ),Positioned(
        top: 260,
        left: 14,
        child: Container(
      width: 347,
      height: 132,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 347,
        height: 132,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
      color : Color.fromRGBO(255, 255, 255, 0.30000001192092896),
  )
      )
      ),Positioned(
        top: 11,
        left: 134,
        child: Text('Tharun', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 55,
        left: 10,
        child: Text('Monthly Income', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 18,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 88,
        left: 31,
        child: Text('Rs. 25,000', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 18,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 55,
        left: 190,
        child: Text('Monthly Expenses', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 18,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 88,
        left: 226,
        child: Text('Rs. 1000', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 18,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 56,
        left: 33,
        child: Text('Manage profiles', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(101, 0, 252, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 194,
        left: 65,
        child: Text('Add profile', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 198,
        left: 26,
        child: SvgPicture.asset(
        'assets/images/vectoradd.svg',
        semanticsLabel: 'vectoradd'
      );
      ),Positioned(
        top: 321,
        left: 186,
        child: Container(
        width: 1,
        height: 54,
        decoration: BoxDecoration(
          color : Color.fromRGBO(196, 196, 196, 1),
  )
      )
      ),
        ]
      )
    );
        }
        }
        