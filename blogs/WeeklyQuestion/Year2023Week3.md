---
title: 2023年 第3周
date: '2023-03-04'
tags:
 - 算法
 - LeetCode
categories:
 - WeeklyQuestion
sidebar: auto
---
## 罗马数字转整数
罗马数字包含以下七种字符: I， V， X， L，C，D 和 M。

> 字符          数值<br/>
> I             1<br/>
> V             5<br/>
> X             10<br/>
> L             50<br/>
> C             100<br/>
> D             500<br/>
> M             1000<br/>

例如， 罗马数字 2 写做 II ，即为两个并列的 1 。12 写做 XII ，即为 X + II 。 27 写做  XXVII, 即为 XX + V + II 。<br/>

通常情况下，罗马数字中小的数字在大的数字的右边。但也存在特例，例如 4 不写做 IIII，而是 IV。数字 1 在数字 5 的左边，所表示的数等于大数 5 减小数 1 得到的数值 4 。同样地，数字 9 表示为 IX。这个特殊的规则只适用于以下六种情况：

+ I 可以放在 V (5) 和 X (10) 的左边，来表示 4 和 9。
+ X 可以放在 L (50) 和 C (100) 的左边，来表示 40 和 90。 
+ C 可以放在 D (500) 和 M (1000) 的左边，来表示 400 和 900。
给定一个罗马数字，将其转换成整数。

来源：力扣（LeetCode）<br/>
链接：[https://leetcode.cn/problems/roman-to-integer](https://leetcode.cn/problems/roman-to-integer)
```js
var romanToInt = function (s) {
    const hashMap = {
        I: 1,
        V: 5,
        X: 10,
        L: 50,
        C: 100,
        D: 500,
        M: 1000,
    }
    let num = 0
    let index = 0
    for (let i = 0; i < s.length; i++) {
        if (i >= 1 && hashMap[s[i - 1]] < hashMap[s[i]]) {
            num += hashMap[s[i]] - hashMap[s[i - 1]] - hashMap[s[i - 1]]
        } else {
            num += hashMap[s[i]]
        }
    }
    return num
};
```
>执行结果：<br/>
>执行用时：120 ms , 在所有 JavaScript 提交中击败了51.56%的用户<br/>
>内存消耗：45 MB, 在所有 JavaScript 提交中击败了93.82%的用户<br/>

来源：公司学习时刻<br/>
答：D<br/>
因为for循环次数超出了最大安全值，js 会出现不精确的现象。

## 一个打印loop几次 A.99 B.100 C.报错 D.无法预测
```js
var START = 2 ** 53; 
var END = START + 100;
for (var i = START; i < END; i++) {
 console.log("loop")
}
```
## undefined可以使用被做为变量名吗？
undefined是window上的属性，不是关键词。在window下只能获取undefined，但使用作用域后就能获取到值。所以可以但不推荐。
```js
function m() {
 var undefined = 1
 var a = undefined
 console.log(a)
}
```