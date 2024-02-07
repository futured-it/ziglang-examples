const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    // Constants initialization
    const myConst: bool = false;
    print("My const value is {}\n", .{myConst});

    // Variables initialization
    var myVar: i32 = 82;
    print("My var value is {}\n", .{myVar});
    // Now let's change it!
    myVar = myVar * 2;
    print("My var value now is {}\n", .{myVar});
}
