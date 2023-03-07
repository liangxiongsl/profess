

General System Architecture的两个主要分类单元：

- Stored Program Control Concept
- Flynn's Classification of Computers 

![](https://static.javatpoint.com/tutorial/coa/images/general-system-architecture.png)

###  ###


### 1.存储程序控制概念 ###

Stored Program Control Concept 是指计算机内存中存储指令以使其能够按顺序或间歇性执行各种任务

这个想法是在1040年代后期由 John von Neumann约翰·冯·诺依曼 提出的，他提出将程序以二进制数格式以电子方式存储在存储设备中，以便计算机可以根据中间计算结果确定的指令进行修改

ENIAC（Electronic Numerical Integrator and Computer）是1940年代早期设计的第一个计算系统。它基于存储程序概念，其中机器使用内存来处理数据

```title="存储程序概念可以进一步分为三种基本方式"
1.	Von-Neumann Model 冯-诺依曼模型
2.	General Purpose System 通用系统
3.	Parallel Processing 并行处理
```

![](https://static.javatpoint.com/tutorial/coa/images/store-program-control-concept.png)

### 2.Flynn的计算机分类 ###

M.J. Flynn提出了一种计算机系统组织的分类，即同时纵的指令和数据项的数量

```title=""
从存储器读取的指令序列构成 instruction stream 指令流
对处理器中的数据执行的操作构成 data stream 数据流

tip: Stream 指的是 指令流 或 数据流

并行处理可能发生在指令流和/或数据流中
```

```title="Flynn 的计算机分类"
Single instruction stream, single data stream (SISD)
Single instruction stream, multiple data stream (SIMD)
Multiple instruction stream, single data stream (MISD)
Multiple instruction stream, multiple data stream (MIMD)
```

![](https://static.javatpoint.com/tutorial/coa/images/flynn-classification-of-computers.png)

### 3.Registers ###

寄存器是一种计算机存储器，用于快速接受、存储和传输 CPU 立即使用的数据和指令。

CPU 使用的寄存器通常称为处理器寄存器，它可以保存指令，存储地址 或 任何数据(如 bit sequence 或 individual characters)

计算机需要处理器寄存器来操作数据，需要一个寄存器来保存内存地址。保存存储器位置的寄存器用于在当前指令执行完成后计算下一条指令的地址

|Register       |Symbol |Number of bits |Function|
|:-:|:-:|:-:|:-:|
|Data register  |DR     |16     |保存 memory operand 内存操作数|
|Address register       |AR     |12     |保存 address for the memory 内存的地址|
|Accumulator    |AC     |16     |Processor register|
|Instruction register   |IR     |16     |保存 instruction code 指令码|
|Program counter        |PC     |12     |保存 address of the instruction 指令的地址|
|Temporary register     |TR     |16     |保存 temporary data 临时数据|
|Input register |INPR   |8      |携带 input character 输入字符|
|Output register        |OUTR   |8      |携带 output character 输出字符|


基本计算机的寄存器和内存配置：

![](https://static.javatpoint.com/tutorial/coa/images/computer-registers.png)

```title=""
Memory unit - 内存单元，容量为 4096 个字，每个字包含 16位
Memory Address Register (MAR) - 内存地址寄存器，12位，用于保存内存位置的地址（memory address）
Data register (DR) - 数据寄存器，16位，用于保存从存储器读取的operand操作数（memory operand）
program counter (PC) - 程序计数器，12位，用于保存当前执行指令后从内存中读取的下一条指令的地址
Accumulator (AC) - 累加器，16位，属于 general purpose processing register 通用(目的)处理寄存器
Instruction register (IR) - 指令寄存器，16位，保存从存储器读取的指令
Temporary register (TR) - 临时寄存器，16位，保存处理过程中的临时数据
Input register (INPR / IR ?) - 输入寄存器，8位，保存用户给出的输入字符
Output register (OUTR / OR ?) - 输出寄存器，8位，保存处理输入数据后的输出
```
