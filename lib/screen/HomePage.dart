import 'package:budgetist_kakeibo/bloc/balance.dart/balance_bloc.dart';
import 'package:budgetist_kakeibo/bloc/money/money_bloc.dart';
import 'package:budgetist_kakeibo/bloc/wallet/bloc/wallet_bloc.dart';
import 'package:budgetist_kakeibo/models/balance.dart';
import 'package:budgetist_kakeibo/models/iconname.dart';
import 'package:budgetist_kakeibo/models/user.dart';
import 'package:budgetist_kakeibo/models/wallet.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../routes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<WalletBloc>(
            create: (context) => WalletBloc(),
          ),
          BlocProvider<MoneyBloc>(
            create: (context) => MoneyBloc(),
          ),
          BlocProvider<BalanceBloc>(
            create: (context) => BalanceBloc(),
          ),
        ],
        child: Homepage(),
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<WalletBloc>(context).add(WalletStarted(
        month: int.parse(DateFormat('yyyyLL').format(DateTime.now()))));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocListener<WalletBloc, WalletState>(
      listener: (context, state) {
        if (state is WalletFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(state.error), Icon(Icons.error)],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }

        if (state is WalletLoading) {
          Navigator.pushNamed(context, Routes.loading);
          print('loading');
        }
        if (state is WalletFinised) {
          BlocProvider.of<BalanceBloc>(context)
              .add(Calculate(wallet: state.wallet));
          BlocProvider.of<MoneyBloc>(context)
              .add(AddingList(wallet: state.wallet));

          Navigator.pop(context);
        }
      },
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          elevation: 20,
          onPressed: () {
            Navigator.pushNamed(context, Routes.items);
          },
          backgroundColor: Colors.white,
          child: Icon(
            Icons.add,
            color: Color.fromRGBO(101, 0, 252, 1),
          ),
        ),
        body: BlocBuilder<BalanceBloc, Balance>(
          builder: (context, state) {
            return Stack(
              children: [
                Positioned(
                  top: 60,
                  left: 30,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.profile);
                    },
                    child: Container(
                      width: size.width - 100,
                      child: Text(
                        User.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(101, 0, 252, 1),
                          fontFamily: 'Futura Md BT',
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: .15 * size.height,
                  left: 0,
                  child: Container(
                    width: size.width,
                    height: .85 * size.height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      ),
                      color: Color.fromRGBO(101, 0, 252, 1),
                    ),
                  ),
                ),
                Positioned(
                  top: .19 * size.height,
                  left: 30,
                  child: Text(
                    'Balance',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Futura Md BT',
                      fontSize: 24,
                    ),
                  ),
                ),
                Positioned(
                  top: .23 * size.height,
                  left: 30,
                  child: Text(
                    '\$ ${state.balance}',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Futura Md BT',
                      fontSize: 30,
                    ),
                  ),
                ),
                Positioned(
                  top: .31 * size.height,
                  left: 15,
                  child: Container(
                    width: (size.width / 2) - 14.5,
                    height: (size.width / 2) - 14.5,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          child: ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<WalletBloc>(context)
                                  .add(WalletStarted(month: 202106));
                            },
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.zero),
                            ),
                            child: Container(
                              width: (size.width / 2) - 14.5,
                              height: (size.width / 2) - 14.5,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(101, 0, 252, 1),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 25,
                          left: 10,
                          child: Text(
                            'Income',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Futura Md BT',
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 60,
                          left: 10,
                          child: Text(
                            '\$ ${state.income}',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Futura Md BT',
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: .31 * size.height,
                  left: size.width / 2 + .5,
                  child: Container(
                    width: (size.width / 2) - 14.5,
                    height: (size.width / 2) - 14.5,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.zero),
                            ),
                            child: Container(
                              width: (size.width / 2) - 14.5,
                              height: (size.width / 2) - 14.5,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(101, 0, 252, 1),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 25,
                          left: 25,
                          child: Text(
                            'Expenses',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Futura Md BT',
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 60,
                          left: 25,
                          child: Text(
                            '\$ ${state.expenses}',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Futura Md BT',
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: .19 * size.height,
                  left: size.width - 100,
                  child: ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<WalletBloc>(context).add(WalletStarted(
                          month: int.parse(
                              DateFormat('yyyyLL').format(DateTime.now()))));
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(CircleBorder()),
                      elevation: MaterialStateProperty.all(30),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Icon(
                        Icons.refresh,
                        color: Colors.indigo,
                        size: 35,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: .31 * size.height,
                  left: (size.width / 2) - .5,
                  child: Container(
                    width: 1,
                    height: (size.width / 2) - 14.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                Positioned(
                  top: .58 * size.height,
                  left: 30,
                  child: Text(
                    'Last transactions',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Futura Md BT',
                        fontSize: 24,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ),
                ),
                Positioned(
                  top: .63 * size.height,
                  left: 15,
                  child: BlocBuilder<MoneyBloc, List<Wallet>>(
                    builder: (context, state) {
                      return Container(
                        height: .37 * size.height,
                        width: size.width,
                        child: ListView.builder(
                          padding: EdgeInsets.all(0),
                          itemCount:
                              BlocProvider.of<MoneyBloc>(context).state.length,
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: RecordCard(
                                  size: size,
                                  index: index,
                                  wallet:
                                      BlocProvider.of<MoneyBloc>(context).state,
                                ));
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class RecordCard extends StatefulWidget {
  const RecordCard({
    Key? key,
    required this.size,
    required this.index,
    required this.wallet,
  }) : super(key: key);

  final Size size;
  final int index;
  final List<Wallet> wallet;
  @override
  _RecordCardState createState() => _RecordCardState();
}

class _RecordCardState extends State<RecordCard> {
  @override
  Widget build(BuildContext context) {
    int index = widget.index;
    List<Wallet> wallet = widget.wallet;

    return Container(
      width: widget.size.width - 30,
      height: 100,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: widget.size.width - 30,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4)
                ],
                color: Color.fromRGBO(255, 255, 255, 0.30000001192092896),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 25,
            child: Container(
              width: 40,
              height: 40,
              child: Image(
                image: AssetImage(
                  'assets/images/Frame ${wallet[index].itemNo}.png',
                ),
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 75,
            child: Text(
              icon[wallet[index].itemNo],
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Futura Md BT',
                fontSize: 24,
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: (widget.size.width / 2) + 30,
            child: Text(
              DateFormat('MMMM').format(DateTime.now()),
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Futura Md BT',
                fontSize: 20,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                wallet[index].userid == User.id ? 'Me' : wallet[index].name,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Futura Md BT',
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: (widget.size.width / 2) + 30,
            child: Text(
              '\$ ${wallet[index].amount} ',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Futura Md BT',
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
