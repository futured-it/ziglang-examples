const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    // For loops can be used to iterate over arrays
    var arr = [_]i32{ 23, 95, 83, 32, 99, 11, 27 };
    for (&arr) |elem| {
        print("{d}\n", .{elem});
    }

    // For loops can be used to iterate over ranges
    for (0..10) |i| {
        print("i = {d}\n", .{i});
    }
}
