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
Map对象保存键值对，键是唯一的，不会重复。Map中的键和值可以是任何数据类型，不仅限于字符串或整数。

## WeakMap
与集合类型（Set）一样，映射类型也有一个Weak版本的WeakMap。WeakMap和WeakSet很相似，只不过WeakMap的键会检查变量的引用，只要其中任意一个引用被释放，该键值对就会被删除。
## Object
# 区别
...