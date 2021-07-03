﻿// This code was generated by a tool. 
// IUP Metadata Code Generator
// https://github.com/batiati/IUPMetadata
// 
// 
// Changes to this file may cause incorrect behavior and will be lost if 
// the code is regenerated. 

const std = @import("std");

const interop = @import("../interop.zig");
const iup = @import("../iup.zig");

const Impl = @import("../impl.zig").Impl; 
const CallbackHandler = @import("../callback_handler.zig").CallbackHandler;

const debug = std.debug;
const trait = std.meta.trait;

const Element = iup.Element;
const Handle = iup.Handle;
const Error = iup.Error;
const ChildrenIterator = iup.ChildrenIterator;
const Size = iup.Size;
const Margin = iup.Margin;

{{ElementDocumentation}}
pub const {{Name}} = opaque {
    pub const CLASS_NAME = "{{ClassName}}";
    const Self = @This();

    {{CallbacksDecl}}

    {{EnumsDecl}}

    pub const Initializer = struct {
        last_error: ?anyerror = null,
        ref: *Self,

        ///
        /// Returns a pointer to IUP element or an error.
        /// Only top-level or detached elements needs to be unwraped,
        pub fn unwrap(self: Initializer) !*Self {
            if (self.last_error) |e| {
                return e;
            } else {
                return self.ref;
            }
        }

        ///
        /// Captures a reference into a external variable
        /// Allows to capture some references even using full declarative API
        pub fn capture(self: *Initializer, ref: **Self) Initializer {
            ref.* = self.ref;
            return self.*;
        } 

        pub fn setStrAttribute(self: *Initializer, attributeName: [:0]const u8, arg: [:0]const u8) Initializer {
            if (self.last_error) |_| return self.*;
            Self.setStrAttribute(self.ref, attributeName, arg);
            return self.*;
        }

        pub fn setIntAttribute(self: *Initializer, attributeName: [:0]const u8, arg: i32) Initializer {
            if (self.last_error) |_| return self.*;
            Self.setIntAttribute(self.ref, attributeName, arg);
            return self.*;
        } 

        pub fn setBoolAttribute(self: *Initializer, attributeName: [:0]const u8, arg: bool) Initializer {
            if (self.last_error) |_| return self.*;
            Self.setBoolAttribute(self.ref, attributeName, arg);
            return self.*;
        } 

        pub fn setPtrAttribute(self: *Initializer, comptime T: type, attributeName: [:0]const u8, value: ?*T) Initializer {
            if (self.last_error) |_| return self.*;
            Self.setPtrAttribute(self.ref, T, attributeName, value);
            return self.*;
        }

        {{InitializerTraits}}
        {{InitializerBlock}}
    };

    pub fn setStrAttribute(self: *Self, attribute: [:0]const u8, arg: [:0]const u8) void {
        interop.setStrAttribute(self, attribute, .{}, arg);
    }  

    pub fn getStrAttribute(self: *Self, attribute: [:0]const u8) [:0]const u8 {
        return interop.getStrAttribute(self, attribute, .{});
    }  

    pub fn setIntAttribute(self: *Self, attribute: [:0]const u8, arg: i32) void {
        interop.setIntAttribute(self, attribute, .{}, arg);
    }  

    pub fn getIntAttribute(self: *Self, attribute: [:0]const u8) i32 {
        return interop.getIntAttribute(self, attribute, .{});
    }

    pub fn setBoolAttribute(self: *Self, attribute: [:0]const u8, arg: bool) void {
        interop.setBoolAttribute(self, attribute, .{}, arg);
    }  

    pub fn getBoolAttribute(self: *Self, attribute: [:0]const u8) bool {
        return interop.getBoolAttribute(self, attribute, .{});
    } 

    pub fn getPtrAttribute(handle: *Self, comptime T: type, attribute: [:0]const u8) ?*T {
        return interop.getPtrAttribute(T, handle, attribute, .{});
    }

    pub fn setPtrAttribute(handle: *Self, comptime T: type, attribute: [:0]const u8, value: ?*T) void {
        interop.setPtrAttribute(T, handle, attribute, .{}, value);
    }

    {{BodyTraits}}
    {{BodyBlock}}

};

{{TestsBlock}}