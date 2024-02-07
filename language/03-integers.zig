const std = @import("std");
const print = std.debug.print;

var a: u8 = 92;
// ^ unsigned 8-bit integer
// it can contain 2^8 (256) numbers, between 0 and 255
var b: u64 = 2738;
// ^ unsigned 64-bit integer
// can contain 2^64 (a lot) numbers, between 0 and 2^64-1
// we also have u16, u32, u128 types

var c: i8 = 34;
// ^ signed 8-bit integer
// can contain 256 numbers, between -128 and 127
// we also have i16, i32, i64, and i128 types

const d: comptime_int = 2789;
// ^ comptime_int type
// automatically adjusts memory allocation (8, 16, 32 or whatever bits we need)
// on compilation time and works only on constants
const e = 2789;
// ^ this const also get comptime_int type
// even without writing it's type
// so "d" and "e" vars declaration gives same result

const f = 10_000_000;
// ^ you can use underscore to make number more readable

pub fn main() !void {
    print("Unsigned integers: a = {}, b = {}\n", .{ a, b });
    print("Signed integers: c = {}\n", .{c});
    print("Comptime int consts: d = {}, e = {}, f = {}\n", .{ d, e, f });
}
