//Funcion que calcula el sueldo dependiendo de las horas que uno ingrese
String calcularSueldo(horas) {
  var horasParseadas = double.parse(horas);
  if (horasParseadas <= 40) {
    var pago = horasParseadas * 10;
    return '\$ ${pago.toString()}';
  } else if (horasParseadas > 40 && horasParseadas <= 168) {
    var horasExtras = horasParseadas - 40;
    var pagoExtra = horasExtras * 15;
    return '\$ ${(400 + pagoExtra).toString()} ';
  } else {
    return 'Cantidad de horas no valida';
  }
}
