// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//       var x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }


//   function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//       var x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }

//   mysteryScoping4()

//   function mysteryScoping4() {
//     let x = 'out of block';
//     if (true) {
//       let x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }

function madLib(verb, adj, noun){
    return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`;
}

function isSubstring(searchString, subString){
    return searchString.includes(subString);
}

const fizzBuzz = (array) => {
    let newArr = [];
    for(let i=0; i<array.length; i++){
        if ((array[i]%3 === 0 && array[i]%5 !== 0) || (array[i]%3 !== 0 && array[i]%5 === 0)){
            newArr.push(array[i]);
        }
    }
    return newArr;
}

function isPrime(num){
    if(num<2){return true;}
    let divisor = 2 
    while(divisor < num){
        if(num%divisor == 0){
            return false;
        }
        divisor++;
    }
    return true;
}

function sumOfNPrimes(n){
    let count = 0;
    let num = 2;
    let sum = 0;
    while (count < n){
        if(isPrime(num)){
            sum += num;
            count += 1;
        }
        num+=1;
    }
    return sum;
}