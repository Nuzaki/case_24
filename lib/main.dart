import 'package:case_24_theme/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: globalTheme(),
      home: const MyWidget(),
    ),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(color: Color(0xFFeceff1), width: 3));

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Кейс Тема',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                )),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 34,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Group 209.png'),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    'Регистрация',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF5C5C5C),
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 20,
              ),
              const Text(
                'Чтобы зарегистрироваться\n введите свой номер телефона и почту',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                  color: Color(0xFFC4C4C4),
                ),
              ),
              const SizedBox(height: 14),
              const Padding(
                padding: EdgeInsets.only(bottom: 6.0),
                child: Text(
                  'Телефон',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              const SizedBox(
                height: 34,
                width: 224,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: '+7',
                    filled: true,
                    fillColor: Color(0xFFECEFF1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 14, bottom: 10.0),
                child: Text(
                  'Почта',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              const SizedBox(
                height: 34,
                width: 224,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Вам придет четырехзначный код,\n который будет вашим паролем',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                  color: Color(0xFFC4C4C4),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                'Изменить пароль можно\n будет в личном кабинете после\n регистрации',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                  color: Color(0xFFC4C4C4),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              SizedBox(
                height: 42,
                width: 154,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Отправить код',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36.0),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
