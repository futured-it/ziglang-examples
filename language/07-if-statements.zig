const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    const a = 5;
    const b = 5;
    // ^ change these values!

    if (a < b) {
        print("a < b\n", .{});
    } else if (a > b) {
        print("a > b\n", .{});
    } else {
        print("a == b\n", .{});
    }
}
