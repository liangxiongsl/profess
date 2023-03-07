
计算机指令是 机器语言指令集合，特定处理器能够理解和执行它。计算机根据提供的指令执行任务

```title="指令由被称为 field字段 的群组成，这些字段包括:"
Mode - 模式，指定操作数的定位方式
Operation code (Opcode) - 操作码，用于指定要执行的操作 (如 加/减/乘/移位/填充)
Address - 地址，其中包含操作数的位置 (即 寄存器/内存 位置)
```

![](https://static.javatpoint.com/tutorial/coa/images/computer-instructions.png)

```title="三种 Instruction code 指令码"
memory
register
input / Output
```

1.	内存指令 参考
	
	![](https://static.javatpoint.com/tutorial/coa/images/computer-instructions2.png)

2.	寄存器指令 参考

	![](https://static.javatpoint.com/tutorial/coa/images/computer-instructions3.png)

3.	输入输出指令 参考

	![](https://static.javatpoint.com/tutorial/coa/images/computer-instructions4.png)

!!! note
	- 寄存器指令 和 输入输出指令 一样，不需要对 memory 进行引用，并且 Opcode=111
	- 高四位: 1xxx -> 内存指令(不为1111)，0111 -> 寄存器指令，1111 -> 输入输出指令 ？(那么 0xxx(不为0111) 表示什么？)

指令集完整性

```title="如果计算机在以下每个类别中包含足够数量的指令，则称为指令集"
Arithmetic, logical, shift 指令
	- 为处理用户可能希望使用的数据类型提供的计算能力
一组用于将信息移入和移出 memory 和 processor register 的指令
	- 大量二进制信息存储在 memory 中，但所有计算都在 processor register 中完成。因此，必须具备在这两个单元之间移动信息的能力
控制程序的说明 以及 检查状态条件的指令
	- Program control instructions (如 branch instructions) 用于更改程序的执行顺序
input&output Instruction
	- 充当计算机和用户之间的接口。程序和数据必须传输到内存中，计算结果必须传输回用户
```

###  ###

### 1.control unit 设计 ###

```title="control unit 的分类:"
Hardwired Control (硬连线控制)
Microprogrammed Control (微程序控制)
```

#### 1.hardwired control ####

硬连线控制 组织涉及通过 gates, flip-flops, decoders 等其他 digital circuits(数字电路) 实现的控制逻辑

硬连线控制组织的框图：

![](https://static.javatpoint.com/tutorial/coa/images/design-of-control-unit.png)


```
hardwired control 由两个 decoder，一个 sequence counter 和 多个 logic Gate 组成
从 memory unit 中获取的指令放置在 instruction register(IR) 中
instruction register - 包括 1位mode，3位Opcode，12位address
	- #15 的mode 被传输到 由符号I指定的 flip-flop 触发器
	- #12~14 的Opcode 由 3 x 8 解码器进行编码，其输出由 D0~D7 指定
	- #0~11 的address 应用于 Control Logic Gates
Sequence Counter (SC)
	- 可以以二进制形式从 0~15 进行计数 (4位)
```

!!! tip
	此处 #n 或 #a~b 表示 第n位 或 第a~b位

#### 2.Microprogrammed Control ####

微编程控制 组织是通过使用编程方法实现的

在微编程控制中，micro-operation 是通过执行由 micro-instruction 组成的程序来执行的

下图显示了微编程控制组织的框图：

![](https://static.javatpoint.com/tutorial/coa/images/design-of-control-unit2.png)


```
1.	control memory address register 指定 micro-instruction 的地址
2.	假定 control memory 为 ROM，所有控制信息都永久存储在其中
3.	control register 保存从 memory 中获取的 micro-instruction
4.	micro-instruction 包含一个 control word，该控制字指定 data processor 的多个 micro-operation
5.	在执行 micro-operation 时，下一个 address 在下一个 address generator circuit 中计算，
	然后传输到 control address register以读取下一个 micro-instruction
6.	下一个 address generator 通常被称作 micro-program sequencer，因为它确定从 control memory 读取的 address sequence
```

### 2.Instruction cycle ###

### 3.Control Logic Gates ###
