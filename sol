Note:
- If not specified, all the code are written by Tao.
- C++ code uses C++ 2011, Python code uses Python 3.
  So C++ code needs to be compiled using: std=c++11,
  and Python code needs to be run using: python3 filename.py
- When recording my code here, do not paste the include statements. Only pasete when I included some uncommon things, like <climits>.
- Only use prxxx in categories and in the solution. Elsewhere should use pr xxx. This way helps searching for prxxx.
- Tao's summary about DP: pr 139. Word Break, Medium

************************************************
Summary:

- For questions like List, Tree, array, after completed the code, the easiest way to avoid being lazy and escaping checking is to walk through some simplest case (like a three node List, a three node Tree, and a three element array).

- For questions in List, how to determine what xxx to wrote in the while(xxx) {...}, like while(!cur) {...} ?
  the way is to look into the yyy in while(...){yyy} or while(!cur && yyy) {...}. If yyy used cur->val, then should add !cur in the condition. Similarly, if yyy used cur->next->val, then should add !cur->next in the condition.

- If I need to call a function f() recursively: y = f(x), I can always reduce the computation by putting the already computed pairs (x, y) in a map. Then before calling y = f(x), if x is in the map, just fetch the value y directly from the map. If not exits, then call y = f(x). This is proven in "pr 126. Word Ladder II": if I do not store them in map, the running time was roughly 1700 ms and sometimes it has time limit exceeded, after storing in map, the running time was reduced to roughly 500 ms and it never has time limit exceeded.

************************************************
Template:

=================================================
catxxx

************************
prxx

Question:

==
Key:

==
C++ code:

************************************************
Categories:

catbegin

=================================================
catlist

1111 | pr21. Merge Two Sorted Lists, Easy. 
0111 | pr148. Sort List, Medium
0111 | pr147. Insertion Sort List, Medium 
1111 | pr206. Reverse Linked List, Easy 
1111 | pr92. Reverse Linked List II, Medium 
011 | pr25. Reverse Nodes in k-Group, Hard. 題目的意思是每次都要反轉k個, 直到剩下的元素個數不够k個, 如題目中的For k = 2, you should return: 2->1->4->3->5, 即1->2反轉了, 3->4也要反轉, 而剩下的只有一個5, 不够反轉, 所以就不繼續反轉了. 另外, 當k大於list長度時, 則甚麼都不做, 返回原list 
011 | pr234. Palindrome Linked List, Easy 
111 | pr61. Rotate List, Medium. k可以大於list長度
111 | pr143. Reorder List, Medium.  
111 | pr141. Linked List Cycle, Medium
011 | pr142. Linked List Cycle II, Medium 
011 | pr138. Copy List with Random Pointer, Hard. 
111 | pr83. Remove Duplicates from Sorted List, Easy 
011 | pr82. Remove Duplicates from Sorted List II, Medium 
011 | pr86. Partition List, Medium 
011 | pr24. Swap Nodes in Pairs, Medium 
111 | pr19. Remove Nth Node From End of List, Easy 
111 | pr160. Intersection of Two Linked Lists, Easy 
111 | pr203. Remove Linked List Elements, Easy 
011 | pr237. Delete Node in a Linked List, Easy 
011 | pr23. Merge k Sorted Lists, Hard 
 
=================================================
cattree

0011 | pr94. Binary Tree Inorder Traversal, Medium 
011 | pr144. Binary Tree Preorder Traversal, Medium 
000 | pr145. Binary Tree Postorder Traversal, Hard 
0111 | pr102. Binary Tree Level Order Traversal, Easy 
011 | pr107. Binary Tree Level Order Traversal II, Easy 
011 | pr103. Binary Tree Zigzag Level Order Traversal, Medium 
1111 | pr100. Same Tree, Easy. 
011 | pr101. Symmetric Tree, Easy 
011 | pr116. Populating Next Right Pointers in Each Node, Medium. 
001 | pr117. Populating Next Right Pointers in Each Node II, Hard.  
111 | pr104. Maximum Depth of Binary Tree, Easy. 
111 | pr111. Minimum Depth of Binary Tree, Easy. 
011 | pr156. Binary Tree Upside Down, Medium 
011 | pr199. Binary Tree Right Side View, Medium 
111 | pr226. Invert Binary Tree, Easy 
001 | pr129. Sum Root to Leaf Numbers, Medium. 
111 | pr112. Path Sum, Easy. 
011 | pr113. Path Sum II, Medium. 
000 | pr124. Binary Tree Maximum Path Sum, Hard. 題意節點的值可為負數.
011 | pr110. Balanced Binary Tree, Easy. 
001 | pr114. Flatten Binary Tree to Linked List, Medium. 題意flatten後每個節點的左兒子為null, 若不弄成null, 則通不過或報超時.
011 | pr105. Construct Binary Tree from Preorder and Inorder Traversal, Medium 
011 | pr106. Construct Binary Tree from Inorder and Postorder Traversal, Medium 
011 | pr222. Count Complete Tree Nodes, Medium 
--0 | pr298. Binary Tree Longest Consecutive Sequence, Medium. 題意是最長序列要是遞增的.
--0 | pr314. Binary Tree Vertical Order Traversal, Medium

=================================================
catbst

0111 | pr230. Kth Smallest Element in a BST, Medium 
000 | pr99. Recover Binary Search Tree, Hard. 本題遞歸法也可以.
011 | pr235. Lowest Common Ancestor of a Binary Search Tree, Easy 
011 | pr236. Lowest Common Ancestor of a Binary Tree, Medium. 題意輸入的樹中可能有相同值的節點.
010 | pr96. Unique Binary Search Trees. Medium.
010 | pr95. Unique Binary Search Trees II, Medium. 
011 | pr173. Binary Search Tree Iterator, Medium. 
001 | pr98. Validate Binary Search Tree, Medium. 題意root為null時, 也算BST.
011 | pr108. Convert Sorted Array to Binary Search Tree, Medium 
001 | pr109. Convert Sorted List to Binary Search Tree, Medium 
--1 | pr255. Verify Preorder Sequence in Binary Search Tree, Medium   

=================================================
cattrie

0111 | pr208. Implement Trie (Prefix Tree), Medium 
010 | pr211. Add and Search Word - Data structure design, Medium 
001 | pr79. Word Search, Medium. 不是Trie題 
000 | pr212. Word Search II, Hard. 題意結果要sort.
--1 | pr422. Valid Word Square, Easy.
--1 | pr425. Word Squares, Hard. 輸入數組中的單詞可以重復使用.

=================================================
catgraph

0101 | pr133. Clone Graph, Medium. 
0101 | pr127. Word Ladder, Medium. 
0101 | pr126. Word Ladder II, Hard.
001 | pr207. Course Schedule, Medium. 
010 | pr210. Course Schedule II, Medium. 注意本題只是Medium.
--1 | pr261. Graph Valid Tree, Medium. 若輸入edges=[]: 則n=1時返回true, n!=時返回false.
--0 | pr332. Reconstruct Itinerary, Medium.

=================================================
catstring

0111 | pr8. String to Integer (atoi), Easy 
011 | pr14. Longest Common Prefix, Easy 
111 | pr38. Count and Say, Easy 
011 | pr28. Implement strStr(), Easy. "aa", "" -> 0. "", "aa" -> -1. needle可能比haystack長.
111 | pr242. Valid Anagram, Easy. Anagram：单词里的字母的种类和数目没有改变，只是改变了字母的排列顺序。
011 | pr49. Group Anagrams, Medium 
011 | pr68. Text Justification, Hard. [""], 0 -> [""]. [""], 2 -> ["  "]
--0 | pr418. Sentence Screen Fitting, Medium.
011 | pr71. Simplify Path, Medium. 
011 | pr43. Multiply Strings, Medium 
011 | pr6. ZigZag Conversion, Easy 
111 | pr58. Length of Last Word, Easy. "a " -> 1
011 | pr157. Read N Characters Given Read4, Easy. 題意: read4(buffer)作用從文件中讀入到buffer中, read(buf, n)作用是從文件中讀入到buf中. buffer和buf不是同一個數組, buf是從buffer中讀入的. read4中已實現文件offset: 比如第一次調用read4時, read4讀到文件中的a處, 第二次調用read4時, read4就從文件中a的下一個字符開始讀. Reader4這個類我E3已經寫好了, 直接調用就是. 測試時注意文件末尾都有一個ascii=10的newline符作為結束符.
011 | pr158. Read N Characters Given Read4 II - Call multiple times, Hard
011 | pr3. Longest Substring Without Repeating Characters, Medium  
001 | pr159. Longest Substring with At Most Two Distinct Characters, Hard. 題目中即e和c為那兩個distinct characters. 注意題目是說at most 2 dinstinct characters, 而不是at most 2 repeating characters. 
--1 | pr340. Longest Substring with At Most K Distinct Characters, Hard.
111 | pr165. Compare Version Numbers, Easy. 輸入的version有可能為"1", "1.0", "0.0.1" 
011 | pr179. Largest Number, Medium 
011 | pr9. Palindrome Number, Easy 
011 | pr125. Valid Palindrome, Easy 
011 | pr5. Longest Palindromic Substring, Medium 
010 | pr214. Shortest Palindrome, Hard 
011 | pr131. Palindrome Partitioning, Medium. II要比本題簡單些, 但本題也不難, 所以還是先做本題
001 | pr132. Palindrome Partitioning II, Hard 
011 | pr249. Group Shifted Strings, Easy 
000 | pr30. Substring with Concatenation of All Words, Hard. 
011 | pr186. Reverse Words in a String II, Medium. 本題其實比151題簡單 
011 | pr151. Reverse Words in a String, Medium. 本題與186題的題意不同之處: 本題的input可有leading or trailing spaces, input可有multiple spaces between two words, 本題空簡複雜度可以為 O(n), 而186題要求為O(1). 
011 | pr246. Strobogrammatic Number, Easy.  
011 | pr247. Strobogrammatic Number II, Medium. 文件correct-output-for-check中有正確輸出, 以供檢查. 
011 | pr248. Strobogrammatic Number III, Hard. 文件correct-output-for-check中有正確輸出, 以供檢查. 
011 | pr93. Restore IP Addresses, Medium. 一個有效的IP地址由4個數字(我給每個這樣數字叫vrangh)組成, 每個vrangh在0到255之間inclusively. 若vrangh只有一位數, 則它可以為0; 否則若vrangh位數大於一, 則不能以0開頭.  
0111| pr139. Word Break, Medium 
0111 | pr140. Word Break II, Hard
011 | pr22. Generate Parentheses, Medium 
011 | pr241. Different Ways to Add Parentheses, Medium, 輪入可能只有一個數, 沒有運算符
011 | pr20. Valid Parentheses, Easy 
000 | pr32. Longest Valid Parentheses, Hard. 
011 | pr17. Letter Combinations of a Phone Number, Medium 
011 | pr97. Interleaving String, Hard. 輸入String中任何一個都有可能長度為0.
010 | pr115. Distinct Subsequences, Hard 
011 | pr91. Decode Ways, Medium 
000 | pr44. Wildcard Matching, Hard. 
010 | pr10. Regular Expression Matching, Hard. 題意不清楚, 可見key首.
011 | pr161. One Edit Distance, Medium. OJ中題目沒講Edit Distance意思, 可先看72題題目.
011 | pr72. Edit Distance, Hard. 
010 | pr76. Minimum Window Substring, Hard 
101 | pr205. Isomorphic Strings, Easy 
011 | pr187. Repeated DNA Sequences, Medium 
010 | pr87. Scramble String, Hard. 若兩個輸入String是一樣的(如s1=”helo”, s2=”helo”), 則它們也算是互為scramble的.
--1 | pr257. Binary Tree Paths, Easy.
--0 | pr388. Longest Absolute File Path, Medium. 輸入"a", 輸出0, 因為是找file, 必須有點. 
--1 | pr394. Decode String, Medium.
--0 | pr471. Encode String with Shortest Length, Hard. 本題是上題反過來.
--0 | pr271. Encode and Decode Strings, Medium. 本題跟394和471無關. 本題考查的不是壓縮空間, 而是如何將一群string連接好後再將它們分開.
--1 | pr288. Unique Word Abbreviation, Easy.  

=================================================
catarray

0111 | pr1. Two Sum, Medium. 
111 | pr167. Two Sum II - Input array is sorted, Medium 
011 | pr170. Two Sum III - Data structure design, Easy. 
001 | pr15. 3Sum, Medium 
011 | pr16. 3Sum Closest, Medium 
--1 | pr259. 3Sum Smaller, Medium
001 | pr18. 4Sum, Medium 
011 | pr88. Merge Sorted Array, Easy 
011 | pr41. First Missing Positive, Hard. 題目中的positive integer是指從1開始的. 非in-place的也可通過(Easy級別). 盡量寫成寫成in-place的. 注意題目要求constant space. 若輸入[], 則要求返回1.
111 | pr59. Spiral Matrix II, Medium. 本題本質就是旋轉遍歴一個正方形數組. 本題是I的特殊情況, 先做本題, 可以幫助推出I中的公式等.
011 | pr54. Spiral Matrix, Medium. 本題本質就是旋轉遍歴一個任意數組. 
111 | pr48. Rotate Image, Medium 
011 | pr11. Container With Most Water, Medium. 返回的是面積.
000 | pr42. Trapping Rain Water, Hard. 求整個數組中的總水量, 而不是單個坑中能放的最大水量 
111 | pr73. Set Matrix Zeroes, Medium 
011 | pr31. Next Permutation, Medium. 题目的意思是：123的全排列按字典顺序為: 123 132 213 231 312 321. 即將123當作一個單詞, 132當作另一個單詞, 則123在字典中是排在132前面的
111 | pr27. Remove Element, Easy 
111 | pr26. Remove Duplicates from Sorted Array, Easy 
011 | pr80. Remove Duplicates from Sorted Array II, Medium 
011 | pr75. Sort Colors, Medium 
111 | pr169. Majority Element, Easy, 爭取不用Map.
101 | pr229. Majority Element II, Medium. 題目中沒說一定有majority, 或多少個majority. 169題說的一定有.
010 | pr189. Rotate Array, Easy 
010 | pr238. Product of Array Except Self, Medium. 注意output array和input array是不同的數組. The output array does not count as extra space. 即不要求in-place.
011 | pr243. Shortest Word Distance, Easy 
011 | pr244. Shortest Word Distance II, Medium 
011 | pr245. Shortest Word Distance III, Medium 
001 | pr251. Flatten 2D Vector, Medium 
011 | pr240. Search a 2D Matrix II. Medium. 本題跟I沒甚麼卵關係. 
011 | pr217. Contains Duplicate, Easy 
111 | pr219. Contains Duplicate II, Easy  
011 | pr220. Contains Duplicate III, Medium. 輸入數組的元素可能為2147483647
000 | pr4. Median of Two Sorted Arrays, Hard. Median的定義為(參考了wiki): 若總共有寄數個數, 則取中間那個數; 若總共有偶數個數, 則取中間的兩個數的平均值. 所以本題返回的是一個double.
111 | pr198. House Robber, Easy 
011 | pr213. House Robber II, Medium 
011 | pr135. Candy, Hard. 注意是neighbors, 即只要和自己左右相鄰的比較就可以了(即按local的順序給糖, 而不是按global的順序給糖)
011 | pr134. Gas Station, Medium. 題目中travel around the circuit意思是回到最初的出發點上.
011 | pr55. Jump Game, Medium. 本題是判斷能否跳完.
001 | pr45. Jump Game II, Hard. 本題是返回跳完所需最少步數.
011 | pr121. Best Time to Buy and Sell Stock, Medium. 
011 | pr122. Best Time to Buy and Sell Stock II, Medium
001 | pr188. Best Time to Buy and Sell Stock IV, Hard. 先做IV, 再做III. III就是IV的特列. 有一個test case的k遠大於數組長度一半, 要先特殊處理. 要時間O(N^2)才能通過.
111 | pr123. Best Time to Buy and Sell Stock III, Hard 
010 | pr53. Maximum Subarray, Medium. 要返回的結果是largest sum, 而不是這個subarray. 網上表明, 本題不存在好的divide and conquer方法, 不要再浪費時間去想divide and conquer, 而用標准的O(N)方法即可.
011 | pr152. Maximum Product Subarray, Medium 
1111 | pr35. Search Insert Position, Medium. 題意是若找不到, 則返回 'target插入後, target在數組中的位置'
011 | pr34. Search for a Range, Medium. 
011 | pr33. Search in Rotated Sorted Array, Hard. 本題的元素無重復, 本題的II即元素有重復的情況
011 | pr81. Search in Rotated Sorted Array II, Medium. 注意本題只要求判斷target在不在數組中, 沒要求返回其位置(本題的I要求返回位置).
111 | pr153. Find Minimum in Rotated Sorted Array, Medium. 本題中的元素是沒有重復的, 本題的II即元素有重復之情況
011 | pr154. Find Minimum in Rotated Sorted Array II, Hard. 
011 | pr162. Find Peak Element, Medium 
011 | pr209. Minimum Size Subarray Sum, Medium.
010 | pr128. Longest Consecutive Sequence, Hard. 沒有consecutive sequence時, 返回1, 如[3,8,29]
011 | pr239. Sliding Window Maximum, Hard. 
000 | pr215. Kth Largest Element in an Array, Medium. 注意不是Kth smallest.
--1 | pr256. Paint House, Medium.
--0 | pr303. Range Sum Query - Immutable, Easy.
--1 | pr304. Range Sum Query 2D - Immutable, Medium.
--0 | pr307. Range Sum Query - Mutable, Medium. 這個係列的四道題, 就本題最難.
--1 | pr308. Range Sum Query 2D - Mutable, Hard.
--0 | pr406. Queue Reconstruction by Height, Medium.
--0 | pr361. Bomb Enemy, Medium.
--1 | pr281. Zigzag Iterator, Medium.
--1 | pr373. Find K Pairs with Smallest Sums, Medium. 注意輸入數組已經是排好序的.
--1 | pr346. Moving Average from Data Stream, Easy. 注意題目要求結果是double, 而不是int.
--1 | pr283. Move Zeroes, Easy.

=================================================
catboard

1111 | pr36. Valid Sudoku, Easy. 
011 | pr51. N-Queens, Hard. 規則就是要求 每個皇后所在的横竪斜上(不只是一步, 而是整個横竖斜大直線上)都沒有其它皇后.
011 | pr52. N-Queens II, Hard 
010 | pr37. Sudoku Solver, Hard. 按9*9的board寫, 也能通過.
011 | pr200. Number of Islands, Medium. 盡量用BFS, 不要用DFS. 
001 | pr305. Number of Islands II, Hard.  
000 | pr130. Surrounded Regions, Medium. 題意是大寫字母O, 不是數字0, 也不是小寫字母o.
011 | pr120. Triangle, Medium. 題目中的adjacent number是這麼個意思: 設i為行, j為列, 則triangle[i][j]在下一行的adjacent number為triangle[i+1][j]和triangle[i+1][j+1]兩個.
011 | pr62. Unique Paths, Medium. 注意m為行數, n為列數.
011 | pr63. Unique Paths II, Medium
011 | pr64. Minimum Path Sum, Medium. 本題要返回的是 path sum最小的那條路徑 之path sum
011 | pr174. Dungeon Game, Hard 
011 | pr74. Search a 2D Matrix, Medium. 本題做完後移到本題II前面去.
011 | pr149. Max Points on a Line, Hard. 輸入的點中可能有重合的點, 比如一個可能的輸入為: [[1,1],[1,1],[2,2],[2,2]]
000 | pr84. Largest Rectangle in Histogram, Hard. 本題被我評為Leetcode第一難題. 
011 | pr85. Maximal Rectangle, Hard. 本題要緊跟84題, 不要分開.
011 | pr221. Maximal Square, Medium. 給的是正方形數組, 要求的是正方形. 注意matrix的元素是char, 而不是int.
--0 | pr289. Game of Life, Medium.
--0 | pr317. Shortest Distance from All Buildings, Hard.

=================================================
catcombinatorics

注意本類題目不是所有題都用item-res遞歸法, 甚至可能可以不用遞歸法.

0111 | pr46. Permutations, Medium 
011 | pr47. Permutations II, Hard 
011 | pr60. Permutation Sequence, Medium. 題意: 排列順序是按數字大小排的, 例如132比123大, 故132在123之後.
111 | pr77. Combinations, Medium 
011 | pr254. Factor Combinations, Medium. 更多test case(答案代碼算出的), 按(n, res.size()): (1200, 97), (34500, 197), (80000, 521), 
011 | pr39. Combination Sum, Medium. 本題輸入數組中的元素可以重復選. 輸入數組中的元素既然可以重復選, 那麼輸入數組中的元素就沒必需重復了, 所以可以assume輸入數組中的元素無重復. 本題的二與本題正好相反, 輸入數組中的元素既然不能重復選, 所以輸入數組中的元素是可以重復的. 本題及II, III可以算k-sum係列中的.
011 | pr40. Combination Sum II, Medium. 本題輸入數組中的元素不可以重復選.
011 | pr216. Combination Sum III, Medium. 本題題目跟I和II關係不大.
011 | pr78. Subsets, Medium. 
011 | pr90. Subsets II, Medium


=================================================
catinterval

0111 | pr56. Merge Intervals, Hard  
011 | pr57. Insert Interval, Hard. overlap的convention和56題一樣.
011 | pr252. Meeting Rooms, Easy 
010 | pr253. Meeting Rooms II, Medium 
010 | pr223. Rectangle Area, Easy. 注意本題是求並集, 而不是求交集. rectilinear: 直線的. 
010 | pr218. The Skyline Problem, Hard. buildings[i][j]的i表示第i個building, 即building[i]. 而building[i]是一個有三個元素的數組, 比如building[i] = {Li, Ri, Hi}.
111 | pr228. Summary Ranges, Easy 
011 | pr163. Missing Ranges, Medium. 輸入數組所有元素應該都在[lower, upper]這個范圍內.

=================================================
catarithmetics

0111 | pr7. Reverse Integer, Easy 
111 | pr66. Plus One, Easy. 題目的意思是  輪入數組代表的數  是十进製的, 不是二进製. digit[0]是最高位.
000 | pr65. Valid Number, Hard 
111 | pr70. Climbing Stairs, Easy. 題意是樓梯共有n階, 而不是說人總共必須跨n次.
111 | pr13. Roman to Integer, Easy 
010 | pr12. Integer to Roman, Medium 
011 | pr29. Divide Two Integers, Medium. 5/0 = Integer.MAX_VALUE, -5/0 = Integer.MIN_VALUE
011 | pr166. Fraction to Recurring Decimal, Medium. 5/0返回"2147483647", -5/0返回"-2147483648". 本題代碼中可以用除法(a/b)運算, 只是a和b都是int, (a/b)也是int, 而我們要做的就是算出小數結果. 
111 | pr118. Pascal's Triangle, Easy 
011 | pr119. Pascal's Triangle II, Easy. 此題的row convention與數組是一樣的: [1]為第0行.
011 | pr67. Add Binary, Easy.  
011 | pr2. Add Two Numbers, Medium. 2->4->3表示342(三百四十二). 
111 | pr171. Excel Sheet Column Number, Easy. 26进製, 先做此題, 再做下題 
111 | pr168. Excel Sheet Column Title, Easy. 26进製 
011 | pr172. Factorial Trailing Zeroes, Easy. 題目的意思是找n!的右起連續0的個數, 如若n!=23050078000, 則Trailing Zeroes為3個.
111 | pr204. Count Primes, Easy. 最小的素數是2, 而不是1.
010 | pr233. Number of Digit One, Medium 
000 | pr164. Maximum Gap, Hard. 題目的意思是找輪入數組被排序後的最大跳躍, 這裡的跳躍是指 '排序後的數組' 中相鄰兩個數的差. 注意輸入數組是unsorted.
011 | pr50. Pow(x, n), Medium. n可為負
111 | pr231. Power of Two, Easy. 0和負數都不算power of two.
111 | pr69. Sqrt(x), Medium. 
111 | pr150. Evaluate Reverse Polish Notation, Medium 
011 | pr224. Basic Calculator, Medium. 有括號, 無乘除. 
011 | pr227. Basic Calculator II, Medium. 有乘除, 無括號. 本題與I沒有甚麼卵關係. 
011 | pr202. Happy Number, Easy 
--1 | pr258. Add Digits, Easy

=================================================
catsystem

0101 | pr146. LRU Cache, Hard. 
011 | pr232. Implement Queue using Stacks, Easy. 
111 | pr225. Implement Stack using Queues, Easy. 
001 | pr155. Min Stack, Easy. Convention: 若Min Stack為空, 則top()返回0, pop()直接return, getMin()返回0.

=================================================
catbit

0101 | pr190. Reverse Bits, Easy. 
111 | pr191. Number of 1 Bits, Easy. n可為負數.
011 | pr201. Bitwise AND of Numbers Range, Medium 
011 | pr89. Gray Code, Medium. Convention: Input 0 expected [0]
011 | pr136. Single Number, Medium. 找單身狗. 
011 | pr137. Single Number II, Medium. 找單身狗. input [1], output 1. 若想用一個長度為常數(如78629)的數組, 是允許的.
--0 | pr260. Single Number III, Medium.
--1 | pr393. UTF-8 Validation, Medium. Leetcode自推中有對題意的解釋.

catend

=================================================
catlist

************************
pr21, Merge Two Sorted Lists, Easy

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

pr148, Sort List, Medium

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
pr147. Insertion Sort List, Medium

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
pr206. Reverse Linked List, Easy 

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
pr92. Reverse Linked List II, Medium 

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
cattree

************************
pr94. Binary Tree Inorder Traversal, Medium 

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
pr102. Binary Tree Level Order Traversal, Easy

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
pr100. Same Tree, Easy.

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
catbst

************************
pr230. Kth Smallest Element in a BST, Medium 

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
cattrie

************************
pr208. Implement Trie (Prefix Tree), Medium 

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
catgraph

************************
pr133. Clone Graph, Medium.

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

************************
pr127. Word Ladder, Medium

Question:

Given two words (beginWord and endWord), and a dictionary's word list, find the length of shortest transformation sequence from beginWord to endWord, such that:

Only one letter can be changed at a time.
Each transformed word must exist in the word list. Note that beginWord is not a transformed word.
Note:

Return 0 if there is no such transformation sequence.
All words have the same length.
All words contain only lowercase alphabetic characters.
You may assume no duplicates in the word list.
You may assume beginWord and endWord are non-empty and are not the same.

Example 1:

Input:
beginWord = "hit",
endWord = "cog",
wordList = ["hot","dot","dog","lot","log","cog"]

Output: 5

Explanation: As one shortest transformation is "hit" -> "hot" -> "dot" -> "dog" -> "cog",
return its length 5.

Example 2:

Input:
beginWord = "hit"
endWord = "cog"
wordList = ["hot","dot","dog","lot","log"]

Output: 0

Explanation: The endWord "cog" is not in wordList, therefore no possible transformation.

Tao: in Leetcode OJ, the input wordList is type vector<string>&, but in all the C++ code in Leetcode Discussion, the type is unordered_set<string>&. So I guess Leetcode OJ changed its function parameter recently. At first I used vector<string>& directly and it exceeded time limit (also runs very slow in my local computer), then I explicitly converted vector<string>& to unordered_set<string>&, then it passed (and runs much faster in my local computer).

==
Key: BFS. This is a graph problem. The graph of the above Example 1 is as below. Just use ordinary BFS. When it reaches the destination node (endWord), return the level number. 

     hit         1
      |
     hot         2
    /    \
  dot -- lot     3
  /        \
dog ------ log   4
  \        /
     cog         5

==
C++ code:

class Solution {
private:
    unordered_map<string, vector<string>> next_map;
    
    // Gets all the neighboring nodes of s in the graph
    vector<string> get_next(string s, unordered_set<string>& wordList) {
        if(next_map.find(s) != next_map.end()) return next_map[s];
        
        vector<string> res;
            
        for(int i = 0; i < s.size(); ++i) {
            char cur_char = s[i];
            for(char c = 'a'; c <= 'z'; ++c) {
                s[i] = c;
                if(c != cur_char && wordList.find(s) != wordList.end()) res.push_back(s);
            }
            s[i] = cur_char;
        }
        
        next_map[s] = res;
        
        return res;
    }
    
public:
    int ladderLength(string beginWord, string endWord, vector<string>& wordList) {
        if(wordList.size() == 0) return 0;
        queue<string> q;
        unordered_set<string> visited;
        unordered_set<string> word_list_set;

        for(string word: wordList) word_list_set.insert(word);
        
        q.push(beginWord);
        visited.insert(beginWord);
        
        int cur_num = 1, next_num = 0, level = 0;
        
        while(!q.empty()) {
            string cur = q.front();
            q.pop();
            --cur_num;
                        
            if(cur == endWord) return (level + 1);
            
            vector<string> next_vec = get_next(cur, word_list_set);
                   
            if(next_vec.size() == 0) return 0;
            
            for(string next: next_vec) {
                if(visited.find(next) == visited.end()) {
                    q.push(next);
                    visited.insert(next);                   
                    ++next_num;
                }
            }
                  
           if(cur_num == 0) {
                cur_num = next_num;
                next_num = 0;
                ++level;
            }
        }
        
        return 0;
    }
};

************************
pr126. Word Ladder II, Hard

Question:

Given two words (beginWord and endWord), and a dictionary's word list, find all shortest transformation sequence(s) from beginWord to endWord, such that:

1. Only one letter can be changed at a time
2. Each transformed word must exist in the word list. Note that beginWord is not a transformed word.

Note:

- Return an empty list if there is no such transformation sequence.
- All words have the same length.
- All words contain only lowercase alphabetic characters.
- You may assume no duplicates in the word list.
-You may assume beginWord and endWord are non-empty and are not the same.

Example 1:

Input:
beginWord = "hit",
endWord = "cog",
wordList = ["hot","dot","dog","lot","log","cog"]

Output:
[
  ["hit","hot","dot","dog","cog"],
  ["hit","hot","lot","log","cog"]
]

Example 2:

Input:
beginWord = "hit"
endWord = "cog"
wordList = ["hot","dot","dog","lot","log"]

Output: []

Explanation: The endWord "cog" is not in wordList, therefore no possible transformation.

==
Key: BFS + DFS. First use BFS to get all the layers of the graph and store them in a vector. Then use DFS to get the path: for current word, find the path of each of its children, then add current word to the front of each such paths. Before calling function recursively, save the already calcaluated values in a map to reduce computation.

==
C++ code:

class Solution {
private:
    unordered_map<string, vector<string>> next_map;
    unordered_set<string> word_list_set;
    unordered_map<string, vector<vector<string>>> ladders_for_cur_word_map;//Store temporary results before recursive call
    
    // Gets all the neighboring nodes of s in the graph
    vector<string> get_next(string s) {
        if(next_map.find(s) != next_map.end()) return next_map[s];
        
        vector<string> res;
            
        for(int i = 0; i < s.size(); ++i) {
            char cur_char = s[i];
            for(char c = 'a'; c <= 'z'; ++c) {
                s[i] = c;
                if(c != cur_char && word_list_set.find(s) != word_list_set.end()) res.push_back(s);
            }
            s[i] = cur_char;
        }
        
        next_map[s] = res;
        
        return res;
    }

public:    
    vector<vector<string>> findLevels(string beginWord, string endWord) {
        vector<vector<string>> res;
        queue<string> q;
        unordered_set<string> visited;       
        vector<string> level;
        
        q.push(beginWord);
        visited.insert(beginWord);
        
        int cur_num = 1, next_num = 0, level_num = 0;
        
        while(!q.empty()) {
            string cur = q.front();
            q.pop();
            level.push_back(cur);
            --cur_num;
            
            vector<string> next_vec = get_next(cur);
                   
            if(next_vec.size() == 0) return res;
            
            for(string next: next_vec) {
                if(visited.find(next) == visited.end()) {
                    q.push(next);
                    visited.insert(next);                   
                    ++next_num;
                }
            }
                  
           if(cur_num == 0) {
                cur_num = next_num;
                next_num = 0;
                res.push_back(level);
                level.clear();
                ++level_num;
            }
        }
        
        return res;    
    }

    vector<vector<string>> findLaddersForCurWord(string curWord, string endWord, vector<vector<string>>& levels, int cur_level_idx) {
        if(ladders_for_cur_word_map.find(curWord) != ladders_for_cur_word_map.end()) return ladders_for_cur_word_map[curWord];
        vector<vector<string>> res;
        
        if(curWord == endWord) {
            vector<string> item = {endWord};
            res.push_back(item);
            return res;
        }

        vector<string> next_level;
        
        if(cur_level_idx + 1 < levels.size()) 
            next_level = levels[cur_level_idx + 1];
                
        vector<string> children = get_next(curWord); 
        
        for(string next: next_level) {
            if(find(children.begin(), children.end(), next) != children.end()) {
                                
                vector<vector<string>> ladders_for_cur_word;
                
                if(ladders_for_cur_word_map.find(next) != ladders_for_cur_word_map.end()) 
                    //Result already stored in map, fetch it from map:
                    ladders_for_cur_word =  ladders_for_cur_word_map[next];
                else 
                    //Result not stored in map, calculate it:
                    ladders_for_cur_word = findLaddersForCurWord(next, endWord, levels, cur_level_idx + 1);

                for(vector<string> ladder: ladders_for_cur_word) {
                    vector<string> item = ladder;
                    item.insert(item.begin(), curWord);//vector has no push_front() function
                    res.push_back(item);
                }
            }

        }
        
        ladders_for_cur_word_map[curWord] = res;
        
        return res;
    }


    vector<vector<string>> findLadders(string beginWord, string endWord, vector<string>& wordList) {
        vector<vector<string>> res;
        if(wordList.size() == 0) return res;
    
        for(string word: wordList) word_list_set.insert(word);
        
        vector<vector<string>> levels = findLevels(beginWord, endWord);        
        
        res = findLaddersForCurWord(beginWord, endWord, levels, 0);

        return res;
    }
};

=================================================
catstring

************************
pr8. String to Integer (atoi), Easy 

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

************************
pr139. Word Break, Medium

Question:

Given a non-empty string s and a dictionary wordDict containing a list of non-empty words, determine if s can be segmented into a space-separated sequence of one or more dictionary words.

Note:

The same word in the dictionary may be reused multiple times in the segmentation.
You may assume the dictionary does not contain duplicate words.

Example 1:

Input: s = "leetcode", wordDict = ["leet", "code"]
Output: true
Explanation: Return true because "leetcode" can be segmented as "leet code".

Example 2:

Input: s = "applepenapple", wordDict = ["apple", "pen"]
Output: true
Explanation: Return true because "applepenapple" can be segmented as "apple pen apple".
             Note that you are allowed to reuse a dictionary word.

Example 3:

Input: s = "catsandog", wordDict = ["cats", "dog", "sand", "and", "cat"]
Output: false

==
Key: DP. Use res[i] to denote whether 'the string which equals the first i characters in s' can get true in wordBreak. Then derive res[i] from res[0, ... i - 1].

==
Tao's summary about DP:

The key idea of DP is to store history results to avoid repetitive compuation (eg, avoid using recursion). In DP, we do not have to overwrite the history results in previous iteration (as in this problem), even though it is common to overwrite.

In DP, should use res[i] to denote 'the string which equals the first i characters in s' can blabla, not to denote s[0, ... i] blabla. Because the latter can not deal with the case when 'the string which equals the first 0 characters in s' can blabla.

==
C++ code:
(tao's code improved a little from leetcode discussion)

class Solution {
public:
    bool wordBreak(string s, vector<string>& wordDict) {
    	int n = s.size();
    	if(n == 0) return true;

        //res[i] means whether 'the string which equals the first i characters in s' can get true in wordBreak.
        vector<bool> res(n + 1, false);
    	res[0] = true;
         
    	for(int i = 1; i <= n; ++i) {
            
            // Calculate the value of res[i]:
    		for(int j = 0; j <= i - 1; ++j) {
    			// If res[j] = true and s.substr(j, i - j) is in wordDict, then set res[i] = true:
    			if(res[j] && find(wordDict.begin(), wordDict.end(), s.substr(j, i - j)) != wordDict.end()) res[i] = true;
    		}
    	}
        
  		return res[n];     
    }
};

************************
pr140. Word Break II, Hard

Question:

Given a non-empty string s and a dictionary wordDict containing a list of non-empty words, add spaces in s to construct a sentence where each word is a valid dictionary word. Return all such possible sentences.

Note:

The same word in the dictionary may be reused multiple times in the segmentation.
You may assume the dictionary does not contain duplicate words.
Example 1:

Input:
s = "catsanddog"
wordDict = ["cat", "cats", "and", "sand", "dog"]
Output:
[
  "cats and dog",
  "cat sand dog"
]
Example 2:

Input:
s = "pineapplepenapple"
wordDict = ["apple", "pen", "applepen", "pine", "pineapple"]
Output:
[
  "pine apple pen apple",
  "pineapple pen apple",
  "pine applepen apple"
]
Explanation: Note that you are allowed to reuse a dictionary word.
Example 3:

Input:
s = "catsandog"
wordDict = ["cats", "dog", "sand", "and", "cat"]
Output:
[]

Tao: CodeGanker says there is a test case which is a long non-breakable string, this test case often leads to time limit exceeding. So we normally first determine whether s is breakable.

==
Key: DP. Samiliar to "pr 139. Word Break". The only difference from pr 139 is to change the "vector<bool> res" to "unordered_map<int, vector<string>> res_map", where res_map[i] denotes the vector returned by wordBreak("the string which equals the first i characters in s", wordDict).

==
C++ code:

class Solution {
private:
    //res_map[i] means the output of wordBreak(first_i_characters_of_s, wordDict)
    unordered_map<int, vector<string>> res_map;
    
    bool isBreakable(string s, vector<string>& wordDict) {
    	(Copy the code of "pr 139. Word Break" here.) 
    }
    
public:
    vector<string> wordBreak(string s, vector<string>& wordDict) {
        int n = s.size();
        if(!isBreakable(s, wordDict)) return res_map[0];
        
        res_map[0] = {""};
        
        for(int i = 1; i <= n; ++i) {
            vector<string> vec_i;
            
            // Calculate res_map[i]:
            for(int j = 0; j <= i - 1; ++j) {
                
                //res[j], s.substr(j, i - j)                
                string sub = s.substr(j, i - j);
                                
                if(res_map.find(j) != res_map.end() && find(wordDict.begin(), wordDict.end(), sub) != wordDict.end()) {
                    vector<string> vec_j = res_map[j];                    
                    for(string str_j: vec_j) {
                        string push_str = str_j + (str_j.size() > 0 ? " " : "") + sub;
                        vec_i.push_back(push_str);
                    }                 
                }              
            } // End of j loop
            
            if(vec_i.size() > 0) res_map[i] = vec_i; //tao: first copies vec_i, then res_map[i] = the copy.

        } // End of i loop
        
        return res_map[n];
    }
};

=================================================
catarray

************************
pr1. Two Sum, Medium

Question:

Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:

Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].

Tao: note the elements in input array can have duplicates.

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

************************
pr35. Search Insert Position, Medium.

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
catboard

************************
pr36. Valid Sudoku, Easy

Question:

Determine if a 9x9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:

Each row must contain the digits 1-9 without repetition.
Each column must contain the digits 1-9 without repetition.
Each of the 9 3x3 sub-boxes of the grid must contain the digits 1-9 without repetition.

(Tao: there is a picture here, which is the same as the input matrix below in Example 1)

A partially filled sudoku which is valid.

The Sudoku board could be partially filled, where empty cells are filled with the character '.'.

Example 1:

Input:
[
  ["5","3",".",".","7",".",".",".","."],
  ["6",".",".","1","9","5",".",".","."],
  [".","9","8",".",".",".",".","6","."],
  ["8",".",".",".","6",".",".",".","3"],
  ["4",".",".","8",".","3",".",".","1"],
  ["7",".",".",".","2",".",".",".","6"],
  [".","6",".",".",".",".","2","8","."],
  [".",".",".","4","1","9",".",".","5"],
  [".",".",".",".","8",".",".","7","9"]
]

Output: true

Example 2:

Input:
[
  ["8","3",".",".","7",".",".",".","."],
  ["6",".",".","1","9","5",".",".","."],
  [".","9","8",".",".",".",".","6","."],
  ["8",".",".",".","6",".",".",".","3"],
  ["4",".",".","8",".","3",".",".","1"],
  ["7",".",".",".","2",".",".",".","6"],
  [".","6",".",".",".",".","2","8","."],
  [".",".",".","4","1","9",".",".","5"],
  [".",".",".",".","8",".",".","7","9"]
]

Output: false

Explanation: Same as Example 1, except with the 5 in the top left corner being modified to 8. Since there are two 8's in the top left 3x3 sub-box, it is invalid.

Note:

A Sudoku board (partially filled) could be valid but is not necessarily solvable.
Only the filled cells need to be validated according to the mentioned rules.
The given board contain only digits 1-9 and the character '.'.
The given board size is always 9x9.

Tao: note that in the code, the type of elments in board is char, not int.

==
Key: Brute force. To check the sub-boxes (called "blocks" by tao), the easiest way is to write a 4-layer loop. This way can be worked out without thinking. The challenging thing is how to check blocks in a 2-layer loop.

Tao's way of checking the blocks in a 2-layer loop in the code below is different from leetcode discussion (and Code Ganker's Java code uses a 3-layer loop). But they are similar, and Tao's way is easier to understand. So I use Tao's way.

The way to figure out Tao's way is following:

I name the blocks in each position as below:

block_0  block_3   block_6
block_1  block_4   block_7
block_2  block_5   block_8

In the following, i and j are loop variables.
The i in (i, j) loop and block_i are the same number.

Let me use r to denote row index, c to denote column index. 
The following formula gives the row and column of an element in block_i:

r = (i % 3) * 3 + j / 3
c = (i / 3) * 3 + j % 3

The above formula can be derived from the following example:

block_0    block_1    block_3

i j r c    i j r c    i j r c

0 0 0 0    1 0 3 0    3 0 0 3
0 1 0 1    1 1 3 1    3 1 0 4
0 2 0 2    1 2 3 2    3 2 0 5

0 3 1 0    1 3 4 0    3 3 1 3
0 4 1 1    1 4 4 1    3 4 1 4
0 5 1 2    1 5 4 2    3 5 1 5

0 6 2 0    1 6 5 0    3 6 2 3
0 7 2 1    1 7 5 1    3 7 2 4
0 8 2 2    1 8 5 2    3 8 2 5

==
C++ code:

The following 3-pass code is recommended, because it is easier to write and understand. It can be easily re-written to a 1-pass code which is also pasted below this code.

class Solution {
public:
    bool isValidSudoku(vector<vector<char>>& board) {
    	unordered_set<char> char_set;

    	//Check rows
    	for(int i = 0; i < 9; ++i) {
    		for(int j = 0; j < 9; ++j) {
    			char c = board[i][j];
    			if(c == '.') continue;
    			if(char_set.find(c) == char_set.end()) char_set.insert(c);
	 			else return false;
    		}
    		char_set.clear();
    	}
       
    	//Check columns
    	for(int i = 0; i < 9; ++i) {
    		for(int j = 0; j < 9; ++j) {
    			char c = board[j][i];
    			if(c == '.') continue;
    			if(char_set.find(c) == char_set.end()) char_set.insert(c);
	 			else return false;
    		}
    		char_set.clear();
    	}

    	//Check blocks
    	for(int i = 0; i < 9; ++i) {
    		for(int j = 0; j < 9; ++j) {
    			int row = (i % 3) * 3 + j / 3;
				int col = (i / 3) * 3 + j % 3;
    			char c = board[row][col];
    			if(c == '.') continue;
    			if(char_set.find(c) == char_set.end()) char_set.insert(c);
	 			else return false;
    		}
    		char_set.clear();
    	}		

        return true;
    }
};

The above code can be easily re-written as a 1-pass code as below, but I do not recommend this code because it is harder to understand:

class Solution {
public:
    bool isValidSudoku(vector<vector<char>>& board) {
    	unordered_set<char> row_set;
    	unordered_set<char> column_set;
    	unordered_set<char> block_set;

    	for(int i = 0; i < 9; ++i) {
    		for(int j = 0; j < 9; ++j) {

    			char row_c = board[i][j];
    			char column_c = board[j][i];
    			char block_c = board[(i % 3) * 3 + j / 3][(i / 3) * 3 + j % 3];

    			if(row_c == '.') {}
    			else if(row_set.find(row_c) == row_set.end()) row_set.insert(row_c);
	 			else return false;

	 			if(column_c == '.') {}
	 			else if(column_set.find(column_c) == column_set.end()) column_set.insert(column_c);
	 			else return false;

	 			if(block_c == '.') {}
	 			else if(block_set.find(block_c) == block_set.end()) block_set.insert(block_c);
	 			else return false;

    		}

    		row_set.clear();
    		column_set.clear();
    		block_set.clear();
    	}

        return true;
    }
};

=================================================
catcombinatorics

************************
pr46. Permutations, Medium

Question:

Given a collection of distinct integers, return all possible permutations.

Example:

Input: [1,2,3]
Output:
[
  [1,2,3],
  [1,3,2],
  [2,1,3],
  [2,3,1],
  [3,1,2],
  [3,2,1]
]


==
Key: Recursion. Put aside the first element, permute all other elements, then put the first element into all possible positions.

==
C++ code:

(CodeGanker's classic Java code is more complicated. Leetcode discussion code is similar as Tao's following code.)

class Solution {
private:
	vector<vector<int>> permute_subvec(vector<int>& nums, int i) {
		vector<vector<int>> res;

		if(i == nums.size() - 1) {
			vector<int> last = {nums[i]};
			res.push_back(last);
			return res;
		}

		vector<vector<int>> sub = permute_subvec(nums, i + 1);

		for(vector<int> vec: sub) {
			for(int j = 0; j <= vec.size(); ++j) {//Tried to use iterator but had run-time error.
				vec.insert(vec.begin() + j, nums[i]);
				vector<int> vec_copy = vec;
				res.push_back(vec_copy);
				vec.erase(vec.begin() + j);
			}
		}

		return res;
	}

public:
    vector<vector<int>> permute(vector<int>& nums) {
    	vector<vector<int>> res;
    	if(nums.size() == 0) return res;
        return permute_subvec(nums, 0);
    }
};

=================================================
catinterval

************************
pr56. Merge Intervals, Hard

Question:

Given a collection of intervals, merge all overlapping intervals.

Example 1:

Input: [[1,3],[2,6],[8,10],[15,18]]
Output: [[1,6],[8,10],[15,18]]
Explanation: Since intervals [1,3] and [2,6] overlaps, merge them into [1,6].

Example 2:

Input: [[1,4],[4,5]]
Output: [[1,5]]
Explanation: Intervals [1,4] and [4,5] are considered overlapping.

Tao: 
1. [1, 2] and [3, 4] does not overlap. [1, 2] and [2, 4] overlaps and will be merged to [1, 4].
2. [2, 2] is also an interval.

==
Key: First sort the intervals. Then traverse the intervals, use two pointers pre and cur. If pre and cur overlaps, merge them.

==
C++ code:

(Tao's code below was simplified according to leetcode discussion code)

class Solution {
private:
	static bool compare_interval(Interval x, Interval y) {
		return x.start < y.start; //If written as x.start <= y.start, then the following sort gives correct result but is very slow. Not sure why.
	}

public:
    vector<Interval> merge(vector<Interval>& intervals) {
     	int n = intervals.size();
     	if(n <= 1) return intervals;
     	
     	vector<Interval> res;
	
		sort(intervals.begin(), intervals.end(), compare_interval);

		Interval pre = intervals[0];
				
		for(int i = 1; i < n; ++i) {
			Interval cur = intervals[i];

			//pre and cur overlaps
			if(cur.start <= pre.end) {
				//Merge pre and cur, notice the trick of changing pre.end.
				pre.end = max(pre.end, cur.end); 
			} else {
				res.push_back(pre);
				pre = cur;
			}

		}

		res.push_back(pre);

		return res;   
    }
};

=================================================
catarithmetics

************************
pr7. Reverse Integer, Easy 

Question:

Given a 32-bit signed integer, reverse digits of an integer.

Example 1:

Input: 123
Output: 321

Example 2:

Input: -123
Output: -321
Example 3:

Input: 120
Output: 21

Note:
Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−2^31,  2^31 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.

Tao: the problem assues that an int in C++ is 32 bits (4 bytes), which is different from the 2 bytes int my cpp_notes.

==
Key: Reverse the input x using "res = res * 10 + (x % 10)". Rememeber to deal with overflow before calculating res in this formula. If x is negative, call reverse(-x). The only corner case of this problem is when x = INT_MIN, -x overflows, so in this case just return 0 directly. 

==
C++ code:

#include<iostream>
#include<climits>
using namespace std;

class Solution {
public:
    int reverse(int x) {
    	if(x == INT_MIN) return 0;
    	if(x < 0) return -reverse(-x);

        int res = 0;

        while(x > 0) {
        	int last = x % 10;
        	if(res > (INT_MAX - last) / 10) return 0;
        	res = res * 10 + last;
        	x /= 10;
        }

        return res;
    }
};

=================================================
catsystem

************************
pr146. LRU Cache, Hard

Question:

Design and implement a data structure for Least Recently Used (LRU) cache. It should support the following operations: get and put.

get(key) - Get the value (will always be positive) of the key if the key exists in the cache, otherwise return -1.
put(key, value) - Set or insert the value if the key is not already present. When the cache reached its capacity, it should invalidate the least recently used item before inserting a new item.

Follow up:
Could you do both operations in O(1) time complexity?

Example:

LRUCache cache = new LRUCache( 2 /* capacity */ );

cache.put(1, 1);
cache.put(2, 2);
cache.get(1);       // returns 1
cache.put(3, 3);    // evicts key 2
cache.get(2);       // returns -1 (not found)
cache.put(4, 4);    // evicts key 1
cache.get(1);       // returns -1 (not found)
cache.get(3);       // returns 3
cache.get(4);       // returns 4

Tao: both put and get increase the priority of the element. For put, if a key is already there, it updates the value and makes this element the highest priority, if a key is not there, it creates the node and makes this element the highest priority.

==
Key: Use a doubly linked list and a map. The node of the list contains information of (key, value). The map's key is the key, value is pointer to the node. Whenever an element is visited, move it to the front of the list. When the cache reaches its capacity, remove the tail of the list. CodeGanker also did in this way.

==
C++ code:

struct Node {
	int key, val;
	Node* prev;
	Node* next;
	Node(int key_, int val_): key(key_), val(val_), prev(NULL), next(NULL) {}
};

class LRUCache {
private:
	int cap;
	unordered_map<int, Node*> node_map;
	//Practice shows that the following two lines can not be written as: Node* prev, next;
	Node* head; 
	Node* tail;

	void move_to_top(Node* node) {
		if(head == tail || head == node) return;
		if(tail == node) tail = node->prev;
    	if(node->prev) node->prev->next = node->next;
    	if(node->next) node->next->prev = node->prev;
    	node->next = head;
   		head->prev = node;
   		head = node; 	
	}

	void remove_tail() {
		node_map.erase(tail->key);
		if(tail->prev) tail->prev->next = NULL;
		tail = tail->prev;
	}

public:
    LRUCache(int capacity) {
        cap = capacity;
    }
    
    int get(int key) {
        if(node_map.find(key) == node_map.end()) { 
        	return -1;	
        } else {
        	Node* node = node_map[key];
        	move_to_top(node);
        	return node->val;
        }
    }
    
    void put(int key, int value) {
    	Node* node;
        
        if(node_map.find(key) == node_map.end()) {
        	if(node_map.size() == cap) remove_tail();

        	node = new Node(key, value);

        	if(node_map.size() == 0) {
        		head = node;
        		tail = node;
        	} else {
	        	node->next = head;
	       		head->prev = node;
	       		head = node; 
       		}
       		
       		node_map[key] = node;

        } else {
        	node = node_map[key];
        	node->val = value;
        	move_to_top(node);
        }
        
    }
};

=================================================
catbit

************************
pr190. Reverse Bits, Easy

Question:

Reverse bits of a given 32 bits unsigned integer.

Example:

Input: 43261596
Output: 964176192
Explanation: 43261596 represented in binary as 00000010100101000001111010011100, 
             return 964176192 represented in binary as 00111001011110000010100101000000.
Follow up:
If this function is called many times, how would you optimize it?

Tao: 

uint32_t: unsigned integer type with width of exactly 8, 16, 32 and 64 bits respectively. Defined in header <cstdint>.

For checking, printing numbers in binary format:
#include <bitset>
using namespace std;
int v = 5;
cout << bitset<32>(v); //32 means outputs 32 bits

Correct: 00000000000000000000000000000001 -> 10000000000000000000000000000000
Wrong:   00000000000000000000000000000001 -> 00000000000000000000000000000001

==
Key: Obtain the last digit of n (n >> i & 1). Left shift result (res << 1), and adds the last digit of n to the left shifed res. Try to use only bit operations.

==
C++ code:

Below uses leecode discussion and William's code combined, which uses only bit operations. Tao's code used plus and % operators which may be slower than bit operations.

class Solution {
public:
    uint32_t reverseBits(uint32_t n) {
    	uint32_t res = 0;

        for(int i = 0; i < 32; ++i) 
        	res = (res << 1) | (n >> i & 1);
        
        return res;
    }
};



















