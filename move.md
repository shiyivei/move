# 1 开发环境配置

## 1.1 Aptos 开发环境

### 1.1.1 安装Rust

### 1.1.2 安装move并配置move-analyzer

1. Aptos地址与move标准地址不一致，这里使用` --features "address32"`指定

```
cargo install --git https://github.com/move-language/move move-analyzer --features "address32"
```

2. 在vs code中安装move-analyzer，并配置Path

```
where is move-analyzer //找到二进制文件

/Users/xxx/.cargo/bin/move-analyzer // 将该二进制文件路径添加至move-analyzer插件Path
```

### 1.1.3 Aptos项目

1. 创建并初始化项目

```
mkdir fist-aptos-module
cd first-aptos-module
aptos move init --name first-aptos-module
```

2. 配置基本信息

一般是要加一个地址table

2.1 获取地址

```
aptos init  // 后面按默认走就可
```

2.2 配置toml文件

```
[package]
name = 'first-aptos-module'
version = '1.0.0'
[dependencies.AptosFramework]
git = '/Users/qinjianquan/Career/aptos-core'
rev = 'main'
subdir = 'aptos-move/framework/aptos-framework'

[addresses]
myAccount="0x08198230abd5589cd7f958dbdf07c4d1ad4db62a452b658ec086018bf128cff2"
```

3. 编写合约

.../fist-aptos-module/sources/first_aptos_module.move

```
module myAccount::first_aptos_module {
  struct Coin has key {
    value: u64
  }

  public fun mint(account: signer, value: u64) {
    move_to(&account, Coin { value })
  }
}
```

4. 编译合约

```
aptos move compile
```

5. 测试合约

```
aptos move test
```

6. 部署到aptos测试网

```
aptos move publish
```

```
{
  "Result": {
    "transaction_hash": "0x372f3268c4c74fa84ed856057924a7d6edf3f3bca2b9f0e4423c3fdab7c808c0",
    "gas_used": 7797,
    "gas_unit_price": 100,
    "sender": "08198230abd5589cd7f958dbdf07c4d1ad4db62a452b658ec086018bf128cff2",
    "sequence_number": 0,
    "success": true,
    "timestamp_us": 1676859929533256,
    "version": 2035003,
    "vm_status": "Executed successfully"
  }
}
```

查看结果

https://explorer.aptoslabs.com/transactions?type=user

7. 调用

```
aptos move run --function-id default::message::set_message --args string:"hello move"
aptos move run --function-id <钱包地址>::<模块名>::<函数名> --args <参数类型>:<参数值>
```

## 1.2 浏览器开发环境

move playground

# 2 Move 基础

move 系链aptos，sui，starcoin，pontem

1. move面向资源编程
2. 类型有四种能力
3. 原生态避免双花
4. 安全和形式化验证

## 2.1 Move数据类型

## 2.3 Move的结构

### 2.3.1 modules

结构化定义

函数功能

全局存储

### 2.3.2 scripts

暂时的代码片段

可以调用modules函数

1一个script内只能有一个函数

# 3 Counter 合约与dApp 的实现

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

## 1.1类型的能力

Copy

Drop

Key

Store

## 1.2 Signer

代表发送交易的人

一种原生的数据类型

只有一种能力：Drop

不能在代码中创建，必须通过脚本调用传递

## 1.3 资源

资源也是一种类型，只有key和store两种能力

资源必须存储在账户下

一个账户同时只能容纳一个资源

1.4 