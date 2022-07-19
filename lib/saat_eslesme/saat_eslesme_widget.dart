import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SaatEslesmeWidget extends StatefulWidget {
  const SaatEslesmeWidget({Key key}) : super(key: key);

  @override
  _SaatEslesmeWidgetState createState() => _SaatEslesmeWidgetState();
}

class _SaatEslesmeWidgetState extends State<SaatEslesmeWidget> {
  bool switchListTileValue1;
  bool switchListTileValue2;
  bool switchListTileValue3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            '7ftl3iek' /* Saat Entegrasyonu */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Container(
                    width: 200,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/pembe-akilli-saat-fiyatlari-3.png',
                        ).image,
                      ),
                    ),
                    alignment: AlignmentDirectional(0, 0.19999999999999996),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: SwitchListTile.adaptive(
              value: switchListTileValue1 ??= true,
              onChanged: (newValue) =>
                  setState(() => switchListTileValue1 = newValue),
              title: Text(
                FFLocalizations.of(context).getText(
                  'c9leeh7m' /* Google Fit  */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Lexend Deca',
                      color: FlutterFlowTheme.of(context).grayIcon,
                    ),
              ),
              subtitle: Text(
                FFLocalizations.of(context).getText(
                  'u97edbgz' /* Google Fit Eklentisi ile Akıll... */,
                ),
                style: FlutterFlowTheme.of(context).bodyText2.override(
                      fontFamily: 'Lexend Deca',
                      color: FlutterFlowTheme.of(context).grayLight,
                    ),
              ),
              activeColor: FlutterFlowTheme.of(context).grayIcon,
              activeTrackColor: Color(0x8A4B39EF),
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
            ),
          ),
          SwitchListTile.adaptive(
            value: switchListTileValue2 ??= true,
            onChanged: (newValue) =>
                setState(() => switchListTileValue2 = newValue),
            title: Text(
              FFLocalizations.of(context).getText(
                'zo7vncpw' /* Apple Health */,
              ),
              style: FlutterFlowTheme.of(context).title3,
            ),
            subtitle: Text(
              FFLocalizations.of(context).getText(
                'uzc39gcc' /* Apple Health Eklentisi ile Akı... */,
              ),
              style: FlutterFlowTheme.of(context).bodyText2.override(
                    fontFamily: 'Lexend Deca',
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
            ),
            tileColor: FlutterFlowTheme.of(context).primaryColor,
            activeColor: Color(0xFF4B39EF),
            activeTrackColor: Color(0xFF3B2DB6),
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
            contentPadding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
          ),
          SwitchListTile.adaptive(
            value: switchListTileValue3 ??= true,
            onChanged: (newValue) =>
                setState(() => switchListTileValue3 = newValue),
            title: Text(
              FFLocalizations.of(context).getText(
                '4ob6mrk7' /* Samsung Health */,
              ),
              style: FlutterFlowTheme.of(context).title3,
            ),
            subtitle: Text(
              FFLocalizations.of(context).getText(
                '95f8xq1f' /* Samsung Health Eklentisi ile A... */,
              ),
              style: FlutterFlowTheme.of(context).bodyText2,
            ),
            tileColor: FlutterFlowTheme.of(context).grayIcon,
            activeColor: Color(0xFF4B39EF),
            activeTrackColor: Color(0xFF3B2DB6),
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
            contentPadding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                Navigator.pop(context);
              },
              text: FFLocalizations.of(context).getText(
                'zgzw0m7o' /* Ayarları Kaydet */,
              ),
              icon: FaIcon(
                FontAwesomeIcons.share,
              ),
              options: FFButtonOptions(
                width: 190,
                height: 50,
                color: FlutterFlowTheme.of(context).secondaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                elevation: 3,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
