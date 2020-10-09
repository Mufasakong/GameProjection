float angle;
float r = 150;

JSONObject jayObjekt;
JSONObject jsonObjekt;

JSONArray J;

Table table;

PImage earth;

PShape globe;

void setup() {
  size(600, 600, P3D);
  earth = loadImage("earth.jpg");
  jayObjekt = loadJSONObject("https://www.n2yo.com/rest/v1/satellite/positions/25544/41.702/-76.014/0/2/&apiKey=4HLRS4-7WU8ZW-533NNG-4KH8");

  noStroke();
  globe = createShape(SPHERE, r);
  globe.setTexture(earth);
  jsonObjekt = jayObjekt;
}

void draw() {
  background(51);

  JSONArray sats = jsonObjekt.getJSONArray("info");

  //JSONObject b = sats.getJSONObject(0);

  String id = sats.getString("satname");

  textSize(50);
  text(id, 50, 50);

  translate(width*0.5, height*0.5);
  rotateY(angle);
  angle += 0.01;

  lights();
  fill(200);
  noStroke();
  shape(globe);

  JSONArray position = jsonObjekt.getJSONArray("positions");

  JSONObject o = position.getJSONObject(0);

  float lat = o.getFloat("satlatitude");
  float lon = o.getFloat("satlongitude");
  float theta = radians(lat);
  float phi = radians(lon) + PI;

  float x = r * cos(theta) * cos(phi);
  float y = -r * sin(theta);
  float z = -r * cos(theta) * sin(phi);

  PVector pos = new PVector(x, y, z);

  PVector xaxis = new PVector(1, 0, 0);
  float angleb = PVector.angleBetween(xaxis, pos);
  PVector raxis = xaxis.cross(pos);



  pushMatrix();
  translate(x, y+30, z);
  rotate(angleb, raxis.x, raxis.y, raxis.z);
  fill(255);
  box(10, 10, 10);
  popMatrix();
}
