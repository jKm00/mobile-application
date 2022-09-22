# Dart syntax

## ??, ??=, ?., ...?, !

### ??

Returns whats on the left, unless its null, then it returns the right expression:

```
print(0 ?? 1); // returns 0
print(0 ?? null); // returns 0
print(null ?? 1); // returns 1
```

### ??=

Assigns a value to a varialbe only if that varialbe is currently null

```
int value; // null
value ??= 5; // 5
value ??= 6; // still 5
```

### ?.

Prevents program from crashing when accessing a property of method of an object that might be null

```
String value; // null
print(value.toLowerCase()); // will crash
print(value?.toLowerCase().toUpperCase()); // will crash
print(value?.toLowerCase()?.toUpperCase()); // prints null
```

### ...?

Prevents adding null elements while using spread operator

```
List<int> list = [1, 2, 3];
List<String> list2; // is null

print(['chocolate', ...?list2]); // prints [chocolate]
print([0, ...?list2, ...list]); // prints [0, 1, 2, 3]
print(['cake!', ...list2]); // will crash
```

### ?

**Ternary operator**. Shorthand for if statements

```
print(2 == 2 ? "a truth" : "a lie"); // a truth
print(1 == 2 ? "a truth" : "a lie"); // a lie
```

### !

Used when a value originally can be null, but you have made sure its not, so you tell the compiler it will never be null at this point, interperet it as always assigned.

```
void myFunction(int value) { // value cannot be null
  // some fancy function body...
}

int value; // init value to null

if (value != null) {
  myFunction(value!) // you have checked that the value is not null
}
```

_Normally you don't need the "!" in the example above, because the compiler sees that you have done the check. But in some cases, the compiler does not see that the check has been made, and will show an error because it things the value can be null. That's when you can use the "!" to override it and tell the compiler "look, I know it want be null"_
