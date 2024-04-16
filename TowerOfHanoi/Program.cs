using System;

namespace TowerOfHanoi
{
    internal class Program
    {
        // 定义一个常量表示盘子的最大数量
        public const int Max_levels = 12;

        static void Main(string[] args)
        {
            // 向用户请求输入盘子的数量，并说明最大允许的数量
            Console.WriteLine($"Input Hanoi Levels (Up to {Max_levels}):");

            int levels;  // 用于存储用户输入的层数
            // 循环请求输入，直到用户输入一个有效的数字
            while (!int.TryParse(Console.ReadLine(), out levels) || levels < 1 || levels > Max_levels)
            {
                // 如果输入无效，提示用户输入一个在1到Max_levels之间的数字
                Console.WriteLine($"Invalid input. Please enter a number between 1 and {Max_levels}.\n");
            }

            // 输出用户输入的盘子数量
            Console.WriteLine($"You entered {levels} levels.\n");
            Console.WriteLine("The moves are:\n");

            int moveCount = 0;  // 初始化一个计数器，用于计算移动次数
            // 调用Move方法开始移动盘子，传入盘子数量和三个塔的标识符
            Move(levels, 'A', 'B', 'C', ref moveCount);

            // 输出移动盘子的总次数
            Console.WriteLine($"\nTotal moves: {moveCount}");
        }

        // 定义一个静态方法来移动盘子，使用递归
        static void Move(int n, char start, char middle, char stop, ref int moveCount)
        {
            // 如果只有一个盘子，直接移动到目标塔
            if (n == 1)
            {
                Console.WriteLine($"Move disk from {start} to {stop}. Size of the moving Disk = {n}\n");
                moveCount++;  // 移动次数加一
                return;
            }

            // 先将n-1个盘子从起始塔移动到辅助塔
            Move(n - 1, start, stop, middle, ref moveCount);
            // 移动最大的盘子到目标塔
            Console.WriteLine($"Move disk from {start} to {stop}. Size of the moving Disk = {n}\n");
            moveCount++;  // 移动次数加一
            // 最后将n-1个盘子从辅助塔移动到目标塔
            Move(n - 1, middle, start, stop, ref moveCount);
        }
    }
}
