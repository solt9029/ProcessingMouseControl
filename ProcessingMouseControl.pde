final String PATH = "C:\\Users\\Shiode\\Desktop\\ProcessingMouseControl\\mouse.exe";

void setup() {
  mouse(100, 100);
  delay(1000);
  mouse(400, 100);
}

void mouse(int x, int y) {
  try {
    Runtime r = Runtime.getRuntime();
    r.exec(PATH + " " + str(x) + "," + str(y));
  }
  catch(Exception e) {
    println(e);
  }
}