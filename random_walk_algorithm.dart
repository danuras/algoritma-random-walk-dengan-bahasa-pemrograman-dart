import 'dart:math';
import 'dart:typed_data';

void main(List<String> args) {
  List<Uint8List> map = List.generate(20, (index) => Uint8List(20));
  Uint8List x = Uint8List(200);
  Uint8List y = Uint8List(200);
  List<String> arah = ["NORTH", "SOUTH", "EAST", "WEST"];
  String langkah = "";
  x[0] = Random().nextInt(20);
  y[0] = Random().nextInt(20);
  int i = 1;
  while (i < 200) {
    langkah = arah[Random().nextInt(arah.length)];
    if (langkah == "EAST" &&
        (y[i - 1] < 20) &&
        (x[i - 1] < 19) &&
        (x[i - 1] > -1) &&
        (y[i - 1] > -1)) {
      x[i] = x[i - 1] + 1;
      y[i] = y[i - 1];
      map[y[i]][x[i]] = 1;
      i++;
    } else if (langkah == "SOUTH" &&
        (y[i - 1] < 20) &&
        (x[i - 1] < 20) &&
        (x[i - 1] > 0) &&
        (y[i - 1] > -1)) {
      x[i] = x[i - 1] - 1;
      y[i] = y[i - 1];
      map[y[i]][x[i]] = 1;
      i++;
    } else if (langkah == "NORTH" &&
        (y[i - 1] < 19) &&
        (x[i - 1] < 20) &&
        (x[i - 1] > -1) &&
        (y[i - 1] > -1)) {
      x[i] = x[i - 1];
      y[i] = y[i - 1] + 1;
      map[y[i]][x[i]] = 1;
      i++;
    } else if (langkah == "WEST" &&
        (y[i - 1] < 20) &&
        (x[i - 1] < 20) &&
        (x[i - 1] > -1) &&
        (y[i - 1] > 0)) {
      x[i] = x[i - 1];
      y[i] = y[i - 1] - 1;
      map[y[i]][x[i]] = 1;
      i++;
    }
  }
  print(map.toString());
}
