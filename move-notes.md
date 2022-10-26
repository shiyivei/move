安装

```
 cargo install --git https://github.com/move-language/move move-analyzer --features "address32"
```



# 01 Counter 合约与dApp 的实现

## Move 类型的几种能力

Copy

Drop

Key 可以作为键值

Store 可以存储到全局状态

## Singer

原生数据类型

只有一种能力Drop

不能在代代码种创建，必须通过脚本创建

## 资源

只能拥有key和store两种能力

必须在一个账户下

一个账户同一时刻只能有一个资源