// Mystery Scoping with var, let, const

  function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
      var x = 'in block';
      console.log(x);
    }
    console.log(x);
  }

  function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
      const x = 'in block';
      console.log(x);
    }
    console.log(x);
  }

  function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
      var x = 'in block';
      console.log(x);
    }
    console.log(x);
  }

  function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';
      console.log(x);
    }
    console.log(x);
  }

  function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';
      console.log(x);
    }
    let x = 'out of block again';
    console.log(x);
  }

  // mysteryScoping1() // in block, in block
  // mysteryScoping2() // in block, out of block
  // mysteryScoping3() // error, error
  // mysteryScoping4() // in block, out of block
  // mysteryScoping5() // error


// madLib

  function madLib(verb, adjective, noun) {
    return `we shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`
  }

  console.log(madLib('make', 'best', 'guac'));


// isSubstring

  function isSubstring(searchString, subString) {
    return searchString.includes(subString)? true : false
  }

  console.log(isSubstring("time to program", "time"))
  console.log(isSubstring("Jump for joy", "joys"))


// fizzBuzz

  function fizzBuzz(array) {
    var result = []

    for (i = 0; i < array.length; i++) {
      if ((array[i] % 3 == 0) && (array[i] % 5 == 0)) {
        continue;
      } else if ((array[i] % 3 == 0) || (array[i] % 5 == 0)) {
        result.push(array[i])
      }
    }

    return result
  }

  console.log(fizzBuzz([1,3,5,15]))


// isPrime

  function isPrime(number) {

    for (i = 2; i < number; i++) {
      if (number % i === 0) {
        return false
      }
    }
    return true
  }

  console.log(isPrime(7))
  console.log(isPrime(8))


// sumOfNPrimes

  function sumOfNPrimes(n) {
    var result = 0;
    var count = 0;
    var i = 1

    while (count <= n) {
      if (isPrime(i)) {
        result += i
        count += 1
      }
      i += 1
    }

    return result - 1
  }

  console.log(sumOfNPrimes(0))
  console.log(sumOfNPrimes(1))
  console.log(sumOfNPrimes(4))


// Callback: titleize

  function titleize(names, cb) {
    const titleize_names = names.map(name => `Mx. ${name} Jingleheimer Schmidt`)
    titleize_names.forEach(el => cb(el))
  }

  function printCallback(el) {
    console.log(el)
  }

  titleize(["Mary", "Brian", "Leo"], printCallback);


// Constructors, Prototypes, and this

  function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
    this.trumpet = function() {
      console.log(`${this.name} phrRRRRRRRRRRR!!!!!!!`)
    };
    this.grow = function() {
      this.height += 12
    };
    this.addTrick = function(trick) {
      this.tricks.push(trick)
    };
    this.play = function() {
      var rand_trick = this.tricks[Math.floor(Math.random() * this.tricks.length)];
      console.log(`${this.name} ${rand_trick} `)
    };
  }

  var theGreatElephant = new Elephant("The GREAT", 1200, ["coding away"]);

    theGreatElephant.trumpet();
    theGreatElephant.grow();
      console.log(theGreatElephant.height)
    theGreatElephant.addTrick("snoring loudly")
    theGreatElephant.play();

// Function Invocation

  let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
  let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
  let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
  let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

  let herd = [ellie, charlie, kate, micah];

  Elephant.paradeHelper = function(elephant) {
    console.log(`${elephant.name} is trotting by!`)
  };

  Elephant.paradeHelper(micah)


// Closures
