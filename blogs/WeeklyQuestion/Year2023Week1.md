---
title: 2023年 第1周
date: '2023-01-30'
tags:
 - 算法
 - LeetCode
categories:
 - WeeklyQuestion
sidebar: auto
---
# 两数之和
给定一个整数数组 nums 和一个整数目标值 target，请你在该数组中找出 和为目标值 target  的那 两个 整数，并返回它们的数组下标。
你可以假设每种输入只会对应一个答案。但是，数组中同一个元素在答案里不能重复出现。
你可以按任意顺序返回答案。

来源：力扣（LeetCode）<br/>
链接：[https://leetcode.cn/problems/two-sum/](https://leetcode.cn/problems/two-sum/)
## 初次尝试
```+JavaScript
var twoSum = function(nums, target) {
    let recordNum = nums.reduce((p,c,i) =>{ p[c] = i; return p} ,{})
    let result = []
    nums.forEach((num,index) => {
    let remainingNum = target - num
        if(recordNum[remainingNum] !== undefined && !result.length && index !== recordNum[remainingNum]){
            console.log(recordNum[remainingNum])
            result =  [index,recordNum[remainingNum]]
        }
    })
    return result
};
```
>执行结果：<br/>
>执行用时：72 ms , 在所有 JavaScript 提交中击败了61.66%的用户<br/>
>内存消耗：43.6 MB, 在所有 JavaScript 提交中击败了8.74%的用户<br/>
>通过测试用例：57 / 57

总结：通过循环减去总和取差值，再以num为对象的key。差值能通过key找到对象，就return结果。这种方式遍历两便数组。消耗性能。就算不事先reduce下数组转为对象，在forEach如果没有对象在添加也挺慢的。