const std = @import("std");
const print = std.debug.print;

const a: f32 = 1.5;
const b: f32 = 1.62;
// ^ defining two 32-bit accuracy floats

const c = 1.5;
const d = 1.62;
// ^ defining two comptime floats
// they have needed precision to represent the values w/o loss

pub fn main() !void {
    print("Floats (32-bit accuracy): {d} + {d} = {d}\n", .{ a, b, a + b });
    print("Floats (comptime accuracy): {d} + {d} = {d}\n", .{ c, d, c + d });
}
