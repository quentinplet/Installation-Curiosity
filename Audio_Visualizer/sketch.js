var colorPalette = ["#00ccf8", "#3caea3", "#f6d55c", "#ed553b"];
var particles = [];
let mic;


class MIDIAccess {
    constructor(args = {}) {
      this.onDeviceInput = args.onDeviceInput || console.log;
    }
    
    start(){
      return new Promise((resolve, reject) => {
        this._requestAccess().then(access => {
          this.initialize(access);
          resolve();
        }).catch(() => reject('Something went wrong'));
      });
    }
    
    initialize(access) {
      const devices = access.inputs.values();
      for (let device of devices) this.initializeDevice(device);
    }
    initializeDevice(device) {
      device.onmidimessage = this.onMessage.bind(this);
    }
    onMessage(message) {
      let[statut,input,value] = message.data;
      this.onDeviceInput({statut,input,value});
    }
    
    _requestAccess(){
      return new Promise((resolve, reject) => {
        if (navigator.requestMIDIAccess)
          navigator.requestMIDIAccess()
            .then(resolve)
            .catch(reject);
        else reject();
      });
    }
  }

  class Particle {
    constructor() {
        this.pos = p5.Vector.random2D().mult(250);
        this.vel = createVector(0, 0);
        //accélération des particules
        this.acc = this.pos.copy().mult(random(0.0001, 0.00001));

        //taille des particules
        this.w = random(2, 15);

        //couleur des particules
        this.color = [random(200, 255), random(200, 255), random(200, 255),];
    }
    update(cond) {
        this.vel.add(this.acc);
        this.pos.add(this.vel);
        if (cond) {
            this.pos.add(this.vel);
            this.pos.add(this.vel);
            this.pos.add(this.vel);
        }
    }
    edges() {
        if(this.pos.x < - width / 0.5 || this.pos.x > width /0.5 || 
        this.pos.y < - height / 0.5 || this.pos.y > height / 0.5) {
            return true;
        } else {
            return false;
        }
    }
    show() {
        noStroke();
        fill(this.color);
        ellipse(this.pos.x, this.pos.y, this.w)
    }
}
  
  class Instrument {
    constructor(){
      this.synth = new p5.Oscillator();
      this.synth.setType('triangle');
      this.synth.freq(440);
      this.synth.amp(0);
      
      this.filter = new p5.BandPass();
      this.filter.freq(0);
  
      this.reverb = new p5.Reverb();
    }
    
    handleVolume(value) {
      //changer ici le volume des gants 
      let volume = map(value, 0, 100, 0, 1);
      
      //Choisit ici la vitesse de ramp pour le volume 0.1
      this.synth.amp(volume, 0.2);
      
    }
    
    initeFreq(value){
      this.synth.freq(value);
      
    }
    
    filterFreq(value){
      let filterFreqValue = map(value, 10, 127, 0, 5000);
      this.filter.freq(filterFreqValue, 0.1);
      let filterResValue = map (value, 0, 127, 0, 5);
      this.filter.res(filterResValue);
    }
    
    dryWet(value) {
      let dryWetValue = map(value, 0, 127, 0, 1);
      this.reverb.drywet(dryWetValue, 0.5);
    }
    
    handleFreq(value) {
      let pitch = map(value, 0, 127, 100, 700);
      this.synth.freq(pitch, 0.1);
    }
    
    toggleSound() {
      this.synth.start();
    }
  }
  
  //Créer ici tous les instruments (correspondant aux doigts de la main);
  const inst1= new Instrument();
  const inst2=new Instrument();
  const inst3=new Instrument();
  const inst4=new Instrument();
  const inst5= new Instrument();
  
  const midi = new MIDIAccess({ onDeviceInput});
  midi.start().then(() => {
    console.log('STARTED!');
  }).catch(console.error);
  
  
  function onDeviceInput({statut,input, value}) {
     switch (statut) {
       case 144 :
  
         break;
         
         case 128 :
  
         break;
         
         //Paramètrer ici toutes les valeurs de contrôles pour nottament l'amplitude des oscillateurs
         case 176 :
            
         switch (input) {
           case 1 :
            
             inst1.handleVolume(value);
             
            break;
            
          case 2 :
            
             inst2.handleVolume(value);
             
            break;
          
            case 3 :
            
             inst3.handleVolume(value);
             
            break;
            
            case 4 :
            
             inst4.handleVolume(value);
             
            break;
            
            case 5 :
            
             inst5.handleVolume(value);
             
            break;
        
            case 8 :
             //inst1.handleFreq(value);
             //inst0.dryWet(value);
             inst1.filterFreq(value);
             inst2.filterFreq(value);
             inst3.filterFreq(value);
             inst4.filterFreq(value);
             inst5.filterFreq(value);
             
         }
  
  
         break;
         
     }
  //console.log('OnDeviceInput',statut, input, value);
  }
  
  // Inscrit ici la suite de notes que l'on veut jouer
  let midiNotes = [62, 64, 60, 48, 55];
  let noteIndex = 0;
  let midiVal = 60; //freq
  let freq1,freq2, freq3, freq4, freq5;
  let val;
  
  
  
  function setup() {
    createCanvas(100, 100);
    val = midiToFreq(50);
    //console.log(val);
    //converti toutes les valeurs MIDI en fréquences
    freq1 = midiToFreq(midiNotes[0]);
    freq2 = midiToFreq(midiNotes[1]);
    freq3 = midiToFreq(midiNotes[2]);
    freq4 = midiToFreq(midiNotes[3]);
    freq5 = midiToFreq(midiNotes[4]);
    
    //Lance tous les instances de l'objet Instrument et allume les oscillateurs + initialise les fréquences  
    inst1.toggleSound();
    inst1.initeFreq(freq1);
    inst1.synth.disconnect();
    inst1.synth.connect(inst1.filter);
    inst1.reverb.process(inst1.synth, 3, 0.2);
    
    inst2.toggleSound();
    inst2.initeFreq(freq2);
    inst2.synth.disconnect();
    inst2.synth.connect(inst2.filter);
    inst2.reverb.process(inst2.synth, 2, 0.2);
    
    inst3.toggleSound();
    inst3.initeFreq(freq3);
    inst3.synth.disconnect();
    inst3.synth.connect(inst3.filter);
    inst3.reverb.process(inst3.synth, 2, 0.2);
    
    inst4.toggleSound();
    inst4.initeFreq(freq4);
    inst4.synth.disconnect();
    inst4.synth.connect(inst4.filter);
    inst4.reverb.process(inst4.synth, 2, 0.2);

    inst5.toggleSound();
    inst5.initeFreq(freq5);
    inst5.synth.disconnect();
    inst5.synth.connect(inst5.filter);
    inst5.reverb.process(inst5.synth, 3, 0.2);

    fft = new p5.FFT();
    mic = new p5.AudioIn();
    console.log(mic);
    mic.start();
    mic.connect();
    fft.setInput(mic);
    
    fft.setInput(inst1.reverb);
    //fft.setInput(inst0.synth);

    fft.setInput(inst2.reverb);
    //fft.setInput(inst1.synth);

    //fft.setInput(inst2.reverb);
    fft.setInput(inst3.synth);

    fft.setInput(inst4.reverb);
    //fft.setInput(inst3.synth);

    fft.setInput(inst5.reverb);
    fft.setInput(inst5.synth);

    createCanvas(windowWidth, windowHeight);
  
  }

function draw() {
  background('black');
 
  fft.analyze();
  var spectrum = fft.analyze();
  var bass = fft.getEnergy("bass");
  var mid = fft.getEnergy("mid");
  var treble = fft.getEnergy("treble");
  var custom = fft.getEnergy(1000, 20000);
  var custom2 = fft.getEnergy(50, 1000);
  
    
  var pieces = 30;
  //taille totale des cercles
  var radius = 500;
  
  //map et scale
  var mapBass = map (bass, 0, 255, -100, 800);
  var mapBass2 = map (bass, 0, 255, 1, 10);
  var mapBass3 = map (bass, 0, 255, 0, 100);
  var scaleBass = map(bass, 0, 255, 0.5, 2);
  var scaleBass2 = map(bass, 0, 255, 1, 1.2);
  
  var mapMid = map(mid, 0, 255, -radius, radius);
  var scaleMid = map(mid, 0, 255, -1, 1);
  var scaleMid2 = map(mid, 0, 255, 0, 250);
  var mapTreble = map(treble, 0, 255, -radius, radius)
  var scaleTreble = map(treble, 0, 255, 1, 3);
  
  var scaleCustome = map(custom, 0, 255, 1, 80);
  var scaleCustom2 = map(custom2,0, 255, 20, 255);

  //mettre au millieu les cercles
  translate (width/2, height/2);
  
  fill(100+bass,150-mid,150-treble);
  ellipse(0, 0, 50);
  

  noFill();
  
  //cercle central
  stroke(colorPalette[3]);
  strokeWeight(10+mapBass3/5);
  //taille de l'ensemble
  scale(scaleBass2/2);
  //rotation micro off
  rotate(frameCount/500);
  //premier cerlce
  ellipse(0, 0, (radius-50));
  stroke(colorPalette[1]);
  

  //deuxième cercle
  ellipse(0, 0, radius-150);
  for(i=0; i< pieces; i++) {
    //Ellpises autour du cercle central
    //strokeWeight(2+mapBass2); //largeur des ellipses
    stroke(colorPalette[1]); // couleur des ellipses
    point(radius+30, radius+30);
    strokeWeight(mapTreble/3);
    rotate(mapBass/100);
    //stroke(colorPalette[3]);
    stroke(bass, random (mid, treble), random(treble, bass));
    ellipse(50, radius-50, 50, radius);
    stroke(colorPalette[0]);
    strokeWeight(mapMid);
    //ellipse central bleu autour du cercle central
    ellipse(25, 25, mapMid*1.5, mapTreble*2);
    strokeWeight(scaleBass);
    stroke(colorPalette[1]);
    //ligne bleu
    line(80, 160, mapTreble, 600);
    strokeWeight(scaleBass*10);
    push();
    point(400, 600);
    stroke(colorPalette[2]);
    strokeWeight(200);
    pop();
  }
  //dessine une ligne pour chaque pièce
  for( i = 0; i < pieces; i++) {
    
    //Pivote le point d'origine
    rotate( TWO_PI / pieces );
    
    // Dessine une ligne rouge);
    stroke (255, 0, 0);
    //strokeWeight(scaleCustome/2);
    strokeWeight(treble);
    line( 10, radius/2, 0, radius+150);
    
    //dessine des lignes dans une direction opposée
    stroke(0);
    line( -10, radius/2, 0, radius+150);
  }

  var p = new Particle();
  particles.push(p);

  for (var i = particles.length-1 ; i>= 0; i--) {
      if (!particles[i].edges()) {
          particles[i].update(mid<30);
          particles[i].show();
      } else {
          particles.splice(i, 1);
      }
  }
  
}

function windowResized(){
  resizeCanvas(windowWidth, windowHeight);
}