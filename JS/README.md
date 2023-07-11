#js coding rules
link - https://javascript.info/
1) variable const does not allow changes.let allows changes
2) caps for const with know values, camelcase for constants which fill on run time
3) do not assign variable with undefined
4) alert(has ok button), prompt(has input box) and confirm(has ok and cancel) as popups
5) % gives remainder,** gives exponential, 2+2+"1"=41, "6"/"2"=3, +"123"=123(same as Number("123"))
6) , will ignore according to BDMAS precedence
7) ||(OR either true => true) first true and stops, &&(AND both are true => true) first false and stops, precedence && higher the ||
8) break/continue not work with ?, for loop 2 ";" are necessary. label to break loops "outer: for(;;;){break outer;}"
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