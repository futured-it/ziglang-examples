const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    const a = [3]i32{ 1, 2, 3 };
    // [3]i32 is a type for an array of 3 i32's

    const b = [_]i32{ 4, 5, 6 };
    // we can use `_` to let the compiler infer the length

    const c: [3]i32 = .{ 7, 8, 9 };
    // we can also use `... = .{}` to initialize an array

    var d: [3]i32 = undefined;
    // ^ let's create blank memory for the array
    d[0] = 10;
    d[1] = 11;
    d[2] = 12;
    // ^ and then fill it in with values

    print("Array `c` length is {}\n", .{c.len});
    // ^ we can use the `.len` field to get the length of an array
    print("a**2 = {any}\n", .{a ** 2});
    // ^ we can use the `**` operator to repeat an array n times
    print("a++b = {any}\n", .{a ++ b});
    // ^ we can use the `++` operator to concatenate arrays
}
