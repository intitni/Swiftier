# Swiftier

`import Swiftier;` to use the following.

## Let and Var

You may now use let and var to declare the type of a variable, when the type can be inffered by compiler.

They are equivalent to `__auto_type const` and `__auto_type`. If ObjC++ is used, they are equivalent to `auto const` and `auto`.

Usage:

```objc
let array = @[@1,@2,@3];
var number = 1;
```

## Guard

You may use `guard` to guard a specific condition now. `guard (condition)` is equivalent to `if(condition){}`, a more expressive way to do something when a condition is not met, if you call `guard (condition)` alone, it will do nothing, you should use the "swift way" to guard things out.

```objc
guard (condition) else { /* do something else */ }
```

Which is equivalent to swift's

```swift
guard condition else { /* do something else */ }
```

Which is good for the cases when you need to return nil when some conditions are not met.

```objc
let a = somethingElse;
guard (a != nil) else { return nil; }
[a continueToSomeOtherThings];
```

## Safely Unwrap

Checks a potential nill/null object, returns the computed value or, if the object is nill, returns the default value. Good when the object is extremely long to express (often happens in objc) that you don't have to type things twice.

```objc
- (void)updateTextToMatchAButton {
    self.label.title = safelyUnwrap(self.someView.button.title, defaultTitle);
    
    // instead of
    self.label.title = self.someView.button.title ? self.someView.button.title : defaultTitle;
}
```

## Inline foreach

When collection has type information, we may use 

```objc
foreach(element, collection) { ... }
```

## Block based Foreach, Map, FlatMap, Filter

This four methods are available for `NSArray` and `NSMutableArray`. They each takes in a block, and runs the block to each element inside.

Usage:

```objc
let array = @[@1, @2, @3];
let mappedArray = [array swt_map:^AnotherType(NSNumber *number) {
    return [AnotherType initWith:number];
}];
// result -> @[AnotherType(@1), AnotherType(@2), AnotherType(@3)];

let filteredArray = [array swt_filter:^BOOL(NSNumber *number) {
    return number.intValue > 2;
}];
// result -> @[@3];

[array swt_forEach:^BOOL(NSNumber *number) {
    NSLog(number);
}];
// prints: 1 2 3

let array = @[@1, null, @3];
let mappedArray = [array swt_flatMap:^AnotherType(NSNumber *number) {
    return [AnotherType initWith:number];
}];
// result -> @[AnotherType(@1), AnotherType(@3)];
```

## Safe KeyPath

`keyPath(object, path)` to get compiler checked key path instead of stringly typed one.

## Infomative Copy

Some collection types now have type information in `copy` or `mutableCopy`.

## Boxing Structs

Some struct types like `CGRect`, `CGPoint`... can be boxed into `NSValue` with

```objc
let rect = CGRectMake(1,2,3,4);
let value = @(rect);
```

