import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StylePage(),
    );
  }
}

class StylePage extends StatefulWidget {
  const StylePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StylePageState createState() => _StylePageState();
}

class _StylePageState extends State<StylePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 300),
        child: Center(
          child: Column(children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Container(
                    padding: const EdgeInsets.all(16),
                    height: 80,
                    width: 275,
                    decoration: BoxDecoration(
                        color: const Color(0xff747480).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        Image.asset(
                          "images/icon1.png",
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            'Пожалуйста, проверьте введенные\nбаркод и пароль\nи повторите попытку.',
                            style: TextStyle(color: Color(0xffFF453A)),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.white,
                  width: 600,
                  elevation: 0,
                ));
              },
              child: const Text('not correct'),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Container(
                    padding: const EdgeInsets.all(16),
                    height: 80,
                    width: 275,
                    decoration: BoxDecoration(
                        color: const Color(0xff747480).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        Image.asset(
                          "images/icon1.png",
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            'Неправильный код. \nПожалуйста, попробуйте снова.',
                            style: TextStyle(color: Color(0xffFF453A)),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.white,
                  width: 600,
                  elevation: 0,
                ));
              },
              child: const Text('not correct code'),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Container(
                    padding: const EdgeInsets.all(16),
                    height: 80,
                    width: 275,
                    decoration: BoxDecoration(
                        color: const Color(0xff747480).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        Image.asset(
                          "images/icon1.png",
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            'Пароли не совпадают.',
                            style: TextStyle(color: Color(0xffFF453A)),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.white,
                  width: 600,
                  elevation: 0,
                ));
              },
              child: const Text('not correct password'),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Container(
                    padding: const EdgeInsets.all(16),
                    height: 70,
                    width: 359,
                    decoration: BoxDecoration(
                        color: const Color(0xff747480).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Image.asset(
                          "images/SuccessIcon.png",
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            'Пароль успешно изменен.',
                            style: TextStyle(color: Color(0xff30D158)),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.white,
                  width: 600,
                  elevation: 0,
                ));
              },
              child: const Text('correct'),
            ),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          height: 400,
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('images/nointernet.png'),
                              const SizedBox(
                                height: 35,
                              ),
                              const Text(
                                'Нет соединения !',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff0D4936),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'Проверьте, подключено ли устройство к \nИнтернету.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff1D1D1F),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: const Text('no internet'),
            ),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Container(
                          height: 400,
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('images/500.png'),
                              const SizedBox(
                                height: 35,
                              ),
                              const Text(
                                'Ошибка 500',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff0D4936),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'Ошибка сервера при обработке вашего запроса',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff1D1D1F),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: const Text('error 500'),
            ),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Container(
                          height: 400,
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('images/not work.png'),
                              const SizedBox(
                                height: 35,
                              ),
                              const Text(
                                'Временно не работает !',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff0D4936),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'Приносим извинения за временные неудобства',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff1D1D1F),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: const Text('not work app'),
            ),
          ]),
        ),
      ),
    );
  }
}
