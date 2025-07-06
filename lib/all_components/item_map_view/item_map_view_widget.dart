import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'item_map_view_model.dart';
export 'item_map_view_model.dart';

class ItemMapViewWidget extends StatefulWidget {
  const ItemMapViewWidget({
    super.key,
    this.photo1,
    this.id,
  });

  final List<String>? photo1;
  final String? id;

  @override
  State<ItemMapViewWidget> createState() => _ItemMapViewWidgetState();
}

class _ItemMapViewWidgetState extends State<ItemMapViewWidget> {
  late ItemMapViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemMapViewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          width: double.infinity,
          height: 287.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 287.0,
                child: Stack(
                  children: [
                    PageView(
                      controller: _model.pageViewController ??=
                          PageController(initialPage: 0),
                      scrollDirection: Axis.horizontal,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: CachedNetworkImage(
                            fadeInDuration: Duration(milliseconds: 500),
                            fadeOutDuration: Duration(milliseconds: 500),
                            imageUrl: valueOrDefault<String>(
                              widget.photo1?.elementAtOrNull(0),
                              'https://avatars.mds.yandex.net/i?id=2a000001974a650c1ad9864be979becd8acb-1625911-fast-images&n=13',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                widget.photo1?.elementAtOrNull(1),
                                'https://a.travelcdn.mts.ru/property-photos/1633728227/2347900126/97b8b7250dafca73fc2ac11d245249e7d7100941.jpeg',
                              ),
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.network(
                            valueOrDefault<String>(
                              widget.photo1?.elementAtOrNull(2),
                              'https://avatars.mds.yandex.net/i?id=04c273c1ea220f6a2cd7c8c44d1e4f22fee1914b-7612999-images-thumbs&ref=rim&n=33&w=376&h=250',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: smooth_page_indicator.SmoothPageIndicator(
                          controller: _model.pageViewController ??=
                              PageController(initialPage: 0),
                          count: 3,
                          axisDirection: Axis.horizontal,
                          onDotClicked: (i) async {
                            await _model.pageViewController!.animateToPage(
                              i,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                            safeSetState(() {});
                          },
                          effect: smooth_page_indicator.SlideEffect(
                            spacing: 6.0,
                            radius: 20.0,
                            dotWidth: 8.0,
                            dotHeight: 8.0,
                            dotColor: Color(0xAEFFFFFF),
                            activeDotColor: Color(0xFFEF394A),
                            paintStyle: PaintingStyle.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.94, -0.93),
                child: FlutterFlowIconButton(
                  borderColor: Color(0x001A94EC),
                  borderRadius: 20.0,
                  borderWidth: 0.0,
                  buttonSize: 40.0,
                  fillColor: Color(0x15D0EBFF),
                  icon: Icon(
                    Icons.favorite_rounded,
                    color: Color(0xFFFF0033),
                    size: 25.0,
                  ),
                  onPressed: () async {
                    FFAppState().updatePropertyItemsAtIndex(
                      FFAppState().propertyItems.firstOrNull!.iditem,
                      (e) => e..like = false,
                    );
                    safeSetState(() {});
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
