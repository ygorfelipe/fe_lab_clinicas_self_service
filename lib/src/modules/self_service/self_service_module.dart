import 'package:fe_lab_clinicas_self_service/src/modules/self_service/controller/self_service_controller.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/self_service/pages/documents/documents_page.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/self_service/pages/documents/scan/documents_scan_page.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/self_service/pages/documents/scan_confirm/documents_scan_confirm_page.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/self_service/pages/done/done_page.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/self_service/pages/find_patient/find_patient_page.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/self_service/home/self_service_page.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/self_service/pages/how_i_am/how_i_am_page.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/self_service/pages/patinet/patient_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class SelfServiceModule extends FlutterGetItModule {
  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton((i) => SelfServiceController()),
      ];

  @override
  String get moduleRouteName => '/self-service';

  @override
  Map<String, WidgetBuilder> get pages => {
        '/': (context) => const SelfServicePage(),
        '/howIAm': (context) => const HowIAmPage(),
        '/find-patinet': (context) => const FindPatientPage(),
        '/patient': (context) => const PatientPage(),
        '/documents': (context) => const DocumentsPage(),
        '/documents/scan': (context) => const DocumentsScanPage(),
        '/documents/scan/confirm': (context) =>
            const DocumentsScanConfirmPage(),
        '/done': (context) => const DonePage(),
      };
}
