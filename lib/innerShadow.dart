import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui;

class InnerShadow extends SingleChildRenderObjectWidget {
  const InnerShadow({
    Key? key,
    this.colorA,
    this.colorB,
    this.blurA,
    this.blurB,
    this.offsetA,
    this.offsetB,
    Widget? child,
  }) : super(key: key, child: child);

  final Color? colorA;
  final Color? colorB;
  final double? blurA;
  final double? blurB;
  final Offset? offsetA;
  final Offset? offsetB;

  @override
  RenderInnerShadow createRenderObject(BuildContext context) {
    return RenderInnerShadow()
      ..shadowColorA = colorA
      ..shadowColorB = colorB
      ..blurRadiusA = blurA
      ..blurRadiusB = blurB
      ..offsetGeometryA = offsetA
      ..offsetGeometryB = offsetB;
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderInnerShadow renderObject) {
    renderObject
      ..shadowColorA = colorA
      ..shadowColorB = colorB
      ..blurRadiusA = blurA
      ..blurRadiusB = blurB
      ..offsetGeometryA = offsetA
      ..offsetGeometryB = offsetB;
  }
}

class RenderInnerShadow extends RenderProxyBox {
  RenderInnerShadow({
    RenderBox? child,
  }) : super(child);

  @override
  bool get alwaysNeedsCompositing => child != null;

  Color? _colorA;
  Color? _colorB;
  double? _blurA;
  double? _blurB;
  Offset? _offsetA;
  Offset? _offsetB;

  Color? get shadowColorA => _colorA;
  set shadowColorA(Color? value) {
    if (_colorA == value) return;
    _colorA = value;
    markNeedsPaint();
  }

  Color? get shadowColorB => _colorB;
  set shadowColorB(Color? value) {
    if (_colorB == value) return;
    _colorB = value;
    markNeedsPaint();
  }

  double? get blurRadiusA => _blurA;
  set blurRadiusA(double? value) {
    if (_blurA == value) return;
    _blurA = value;
    markNeedsPaint();
  }

  double? get blurRadiusB => _blurB;
  set blurRadiusB(double? value) {
    if (_blurB == value) return;
    _blurB = value;
    markNeedsPaint();
  }

  Offset? get offsetGeometryA => _offsetA;
  set offsetGeometryA(Offset? value) {
    if (_offsetA == value) return;
    _offsetA = value;
    markNeedsPaint();
  }

  Offset? get offsetGeometryB => _offsetB;
  set offsetGeometryB(Offset? value) {
    if (_offsetB == value) return;
    _offsetB = value;
    markNeedsPaint();
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child != null) {
      var layerPaint = Paint()..color = Color.fromRGBO(209, 238, 238, 1.0);

      // Invert the alpha to compute inner part.
      var invertPaint = Paint()
        ..colorFilter = const ui.ColorFilter.matrix([
          1,
          0,
          0,
          0,
          0,
          0,
          1,
          0,
          0,
          0,
          0,
          0,
          1,
          0,
          0,
          0,
          0,
          0,
          -1,
          255,
        ]);

      var canvas = context.canvas;
      canvas.saveLayer(offset & size, layerPaint);
      context.paintChild(child!, offset);
      var shadowPaintA = Paint()
        ..blendMode = ui.BlendMode.srcATop
        ..imageFilter =
            ui.ImageFilter.blur(sigmaX: blurRadiusA!, sigmaY: blurRadiusA!)
        ..colorFilter = ui.ColorFilter.mode(shadowColorA!, ui.BlendMode.srcIn);
      var shadowPaintB = Paint()
        ..blendMode = ui.BlendMode.srcATop
        ..imageFilter =
            ui.ImageFilter.blur(sigmaX: blurRadiusB!, sigmaY: blurRadiusB!)
        ..colorFilter = ui.ColorFilter.mode(shadowColorB!, ui.BlendMode.srcIn);
      canvas.saveLayer(offset & size, shadowPaintA);

      canvas.saveLayer(offset & size, invertPaint);
      canvas.translate(_offsetA!.dx, _offsetA!.dy);
      context.paintChild(child!, offset);
      context.canvas.restore();
      context.canvas.restore();
      context.canvas.restore();
      canvas.saveLayer(offset & size, shadowPaintB);
      canvas.saveLayer(offset & size, invertPaint);
      canvas.translate(_offsetB!.dx, _offsetB!.dy);
      context.paintChild(child!, offset);
      context.canvas.restore();
      context.canvas.restore();
      context.canvas.restore();
    }
  }

  @override
  void visitChildrenForSemantics(RenderObjectVisitor visitor) {
    if (child != null) visitor(child!);
  }
}
