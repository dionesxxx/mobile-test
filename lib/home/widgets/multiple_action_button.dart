import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:qr_code/qr_code/view/qr_code_page.dart';
import 'package:qr_code/scan/view/scan_page.dart';

class MutipleActionButton extends StatefulWidget {
  const MutipleActionButton({super.key});

  @override
  State<MutipleActionButton> createState() => _MutipleActionButtonState();
}

class _MutipleActionButtonState extends State<MutipleActionButton> {
  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalizations.of(context);

    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      children: [
        SpeedDialChild(
          child: const Icon(Icons.qr_code_scanner),
          label: appLocalization.scan,
          onTap: () => Navigator.of(context).push(ScanPage.route()),
        ),
        SpeedDialChild(
          child: const Icon(Icons.qr_code_2),
          label: appLocalization.qrCode,
          onTap: () => Navigator.of(context).push(QrCodePage.route()),
        ),
      ],
    );
  }
}
