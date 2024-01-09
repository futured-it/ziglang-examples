const std = @import("std");
const print = std.debug.print;

// We can create a function that takes an x
// argument with u32 type and returns a u32
// value
fn addFive(x: u32) u32 {
    return x + 5;
}

pub fn main() !void {
    // We can call the function with an argument inside our code
    print("addFive(5) = {}\n", addFive(5));
}

// Main is function that is called when the program starts
// It must have the signature `pub fn main() !void`

// The `!` in the return type means that the function
// can never return.

// The `pub` keyword means that the function can be called
// from outside of the module. If we didn't have this keyword
// the function would only be callable from inside the module

// The `void` return type means that the function returns nothing
// If we wanted to return a value we would use `!type`
