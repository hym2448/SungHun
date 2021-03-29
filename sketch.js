let teapot;
let rot;
let slider;
let song;
function preload() {
 teapot = loadModel('assets/teapot.obj');
  song = loadSound('assets/music.mp3');
}
function setup() {
  song.play();
 createCanvas(windowWidth, windowHeight, WEBGL);
 colorMode(HSB, 22, 100, 100);
 slider = createSlider(0, 360, 120);
 slider.position(10, 10);
 slider.style('width', '80px');
 rot=0;
}
function draw() {
 pointLight(0, 0, 255, -200, 0, 0);
  pointLight(255, 0, 0, 200, 0);
 background(0);
 specularMaterial(111);
  sphere(2000)
 beginShape();

 // setting lights
 pointLight(33, 15, 100, 0, 0, 500);
 // transform the teapot
 translate(0, 200, -300);
 rotateX(HALF_PI);
 rotateZ(rot);
 scale(33);
 noStroke();
 // set teapot material colors
 fill(slider.value(), 100, 100);
 // display teapots
 model(teapot);
 // rotate teapots
 rot += 4;
  
}
