Note:
- If not specified, all the code are written by Tao.
- C++ code uses C++ 2011, Python code uses Python 3.
  So C++ code needs to be compiled using: std=c++11,
  and Python code needs to be run using: python3 filename.py
- When recording my code here, do not paste the include statements. Only pasete when I included some uncommon things, like <climits>.

************************************************
Summary:

- For questions like List, Tree, array, after completed the code, the easiest way to avoid being lazy and escaping checking is to walk through some simplest case (like a three node List, a three node Tree, and a three element array).

- For questions in List, how to determine what xxx to wrote in the while(xxx) {...}, like while(!cur) {...} ?
  the way is to look into the yyy in while(...){yyy} or while(!cur && yyy) {...}. If yyy used cur->val, then should add !cur in the condition. Similarly, if yyy used cur->next->val, then should add !cur->next in the condition.

************************************************
Categories:

category_begin

*************************** 
**         List          ** 
*************************** 

1111 | 21. Merge Two Sorted Lists, Easy. 
0111 | 148. Sort List, Medium
0111 | 147. Insertion Sort List, Medium 
1111 | 206. Reverse Linked List, Easy 
1111 | 92. Reverse Linked List II, Medium 
011 | 25. Reverse Nodes in k-Group, Hard. 題目的意思是每次都要反轉k個, 直到剩下的元素個數不够k個, 如題目中的For k = 2, you should return: 2->1->4->3->5, 即1->2反轉了, 3->4也要反轉, 而剩下的只有一個5, 不够反轉, 所以就不繼續反轉了. 另外, 當k大於list長度時, 則甚麼都不做, 返回原list 
011 | 234. Palindrome Linked List, Easy 
111 | 61. Rotate List, Medium. k可以大於list長度
111 | 143. Reorder List, Medium.  
111 | 141. Linked List Cycle, Medium
011 | 142. Linked List Cycle II, Medium 
011 | 138. Copy List with Random Pointer, Hard. 
111 | 83. Remove Duplicates from Sorted List, Easy 
011 | 82. Remove Duplicates from Sorted List II, Medium 
011 | 86. Partition List, Medium 
011 | 24. Swap Nodes in Pairs, Medium 
111 | 19. Remove Nth Node From End of List, Easy 
111 | 160. Intersection of Two Linked Lists, Easy 
111 | 203. Remove Linked List Elements, Easy 
011 | 237. Delete Node in a Linked List, Easy 
011 | 23. Merge k Sorted Lists, Hard 
 
*************************** 
**         Tree          ** 
*************************** 

0011 | 94. Binary Tree Inorder Traversal, Medium 
011 | 144. Binary Tree Preorder Traversal, Medium 
000 | 145. Binary Tree Postorder Traversal, Hard 
0111 | 102. Binary Tree Level Order Traversal, Easy 
011 | 107. Binary Tree Level Order Traversal II, Easy 
011 | 103. Binary Tree Zigzag Level Order Traversal, Medium 
1111 | 100. Same Tree, Easy. 
011 | 101. Symmetric Tree, Easy 
011 | 116. Populating Next Right Pointers in Each Node, Medium. 
001 | 117. Populating Next Right Pointers in Each Node II, Hard.  
111 | 104. Maximum Depth of Binary Tree, Easy. 
111 | 111. Minimum Depth of Binary Tree, Easy. 
011 | 156. Binary Tree Upside Down, Medium 
011 | 199. Binary Tree Right Side View, Medium 
111 | 226. Invert Binary Tree, Easy 
001 | 129. Sum Root to Leaf Numbers, Medium. 
111 | 112. Path Sum, Easy. 
011 | 113. Path Sum II, Medium. 
000 | 124. Binary Tree Maximum Path Sum, Hard. 題意節點的值可為負數.
011 | 110. Balanced Binary Tree, Easy. 
001 | 114. Flatten Binary Tree to Linked List, Medium. 題意flatten後每個節點的左兒子為null, 若不弄成null, 則通不過或報超時.
011 | 105. Construct Binary Tree from Preorder and Inorder Traversal, Medium 
011 | 106. Construct Binary Tree from Inorder and Postorder Traversal, Medium 
011 | 222. Count Complete Tree Nodes, Medium 
--0 | 298. Binary Tree Longest Consecutive Sequence, Medium. 題意是最長序列要是遞增的.
--0 | 314. Binary Tree Vertical Order Traversal, Medium

*************************** 
**   Binary Search Tree  ** 
*************************** 
0111 | 230. Kth Smallest Element in a BST, Medium 
000 | 99. Recover Binary Search Tree, Hard. 本題遞歸法也可以.
011 | 235. Lowest Common Ancestor of a Binary Search Tree, Easy 
011 | 236. Lowest Common Ancestor of a Binary Tree, Medium. 題意輸入的樹中可能有相同值的節點.
010 | 96. Unique Binary Search Trees. Medium.
010 | 95. Unique Binary Search Trees II, Medium. 
011 | 173. Binary Search Tree Iterator, Medium. 
001 | 98. Validate Binary Search Tree, Medium. 題意root為null時, 也算BST.
011 | 108. Convert Sorted Array to Binary Search Tree, Medium 
001 | 109. Convert Sorted List to Binary Search Tree, Medium 
--1 | 255. Verify Preorder Sequence in Binary Search Tree, Medium   

*************************** 
**         Trie          ** 
*************************** 
0111 | 208. Implement Trie (Prefix Tree), Medium 
010 | 211. Add and Search Word - Data structure design, Medium 
001 | 79. Word Search, Medium. 不是Trie題 
000 | 212. Word Search II, Hard. 題意結果要sort.
--1 | 422. Valid Word Square, Easy.
--1 | 425. Word Squares, Hard. 輸入數組中的單詞可以重復使用.

*************************** 
**        Graph          ** 
*************************** 
0101 | 133. Clone Graph, Medium. 
010 | 127. Word Ladder, Medium. 注意題目的例子中的wordList中不包括beginWord和endWord, 但實際的test case中, wordList是包括beginWord和endWord的!
010 | 126. Word Ladder II, Hard.
001 | 207. Course Schedule, Medium. 
010 | 210. Course Schedule II, Medium. 注意本題只是Medium.
--1 | 261. Graph Valid Tree, Medium. 若輸入edges=[]: 則n=1時返回true, n!=時返回false.
--0 | 332. Reconstruct Itinerary, Medium.

*************************** 
**       String          ** 
*************************** 
共49題
0111 | 8. String to Integer (atoi), Easy 
011 | 14. Longest Common Prefix, Easy 
111 | 38. Count and Say, Easy 
011 | 28. Implement strStr(), Easy. "aa", "" -> 0. "", "aa" -> -1. needle可能比haystack長.
111 | 242. Valid Anagram, Easy. Anagram：单词里的字母的种类和数目没有改变，只是改变了字母的排列顺序。
011 | 49. Group Anagrams, Medium 
011 | 68. Text Justification, Hard. [""], 0 -> [""]. [""], 2 -> ["  "]
--0 | 418. Sentence Screen Fitting, Medium.
011 | 71. Simplify Path, Medium. 
011 | 43. Multiply Strings, Medium 
011 | 6. ZigZag Conversion, Easy 
111 | 58. Length of Last Word, Easy. "a " -> 1
011 | 157. Read N Characters Given Read4, Easy. 題意: read4(buffer)作用從文件中讀入到buffer中, read(buf, n)作用是從文件中讀入到buf中. buffer和buf不是同一個數組, buf是從buffer中讀入的. read4中已實現文件offset: 比如第一次調用read4時, read4讀到文件中的a處, 第二次調用read4時, read4就從文件中a的下一個字符開始讀. Reader4這個類我E3已經寫好了, 直接調用就是. 測試時注意文件末尾都有一個ascii=10的newline符作為結束符.
011 | 158. Read N Characters Given Read4 II - Call multiple times, Hard
011 | 3. Longest Substring Without Repeating Characters, Medium  
001 | 159. Longest Substring with At Most Two Distinct Characters, Hard. 題目中即e和c為那兩個distinct characters. 注意題目是說at most 2 dinstinct characters, 而不是at most 2 repeating characters. 
--1 | 340. Longest Substring with At Most K Distinct Characters, Hard.
111 | 165. Compare Version Numbers, Easy. 輸入的version有可能為"1", "1.0", "0.0.1" 
011 | 179. Largest Number, Medium 
011 | 9. Palindrome Number, Easy 
011 | 125. Valid Palindrome, Easy 
011 | 5. Longest Palindromic Substring, Medium 
010 | 214. Shortest Palindrome, Hard 
011 | 131. Palindrome Partitioning, Medium. II要比本題簡單些, 但本題也不難, 所以還是先做本題
001 | 132. Palindrome Partitioning II, Hard 
011 | 249. Group Shifted Strings, Easy 
000 | 30. Substring with Concatenation of All Words, Hard. 
011 | 186. Reverse Words in a String II, Medium. 本題其實比151題簡單 
011 | 151. Reverse Words in a String, Medium. 本題與186題的題意不同之處: 本題的input可有leading or trailing spaces, input可有multiple spaces between two words, 本題空簡複雜度可以為 O(n), 而186題要求為O(1). 
011 | 246. Strobogrammatic Number, Easy.  
011 | 247. Strobogrammatic Number II, Medium. 文件correct-output-for-check中有正確輸出, 以供檢查. 
011 | 248. Strobogrammatic Number III, Hard. 文件correct-output-for-check中有正確輸出, 以供檢查. 
011 | 93. Restore IP Addresses, Medium. 一個有效的IP地址由4個數字(我給每個這樣數字叫vrangh)組成, 每個vrangh在0到255之間inclusively. 若vrangh只有一位數, 則它可以為0; 否則若vrangh位數大於一, 則不能以0開頭.  
011 | 139. Word Break, Medium. 
011 | 140. Word Break II, Hard. 有一個較長的non-breakable的test case容易造成超時, 故要先判斷整個s是否breakable
011 | 22. Generate Parentheses, Medium 
011 | 241. Different Ways to Add Parentheses, Medium, 輪入可能只有一個數, 沒有運算符
011 | 20. Valid Parentheses, Easy 
000 | 32. Longest Valid Parentheses, Hard. 
011 | 17. Letter Combinations of a Phone Number, Medium 
011 | 97. Interleaving String, Hard. 輸入String中任何一個都有可能長度為0.
010 | 115. Distinct Subsequences, Hard 
011 | 91. Decode Ways, Medium 
000 | 44. Wildcard Matching, Hard. 
010 | 10. Regular Expression Matching, Hard. 題意不清楚, 可見key首.
011 | 161. One Edit Distance, Medium. OJ中題目沒講Edit Distance意思, 可先看72題題目.
011 | 72. Edit Distance, Hard. 
010 | 76. Minimum Window Substring, Hard 
101 | 205. Isomorphic Strings, Easy 
011 | 187. Repeated DNA Sequences, Medium 
010 | 87. Scramble String, Hard. 若兩個輸入String是一樣的(如s1=”helo”, s2=”helo”), 則它們也算是互為scramble的.
--1 | 257. Binary Tree Paths, Easy.
--0 | 388. Longest Absolute File Path, Medium. 輸入"a", 輸出0, 因為是找file, 必須有點. 
--1 | 394. Decode String, Medium.
--0 | 471. Encode String with Shortest Length, Hard. 本題是上題反過來.
--0 | 271. Encode and Decode Strings, Medium. 本題跟394和471無關. 本題考查的不是壓縮空間, 而是如何將一群string連接好後再將它們分開.
--1 | 288. Unique Word Abbreviation, Easy.  

*************************** 
**         Array         ** 
*************************** 
共54題
0111 | 1. Two Sum, Medium. Note the elements in input array can have duplicates.
111 | 167. Two Sum II - Input array is sorted, Medium 
011 | 170. Two Sum III - Data structure design, Easy. 
001 | 15. 3Sum, Medium 
011 | 16. 3Sum Closest, Medium 
--1 | 259. 3Sum Smaller, Medium
001 | 18. 4Sum, Medium 
011 | 88. Merge Sorted Array, Easy 
011 | 41. First Missing Positive, Hard. 題目中的positive integer是指從1開始的. 非in-place的也可通過(Easy級別). 盡量寫成寫成in-place的. 注意題目要求constant space. 若輸入[], 則要求返回1.
111 | 59. Spiral Matrix II, Medium. 本題本質就是旋轉遍歴一個正方形數組. 本題是I的特殊情況, 先做本題, 可以幫助推出I中的公式等.
011 | 54. Spiral Matrix, Medium. 本題本質就是旋轉遍歴一個任意數組. 
111 | 48. Rotate Image, Medium 
011 | 11. Container With Most Water, Medium. 返回的是面積.
000 | 42. Trapping Rain Water, Hard. 求整個數組中的總水量, 而不是單個坑中能放的最大水量 
111 | 73. Set Matrix Zeroes, Medium 
011 | 31. Next Permutation, Medium. 题目的意思是：123的全排列按字典顺序為: 123 132 213 231 312 321. 即將123當作一個單詞, 132當作另一個單詞, 則123在字典中是排在132前面的
111 | 27. Remove Element, Easy 
111 | 26. Remove Duplicates from Sorted Array, Easy 
011 | 80. Remove Duplicates from Sorted Array II, Medium 
011 | 75. Sort Colors, Medium 
111 | 169. Majority Element, Easy, 爭取不用Map.
101 | 229. Majority Element II, Medium. 題目中沒說一定有majority, 或多少個majority. 169題說的一定有.
010 | 189. Rotate Array, Easy 
010 | 238. Product of Array Except Self, Medium. 注意output array和input array是不同的數組. The output array does not count as extra space. 即不要求in-place.
011 | 243. Shortest Word Distance, Easy 
011 | 244. Shortest Word Distance II, Medium 
011 | 245. Shortest Word Distance III, Medium 
001 | 251. Flatten 2D Vector, Medium 
011 | 240. Search a 2D Matrix II. Medium. 本題跟I沒甚麼卵關係. 
011 | 217. Contains Duplicate, Easy 
111 | 219. Contains Duplicate II, Easy  
011 | 220. Contains Duplicate III, Medium. 輸入數組的元素可能為2147483647
000 | 4. Median of Two Sorted Arrays, Hard. Median的定義為(參考了wiki): 若總共有寄數個數, 則取中間那個數; 若總共有偶數個數, 則取中間的兩個數的平均值. 所以本題返回的是一個double.
111 | 198. House Robber, Easy 
011 | 213. House Robber II, Medium 
011 | 135. Candy, Hard. 注意是neighbors, 即只要和自己左右相鄰的比較就可以了(即按local的順序給糖, 而不是按global的順序給糖)
011 | 134. Gas Station, Medium. 題目中travel around the circuit意思是回到最初的出發點上.
011 | 55. Jump Game, Medium. 本題是判斷能否跳完.
001 | 45. Jump Game II, Hard. 本題是返回跳完所需最少步數.
011 | 121. Best Time to Buy and Sell Stock, Medium. 
011 | 122. Best Time to Buy and Sell Stock II, Medium
001 | 188. Best Time to Buy and Sell Stock IV, Hard. 先做IV, 再做III. III就是IV的特列. 有一個test case的k遠大於數組長度一半, 要先特殊處理. 要時間O(N^2)才能通過.
111 | 123. Best Time to Buy and Sell Stock III, Hard 
010 | 53. Maximum Subarray, Medium. 要返回的結果是largest sum, 而不是這個subarray. 網上表明, 本題不存在好的divide and conquer方法, 不要再浪費時間去想divide and conquer, 而用標准的O(N)方法即可.
011 | 152. Maximum Product Subarray, Medium 
1111 | 35. Search Insert Position, Medium. 題意是若找不到, 則返回 'target插入後, target在數組中的位置'
011 | 34. Search for a Range, Medium. 
011 | 33. Search in Rotated Sorted Array, Hard. 本題的元素無重復, 本題的II即元素有重復的情況
011 | 81. Search in Rotated Sorted Array II, Medium. 注意本題只要求判斷target在不在數組中, 沒要求返回其位置(本題的I要求返回位置).
111 | 153. Find Minimum in Rotated Sorted Array, Medium. 本題中的元素是沒有重復的, 本題的II即元素有重復之情況
011 | 154. Find Minimum in Rotated Sorted Array II, Hard. 
011 | 162. Find Peak Element, Medium 
011 | 209. Minimum Size Subarray Sum, Medium.
010 | 128. Longest Consecutive Sequence, Hard. 沒有consecutive sequence時, 返回1, 如[3,8,29]
011 | 239. Sliding Window Maximum, Hard. 
000 | 215. Kth Largest Element in an Array, Medium. 注意不是Kth smallest.
--1 | 256. Paint House, Medium.
--0 | 303. Range Sum Query - Immutable, Easy.
--1 | 304. Range Sum Query 2D - Immutable, Medium.
--0 | 307. Range Sum Query - Mutable, Medium. 這個係列的四道題, 就本題最難.
--1 | 308. Range Sum Query 2D - Mutable, Hard.
--0 | 406. Queue Reconstruction by Height, Medium.
--0 | 361. Bomb Enemy, Medium.
--1 | 281. Zigzag Iterator, Medium.
--1 | 373. Find K Pairs with Smallest Sums, Medium. 注意輸入數組已經是排好序的.
--1 | 346. Moving Average from Data Stream, Easy. 注意題目要求結果是double, 而不是int.
--1 | 283. Move Zeroes, Easy.

*************************** 
**        Board          ** 
*************************** 
共14題
111 | 36. Valid Sudoku, Easy. 注意board數組中的元素是char類型的, 而不是int
011 | 51. N-Queens, Hard. 規則就是要求 每個皇后所在的横竪斜上(不只是一步, 而是整個横竖斜大直線上)都沒有其它皇后.
011 | 52. N-Queens II, Hard 
010 | 37. Sudoku Solver, Hard. 按9*9的board寫, 也能通過.
011 | 200. Number of Islands, Medium. 盡量用BFS, 不要用DFS. 
001 | 305. Number of Islands II, Hard.  
000 | 130. Surrounded Regions, Medium. 題意是大寫字母O, 不是數字0, 也不是小寫字母o.
011 | 120. Triangle, Medium. 題目中的adjacent number是這麼個意思: 設i為行, j為列, 則triangle[i][j]在下一行的adjacent number為triangle[i+1][j]和triangle[i+1][j+1]兩個.
011 | 62. Unique Paths, Medium. 注意m為行數, n為列數.
011 | 63. Unique Paths II, Medium
011 | 64. Minimum Path Sum, Medium. 本題要返回的是 path sum最小的那條路徑 之path sum
011 | 174. Dungeon Game, Hard 
011 | 74. Search a 2D Matrix, Medium. 本題做完後移到本題II前面去.
011 | 149. Max Points on a Line, Hard. 輸入的點中可能有重合的點, 比如一個可能的輸入為: [[1,1],[1,1],[2,2],[2,2]]
000 | 84. Largest Rectangle in Histogram, Hard. 本題被我評為Leetcode第一難題. 
011 | 85. Maximal Rectangle, Hard. 本題要緊跟84題, 不要分開.
011 | 221. Maximal Square, Medium. 給的是正方形數組, 要求的是正方形. 注意matrix的元素是char, 而不是int.
--0 | 289. Game of Life, Medium.
--0 | 317. Shortest Distance from All Buildings, Hard.

*************************** 
**     Combinatorics     ** 
*************************** 
共10題
注意本類題目不是所有題都用item-res遞歸法, 甚至可能可以不用遞歸法.

011 | 46. Permutations, Medium 
011 | 47. Permutations II, Hard 
011 | 60. Permutation Sequence, Medium. 題意: 排列順序是按數字大小排的, 例如132比123大, 故132在123之後.
111 | 77. Combinations, Medium 
011 | 254. Factor Combinations, Medium. 更多test case(答案代碼算出的), 按(n, res.size()): (1200, 97), (34500, 197), (80000, 521), 
011 | 39. Combination Sum, Medium. 本題輸入數組中的元素可以重復選. 輸入數組中的元素既然可以重復選, 那麼輸入數組中的元素就沒必需重復了, 所以可以assume輸入數組中的元素無重復. 本題的二與本題正好相反, 輸入數組中的元素既然不能重復選, 所以輸入數組中的元素是可以重復的. 本題及II, III可以算k-sum係列中的.
011 | 40. Combination Sum II, Medium. 本題輸入數組中的元素不可以重復選.
011 | 216. Combination Sum III, Medium. 本題題目跟I和II關係不大.
011 | 78. Subsets, Medium. 
011 | 90. Subsets II, Medium


*************************** 
**       Interval        ** 
*************************** 
共8題
011 | 56. Merge Intervals, Hard  [1, 2]和[3, 4]不算有overlap, 要[1, 2]和[2, 4]才算有overlap. [2, 2]也算一個interval.
011 | 57. Insert Interval, Hard. overlap的convention和56題一樣.
011 | 252. Meeting Rooms, Easy 
010 | 253. Meeting Rooms II, Medium 
010 | 223. Rectangle Area, Easy. 注意本題是求並集, 而不是求交集. rectilinear: 直線的. 
010 | 218. The Skyline Problem, Hard. buildings[i][j]的i表示第i個building, 即building[i]. 而building[i]是一個有三個元素的數組, 比如building[i] = {Li, Ri, Hi}.
111 | 228. Summary Ranges, Easy 
011 | 163. Missing Ranges, Medium. 輸入數組所有元素應該都在[lower, upper]這個范圍內.

************************************ 
**   Arithmetics implementation   ** 
************************************ 
共26題
011 | 7. Reverse Integer, Easy 
111 | 66. Plus One, Easy. 題目的意思是  輪入數組代表的數  是十进製的, 不是二进製. digit[0]是最高位.
000 | 65. Valid Number, Hard 
111 | 70. Climbing Stairs, Easy. 題意是樓梯共有n階, 而不是說人總共必須跨n次.
111 | 13. Roman to Integer, Easy 
010 | 12. Integer to Roman, Medium 
011 | 29. Divide Two Integers, Medium. 5/0 = Integer.MAX_VALUE, -5/0 = Integer.MIN_VALUE
011 | 166. Fraction to Recurring Decimal, Medium. 5/0返回"2147483647", -5/0返回"-2147483648". 本題代碼中可以用除法(a/b)運算, 只是a和b都是int, (a/b)也是int, 而我們要做的就是算出小數結果. 
111 | 118. Pascal's Triangle, Easy 
011 | 119. Pascal's Triangle II, Easy. 此題的row convention與數組是一樣的: [1]為第0行.
011 | 67. Add Binary, Easy.  
011 | 2. Add Two Numbers, Medium. 2->4->3表示342(三百四十二). 
111 | 171. Excel Sheet Column Number, Easy. 26进製, 先做此題, 再做下題 
111 | 168. Excel Sheet Column Title, Easy. 26进製 
011 | 172. Factorial Trailing Zeroes, Easy. 題目的意思是找n!的右起連續0的個數, 如若n!=23050078000, 則Trailing Zeroes為3個.
111 | 204. Count Primes, Easy. 最小的素數是2, 而不是1.
010 | 233. Number of Digit One, Medium 
000 | 164. Maximum Gap, Hard. 題目的意思是找輪入數組被排序後的最大跳躍, 這裡的跳躍是指 '排序後的數組' 中相鄰兩個數的差. 注意輸入數組是unsorted.
011 | 50. Pow(x, n), Medium. n可為負
111 | 231. Power of Two, Easy. 0和負數都不算power of two.
111 | 69. Sqrt(x), Medium. 
111 | 150. Evaluate Reverse Polish Notation, Medium 
011 | 224. Basic Calculator, Medium. 有括號, 無乘除. 
011 | 227. Basic Calculator II, Medium. 有乘除, 無括號. 本題與I沒有甚麼卵關係. 
011 | 202. Happy Number, Easy 
--1 | 258. Add Digits, Easy

***************************** 
**  System implementation  ** 
***************************** 
共4題
010 | 146. LRU Cache, Hard. 
011 | 232. Implement Queue using Stacks, Easy. 
111 | 225. Implement Stack using Queues, Easy. 
001 | 155. Min Stack, Easy. Convention: 若Min Stack為空, 則top()返回0, pop()直接return, getMin()返回0.

*************************** 
**   Bit manipulation    ** 
*************************** 
共6題
010 | 190. Reverse Bits, Easy. 雖然191題比本題簡單點, 但最好還是先做本題, 因為本題含對負數的討論. 若要輪出來檢查, 則可用Integer.toString(13, 2), 結果為1101, 即13的二进製碼(已record到java p404). 注意本題的代碼欄中要求的是 you need treat n as an unsigned value, 但函數中要求的是int: public int reverseBits(int n). 這是因為Java中沒有usigned類型, 所以我們要把int當成一個unsigned
111 | 191. Number of 1 Bits, Easy. n可為負數.
011 | 201. Bitwise AND of Numbers Range, Medium 
011 | 89. Gray Code, Medium. Convention: Input 0 expected [0]
011 | 136. Single Number, Medium. 找單身狗. 
011 | 137. Single Number II, Medium. 找單身狗. input [1], output 1. 若想用一個長度為常數(如78629)的數組, 是允許的.
--0 | 260. Single Number III, Medium.
--1 | 393. UTF-8 Validation, Medium. Leetcode自推中有對題意的解釋.

category_end

=================================================
category_xxx

************************
pr_xx

Question:

==
Key:

==
C++ code:

************************
pr_21, Merge Two Sorted Lists, Easy

Question: 

Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

Example:

Input: 1->2->4, 1->3->4
Output: 1->1->2->3->4->4

tao: splice means combine.

==
Key: This is essentially insertion sort. Add the nodes of l2 into l1. Use a pointer pre to scan in l1 from begin to end. Use a pointer called l2 to denote the current node in list l2. For every node in l2 (its pointer is called l2), scan pre in l2 from its beginning, if pre.next is greater than l2, then add l2 to the right of pre.

==
Code Ganker: this algorithm has time complexity O(m + n)
(tao: note that each list will only be traversed once), where m and n are
the lengths of the two lists. Space complexity is O(1).

==
C++ code:

class Solution {
public:
    ListNode* mergeTwoLists(ListNode* l1, ListNode* l2) {
        if(!l1) return l2;
        if(!l2) return l1;

        ListNode* fake_head = new ListNode(0);
        fake_head->next = l1;

        ListNode* p = fake_head;

        while(p->next && l2) {
            if(p->next->val >= l2->val) {
                ListNode* l2Next = l2->next;
                l2->next = p->next;
                p->next = l2;
                l2 = l2Next;
            }

            p = p->next;
        }

        // This is the case when we visited all nodes in l1, but there are still nodes left in l2.
        if(l2) p->next = l2;
        
        return fake_head->next;
    }
};

==
Python code:

class Solution:
    def mergeTwoLists(self, l1, l2):
        if not l1: 
            return l2
        if not l2:
            return l1

        fake_head = ListNode(0)
        fake_head.next = l1
        p = fake_head

        while l2 and p.next:
            if l2.val <= p.next.val:
                l2_next = l2.next
                l2.next = p.next
                p.next = l2
                l2 = l2_next

            p = p.next

        if l2:
            p.next = l2

        return fake_head.next


************************

pr_148, Sort List, Medium

Question:

Sort a linked list in O(n log n) time using constant space complexity.

Example 1:

Input: 4->2->1->3
Output: 1->2->3->4
Example 2:

Input: -1->5->3->4->0
Output: -1->0->3->4->5

==
Key: Use merge sort. Use walker and runner to find the middle node of the list. The runner runs twice faster than walker. The middle node does not need to be precise. After found middle node, split the list into two halves, and call sortList on each half. Then merge the two lists by calling the code in problem 21. Merge Two Sorted Lists.

==
C++ code:

class Solution {
private:
    ListNode* mergeTwoLists(ListNode* l1, ListNode* l2) {
        (Copy the code of problem 21. Merge Two Sorted Lists)
    }

public:
    ListNode* sortList(ListNode* head) {
        if(!head || !head->next) return head;
        
        //Find middle node:

        ListNode* walker = head;
        ListNode* runner = head;
        
        while(runner->next && runner->next->next) {
            walker = walker->next;
            runner = runner->next->next;
        }

        //Break up the list. Use walker as end of the first list.

        ListNode* l1_head = head;
        ListNode* l2_head = walker->next;
        walker->next = NULL;

        ListNode* l1_sorted_head = sortList(l1_head);
        ListNode* l2_sorted_head = sortList(l2_head);

        ListNode* mergedHead = mergeTwoLists(l1_sorted_head, l2_sorted_head);

        return mergedHead;
    }

};

==
Python code:

class Solution:
    def mergeTwoLists(self, l1, l2):
        (Copy the code of problem 21. Merge Two Sorted Lists)

    def sortList(self, head):
        if not head or not head.next:
            return head

        walker = head
        runner = head

        while runner.next and runner.next.next:
            walker = walker.next
            runner = runner.next.next
            # 12345 

        l1_head = head
        l2_head = walker.next

        walker.next = None

        l1_sorted_head = self.sortList(l1_head)
        l2_sorted_head = self.sortList(l2_head)

        merged_head = self.mergeTwoLists(l1_sorted_head, l2_sorted_head)

        return merged_head

************************
pr_147. Insertion Sort List, Medium

Question:

Sort a linked list using insertion sort.

Algorithm of Insertion Sort:

Insertion sort iterates, consuming one input element each repetition, and growing a sorted output list.
At each iteration, insertion sort removes one element from the input data, finds the location it belongs within the sorted list, and inserts it there.
It repeats until no input elements remain.

Example 1:

Input: 4->2->1->3
Output: 1->2->3->4
Example 2:

Input: -1->5->3->4->0
Output: -1->0->3->4->5

==
Key: Create a fakeHead as a the head of a separate List, which initially has only one node (fakeHead). Use a pointer pre to intially point to fakeHead. Use another pointer cur (initialized to head). cur traverses the head List. If cur is smaller than pre->next, then move cur the the left of pre->next, then let pre scan from fakeHead to the right again, until another cur is smaller than pre.

==
C++ Code:

class Solution {
public:
    ListNode* insertionSortList(ListNode* head) {
        if(!head || !head->next) return head;

        ListNode* fake_head = new ListNode(0);
        ListNode* pre = fake_head;
        ListNode* cur = head;

        while(cur) {
            if(!pre->next || (cur->val <= pre->next->val)) {
                ListNode* cur_next = cur->next;
                cur->next = pre->next;
                pre->next = cur;
                cur = cur_next;
                pre = fake_head;
            } else {
                pre = pre->next;
            }
        }

        return fake_head->next;
    }
};

==
Python code:

class Solution:
    def insertionSortList(self, head):
    	if not head or not head.next:
    		return head

    	fake_head = ListNode(0)	
    	pre = fake_head
    	cur = head

    	while cur:
    		if not pre.next or cur.val <= pre.next.val:
    			cur_next = cur.next
    			cur.next = pre.next
    			pre.next = cur
    			cur = cur_next
    			pre = fake_head
    		else:
    			pre = pre.next	

    	return fake_head.next

************************
pr_206. Reverse Linked List, Easy 

Question:

Reverse a singly linked list.

Example:

Input: 1->2->3->4->5->NULL
Output: 5->4->3->2->1->NULL
Follow up:

A linked list can be reversed either iteratively or recursively. Could you implement both?

==
Key:

Iterative: Create a single node called pre. Each time move a node from the list to the right of pre.

Recursive: Call reverseList(head -> next) to reverse all the nodes after head, and then add head to it appropriately.

==
C++ Code (iterative):

class Solution {
public:
    ListNode* reverseList(ListNode* head) {
        if(!head || !head->next) return head;

        ListNode* pre = new ListNode(0);
        ListNode* cur = head;

        while(cur) {
            ListNode* curNext = cur->next;
            cur->next = pre->next;
            pre->next = cur;
            cur = curNext;
        }        

        return pre->next;
    }
};

==
Python code (iterative):

class Solution:
    def reverseList(self, head):
    	if not head or not head.next:
    		return head

    	pre = ListNode(0)
    	cur = head

    	while cur:
    		cur_next = cur.next
    		cur.next = pre.next
    		pre.next = cur
    		cur = cur_next

    	return pre.next	

==
C++ code (recursive):

//Originally from leetcode solution, modified by Tao:

class Solution {
public:
    ListNode* reverseList(ListNode* head) {
        if(!head || !head->next) return head;
        
        ListNode* new_head = reverseList(head->next);
        head->next->next = head;
        head->next = NULL;
        
        return new_head;
    }
};

==
Python code (recursive):

class Solution:
    def reverseList(self, head):
    	if not head or not head.next:
    		return head

    	new_head = self.reverseList(head.next)
    	head.next.next = head
    	head.next = None

    	return new_head

************************
pr_92. Reverse Linked List II, Medium 

Question:

Reverse a linked list from position m to n. Do it in one-pass.

Note: 1 ≤ m ≤ n ≤ length of list.

Example:

Input: 1->2->3->4->5->NULL, m = 2, n = 4
Output: 1->4->3->2->5->NULL

==
Key: Use a pointer pre to point to the node on the left of node m. Use another pointer cur which is intialized to be the node on the right of node m. Each time move cur to the right of pre, then cur = cur->next. Need a fakeHead.

==
Code:

class Solution {
public:
    ListNode* reverseBetween(ListNode* head, int m, int n) {
        if(!head || !head->next || n == 1) return head; 
        
        ListNode* fakeHead = new ListNode(0);
        fakeHead->next = head;
        ListNode* pre = fakeHead;
        
        for(int i = 1; i <= m - 1; ++i) pre = pre->next;
        
        ListNode* nodeM = pre->next;
        ListNode* cur = nodeM->next;

        for(int i = 1; i <= n - m; ++i) {
            ListNode* curNext = cur->next;
            cur->next = pre->next;
            pre->next = cur;
            cur = curNext;
        }

        nodeM->next = cur;

        return fakeHead->next;
    }
};

=================================================
category_tree

************************
pr_94. Binary Tree Inorder Traversal, Medium 

Question:

Given a binary tree, return the inorder traversal of its nodes' values.

Example:

Input: [1,null,2,3]
   1
    \
     2
    /
   3

Output: [1,3,2]
Follow up: Recursive solution is trivial, could you do it iteratively?

==
Key:

Recursive: write a "void helper(TreeNode* node, vector<int>& res)", whose functionality is to in-order traversal the subtree having "node" as its root, and put the result in res. Then in this helper function, call itself on node->left, then add node to res, then call itself on node->right.

Iterative: put all nodes on the left edge of the tree into a stack. Each time get a node from the stack, if the right child of this node exisits, then in the subtree which has this node as root, put all nodes on the left edge of this substree into this stack.

==
C++ code (recursive):

//This code was originally from leetcode discussion, and modified by Tao.

class Solution {
public:
	vector<int> inorderTraversal(TreeNode* root) {
		vector<int> res;
		helper(root, res);
		return res; //Returns a copy of the vector
	}

private:
	void helper(TreeNode* node, vector<int>& res) {
		if(!node) return;

		helper(node->left, res);
		res.push_back(node->val);
		helper(node->right, res);
	}
};

==
C++ code (iterative):

//The code in Leetcode solution is simpler, but here I still use tao's code because it is easier to understand and remember.

class Solution {
public:
	vector<int> inorderTraversal(TreeNode* root) {
    	vector<int> res;
    	if(!root) return res;

        stack<TreeNode*> stack;
        TreeNode* cur = root;

        while(cur) {
            stack.push(cur);
            cur = cur->left;
        }

        while(!stack.empty()) {
            TreeNode* top = stack.top();
            stack.pop();

            res.push_back(top->val);

            if(top->right) {
                TreeNode* n = top->right;
                while(n) {
                    stack.push(n);
                    n = n->left;
                }
            }
        }

    	return res;
	}
};

************************
pr_102. Binary Tree Level Order Traversal, Easy

Question:

Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).

For example:
Given binary tree [3,9,20,null,null,15,7],
    3
   / \
  9  20
    /  \
   15   7
return its level order traversal as:
[
  [3],
  [9,20],
  [15,7]
]

==
Key: Use a queue. Use two numbers: cur_num (number of nodes left in the current level), next_num (number of nodes left in the next level). First add root to the queue. Then in the loop, in each iteration, take a node from the queue, add it to the result vector, if this node has left child then add it to the queue, if this node has right child then add it to the queue.

==
C++ code:

Used CodeGanker style code. The leetcode discusison code is simpler, but still use CodeGanker style code because it is easier to understanad and remember.

class Solution {
public:
    vector<vector<int>> levelOrder(TreeNode* root) {
		vector<vector<int>> res;
		if(!root) return res;

		vector<int> item;

		queue<TreeNode*> q;
		q.push(root);
		int cur_num = 1, next_num = 0;

		while(!q.empty()) {
			TreeNode* cur = q.front();
			item.push_back(cur->val);
			q.pop();
			--cur_num;

			if(cur->left) {
				q.push(cur->left);
				++next_num;
			}

			if(cur->right) {
				q.push(cur->right);
				++next_num;
			}

			if(cur_num == 0) {
				cur_num = next_num;
				next_num = 0;
				res.push_back(item); //Pass by value (pass a copy of item)
				item.clear();
			}
		}

		return res;
    }
};

************************
pr_100. Same Tree, Easy.

Question:

Given two binary trees, write a function to check if they are the same or not.

Two binary trees are considered the same if they are structurally identical and the nodes have the same value.

Example 1:

Input:     1         1
          / \       / \
         2   3     2   3

        [1,2,3],   [1,2,3]

Output: true

Example 2:

Input:     1         1
          /           \
         2             2

        [1,2],     [1,null,2]

Output: false

Example 3:

Input:     1         1
          / \       / \
         2   1     1   2

        [1,2,1],   [1,1,2]

Output: false


==
Key: Recursively call isSameTree() on the left and right subtree.

==
C++ code:

class Solution {
public:
    bool isSameTree(TreeNode* p, TreeNode* q) {
    	if(!p && !q) return true;
        if(!p || !q) return false;

        if(p->val != q->val) return false; 

        return isSameTree(p->left, q->left) && isSameTree(p->right, q->right);
    }
};

=================================================
category_binary_search_tree

************************
pr_230. Kth Smallest Element in a BST, Medium 

Question:

Given a binary search tree, write a function kthSmallest to find the kth smallest element in it.

Note: 
You may assume k is always valid, 1 ≤ k ≤ BST's total elements.

Example 1:

Input: root = [3,1,4,null,2], k = 1
   3
  / \
 1   4
  \
   2
Output: 1

Example 2:

Input: root = [5,3,6,2,4,null,null,1], k = 3
       5
      / \
     3   6
    / \
   2   4
  /
 1
Output: 3

Follow up:
What if the BST is modified (insert/delete operations) often and you need to find the kth smallest frequently? How would you optimize the kthSmallest routine?

==
Key: Write a function to find the size of a tree recursively. Then do a binary search to find the k-th smallest node. Note that in the binary search, we only need to find the size of the left subtree of root, no need to find the size of the right subtree of the root.

Note: this method looks preliminary and slow, especially finding the size of a subtree. But it actually looks OK, because this is what William's code is like, and my C++ code ran faster than 99.16% of C++ online submissions.

==
C++ code:

class Solution {
public:
    int kthSmallest(TreeNode* root, int k) {
     	if(!root) return 0;
     	if(!root->left && !root->right) return root->val;

     	int left_size = tree_size(root->left);

     	if(k <= left_size) return kthSmallest(root->left, k);
     	else if(k == left_size + 1) return root->val;
     	else return kthSmallest(root->right, k - left_size - 1);
    }

private:
	int tree_size(TreeNode* root) {
		if(!root) return 0;
		return tree_size(root->left) + tree_size(root->right) + 1;
	}
};

Solution for the follow up in the question (from online, another solution from online also did the same):

If we can change the BST node structure, We can add a new Integer to mark the number of element in the left sub-tree.
when the node is not null.
1. If k == node.leftNum + 1, return node
2. if k > node.leftNum + 1, make k -= node.leftNum + 1, and then node = node.right
3. otherwise, node = node.left

The time complexity of algorithm above will be O(h), h is the height of the input tree. Tao: because h = O(log n),  and binary search's time complexity is also O(log n).

=================================================
category_array

************************
pr_35. Search Insert Position, Medium.

Question:

Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You may assume no duplicates in the array.

Example 1:

Input: [1,3,5,6], 5
Output: 2

Example 2:

Input: [1,3,5,6], 2
Output: 1

Example 3:

Input: [1,3,5,6], 7
Output: 4

Example 4:

Input: [1,3,5,6], 0
Output: 0


==
Key: Binary search. This problem can be used as a formula for binary search. Tao's code uses the Chiu Chang template: always use while(l < r - 1), which means that after the while, l and r are two neighboring numbers.

==
C++ code:

class Solution {
public:
    int searchInsert(vector<int>& nums, int target) {
    	int n = nums.size();
        if(n == 0) return 0;

        int l = 0, r = n - 1;

        while(l < r - 1) {
        	int m = (l + r) / 2;

        	if(target == nums[m]) return m;
        	else if(target < nums[m]) r = m;
        	else l = m;
        }

        if(target <= nums[l]) return l;
        if(target <= nums[r]) return r;
        if(target > nums[r]) return r + 1;

        return 0;
    }
};

=================================================
category_trie

************************
pr_208. Implement Trie (Prefix Tree), Medium 

Question:

Implement a trie with insert, search, and startsWith methods.

Example:

Trie trie = new Trie();

trie.insert("apple");
trie.search("apple");   // returns true
trie.search("app");     // returns false
trie.startsWith("app"); // returns true
trie.insert("app");   
trie.search("app");     // returns true

Note:
- You may assume that all inputs are consist of lowercase letters a-z.
- All inputs are guaranteed to be non-empty strings.

==
Key: 

Let the trie Node class have the following members:

char label; //Value of the character in this node
bool end_of_word; //Whether this node is the end of a word
Node* next[26]; //Child nodes

Write two helper functions:

void insert_at_node(Node* node, string word): insert word in a subtrie whose root is node. Recursively call itself.

Node* get_last(Node* node, string prefix): get the node which corresponds to the last character in prefix. If prefix does not exist in the trie, then return null. Recursively call itself.

==
The following is an example of a trie, which contains the word "cbd":

                                 root
                                  |
 ------------------------------------------------------------------
 |     |                          |                               |
null  null                        c                              null
                                  |
              -------------------------------------------
              |              |                   |      |  
             null            b                  null   null
                             |
                 ----------------------
                 |     |     |    |   |      
                null  null  null  d  null


Tao's conclusion about trie:

1. The root does not have a character.
2. Every node has 26 children. If a character exists, this child node is not null. Otherwise this child node is null.

==
C++ code:

The code in leetcode discussion is simpler than tao's code below, but tao's code is easier to understand and remember.

#include <string>
#include <cstring> //This is to use memset below
#include <iostream>
using namespace std;

class Node {
public:
    char label;
    bool end_of_word;
    Node* next[26];
    
    Node() = default;
    Node(char label_): label(label_), end_of_word(false) {memset(next, 0, sizeof(next));} //Have to use memset, otherwise LeetCode online judge reports error.
};

class Trie {
private:
    Node* root;

    void insert_at_node(Node* node, string word) {
        if(word.size() == 0) {
            node->end_of_word = true;
            return;
        }

        char label = word[0];
        int index = label - 'a';
        if(!node->next[index]) node->next[index] = new Node(label); 
        insert_at_node(node->next[index], word.substr(1, word.size() - 1));
    }

    Node* get_last(Node* node, string prefix) {
        if(prefix.size() == 0) return node;

        char label = prefix[0];
        int index = label - 'a';
        Node* child = node->next[index];
        if(!child || child->label != label) return NULL;

        return get_last(child, prefix.substr(1, prefix.size() - 1));        
    }

public:   
    Trie() {
        root = new Node('#');
    }
    
    void insert(string word) {
        insert_at_node(root, word);
    }
    
    bool search(string word) {
        Node* last = get_last(root, word);
        return last && last->end_of_word;
    }
    
    bool startsWith(string prefix) {
        return get_last(root, prefix);
    }
};

=================================================
category_graph

************************
pr_133. Clone Graph, Medium.

Question:

Given the head of a graph, return a deep copy (clone) of the graph. Each node in the graph contains a label (int) and a list (List[UndirectedGraphNode]) of its neighbors. There is an edge between the given node and each of the nodes in its neighbors.

Tao: from leetcode discussion, many people say that the question is actually a directed graph.

==
Key: Both BFS and DFS use a map to save the mapping from the original node and its copy.

==
C++ code:

BFS 
(tao's code simplied according to leetcode discussion):

class Solution {
private:
    unordered_map<UndirectedGraphNode*, UndirectedGraphNode*> node_map;

public:
    UndirectedGraphNode *cloneGraph(UndirectedGraphNode *node) {
        if(!node) return node;
        
        queue<UndirectedGraphNode*> q;
        q.push(node);

        UndirectedGraphNode* node_copy = new UndirectedGraphNode(node->label);
        node_map[node] = node_copy;

        while(!q.empty()) {
            UndirectedGraphNode* front = q.front();
            q.pop();
            
            UndirectedGraphNode* front_copy = node_map[front];

            for(UndirectedGraphNode* nb: front->neighbors) {
                if(node_map.find(nb) == node_map.end()) {
                    UndirectedGraphNode* nb_copy = new UndirectedGraphNode(nb->label);
                    node_map[nb] = nb_copy;    
                    q.push(nb);              
                } 

                front_copy->neighbors.push_back(node_map[nb]);
            }

        }

        return node_copy;
    }
};

--
DFS:

class Solution {
private:
    unordered_map<UndirectedGraphNode*, UndirectedGraphNode*> node_map;

public:
    UndirectedGraphNode *cloneGraph(UndirectedGraphNode *node) {
        if(!node) return node;
        UndirectedGraphNode* node_copy = new UndirectedGraphNode(node->label);
        node_map[node] = node_copy;
                
        for(UndirectedGraphNode* nb: node->neighbors) {

            if(node_map.find(nb) == node_map.end()) {
                UndirectedGraphNode* nb_copy = cloneGraph(nb);
                node_map[nb] = nb_copy;
                node_copy->neighbors.push_back(nb_copy);
            } else {
                node_copy->neighbors.push_back(node_map[nb]);
            }
            
        }

        return node_copy;
    }
};

=================================================
category_string

************************
pr_8. String to Integer (atoi), Easy 

Question:

Implement atoi which converts a string to an integer.

The function first discards as many whitespace characters as necessary until the first non-whitespace character is found. Then, starting from this character, takes an optional initial plus or minus sign followed by as many numerical digits as possible, and interprets them as a numerical value.

The string can contain additional characters after those that form the integral number, which are ignored and have no effect on the behavior of this function.

If the first sequence of non-whitespace characters in str is not a valid integral number, or if no such sequence exists because either str is empty or it contains only whitespace characters, no conversion is performed.

If no valid conversion could be performed, a zero value is returned.

Note:

Only the space character ' ' is considered as whitespace character.
Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−2^31,  2^31 − 1]. If the numerical value is out of the range of representable values, INT_MAX (2^31 − 1) or INT_MIN (−2^31) is returned.

Example 1:

Input: "42"
Output: 42

Example 2:

Input: "   -42"
Output: -42
Explanation: The first non-whitespace character is '-', which is the minus sign.
             Then take as many numerical digits as possible, which gets 42.

Example 3:

Input: "4193 with words"
Output: 4193
Explanation: Conversion stops at digit '3' as the next character is not a numerical digit.

Example 4:

Input: "words and 987"
Output: 0
Explanation: The first non-whitespace character is 'w', which is not a numerical 
             digit or a +/- sign. Therefore no valid conversion could be performed.
Example 5:

Input: "-91283472332"
Output: -2147483648
Explanation: The number "-91283472332" is out of the range of a 32-bit signed integer.
             Thefore INT_MIN (−231) is returned.

==
Key: Just remember the corner cases: 
"+1": positive sign
"-000000000000001": leading 0
overflow.

Remember: Tao once proved that "value * 10 + d > 2147483647" is equivalent to "value > (2147483647 - d) / 10)". Do not waste time to prove it again, just remember it.

==
C++ code:
(Tao's code simplified according to Tao's earlier Java code):

#include<iostream>
#include<vector>
#include<string>
#include<climits> //Include this for INT_MAX, INT_MIN
using namespace std;

class Solution {
public:
    int myAtoi(string str) {
        if(str.size() == 0) return 0;

        //trim
        str.erase(0, str.find_first_not_of(' '));
        str.erase(str.find_last_not_of(' ') + 1);

        int sign = 1, res = 0;

        if(str[0] == '-' || str[0] == '+') {
            if(str[0] == '-') sign = -1;
            str.erase(0, 1);
        }

        if(!isdigit(str[0])) return 0;

        //Remove leading 0
        while(str[0] == '0') str.erase(0, 1);

        for(char c: str) {
            if(!isdigit(c)) break;
            int digit = c - '0';

            //The following is from res * 10 + digit > INT_MAX
            if(sign > 0 && res > (INT_MAX - digit) / 10) return INT_MAX;

            //The following is from res * 10 + digit > -INT_MIN
            //Note it can not be written as res > (-INT_MIN - digit) / 10, 
            //because -INT_MIN is 1 bigger than INT_MAX, so -INT_MIN overflows,
            //so we need to multiply both sides by -1 to avoid writting -INT_MIN: 
            //-res < (INT_MIN + digit) / 10 

            if(sign < 0 && -res < (INT_MIN + digit) / 10) return INT_MIN;

            res = res * 10 + digit;
        }

        return sign * res;
    }
};

=================================================
category_array

************************
pr_1. Two Sum, Medium

Question:

Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:

Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].

==
Key: Use map. Put an element as key, and the index of this element as value. The only tricky part is to deal with duplicate elements in the input array.

==
C++ code:
(The leetcode discussion code is simpler, but tao's code is easier to work out, so still use tao's code below).

class Solution {
private:
    unordered_map<int, int> int_map;

public:
    vector<int> twoSum(vector<int>& nums, int target) {
        int n = nums.size();
        if(n < 2) return nums;

        vector<int> res;

        for(int i = 0; i < n; ++i) {
            int cur = nums[i];
            int other = target - cur;

            if(int_map.find(cur) == int_map.end()) int_map[cur] = i;
            if(int_map.find(other) != int_map.end() && int_map[other] != i)  
                res = {int_map[other], i};          
        }

        return res;
    }
};










