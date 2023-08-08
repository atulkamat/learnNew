#js coding rules
link - https://javascript.info/
1. "const" does not allow changes."let" allows changes
2. caps for "const" variable with know values, camelcase for constants which fill on run time
3. do not assign variable with undefined
4. alert(has ok button), prompt(has input box) and confirm(has ok and cancel) as popups
5. "%" gives remainder,"**" gives exponential, "4"+1=41, 2+2+"1"=41, "6"/"2"=3, +"123"=123(same as Number("123"))
6. "," will ignore .according to BDMAS precedence
7. ||(OR either true => true) first true and stops, &&(AND both are true => true) first false and stops, precedence && higher the ||
8. break/continue not work with ?, for(;;){} ";" are necessary. label to break outer loops
    ```javascript
    "outer: for(;;;){break outer;}"
    ```
9. function is a value and can be assigned like
    ```javascript
    let sayHi = function() { // (1) create
      alert( "Hello" );
    };

    let func = sayHi;
    ```
10. callback arguments can be function names or functions themselves
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
11. ninja way of coding - shorter is better,use x for loops
12. polyfills are code for modern function running in older versions=>https://github.com/zloirock/core-js, transpliers use babel to convert code
13. Objects can be defined like this as well. adding [] will take the value from the variable and not the string itself
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
14. Methods for objects - "key" in Object => return true if present and for(let key in object){ }=> loops through all the keys
15. Object.assign(dest, source1,source2) for copy of object without mutation,structuredClone(object) for deep clone (does not clone function inside)
16. "?." optional chaining "user?.address?.street?.name" used instead of "(user.address && user.address.street && user.address.street.name)". cannot be used to write into variable
17. String or symbol as key for object. Symbol("id") creates a unique value. if the return value is missed the data is not retrievable. used for hiding the property values. copy of object will show symbols as well.Create symbol in registry Symbol.for("id")
18. 0.1 + 0.2 == 0.3 is false cause the values save in binary and have precision. 4.1 =  Math.floor=>4 Math.ceil=>5
19. backtick allows multiline and embedded javascript `1 + 2 = ${sum(1,2)}`
20. "Hello from the other side".at(-1) => "e" , .at(-2)=> "d"  .at(1) => "H"
21. Array shift(remove) and unshift(add) value from the start of array.pop and push work on the last item in array. "array.at" will work with negative values
    ```javascript
    let fruits = ["Apple", "Orange", "Plum"];
    // same as fruits[fruits.length-1]
    alert( fruits.at(-1) ); // Plum
    ```
22. user for of to loop array for(let item of aArray){alert (item);}. if we shorten length manually the array is truncated. best way to clear array is make length=0
23. arrays are like object but dont use them like that. user.find(function(item,index,array){}) or user.find(item=> item.id==1)
24. array.sort() sorts as strings by default. the function inside need to return if the number is positive(bigger) or negative(smaller). string comparison use str.localCompare(). forEach,for or for..of => iterate. map=> iterate and return data. reduce=> return single value array.reduce((a,b)=>a+b,initalValue)
25. Math.random() give positive number in decimal below 1. "Math.random() - 0.5" you will get random +- values
26. new Map([["hello",1],["object",{"hello":1}]]) = do not use map[key] = 2 it loses all characteristics. use Object.entries(obj) for the input to maps. use Object.fromEntries([["hello",1],["object,{"hello":1}]]) to get object format. sequence maintained ,key can be object
27. destructure let {prop : varName = default, ...rest} = object and let [item1 = default, item2, ...rest] = array . When used inside a function({prop:value=default,prop2:val1}={}) this way when calling the function we can pass without parameters
28. 
