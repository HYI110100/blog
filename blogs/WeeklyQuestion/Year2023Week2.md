---
title: 2023年 第2周
date: '2023-02-06'
tags:
 - 算法
 - LeetCode
categories:
 - WeeklyQuestion
sidebar: auto
---
## 回文数
给你一个整数 x ，如果 x 是一个回文整数，返回 true ；否则，返回 false 。
回文数是指正序（从左向右）和倒序（从右向左）读都是一样的整数。
例如，121 是回文，而 123 不是。

来源：力扣（LeetCode）<br/>
链接：[https://leetcode.cn/problems/palindrome-number/](https://leetcode.cn/problems/palindrome-number/)
```js
var isPalindrome = function(x) {
    if(x === 0)
        return true
    if(x <= -1 || (x%10) === 0)
        return false
    const strX = `${x}`
    const strXLength = strX.length / 2
    if(strX.length%2) {
        return strX.slice(0,strXLength+0.5) === strX.slice(strXLength-0.5,strX.length).split("").reverse().join("")
    }else{
        return strX.slice(0,strXLength) === strX.slice(strXLength,strX.length).split("").reverse().join("")
    }
};
```
>执行结果：<br/>
>执行用时：132 ms , 在所有 JavaScript 提交中击败了92%的用户<br/>
>内存消耗：50 MB, 在所有 JavaScript 提交中击败了48%的用户<br/>

起初直接想用字符串解决这个问题，将数字转字符串，取长度后半段反转对比。结果就是内存消耗太高了。
有空了，想想从数学方面入手解决这个问题。
