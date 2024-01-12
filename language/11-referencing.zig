const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    // Just like in C, pointers (referencing / dereferencing)
    // in Zig works with * and & operators

    // * is used to dereference a pointer (but in syntax of var.*)
    // & is used to get the pointer (address) of a variable
    var x: i32 = 42;
    var y: *const i32 = &x;
    print("x = {} and y = {}\n", .{ x, y });
    print("*y = {} (-> to the place in memory where x stored)\n", .{y.*});

    // In arrays pointers are used to get the address of the first element
    // and then you can use pointer arithmetic to get the address of the next element
    var arr = [_]i32{ 1, 2, 3 };
    var ptr: [*]const i32 = &arr;
    print("arr = {any} | ptr = {*} | ptr for null el. = {}\n", .{ arr, ptr, &ptr[0] });
    print("*ptr (for null el.) = {}\n", .{ptr[0]});
}
