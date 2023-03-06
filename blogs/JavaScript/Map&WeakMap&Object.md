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
### Map的方法
使用使用 new 关键字和 Map 构造函数

```js
const obj = {a:1}
let map = new Map([
  [10,1],
  [obj,'a1']
])
```
#### set()
在初始化后可以使用set设置键值，如果键重复就修改之前键的值。

```js
map.set(obj,999)
```
#### get()
通过key获取到值，如果没有返回 undefined

```js
 console.log(map.get(10)); // 1
 console.log(map.get(obj)); // 999
```
#### keys()
返回一个以key的数组

```js
console.log(map.keys()); // [10,{a:1}]
```
#### values()
返回一个以value的数组

```js
console.log(map.values()); // [1,'a1']
```
#### has() 
检查指定的键 key 是否存在

```js
 console.log(map.has(obj)); // true
```
#### delete() 

移除 Map 对象中指定的元素。如果不为空,则将当前的键和值设为空,并且返回 true,如果不存在这个 key,则返回 false
```js
console.log(map.delete(obj)); // true
console.log(map.delete(obj)); // false
```
#### clear()
移除 Map 对象中的所有元素最后返回的值是 undefined

```js
console.log(map.clear()); // undefined
```

## WeakMap
WeakMap是一种新的集合类型（弱映射），“weak”（弱），是指容易被清理<br/>

### Map的方法
WeakMap 只能是对象为key（null除外）
```js
const obj = {a:1}
let weakMap = new WeakMap([
  [10,1],
  [obj,'a1']
])
// Uncaught TypeError: Invalid value used as weak map key
```
get、set、has、delete。用法和map一样。

### 弱映射
当WeakMap键所指对象没有其他地方引用的时候，它会被垃圾回收机制回收掉
因为 { p: 2 } 没有被引用，所以 log时只看见obj的键值对。<br/>
```js
let obj = { a: 1 }
const wmap = new WeakMap([[obj, 1], [{ p: 2 }, 'p2']])
console.log(wmap); // [{key: {a:1},value:1}]
```
之后我讲obj赋值新对象，或者null，打印出无属性。因为初始化时的{ a: 1 }没有被obj引用了。

```js
let obj = { a: 1 }
const wmap = new WeakMap([[obj, 1], [{ p: 2 }, 'p2']])
obj = { a: 2 }
console.log(wmap); // 无属性
```
## Object
也是键值对数据类型，但是键是字符串。
# 区别
+ Map的key可以是任意类型，WeakMap只能是对象，Object只能是字符串
+ Map可以迭代，WeakMap不能
+ Map会保留键的顺序，Object不会。
+ Object可以使用字面量、构造函数、Object.crate的形式创建。map只能通过new 关键字和构造函数创建。