library neuomorphic_container;

import 'package:flutter/material.dart';
import 'package:neuomorphic_container/innerShadow.dart';

/// A Neuomorphic Container.
// ignore: camel_case_types, must_be_immutable
class NeuomorphicContainer extends StatelessWidget {
  final Key? key;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Decoration? foregroundDecoration;
  final double? width;
  final double? height;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final Widget? child;
  final BorderRadiusGeometry? borderRadius;
  final BoxShape shape;
  final BoxBorder? border;
  final Color color;
  Offset? offset;
  final double intensity;
  double? blur;
  final NeuomorphicStyle? style;

  NeuomorphicContainer(
      {this.key,
      this.child,
      this.alignment,
      this.padding,
      this.foregroundDecoration,
      this.width,
      this.height,
      this.shape = BoxShape.rectangle,
      this.constraints,
      this.borderRadius,
      this.margin,
      this.transform,
      this.border,
      this.blur,
      this.style,
      this.color = const Color.fromRGBO(85, 185, 243, 1.0),
      this.intensity = 0.15,
      this.offset})
      : assert(margin == null || margin.isNonNegative),
        assert(padding == null || padding.isNonNegative),
        assert(intensity >= 0.01 && intensity <= 0.6),
        assert(constraints == null || constraints.debugAssertIsValid()),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (height != null && width != null && offset == null) {
      offset = Offset(width! / 10, height! / 10);
    }
    offset = offset == null ? Offset(20.0, 20.0) : offset;
    blur = blur == null ? offset!.dx + offset!.dy : blur;

    switch (style) {
      case NeuomorphicStyle.Flat:
        return _flat();
        break;
      case NeuomorphicStyle.Concave:
        return _concave();
        break;
      case NeuomorphicStyle.Convex:
        return _convex();
        break;
      case NeuomorphicStyle.Pressed:
        return _pressed();
        break;
      default:
        return _flat();
    }
  }

  Widget _flat() {
    return Container(
      key: key,
      alignment: alignment,
      padding: padding,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      child: child,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(
                    color.red + (intensity * color.red) > 225
                        ? 255
                        : color.red + (intensity * color.red).round(),
                    color.green + (intensity * color.green) > 225
                        ? 255
                        : color.green + (intensity * color.green).round(),
                    color.blue + (intensity * color.blue) > 225
                        ? 255
                        : color.blue + (intensity * color.blue).round(),
                    1.0),
                offset: Offset(-offset!.dx, -offset!.dy),
                blurRadius: blur!),
            BoxShadow(
                color: Color.fromRGBO(
                    color.red - (intensity * color.red).round(),
                    color.green - (intensity * color.green).round(),
                    color.blue - (intensity * color.blue).round(),
                    1.0),
                offset: Offset(offset!.dx, offset!.dy),
                blurRadius: blur!),
          ],
          color: color,
          borderRadius: borderRadius,
          shape: shape,
          border: border),
    );
  }

  Widget _concave() {
    return Container(
      key: key,
      alignment: alignment,
      padding: padding,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      child: child,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(
                    color.red + (intensity * color.red) > 225
                        ? 255
                        : color.red + (intensity * color.red).round(),
                    color.green + (intensity * color.green) > 225
                        ? 255
                        : color.green + (intensity * color.green).round(),
                    color.blue + (intensity * color.blue) > 225
                        ? 255
                        : color.blue + (intensity * color.blue).round(),
                    1.0),
                offset: Offset(-offset!.dx, -offset!.dy),
                blurRadius: blur!),
            BoxShadow(
                color: Color.fromRGBO(
                    color.red - (intensity * color.red).round(),
                    color.green - (intensity * color.green).round(),
                    color.blue - (intensity * color.blue).round(),
                    1.0),
                offset: Offset(offset!.dx, offset!.dy),
                blurRadius: blur!),
          ],
          gradient: LinearGradient(colors: [
            Color.fromRGBO(
                color.red - (0.10 * color.red).round(),
                color.green - (0.10 * color.green).round(),
                color.blue - (0.10 * color.blue).round(),
                1.0),
            Color.fromRGBO(
                color.red > 233 ? 255 : color.red + (0.07 * color.red).round(),
                color.green > 233
                    ? 255
                    : color.green + (0.07 * color.green).round(),
                color.blue > 233
                    ? 255
                    : color.blue + (0.07 * color.blue).round(),
                1.0),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: borderRadius,
          shape: shape,
          border: border),
    );
  }

  Widget _convex() {
    return Container(
      key: key,
      alignment: alignment,
      padding: padding,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      child: child,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(
                    color.red + (intensity * color.red) > 225
                        ? 255
                        : color.red + (intensity * color.red).round(),
                    color.green + (intensity * color.green) > 225
                        ? 255
                        : color.green + (intensity * color.green).round(),
                    color.blue + (intensity * color.blue) > 225
                        ? 255
                        : color.blue + (intensity * color.blue).round(),
                    1.0),
                offset: Offset(-offset!.dx, -offset!.dy),
                blurRadius: blur!),
            BoxShadow(
                color: Color.fromRGBO(
                    color.red - (intensity * color.red).round(),
                    color.green - (intensity * color.green).round(),
                    color.blue - (intensity * color.blue).round(),
                    1.0),
                offset: Offset(offset!.dx, offset!.dy),
                blurRadius: blur!),
          ],
          gradient: LinearGradient(colors: [
            Color.fromRGBO(
                color.red > 233 ? 255 : color.red + (0.07 * color.red).round(),
                color.green > 233
                    ? 255
                    : color.green + (0.07 * color.green).round(),
                color.blue > 233
                    ? 255
                    : color.blue + (0.07 * color.blue).round(),
                1.0),
            Color.fromRGBO(
                color.red - (0.10 * color.red).round(),
                color.green - (0.10 * color.green).round(),
                color.blue - (0.10 * color.blue).round(),
                1.0),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: borderRadius,
          shape: shape,
          border: border),
    );
  }

  Widget _pressed() {
    return InnerShadow(
        colorA: Color.fromRGBO(
            color.red - (intensity * color.red).round(),
            color.green - (intensity * color.green).round(),
            color.blue - (intensity * color.blue).round(),
            1.0),
        colorB: Color.fromRGBO(
            color.red + (intensity * color.red) > 225
                ? 255
                : color.red + (intensity * color.red).round(),
            color.green + (intensity * color.green) > 225
                ? 255
                : color.green + (intensity * color.green).round(),
            color.blue + (intensity * color.blue) > 225
                ? 255
                : color.blue + (intensity * color.blue).round(),
            1.0),
        offsetA: Offset(offset!.dx, offset!.dx),
        offsetB: Offset(-3, -3),
        blurB: 0,
        blurA: blur,
        child: Container(
          key: key,
          alignment: alignment,
          padding: padding,
          foregroundDecoration: foregroundDecoration,
          width: width,
          height: height,
          constraints: constraints,
          margin: margin,
          transform: transform,
          child: child,
          decoration: BoxDecoration(
              color: color,
              borderRadius: borderRadius,
              shape: shape,
              border: border),
        ));
  }
}

enum NeuomorphicStyle { Flat, Concave, Convex, Pressed }
