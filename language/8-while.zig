const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var i: u32 = 0;
    // ^ declare a variable with 0 as initial value

    while (i < 10) {
        print("i = {}\n", .{i});
        // ^ print the variable value
        i += 1;
        // ^ increment the variable value
    }

    // We can also use the while loop with continue expression
    // which is evaluated at the end of each iteration

    // Code bellow equivalent to the previous loop

    var j: u32 = 0;
    // ^ declare a variable with 0 as initial value

    while (j < 10) : (j += 1) { // <- `j += 1` is the continue expression
        print("j = {}\n", .{j});
        // ^ print the variable value
    }
}
