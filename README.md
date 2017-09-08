# Swiftier

## Let and Var

You may now use let and var to declare the type of a variable, when the type can be inffered by compiler.

They are equivalent to `__auto_type const` and `__auto_type`. If ObjC++ is used, they are equivalent to `auto const` and `auto`.

Usage:

```objc
let array = @[@1,@2,@3];
var number = 1;
```

## ForEach, Map, FlatMap, Filter

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
let mappedArray = [array swt_map:^AnotherType(NSNumber *number) {
    return [AnotherType initWith:number];
}];
// result -> @[AnotherType(@1), AnotherType(@3)];
```

## Safe Copy

Some collection types now have type information in copy or mutableCopy.

## Boxing Structs

Some struct types like `CGRect`, `CGPoint`... can be boxed into `NSValue` with

```objc
let rect = CGRectMake(1,2,3,4);
let value = @(rect);
```

