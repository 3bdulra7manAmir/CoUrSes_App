import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BMSPrice extends StatefulWidget
{
  const BMSPrice({super.key});

  @override
  BMSPriceState createState() => BMSPriceState();
}

class BMSPriceState extends State<BMSPrice>
{
  RangeValues _currentRangeValues = const RangeValues(90, 200);

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: AppColors().kButtonsBlueColor,
            inactiveTrackColor: Colors.grey,
            rangeThumbShape: CustomThumbShape(),
            overlayShape: SliderComponentShape.noOverlay,
            rangeTrackShape: CustomRangeTrackShape(),
          ),
          child: RangeSlider(values: _currentRangeValues, min: 50, max: 500, divisions: 10,
            labels: RangeLabels('\$${_currentRangeValues.start.round()}', '\$${_currentRangeValues.end.round()}',),
            onChanged: (RangeValues values) {setState(() {_currentRangeValues = values;});},
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            Text("\$${_currentRangeValues.start.round()}", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
            Text("\$${_currentRangeValues.end.round()}", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }
}

class CustomRangeTrackShape extends RangeSliderTrackShape
{
  static const double activeTrackHeight = 2.5;
  static const double inactiveTrackHeight = 1.5;

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  })
  {
    final double overlayWidth = parentBox.size.width;
    final double trackHeight = activeTrackHeight;
    final double trackLeft = offset.dx;
    final double trackTop = offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = overlayWidth;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset,
  {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset startThumbCenter,
    required Offset endThumbCenter,
    bool isEnabled = false,
    bool isDiscrete = false,
  })
  {
    if (sliderTheme.trackHeight == 0)
    {
      return;
    }

    final Canvas canvas = context.canvas;
    final Paint inactivePaint = Paint()
      ..color = sliderTheme.inactiveTrackColor!
      ..strokeWidth = inactiveTrackHeight
      ..strokeCap = StrokeCap.round;

    final Paint activePaint = Paint()
      ..color = sliderTheme.activeTrackColor!
      ..strokeWidth = activeTrackHeight
      ..strokeCap = StrokeCap.round;

    final double trackLeft = offset.dx;
    final double trackRight = parentBox.size.width;
    final double trackTop = offset.dy;

    // Draw inactive line first
    canvas.drawLine(
      Offset(trackLeft, trackTop),
      Offset(trackRight, trackTop),
      inactivePaint,
    );

    // Draw active line on top
    canvas.drawLine(
      Offset(startThumbCenter.dx, trackTop),
      Offset(endThumbCenter.dx, trackTop),
      activePaint,
    );
  }
}

class CustomThumbShape extends RangeSliderThumbShape
{
  static const double _thumbSize = 14.0;
  static const double _borderWidth = 2.0;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete)
  {
    return Size.fromRadius(_thumbSize / 2);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center,
    {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    bool isDiscrete = false,
    bool isEnabled = true,
    bool isOnTop = false,
    bool isPressed = false,
    required SliderThemeData sliderTheme,
    TextDirection? textDirection,
    Thumb? thumb,
  })
  {
    final Canvas canvas = context.canvas;
    final Paint paint = Paint()
      ..color = AppColors().kButtonsBlueColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = _borderWidth;

    canvas.drawCircle(center, _thumbSize / 2, paint);
  }
}