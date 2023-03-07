
我们的计算机组织和体系结构教程包括所有主题，例如ER model，keys，relational model，join operation，SQL，functional dependency，transaction，concurrency control等

计算机系统的体系结构可以被视为用户可见的工具或属性的目录，例如ALU, CPU, memory and memory organization

Prerequisite - 计算机体系结构，计算机系统基本功能单元

###  ###

### 1.architecture VS organization ###

即 CA VS CO (computer architecture VS computer organization)

|计算机体系结构 |计算机组织|
|:-:|:-:|
|关注硬件组件连接在一起以形成计算机系统的方式   |关注用户看到的计算机系统的结构和行为|
|它充当硬件和软件之间的接口   |它处理系统中连接的组件|
|帮助我们理解系统的功能 	|告诉我们系统中所有单元是如何排列和互连的|
|程序员可以从指令、寻址模式和寄存器方面查看architecture       |而organization则表达了architecture的实现|
|在设计时首先考虑architecture   |organization是在architecture的基础上完成的|
|计算机体系结构处理高级设计问题       |计算机组织处理低级设计问题|
|架构涉及Logic（Instruction sets、Addressing modes、Data types、Cache optimization）   |组织涉及物理组件（Circuit design、Adders、Signals信号、Peripherals外设）|

### 2.计算设备的演变 ###

ENIAC（Electronic Numerical Integrator and Computer电子数值积分器和计算机）是1940年代早期设计的第一个计算系统。它由 18，000 个称为真空管的嗡嗡声电子开关组成，42 个面板，每个面板 9'x 2'x1'。它以U形组织在一个带有强制风冷的房间周围

- Atanasoff-Berry计算机（ABC）的设计被称为第一台数字电子计算机（尽管不可编程）。它由John Vincent Atanasoff和他的助手Clifford E. Berry于1937年设计和建造
- 1941年，Z3由德国发明家康拉德·楚泽发明。这是第一台工作可编程的全自动计算机
- 晶体管于1947年在贝尔实验室发明，其尺寸仅为真空管的一小部分，消耗的功率更少，但复杂的电路仍然不容易处理
- 杰克·基尔比（Jack Kilby）和罗伯特·诺伊斯（Robert Noyce）同时发明了集成电路。1959年7月，诺伊斯为此申请了专利
- 1968年，Robert Noyce共同创立了英特尔电子公司，该公司仍然是IC制造，研究和开发的全球市场领导者
- 1983年，Lisa作为第一台具有图形用户界面（GUI）的个人计算机推出，并进行了商业销售;它运行在摩托罗拉68000，双软盘驱动器，5 MB硬盘驱动器和1MB内存上
- 1990年，苹果发布了Macintosh Portable;它重达7.3公斤（16磅），非常昂贵。它没有取得很大的成功，仅在两年后就停产了
- 1990年，英特尔推出了Touchstone Delta超级计算机，该计算机拥有512个微处理器。这种技术进步非常重要，因为它被用作世界上一些最快的多处理器系统的模型


### 3.Digital System功能单元 ###

- CO - 描述了数字系统各个单元的功能和设计
- CA - 描述指令集和实现指令的硬件单元的规范
- 硬件 - 包括electronic circuits, displays, magnetic, optic storage media, the communication facilities通信介质
- 功能单元 - 执行计算机程序要求的操作和计算的CPU的一部分
- 计算机由五个主要组件组成，即Input unit，Central Processing Unit，Memory unit，Arithmetic & logical unit，Control unit，Output unit

```
, .. and .. and also .. // 并列
<n.> namely, .., .., ..	// <n.> 即 .., .., ..
```

![](https://static.javatpoint.com/tutorial/coa/images/functional-units-of-digital-system.png)


#### 1.Input unit ####

计算机使用Input Unit来读取数据；常见的输入设备：keyboards, mouse, joysticks操纵杆, trackballs轨迹球, microphones麦克风

但是，最著名的输入设备是键盘。每当按下某个键时，相应的字母或数字都会自动转换为相应的二进制代码，并通过电缆传输到内存或处理器

#### 2.Central Processing Unit ####

通常称为CPU，也可以指计算机中的电子电路，它通过执行 instructions 指定的 basic arithmetic, logical, control, input/output（I / O）操作来执行计算机程序给出的指令

#### 3.Memory unit ####

- Memory unit 也称为 storage area，其中保存着正在运行的程序，其中包含正在运行的程序所需的数据
- 内存单元可以分为两种方式，即 primary memory，secondary memory
- 它使处理器能够访问临时存储在特定内存位置的正在运行的执行应用程序和服务

- Primary storage
	- 以电子速度运行的最快内存。主存储器包含大量的半导体存储单元，能够存储一些信息。计算机的word length字长在 16-64 位之间
	- 它也被称为 内存的易失形式，这意味着计算机关闭时，RAM 中包含的任何内容都会丢失
	- 最常见的例子是 RAM 和 ROM
- Cache memory 也是一种用于快速获取数据的内存。他们与处理器高度耦合
- Secondary memory
	- 长期存储大量数据和程序
	- 它也被称为 存储器的非易失性存储形式，意味着无论是否关闭，数据都会永久存储
	- 最常见的例子是 magnetic disks, magnetic tapes, and optical disks

#### 4.Arithmetic & logical unit ####

- 计算机的大多数算术和逻辑运算都在 processor 的 ALU 中执行
- 算术运算: addition, subtraction, multiplication, division
- 逻辑运算: AND, OR, NOT

#### 5.Control unit ####

- 控制单元是计算机中央处理单元CPU的一个组件，它告诉计算机的 memory, arithmetic&logical unit, IO 如何响应程序的指令
- control unit 也称为 计算机系统的 nerve center (神经中枢)
- 我们考虑一个通过 Add LOCA, RO 给出的指令添加两个 operand 的示例: 此指令将内存位置 LOCA 添加到寄存器 RO 中的 operand 中，并将总和放到寄存器 RO 中。此指令在内部执行了数个命令


#### 6.Output Unit ####

- output unit的主要功能是将处理后的结果发送给用户，以用户能理解的方式显示信息
- 用于生成信息或计算机处理任何其他响应的设备，这些设备显示计算机中保存或生成的信息
- 最常见的示例是 monitor 显示器


### 4.基本操作 ###

```
1.	计算机系统的主要功能是 执行程序，指令序列
2.	执行这些指令以处理已通过某些输入设备加载到计算机内存中的数据
3.	处理完后，结果要么存储在 memory 中以供进一步参考，要么通过某个输出端口发送到外界
4.	为了执行指令除了 arithmetic&logical unit 和 control unit 之外，
	processor 还包含许多用于临时存储数据的 register 和一些special function register
```

```
processor:
	- central processing unit
	- arithmetic&logical unit
	- control unit
	- register

special function register:
	- program counters (PC) - 跟踪正在执行的指令，以及 下一条指令是什么
	- instruction registers (IR)
		- 用于保存当前正在执行的指令
		- 其内容可供 control unit 使用，控制单元 生成 控制指令 所涉及的各种处理元件的定时信号
	- memory address registers (MAR) - 保存要向其传输数据或从中传输数据的 main memory 的地址
	- memory and memory data registers (MDR) - 包含要写入 main memory 的 addressed word寻址字 或 从中读取的数据

MAR，MDR用于处理 main memory 和 processor 之间的数据传输

```


```
每当要求 processor 与 device 通信时，我们都会说处理器为设备提供服务
处理器有两种提供设备服务的方式:
	- polling routine 轮询例程？
		- 轮询使处理器软件能够频繁地检查每个输入和输出设备
		- 在检查期间，处理器将进行测试以查看是否有任何设备需要服务
	- interrupt 中断
		- 中断提供一个 external asynchronous input外部异步输入
		- 通知处理器它应该完成当前正在执行的任何指令，并获取将其请求设备提供服务的新 routine历程
```
