const std = @import("std");
const testing = std.testing;

pub const Token = union(enum) {
    ObjStart,
    ObjEnd,
    MapStart,
    MapEnd,
    ArrStart,
    ArrEnd,
    Symbol: []const u8,
};

pub const Tokenizer = struct {
    pub const Self = @This();

    original: []const u8,
    input: []const u8,

    pub fn init(input: []const u8) Self {
        return .{
            .original = input,
            .input = input,
        };
    }

    /// Return the current token and move to the next.
    pub fn scan() Token {}
};

test "Tokenization" {}
