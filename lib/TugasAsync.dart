void main() async {
  func1();
  await func3(2).then(
    (value) {
      print(value);
    },
  ).catchError((error) {
    print(error);
    print("error");
  });

  func2();
}

func1() {
  print("Kendaraan");
}

func2() {
  print("Berada di darat");
}

Future<String> func3(int roda) {
  return Future.delayed(Duration(seconds: 2), () {
    if (roda == 4) {
      return "Mobil";
    } else if (roda == 2) {
      return "Motor";
    } else {
      return "Bukan Kendaraan";
    }
  });
}
