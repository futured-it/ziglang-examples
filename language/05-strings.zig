const std = @import("std");
const print = std.debug.print;

const str = "Hello, world!";
// ^ type is [13:0]u8 - 13 bytes long array (because it's 13 symbols)
// each symbol is 1 byte long (u8), because it's ASCII string

pub fn main() !void {
    print("str = {s}\n", .{str});
    // ^ we you can use {s} to print this array as string
    print("str[0..5] = {s}\n", .{str[0..5]});
    // ^ we can also print only part of it (0 to 5'th symbol)
    print("str[7..] = {s}\n", .{str[7..]});
    // ^ or from 7'th symbol to the end
    print("str[7] = {c}\n", .{str[7]}); // {c} is for char instead of string
    // ^ or just 7'th symbol
}
