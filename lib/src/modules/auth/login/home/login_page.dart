import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(minHeight: sizeOf.height),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background_login.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(40),
              //* definindo o tamanho. trabalhando com constraint (responsividade)
              constraints: BoxConstraints(maxWidth: sizeOf.width * .8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const Text('Login'),
                  const SizedBox(
                    height: 32,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text('E-mail'),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Senha'),
                    ),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  SizedBox(
                    width: sizeOf.width * .8,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('ENTRAR'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
