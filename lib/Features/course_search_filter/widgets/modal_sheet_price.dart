import 'package:flutter/material.dart';

class ModalBottomSheetPrice extends StatefulWidget
{
  const ModalBottomSheetPrice({super.key});

  @override
  ModalBottomSheetPriceState createState() => ModalBottomSheetPriceState();
}

class ModalBottomSheetPriceState extends State<ModalBottomSheetPrice>
{
  RangeValues _values = RangeValues(90, 200);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        children: [
          // Price Section
          Text("Price", style: TextStyle(fontSize: 16)),

          const SizedBox(height: 10),

          Stack(
            children: [
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackShape: CustomTrackShape(), // Remove the dotted line
                ),
                child: RangeSlider(
                  values: _values,
                  min: 0,
                  max: 500,
                  divisions: 50,
                  onChanged: (values) {
                    setState(() {
                      _values = values;
                    });
                  },
                ),
              ),
              Positioned(
                left: getThumbPosition(_values.start, context),
                top: 30, // Adjust this value to position the text below the slider
                child: Text(
                  "\$${_values.start.round()}",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Positioned(
                left: getThumbPosition(_values.end, context),
                top: 30, // Adjust this value to position the text below the slider
                child: Text(
                  "\$${_values.end.round()}",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  double getThumbPosition(double value, BuildContext context)
  {
    final double sliderWidth = MediaQuery.of(context).size.width * 0.95;
    final double normalizedValue = (value - 0) / (500 - 0);
    return normalizedValue * sliderWidth;
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape
{
  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    Offset? secondaryOffset,
    bool isDiscrete = false,
    bool isEnabled = false,
    double additionalActiveTrackHeight = 0,
  }) {
    // Draw a solid track without the dotted line
    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final Paint paint = Paint()
      ..color = sliderTheme.activeTrackColor! // Use the active track color
      ..style = PaintingStyle.fill;

    // Draw the active track
    context.canvas.drawRect(trackRect, paint);

    // Optionally, draw the inactive track if needed
    if (sliderTheme.inactiveTrackColor != null) {
      final Paint inactivePaint = Paint()
        ..color = sliderTheme.inactiveTrackColor!
        ..style = PaintingStyle.fill;

      final Rect inactiveRect = Rect.fromLTRB(
        trackRect.left,
        trackRect.top,
        thumbCenter.dx, // End the inactive track at the first thumb
        trackRect.bottom,
      );

      context.canvas.drawRect(inactiveRect, inactivePaint);
    }
  }
}