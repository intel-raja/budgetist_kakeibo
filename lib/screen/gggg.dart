        import 'package:flutter/material.dart';
        
        
        class Homepage extends StatefulWidget {
        @override
        _HomepageState createState() => _HomepageState();
        }
        
        class _HomepageState extends State<Homepage> {
        @override
        Widget build(BuildContext context) {
        // Figma Flutter Generator Homepage - FRAME
        
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
        top: 513,
        left: 14,
        child: Container(
      width: 347,
      height: 92,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 347,
        height: 92,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0,4),
          blurRadius: 4
      )],
      color : Color.fromRGBO(255, 255, 255, 0.30000001192092896),
  )
      )
      ),Positioned(
        top: 41,
        left: 69,
        child: Text('Food', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 7,
        left: 14,
        child: Text('Me', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 17,
        left: 215,
        child: Text('Rs.600', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 26,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 50,
        left: 215,
        child: Text('Aug', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 471,
        left: 33,
        child: Text('Last transactions', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 295,
        left: 194,
        child: Container(
      width: 167,
      height: 123,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 167,
        height: 123,
        decoration: BoxDecoration(
          color : Color.fromRGBO(101, 0, 252, 1),
  )
      )
      ),Positioned(
        top: 23,
        left: 10,
        child: Text('Expenses', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 61,
        left: 10,
        child: Text('Rs. 10,000', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 30,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 295,
        left: 14,
        child: Container(
      width: 167,
      height: 123,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 167,
        height: 123,
        decoration: BoxDecoration(
          color : Color.fromRGBO(101, 0, 252, 1),
  )
      )
      ),Positioned(
        top: 23,
        left: 10,
        child: Text('Income', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 61,
        left: 10,
        child: Text('Rs. 30,000', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 30,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 176,
        left: 289,
        child: Container(
      width: 50,
      height: 50,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
      borderRadius : BorderRadius.all(Radius.elliptical(50, 50)),
  )
      )
      ),Positioned(
        top: 13,
        left: 14,
        child: SvgPicture.asset(
        'assets/images/vectorrefresh.svg',
        semanticsLabel: 'vectorrefresh'
      );
      ),
        ]
      )
    )
      ),Positioned(
        top: 201,
        left: 33,
        child: Text('Rs. 3,00,000', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 30,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 163,
        left: 33,
        child: Text('Balance', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 59,
        left: 22,
        child: Text('user name', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(101, 0, 252, 1),
        fontFamily: 'Futura Md BT',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 275,
        left: 187,
        child: Container(
        width: 1,
        height: 163,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 553,
        left: 28,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );
      ),
        ]
      )
    );
        }
        }
        