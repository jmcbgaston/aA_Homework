function titleize(names, callback) {
    let titleized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
    callback(titleized);
};

titleize(["Mary", "Brian", "Leo"], (names) => {
    names.forEach(name => console.log(name));
});

// First write a constructor function for an elephant. Each elephant should have a name, height (in inches), and array of tricks in gerund form (e.g. "painting a picture" rather than "paint a picture").
function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
};

// Next write a few prototype functions that will be shared among all elephants:

// Elephant.prototype.trumpet: should print "(name) the elephant goes 'phrRRRRRRRRRRR!!!!!!!'"
Elephant.prototype.trumpet = function() {
    console.log(`${this.name} the elephant goes 'phrRRRRRR!!!!!!!'`);
};

// Elephant.prototype.grow: should increase the elephant's height by 12 inches
Elephant.prototype.grow = function() {
    // console.log(this.height + 12);
    this.height = this.height + 12;
};

// Elephant.prototype.addTrick(trick): add a new trick to their existing repertoire
Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(trick);
};

// Elephant.prototype.play: print out a random trick, e.g. "(name) is (trick)!"
Elephant.prototype.play = function() {
    let randomtrick = Math.floor(Math.random() * this.tricks.length);
    console.log(`${this.name} is ${this.randomtrick}`);
};

// let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
// let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
// let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
// let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

// let herd = [ellie, charlie, kate, micah];

// let's create a function called paradeHelper that we'll use to have an elephant parade.
Elephant.paradeHelper = function (elephant) {
    console.log(`${elephant.name} is trotting by!`);
};



function dinerBreakfast() {
    // order should be initialized to a starting order (e.g. scrambled eggs and bacon) before the anonymous function can do its work.
    let order = "I'd like cheesy scrambled eggs please.";
    console.log(order);
  
    // return an anonymous closure, which we will be able to use to keep adding breakfast foods to our initial order.
    return function (food) {
      order = `${order.slice(0, order.length - 8)} and ${food} please.`;
      console.log(order);
    //   order.length - 8 because outputs to "I'd like cheesy scrambled eggs"
    };
};
  

// .slice

// const str = 'The quick brown fox jumps over the lazy dog.';

// console.log(str.slice(31));
// // expected output: "the lazy dog."

// console.log(str.slice(4, 19));
// // expected output: "quick brown fox"

// console.log(str.slice(-4));
// // expected output: "dog."

// console.log(str.slice(-9, -5));
// // expected output: "lazy"
