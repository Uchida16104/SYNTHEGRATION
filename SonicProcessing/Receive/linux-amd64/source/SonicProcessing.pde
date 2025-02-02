import oscP5.*;
import netP5.*;
import java.io.File;
import java.util.ArrayList;
OscP5 oscP5;
float time1 = 0;
float synthPitch1 = 0;
float samplePitch1 = 0;
float volume1 = 0;
float volume2 = 0;
String synthName = "";
String sampleName = "";
float startTime = 0;
float xPos = 0;
int screenshotCount = 0;
PGraphics axesGraphics;
ArrayList<String> synthList;
ArrayList<String> sampleList;
void setup() {
  size((800 * 2), 800);
  background(255);
  oscP5 = new OscP5(this, 4559);
  synthList = new ArrayList<String>();
  sampleList = new ArrayList<String>();
  axesGraphics = createGraphics(width, height);
  axesGraphics.beginDraw();
  axesGraphics.background(255);
  drawAxes(axesGraphics);
  axesGraphics.endDraw();
  image(axesGraphics, 0, 0);
}
void draw() {
  fill(255, 255, 255, 0);
  rect(0, 0, width, height);
  time1 = (millis() - startTime) / 1000.0;
  xPos = map(time1, 0, 10, 0, width);
  if (!synthName.isEmpty()) {
    fill(getSynthColor(synthName));
    drawSynthShape(synthName, volume1, synthPitch1, xPos);
  }
  if (!sampleName.isEmpty()) {
    fill(getSampleColor(sampleName));
    drawSampleShape(sampleName, volume2, samplePitch1, xPos);
  }
  if (xPos >= width) {
    saveScreenshot();
    resetCanvas();
  }
}
void drawAxes(PGraphics pg) {
  pg.stroke(0);
  pg.line(0, 795, width, 795);
  for (int i = 0; i <= width; i += (10 * 2)) {
    float x = map(i, 0, width, 0, width);
    pg.line(x, 790, x, 795);
    pg.text(i / (1 * 2), x - (1 * 2), 780);
  }
}
void oscEvent(OscMessage theOscMessage) {
  if (theOscMessage.checkAddrPattern("/synth1")) {
    time1 = theOscMessage.get(0).floatValue();
    synthName = theOscMessage.get(1).stringValue();
    synthPitch1 = theOscMessage.get(2).floatValue();
    volume1 = theOscMessage.get(3).floatValue();
  } else if (theOscMessage.checkAddrPattern("/sample1")) {
    time1 = theOscMessage.get(0).floatValue();
    sampleName = theOscMessage.get(1).stringValue();
    samplePitch1 = theOscMessage.get(2).floatValue();
    volume2 = theOscMessage.get(3).floatValue();
  } else if (theOscMessage.checkAddrPattern("/synthCategories")) {
    synthList.clear();
    for (int i = 0; i < theOscMessage.arguments().length; i++) {
      synthList.add(theOscMessage.get(i).stringValue());
    }
  } else if (theOscMessage.checkAddrPattern("/sampleCategories")) {
    sampleList.clear();
    for (int i = 0; i < theOscMessage.arguments().length; i++) {
      sampleList.add(theOscMessage.get(i).stringValue());
    }
  }
}
color getSynthColor(String name) {
  String category = getSynthCategory(name);
  switch (category) {
    case "beep": return color(255, 0, 0);
    case "fm": return color(0, 255, 0);
    case "saw": return color(0, 0, 255);
    case "bass": return color(255, 255, 0);
    case "pulse": return color(0, 255, 255);
    case "modulated": return color(255, 128, 128);
    case "noise": return color(128, 128, 128);
    case "lead": return color(255, 165, 0);
    case "instrument": return color(128, 0, 128);
    case "tri": return color(0, 128, 128);
    case "square": return color(128, 0, 0);
    case "bell": return color(0, 128, 0);
    case "sine": return color(0, 0, 255);
    default: return color(128, 128, 128);
  }
}
color getSampleColor(String name) {
  String category = getSampleCategory(name);
  switch (category) {
    case "ambi": return color(128, 0, 255);
    case "arovane": return color(255, 128, 0);
    case "bass": return color(255, 255, 0);
    case "bd": return color(0, 255, 255);
    case "drum": return color(255, 0, 0);
    case "elec": return color(255, 165, 0);
    case "glitch": return color(128, 128, 128);
    case "guit": return color(255, 0, 128);
    case "hat": return color(0, 255, 128);
    case "loop": return color(128, 0, 128);
    case "mehackit": return color(255, 128, 255);
    case "misc": return color(0, 128, 255);
    case "perc": return color(255, 255, 255);
    case "sn": return color(128, 255, 128);
    case "tabla": return color(255, 255, 128);
    case "vinyl": return color(0, 255, 0);
    default: return color(128, 128, 128);
  }
}
String getSynthCategory(String name) {
  if (name.contains("beep")) return "beep";
  if (name.contains("mod_beep")) return "beep";
  if (name.contains("fm")) return "fm";
  if (name.contains("mod_fm")) return "fm";
  if (name.contains("saw")) return "saw";
  if (name.contains("dsaw")) return "dsaw";
  if (name.contains("saw")) return "saw";
  if (name.contains("mod_saw")) return "saw";
  if (name.contains("mod_dsaw")) return "saw";
  if (name.contains("supersaw")) return "saw";
  if (name.contains("tech_saws")) return "saw";
  if (name.contains("bass_foundation")) return "bass";
  if (name.contains("bass_highend")) return "bass";
  if (name.contains("chipbass")) return "bass";
  if (name.contains("pulse")) return "pulse";
  if (name.contains("dpulse")) return "pulse";
  if (name.contains("mod_pulse")) return "pulse";
  if (name.contains("subpulse")) return "pulse";
  if (name.contains("blade")) return "modulated";
  if (name.contains("gabberkick")) return "modulated";
  if (name.contains("prophet")) return "modulated";
  if (name.contains("rhodey")) return "modulated";
  if (name.contains("tb303")) return "modulated";
  if (name.contains("sc808_bassdrum")) return "modulated";
  if (name.contains("sc808_clap")) return "modulated";
  if (name.contains("sc808_claves")) return "modulated";
  if (name.contains("sc808_closed_hihat")) return "modulated";
  if (name.contains("sc808_congahi")) return "modulated";
  if (name.contains("sc808_congalo")) return "modulated";
  if (name.contains("sc808_congamid")) return "modulated";
  if (name.contains("sc808_cowbell")) return "modulated";
  if (name.contains("sc808_cymbal")) return "modulated";
  if (name.contains("sc808_maracas")) return "modulated";
  if (name.contains("sc808_open_hihat")) return "modulated";
  if (name.contains("sc808_rimshot")) return "modulated";
  if (name.contains("sc808_snare")) return "modulated";
  if (name.contains("sc808_tomhi")) return "modulated";
  if (name.contains("sc808_tomlo")) return "modulated";
  if (name.contains("sc808_tommid")) return "modulated";
  if (name.contains("bnoise")) return "noise";
  if (name.contains("chipnoise")) return "noise";
  if (name.contains("cnoise")) return "noise";
  if (name.contains("gnoise")) return "noise";
  if (name.contains("noise")) return "noise";
  if (name.contains("pnoise")) return "noise";
  if (name.contains("chiplead")) return "lead";
  if (name.contains("winwood_lead")) return "lead";
  if (name.contains("kalimba")) return "instrument";
  if (name.contains("organ_tonewheel")) return "instrument";
  if (name.contains("piano")) return "instrument";
  if (name.contains("pluck")) return "instrument";
  if (name.contains("dtri")) return "tri";
  if (name.contains("mod_tri")) return "tri";
  if (name.contains("tri")) return "tri";
  if (name.contains("square")) return "square";
  if (name.contains("dull_bell")) return "bell";
  if (name.contains("pretty_bell")) return "bell";
  if (name.contains("mod_sine")) return "sine";
  if (name.contains("sine")) return "sine";
  return "unknown";
}
String getSampleCategory(String name) {
  if (name.contains("ambi_choir")) return "ambi";
  if (name.contains("ambi_dark_woosh")) return "ambi";
  if (name.contains("ambi_drone")) return "ambi";
  if (name.contains("ambi_glass_hum")) return "ambi";
  if (name.contains("ambi_glass_rub")) return "ambi";
  if (name.contains("ambi_haunted_hum")) return "ambi";
  if (name.contains("ambi_lunar_land")) return "ambi";
  if (name.contains("ambi_piano")) return "ambi";
  if (name.contains("ambi_sauna")) return "ambi";
  if (name.contains("ambi_soft_buzz")) return "ambi";
  if (name.contains("ambi_swoosh")) return "ambi";
  if (name.contains("arovane_beat_a")) return "arovane";
  if (name.contains("arovane_beat_b")) return "arovane";
  if (name.contains("arovane_beat_c")) return "arovane";
  if (name.contains("arovane_beat_d")) return "arovane";
  if (name.contains("arovane_beat_e")) return "arovane";
  if (name.contains("bass_dnb_f")) return "bass";
  if (name.contains("bass_drop_c")) return "bass";
  if (name.contains("bass_hard_c")) return "bass";
  if (name.contains("bass_hit_c")) return "bass";
  if (name.contains("bass_thick_c")) return "bass";
  if (name.contains("bass_trance_c")) return "bass";
  if (name.contains("bass_voxy_c")) return "bass";
  if (name.contains("bass_voxy_hit_c")) return "bass";
  if (name.contains("bass_woodsy_c")) return "bass";
  if (name.contains("bd_808")) return "bd";
  if (name.contains("bd_ada")) return "bd";
  if (name.contains("bd_boom")) return "bd";
  if (name.contains("bd_chip")) return "bd";
  if (name.contains("bd_fat")) return "bd";
  if (name.contains("bd_gas")) return "bd";
  if (name.contains("bd_haus")) return "bd";
  if (name.contains("bd_klub")) return "bd";
  if (name.contains("bd_mehackit")) return "bd";
  if (name.contains("bd_pure")) return "bd";
  if (name.contains("bd_sone")) return "bd";
  if (name.contains("bd_tek")) return "bd";
  if (name.contains("bd_zome")) return "bd";
  if (name.contains("bd_zum")) return "bd";
  if (name.contains("drum_bass_hard")) return "drum";
  if (name.contains("drum_bass_soft")) return "drum";
  if (name.contains("drum_cowbell")) return "drum";
  if (name.contains("drum_cymbal_closed")) return "drum";
  if (name.contains("drum_cymbal_hard")) return "drum";
  if (name.contains("drum_cymbal_open")) return "drum";
  if (name.contains("drum_cymbal_pedal")) return "drum";
  if (name.contains("drum_cymbal_soft")) return "drum";
  if (name.contains("drum_heavy_kick")) return "drum";
  if (name.contains("drum_roll")) return "drum";
  if (name.contains("drum_snare_hard")) return "drum";
  if (name.contains("drum_snare_soft")) return "drum";
  if (name.contains("drum_splash_hard")) return "drum";
  if (name.contains("drum_splash_soft")) return "drum";
  if (name.contains("drum_tom_hi_hard")) return "drum";
  if (name.contains("drum_tom_hi_soft")) return "drum";
  if (name.contains("drum_tom_lo_hard")) return "drum";
  if (name.contains("drum_tom_lo_soft")) return "drum";
  if (name.contains("drum_tom_mid_hard")) return "drum";
  if (name.contains("drum_tom_mid_soft")) return "drum";
  if (name.contains("elec_beep")) return "elec";
  if (name.contains("elec_bell")) return "elec";
  if (name.contains("elec_blip")) return "elec";
  if (name.contains("elec_blip2")) return "elec";
  if (name.contains("elec_blup")) return "elec";
  if (name.contains("elec_bong")) return "elec";
  if (name.contains("elec_chime")) return "elec";
  if (name.contains("elec_cymbal")) return "elec";
  if (name.contains("elec_filt_snare")) return "elec";
  if (name.contains("elec_flip")) return "elec";
  if (name.contains("elec_fuzz_tom")) return "elec";
  if (name.contains("elec_hi_snare")) return "elec";
  if (name.contains("elec_hollow_kick")) return "elec";
  if (name.contains("elec_lo_snare")) return "elec";
  if (name.contains("elec_mid_snare")) return "elec";
  if (name.contains("elec_ping")) return "elec";
  if (name.contains("elec_plip")) return "elec";
  if (name.contains("elec_pop")) return "elec";
  if (name.contains("elec_snare")) return "elec";
  if (name.contains("elec_soft_kick")) return "elec";
  if (name.contains("elec_tick")) return "elec";
  if (name.contains("elec_triangle")) return "elec";
  if (name.contains("elec_twang")) return "elec";
  if (name.contains("elec_twip")) return "elec";
  if (name.contains("elec_wood")) return "elec";
  if (name.contains("glitch_bass_g")) return "glitch";
  if (name.contains("glitch_perc1")) return "glitch";
  if (name.contains("glitch_perc2")) return "glitch";
  if (name.contains("glitch_perc3")) return "glitch";
  if (name.contains("glitch_perc4")) return "glitch";
  if (name.contains("glitch_perc5")) return "glitch";
  if (name.contains("glitch_robot1")) return "glitch";
  if (name.contains("glitch_robot2")) return "glitch";
  if (name.contains("guit_e_fifths")) return "guit";
  if (name.contains("guit_e_slide")) return "guit";
  if (name.contains("guit_em9")) return "guit";
  if (name.contains("guit_harmonics")) return "guit";
  if (name.contains("hat_bdu")) return "hat";
  if (name.contains("hat_cab")) return "hat";
  if (name.contains("hat_cats")) return "hat";
  if (name.contains("hat_gem")) return "hat";
  if (name.contains("hat_gnu")) return "hat";
  if (name.contains("hat_gump")) return "hat";
  if (name.contains("hat_hier")) return "hat";
  if (name.contains("hat_mess")) return "hat";
  if (name.contains("hat_metal")) return "hat";
  if (name.contains("hat_noiz")) return "hat";
  if (name.contains("hat_psych")) return "hat";
  if (name.contains("hat_raw")) return "hat";
  if (name.contains("hat_sci")) return "hat";
  if (name.contains("hat_snap")) return "hat";
  if (name.contains("hat_star")) return "hat";
  if (name.contains("hat_tap")) return "hat";
  if (name.contains("hat_yosh")) return "hat";
  if (name.contains("hat_zan")) return "hat";
  if (name.contains("hat_zap")) return "hat";
  if (name.contains("hat_zild")) return "hat";
  if (name.contains("loop_3d_printer")) return "loop";
  if (name.contains("loop_amen")) return "loop";
  if (name.contains("loop_amen_full")) return "loop";
  if (name.contains("loop_breakbeat")) return "loop";
  if (name.contains("loop_compus")) return "loop";
  if (name.contains("loop_drone_g_97")) return "loop";
  if (name.contains("loop_electric")) return "loop";
  if (name.contains("loop_garzul")) return "loop";
  if (name.contains("loop_industrial")) return "loop";
  if (name.contains("loop_mehackit1")) return "loop";
  if (name.contains("loop_mehackit2")) return "loop";
  if (name.contains("loop_mika")) return "loop";
  if (name.contains("loop_perc1")) return "loop";
  if (name.contains("loop_perc2")) return "loop";
  if (name.contains("loop_safari")) return "loop";
  if (name.contains("loop_tabla")) return "loop";
  if (name.contains("loop_weirdo")) return "loop";
  if (name.contains("mehackit_phone1")) return "mehackit";
  if (name.contains("mehackit_phone2")) return "mehackit";
  if (name.contains("mehackit_phone3")) return "mehackit";
  if (name.contains("mehackit_phone4")) return "mehackit";
  if (name.contains("mehackit_robot1")) return "mehackit";
  if (name.contains("mehackit_robot2")) return "mehackit";
  if (name.contains("mehackit_robot3")) return "mehackit";
  if (name.contains("mehackit_robot4")) return "mehackit";
  if (name.contains("mehackit_robot5")) return "mehackit";
  if (name.contains("mehackit_robot6")) return "mehackit";
  if (name.contains("mehackit_robot7")) return "mehackit";
  if (name.contains("misc_burp")) return "misc";
  if (name.contains("misc_cineboom")) return "misc";
  if (name.contains("misc_crow")) return "misc";
  if (name.contains("perc_bell")) return "perc";
  if (name.contains("perc_bell2")) return "perc";
  if (name.contains("perc_door")) return "perc";
  if (name.contains("perc_impact1")) return "perc";
  if (name.contains("perc_impact2")) return "perc";
  if (name.contains("perc_snap")) return "perc";
  if (name.contains("perc_snap2")) return "perc";
  if (name.contains("perc_swash")) return "perc";
  if (name.contains("perc_swoosh")) return "perc";
  if (name.contains("perc_till")) return "perc";
  if (name.contains("sn_dolf")) return "sn";
  if (name.contains("sn_dub")) return "sn";
  if (name.contains("sn_generic")) return "sn";
  if (name.contains("sn_zome")) return "sn";
  if (name.contains("tabla_dhec")) return "tabla";
  if (name.contains("tabla_ghe1")) return "tabla";
  if (name.contains("tabla_ghe2")) return "tabla";
  if (name.contains("tabla_ghe3")) return "tabla";
  if (name.contains("tabla_ghe4")) return "tabla";
  if (name.contains("tabla_ghe5")) return "tabla";
  if (name.contains("tabla_ghe6")) return "tabla";
  if (name.contains("tabla_ghe7")) return "tabla";
  if (name.contains("tabla_ghe8")) return "tabla";
  if (name.contains("tabla_ke1")) return "tabla";
  if (name.contains("tabla_ke2")) return "tabla";
  if (name.contains("tabla_ke3")) return "tabla";
  if (name.contains("tabla_na")) return "tabla";
  if (name.contains("tabla_na_o")) return "tabla";
  if (name.contains("tabla_na_s")) return "tabla";
  if (name.contains("tabla_re")) return "tabla";
  if (name.contains("tabla_tas1")) return "tabla";
  if (name.contains("tabla_tas2")) return "tabla";
  if (name.contains("tabla_tas3")) return "tabla";
  if (name.contains("tabla_te1")) return "tabla";
  if (name.contains("tabla_te2")) return "tabla";
  if (name.contains("tabla_te_m")) return "tabla";
  if (name.contains("tabla_te_ne")) return "tabla";
  if (name.contains("tabla_tun1")) return "tabla";
  if (name.contains("tabla_tun2")) return "tabla";
  if (name.contains("tabla_tun3")) return "tabla";
  if (name.contains("vinyl_backspin")) return "vinyl";
  if (name.contains("vinyl_hiss")) return "vinyl";
  if (name.contains("vinyl_rewind")) return "vinyl";
  if (name.contains("vinyl_scratch")) return "vinyl";
  return "unknown";
}
void saveScreenshot() {
  String filename = "screenshot_" + screenshotCount + ".png";
  save(filename);
  screenshotCount++;
}
void resetCanvas() {
  xPos = 0;
  startTime = millis();
  background(255);
  image(axesGraphics, 0, 0);
}
void drawSynthShape(String synthName, float volume, float pitch, float xPos) {
  float y = map(pitch, 48, 72, height - 100, 100);
  switch (getSynthCategory(synthName)) {
    case "bass": drawTrapezoid(xPos, y * volume, true);
          break;
    case "beep": drawPolygon(xPos, y * volume, 8);
          break;
    case "bell": drawParallelogram(xPos, y * volume);
          break;
    case "fm": drawPolygon(xPos, y * volume, 7);
          break;
    case "instrument": arc(xPos, y * volume, 80, 80, HALF_PI, TWO_PI);
          break;
    case "lead": drawTrapezoid(xPos, y * volume, false);
          break;
    case "modulated": arc(xPos, y * volume, 80, 80, 0, PI);
          break;
    case "noise": arc(xPos, y * volume, 80, 80, 0, HALF_PI);
          break;
    case "pulse": drawPolygon(xPos, y * volume, 6);
          break;
    case "saw": drawPolygon(xPos, y * volume, 5);
          break;
    case "sine": ellipse(xPos, y * volume, 50, 50);
          break;
    case "square": rect(xPos - 25, y * volume - 25, 50, 50);
          break;
    case "tri": triangle(xPos, y * volume - 30, xPos - 25, y * volume + 30, xPos + 25, y * volume + 30);
          break;
    default: line(xPos - 25, y * volume - 25, xPos + 25, y * volume + 25);
  }
}
void drawSampleShape(String sampleName, float volume, float pitch, float xPos) {
  float y = map(pitch, -12, 12, height - 100, 100);
  switch (getSampleCategory(sampleName)) {
    case "ambi": triangle(xPos, y * volume - 30, xPos - 25, y * volume + 30, xPos + 25, y * volume + 30);
          break;
    case "arovane": rect(xPos - 25, y * volume - 25, 50, 50);
          break;
    case "bass": drawTrapezoid(xPos, y * volume, true);
          break;
    case "bd": drawPolygon(xPos, y * volume, 5);
          break;
    case "drum": drawPolygon(xPos, y * volume, 6);
          break;
    case "elec": drawTrapezoid(xPos, y * volume, false);
          break;
    case "glitch": arc(xPos, y * volume, 80, 80, 0, HALF_PI);
          break;
    case "guit": arc(xPos, y * volume, 80, 80, 0, PI);
          break;
    case "hat": drawPolygon(xPos, y * volume, 7);
          break;
    case "loop": ellipse(xPos, y * volume, 50, 50);
          break;
    case "mehackit": arc(xPos, y * volume, 80, 80, HALF_PI, TWO_PI);
          break;
    case "misc": drawParallelogram(xPos, y * volume);
          break;
    case "perc": drawRhombus(xPos, y * volume);
          break;
    case "sn": drawPolygon(xPos, y * volume, 8);
          break;
    case "tabla": drawPolygon(xPos, y * volume, 9);
          break;
    case "vinyl": drawPolygon(xPos, y * volume, 10);
          break;
    default: line(xPos - 25, y * volume - 25, xPos + 25, y * volume + 25);
  }
}
void drawPolygon(float x, float y, int sides) {
  float angle = TWO_PI / sides;
  beginShape();
  for (int i = 0; i < sides; i++) {
    float px = x + cos(angle * i) * 40;
    float py = y + sin(angle * i) * 40;
    vertex(px, py);
  }
  endShape(CLOSE);
}
void drawTrapezoid(float x, float y, boolean isTopShort) {
  if (isTopShort) {
    quad(x - 20, y - 30, x + 20, y - 30, x + 40, y + 30, x - 40, y + 30);
  } else {
    quad(x - 40, y - 30, x + 40, y - 30, x + 20, y + 30, x - 20, y + 30);
  }
}
void drawParallelogram(float x, float y) {
  quad(x - 40, y - 30, x - 10, y - 30, x + 40, y + 30, x + 10, y + 30);
}
void drawRhombus(float x, float y) {
  quad(x, y - 30, x + 30, y, x, y + 30, x - 30, y);
}
