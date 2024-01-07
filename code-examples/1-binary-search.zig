const std = @import("std");
const print = std.debug.print;
const expect = std.testing.expect;

// Binary search function

pub fn binarySearch(comptime T: type, query: T, items: []const T) ?usize {
    var left: usize = 0;
    var right = items.len;
    // ^ defining two pointers

    while (left < right) {
        var mid = (left + right) / 2;
        // ^ defining a middle pointer

        if (items[mid] < query) {
            left = mid + 1;
        }
        // ^ if the middle pointer is less than the query, then we know that the query is in the right half of the array
        else if (items[mid] > query) {
            right = mid;
        }
        // ^ if the middle pointer is greater than the query, then we know that the query is in the left half of the array
        else {
            return mid;
        }
        // ^ if the middle pointer is equal to the query, then we know that we have found the query
    }

    return null;
    // ^ if we have not found the query, then we return null
}

// Tests

test "Finding index" {
    const arr = [_]u32{ 1, 3, 5, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 };
    const query = 5;
    const index = binarySearch(u32, query, &arr);
    try expect(index == 2);
}

test "Returning null" {
    const arr = [_]u32{ 1, 3, 5, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 };
    const query = 4;
    const index = binarySearch(u32, query, &arr);
    try expect(index == null);
}

// Example usage

pub fn main() !void {
    const arr = [_]u32{ 1, 3, 5, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 };
    print("Array: {any}\n", .{arr});

    const query = 5;
    print("Query: {}\n", .{query});

    const index = binarySearch(u32, query, &arr);

    if (index == null) {
        print("Could not find query in array\n", .{});
    } else {
        print("Found query at #{any}\n", .{index});
    }
}
