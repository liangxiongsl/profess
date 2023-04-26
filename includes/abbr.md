*[DR]: Data register，数据寄存器，16位，用于保存从存储器读取的operand操作数（memory operand）
*[AR]: Address register，地址寄存器，12位
*[AC]: Accumulator，累加器，16位，属于 general purpose processing register 通用(目的)处理寄存器
*[IR]: Instruction register，指令寄存器，16位，保存从存储器中读取的指令
*[PC]: program counter，程序计数器，12位，用于保存当前执行指令后从内存中读取的下一条指令的地址
*[TR]: Temporary register，临时寄存器，16位，保存处理过程中的临时数据
*[INPR]: Input register，输入寄存器，8位，保存用户给出的输入字符
*[OUTR]: Output register，输出寄存器，8位，保存处理输入数据后的输出
*[MAR]: Memory Address Register，内存地址寄存器，12位，用于保存内存位置的地址（memory address）
*[MDR]: memory and memory data registers，内存和内存数据寄存器，包含要写入 main memory 的 addressed word 寻址字 或 从中读取的数据


*[IU]: Input unit，输入单元
*[MU]: Memory unit，内存单元，容量为 4096 个字，每个字包含 16位
*[CPU]: Central Processing Unit，中央处理单元
*[ALU]: Arithmetic & logical unit，算术逻辑单元，大多算术和逻辑运算(+, -, *, /, &, |, !)都在处理器 `processor` 的 `ALU` 中执行
*[CU]: Control unit，控制单元（又称 计算机的`nerve center`），是 CPU 的一个组件，它告诉 MU, ALU, IO 如何响应程序的指令
*[OU]: Output Unit，输出单元
*[P]: processor，处理器，包含 CPU, ALU, CU, register
*[IOP]: Input-Output Processor，输入输出处理器

*[PM]: primary memory，主内存
*[SM]: secondary memory，辅助内存，用于长期存储大量数据和程序，称为存储器的 非易失性存储形式
*[RAM]: Random-access Memory，随机访问内存
*[ROM]: 
*[CM]: Cache memory，一种用于快速获取数据的内存。他们与处理器高度耦合

*[CP]: clock pulse，时钟脉冲