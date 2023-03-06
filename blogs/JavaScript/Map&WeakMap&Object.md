---
title: Map WeakMap 的常用方法 & 与Object之前的区别
date: '2023-03-04'
tags:
 - Map
 - WeakMap
 - Object
categories:
 - JavaScript
sidebar: auto
---
# 先认识一下
## Map
Map对象保存键值对，键是唯一的，不会重复。Map中的键和值可以是任何数据类型，不仅限于字符串或整数。还可以通过for-of循环对其遍历，同时也可以使用foreach进行遍历。<br/>
Map的方法：set() 、get() 、has() 、delete() 、clear()<br/>
Map的属性:size<br/>
## WeakMap
WeakMap是ECMAScript 6新增的是一种新的集合类型（弱映射），“weak”（弱），是指容易被清理<br/>
Map的方法：set() 、get() 、has() 、delete()<br/>
## Object
也是键值对数据类型，但是键是字符串。
# 区别
 + Map相比Object的，可以使用任何键做为键值。
 + WeakMap相对于Map是一个不可枚举的对象，必须使用对象作为键值。而且WeakMap不能包含无引用的对象，否则会被自动清除。
 + object 可以使用字面量、构造函数、Object.crate的形式创建。map只能通过new 关键字和构造函数创建。
 + Map 会保留键的顺序，object不会