
function titleize(arr, callback){
    let newArr = arr.map(name => {
        return `Mx. ${name} Jingleheimer Schmidt`;
    });
    newArr.forEach(callback);
}

function printCallback(str){
    console.log(str);
}

function Elephant(name, height, tricks){
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function(){
    console.log(`${this.name} the elphant goes 'phrRRRRRRR!!!!'`);
}

Elephant.prototype.grow = function(){
    this.height += 12;
}

Elephant.prototype.addTrick = function(trick){
    this.tricks.push(trick);
}

Elephant.prototype.play = function(){
    let index = Math.floor(Math.random() * this.tricks.length);
    return this.tricks[index];
}

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function(elephant){
    console.log(`${elephant.name} is trotting by!`);
}

function dinerBreakfast(){
    let order = ['scrambled eggs and bacon'];
    return function(addition){
        order.push(addition);
        let orderString = order.join(' and ');
        console.log(`I'd like ${orderString} please.`);
    }
}