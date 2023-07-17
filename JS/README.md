#js coding rules
link - https://javascript.info/
1) "const" does not allow changes."let" allows changes
2) caps for "const" variable with know values, camelcase for constants which fill on run time
3) do not assign variable with undefined
4) alert(has ok button), prompt(has input box) and confirm(has ok and cancel) as popups
5) "%" gives remainder,"**" gives exponential, 2+2+"1"=41, "6"/"2"=3, +"123"=123(same as Number("123"))
6) "," will ignore .according to BDMAS precedence
7) ||(OR either true => true) first true and stops, &&(AND both are true => true) first false and stops, precedence && higher the ||
8) break/continue not work with ?, for(;;){} ";" are necessary. label to break outer loops
```javascript
 "outer: for(;;;){break outer;}"
 ```
9) function is a value and can be assigned like
```javascript
let sayHi = function() { // (1) create
  alert( "Hello" );
};

let func = sayHi;
```
10) callback arguments can be function names or functions themselves
```javascript
function ask(question, yes, no) {
  if (confirm(question)) yes()
  else no();
}

function showOk() {
  alert( "You agreed." );
}

function showCancel() {
  alert( "You canceled the execution." );
}

// usage: functions showOk, showCancel are passed as arguments to ask
ask("Do you agree?", showOk, showCancel);

//or call like this
ask(
  "Do you agree?",
  function() { alert("You agreed."); },
  function() { alert("You canceled the execution."); }
);
```
11) ninja way of coding - shorter is better,use x for loops
12) polyfills are code for modern function running in older versions=>https://github.com/zloirock/core-js, transpliers use babel to convert code
13) Objects can be defined like this as well
```javascript
let name="atul",age=9,obj={name,age};
//output is obj={name:"atul",age:9}

//also we can define like this
let name = prompt("which furit","apple");
let obj= {
  [name]: 9
}
//output is obj={apple:9}
```
14) Methods for objects - "key" in Object => return true if present and for(let key in object){ }=> loops through all the keys
15) Object.assign(dest, source1,source2) for copy of object without mutation,structuredClone(object) for deep clone (does not clone function inside)
16) 
