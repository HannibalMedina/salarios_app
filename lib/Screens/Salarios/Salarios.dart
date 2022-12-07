import 'package:flutter/material.dart';
import 'package:salarios_app/Components/GenericBoton/GenericBoton.dart';
import 'package:salarios_app/Components/GenericInput/GenericInput.dart';
import 'package:salarios_app/Screens/Salarios/funciones.dart';

//Se crea pantalla donde se tiene la interfas principal de usuario

class Salarios extends StatefulWidget {
  const Salarios({Key? key}) : super(key: key);

  @override
  State<Salarios> createState() => _SalariosState();
}

class _SalariosState extends State<Salarios> {
  late TextEditingController controller;
  var money = '';
  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Calcula tu sueldo semanal')],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 45, right: 45, top: 25),
        child: Column(
          children: [
            money == ''
                ? Center(
                    child: Text(
                      'Ingresa numero de hora trabajadas esta semana:',
                      style: TextStyle(fontSize: 17),
                    ),
                  )
                : money != 'Cantidad de horas no valida'
                    ? Row(
                        children: [
                          Text(
                            'Tu sueldo es de:',
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      )
                    : Container(),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Column(
                children: [
                  money == ''
                      ? Container()
                      : Text(
                          money,
                          style: TextStyle(fontSize: 45),
                        ),
                  SizedBox(
                    height: 25,
                  ),
                  money == ''
                      ? GenericInput(
                          control: controller,
                          typeKeyboard: TextInputType.number,
                        )
                      : Container(),
                  SizedBox(
                    height: 25,
                  ),
                  money == ''
                      ? GenericBoton(
                          texto: 'Calcular',
                          callback: () {
                            setState(() {
                              if (controller.text != '') {
                                money =
                                    calcularSueldo(controller.text).toString();
                                controller.text = '';
                              }
                            });
                          },
                          color: Colors.green,
                          textColor: Colors.white)
                      : GenericBoton(
                          texto: 'Volver',
                          callback: () {
                            setState(() {
                              money = '';
                            });
                          },
                          color: Colors.red,
                          textColor: Colors.white)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
