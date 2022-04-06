import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe2_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/detalhe',
                  arguments: 'Super fantástico!',
                );
              },
              child: const Text('Ir para detalhe'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                      name: '/detalhe',
                      //arguments: 'Pela Graça de Deus!',
                    ),
                    builder: (_) => const DetalhePage(
                      parametro: 'Parametro pelo PageRoute',
                    ),
                  ),
                );
              },
              child: Text('Ir para detalhe PageRouter'),
            ),
            ElevatedButton(
              onPressed: () async {
                print('Antes de navegar para página detalhe 2');
                final retorno = await Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(name: '/detalhe2'),
                    builder: (_) => const Detalhe2Page(),
                  ),
                );
                print('Navegou para página detalhe 2');
                print('O retorno de detalhe 2 é: $retorno');
              },
              child: Text('Ir para detalhe 2'),
            ),
          ],
        ),
      ),
    );
  }
}
