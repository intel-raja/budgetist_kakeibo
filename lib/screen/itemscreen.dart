import 'package:budgetist_kakeibo/bloc/item/item_bloc.dart';
import 'package:budgetist_kakeibo/models/iconname.dart';
import 'package:budgetist_kakeibo/models/user.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:string_validator/string_validator.dart';

import '../routes.dart';

enum Itemcat { income, expenses }

class Item extends StatefulWidget {
  const Item({Key? key}) : super(key: key);

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<ItemBloc>(
        create: (context) => ItemBloc(),
        child: ItemScreen(),
      ),
    );
  }
}

class ItemScreen extends StatefulWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  TextEditingController itemcont = TextEditingController();

  Itemcat? dropdownitem = Itemcat.expenses;
  int i = 1;
  @override
  void dispose() {
    itemcont.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocListener<ItemBloc, ItemState>(
      listener: (context, state) {
        if (state is ItemFailure) {
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

        if (state is ItemLoading) {
          Navigator.popAndPushNamed(context, Routes.loading);
        }
        if (state is ItemFinised) {
          Navigator.pushNamedAndRemoveUntil(context, Routes.home, (_) => false);
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Success'), Icon(Icons.thumb_up)],
                ),
                backgroundColor: Colors.green,
              ),
            );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: DropdownButton(
            icon: Icon(
              Icons.arrow_drop_down_outlined,
              color: Colors.white,
            ),
            value: dropdownitem,
            onChanged: (Itemcat? value) {
              setState(() {
                dropdownitem = value;
                if (dropdownitem == Itemcat.income) {
                  i = 23;
                } else {
                  i = 1;
                }
              });
            },
            dropdownColor: Color.fromRGBO(101, 0, 252, 1),
            items: [
              Itemcat.expenses,
              Itemcat.income,
            ].map<DropdownMenuItem<Itemcat>>((value) {
              return DropdownMenuItem<Itemcat>(
                value: value,
                child: Text(
                  value == Itemcat.expenses ? 'Expenses' : 'Income',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Futura Md BT',
                      fontSize: 24,
                      fontWeight: FontWeight.normal),
                ),
              );
            }).toList(),
          ),
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemCount: dropdownitem == Itemcat.expenses ? 22 : 9,
            itemBuilder: (BuildContext context, int index) {
              int iconno = index + i;

              return Padding(
                padding: const EdgeInsets.all(2),
                child: ElevatedButton(
                  onPressed: () {
                    numberKeyboard(context, size, iconno);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      if (states.contains(MaterialState.pressed))
                        return Color.fromRGBO(101, 0, 252, 1);
                      return Colors.white;
                    }),
                  ),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/Frame $iconno.png'),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            icon[iconno],
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }

  PersistentBottomSheetController<dynamic> numberKeyboard(
      BuildContext context, Size size, int iconno) {
    final _formKey = GlobalKey<FormState>();

    return showBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 112,
            child: Column(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage('assets/images/Frame $iconno.png'),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          icon[iconno],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                BlocBuilder<ItemBloc, ItemState>(
                  builder: (context, state) {
                    return Container(
                      width: size.width,
                      height: 45,
                      child: Form(
                        key: _formKey,
                        child: TextFormField(
                          autofocus: true,
                          textInputAction: TextInputAction.done,
                          controller: itemcont,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some value';
                            } else {
                              bool amount = isNumeric(value);
                              if (amount == false) {
                                return 'please enter numbers only';
                              }
                            }
                            return null;
                          },
                          onFieldSubmitted: (v) {
                            if (_formKey.currentState!.validate()) {
                              final amount = int.parse(itemcont.text);
                              BlocProvider.of<ItemBloc>(context).add(
                                ItemAdded(
                                  username: User.name,
                                  userid: User.id,
                                  amount: amount,
                                  itemNo: iconno,
                                  createdTime: DateFormat('yyyyLLddHHmmS')
                                      .format(DateTime.now()),
                                  monthAndYear: int.parse(DateFormat('yyyyLL')
                                      .format(DateTime.now())),
                                ),
                              );
                            }
                          },
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        border: Border.all(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          width: 2,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        });
  }
}
