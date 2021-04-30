
// THIS CODE HAS TO BE ADDED TO A WORKING CANVAS IN ORDER FOR IT TO WORK PROPERLY
final recorder = new ui.PictureRecorder();
final canvas = new Canvas(
recorder,
new Rect.fromPoints(
new Offset(0.0, 0.0), new Offset(500.0, 500.0)));

final picture = recorder.endRecording();
final img = picture.toImage(500, 500);// size of the picture should be the same as the size of the canvas
final pngBytes = await img.toByteData(format: new ui.EncodingFormat.png());

new Image.memory(new Uint8List.view(imgBytes.buffer));

