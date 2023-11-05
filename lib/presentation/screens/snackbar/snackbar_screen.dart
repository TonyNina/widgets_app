import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Holaaaa :)'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text("¿Estas seguro?"),
        content: const Text(
            'Velit proident eu voluptate excepteur nostrud do in. Non consectetur velit aute adipisicing adipisicing et exercitation aliquip consectetur nulla esse. Officia nulla fugiat velit esse. Adipisicing pariatur pariatur adipisicing dolor exercitation veniam adipisicing incididunt ea. Cupidatat commodo irure cupidatat nisi fugiat consectetur veniam deserunt est eu mollit minim in dolor.'),
        actions: [
          TextButton(onPressed: () => context.pop() , child: const Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mostrar Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Irure minim quis ad id proident sint voluptate elit culpa occaecat. Incididunt enim reprehenderit voluptate duis amet commodo. Quis excepteur quis sit in. Elit officia tempor magna adipisicing nisi magna ullamco qui quis aliquip ipsum. Cupidatat cupidatat dolore consectetur veniam in ex exercitation anim do quis sit est.')
                  ]);
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: Text('Mostrar diálogo')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
