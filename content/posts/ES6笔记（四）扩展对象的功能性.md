---
title: ES6笔记（四）扩展对象的功能性
categories: [JavaScript]
date: 2018-04-03 16:17:56
tags: [es6]
---

### 对象的语法的扩展

#### (1)对象的属性或属性值可以直接传入变量

\[crayon\] let id = 12; let value = 22; let obj = {id:value} \[/crayon\]

#### (2)在对象中方法的简写

\[crayon\] //es5 let obj = { handle:function(){ //dosomething } } //es6 let obj = { handle(){ //dosomething } } \[/crayon\]
<!--more-->
#### (3)属性初始值简写

\[crayon\] //ES5 function a(id) { return { id: id }; }; //ES6 const a = (id) => ({ id }) \[/crayon\]

### es6对象新增的方法

#### (1)Object.is()

比较两种数据类型，以前可以用===或者==，现在可以用Object.is()，不过Object.is()比较严格： \[crayon\] console.log(+0 === -0)//true console.log(Object.is(+0, -0))//false \[/crayon\]

#### (2)Object.assign()

Object.assign()这个方法早有接触过，合并对象以及浅拷贝,具体看如下示例： \[crayon\] object.assign(target,...obj) \[/crayon\] 注意一下，obj中会覆盖target中重复的属性

### 对象被遍历自动枚举

示例： \[crayon\] const state = { id: 1, 5: 5, name: "eryue", 3: 3 } Object.assign(state, null) //{"3":3,"5":5,"id":1,"name":"eryue"} \[/crayon\] 还有其他的object.keys()和for...in都会枚举。

### 对象原型的增强

Object.setPrototypeOf()还有super()。