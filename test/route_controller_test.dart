import 'package:flutter_test/flutter_test.dart';
import 'package:newapp/route_controller.dart';

void main() {
  test('ProductController - ChangeNav Test', () {
    final routeController = RouteController();

    // Verifikasi nilai awal indexWidget
    expect(routeController.indexWidget.value, 0);

    // Panggil metode changeNav dengan indeks 1
    routeController.changeNav(1);

    // Verifikasi perubahan nilai indexWidget setelah pemanggilan changeNav
    expect(routeController.indexWidget.value, 1);
  });
}
