JSONObject config = loadJSONObject("config.json");

PVector pos = new PVector(config.getInt("x"), config.getInt("y"));
if (config.getString("form").equals("kreis")) {
  ellipse(pos.x, pos.y, 25, 25);
} else if (config.getString("form").equals("rechteck")) {
  rect(pos.x, pos.y, 25, 25);
}
