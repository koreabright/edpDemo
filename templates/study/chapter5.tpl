{%extends file="../common/layout.tpl"%}
{%block name="title"%}第一个页面{%/block%}
{%block name="content"%}
<div class="content-box">
<h3>引用类型</h3>
<pre>
一、引用类型是一大类, Object 只是其中一种, 创建: new + 构造函数
二、对象
	1、对象的创建方式有 2 种: 
		1) 构造函数:  
			var obj = new Object();
			obj.a = 1;
			obj.b = 2;
		2) 对象字面量: 
			var obj = {
				a: 1,
				b: 2
			};
	2、对象属性的获取方式有 2 种:
		1)点号获取法:
			obj.a => 1
		2)方括号获取法:
			obj['a'] => 1

			var propertyName = 'a';
			obj[propertyName] => 1

		注意: 除非属性名要用变量表示时用方括号, 否则都直接用点号方法
三、数组
	1、创建数组 2 种:
		1) 构造函数:
			var arr = new Array();                // 创建空数组
			var arr = new Array(3);               // 创建有3项的一个数组, 值默认为undefined
			var arr = new Array('a', 'b', 'c');   // 创建含有 a, b, c 3项的一个数组
		2) 数组字面量:
			var arr = [];                // 空数组
			var arr = ['a', 'b', 'c'];   // 创建含有 a, b, c 3项的一个数组
	2、length 属性: 保存数组的长度
		1) 通过改变length, 可以在数组末尾增加或者移出元素, 增加的话, 默认为undefined
	3、数组项的索引从 0 开始, 第一项 arr[0], 最后一项 arr[arr.length - 1]
		1) 快捷改变数组第一个元素: arr[0] = 'xxxx';
		2) 快捷改变数组最后一个元素: arr[arr.length - 1] = 'xxxx';
		3) 快捷向数组末尾加元素: arr[arr.length] = 'xxxx';
	4、判断是不是数组: 
		1) instanceof:
			arr instanceOf Array;
		2) Array.isArray();
			Array.isArray(arr);
	5、相关方法:
		1) toString: 将数组转化为逗号隔开的字符串(原数组不变化)
			var arr = ['a', 'b', 'c'];
			arr.toString() => 'a,b,c'
		2) toLocalString: 将数组转化为逗号隔开的字符串(原数组不变化)
			var arr = ['a', 'b', 'c'];
			arr.toString() => 'a,b,c'
		3) valueOf: 还是当前数组(原数组不变化)
			var arr = ['a', 'b', 'c'];
			arr.valueOf(); => ['a', 'b', 'c']
		4) join: 将数组元素用指定符号分隔(原数组不变化)
			var arr = ['a', 'b', 'c'];
			arr.join(':'); => ['a':'b':'c']
		5) push: 在数组尾部添加一个元素(改变原素组, 返回数组长度)
		6) pop: 从数组末尾弹出最后一个元素(改变原素组, 返回被弹出的元素)
		7) unshift: 从数组头部压入一个元素(改变原数组, 返回数组长度)
		8) shift: 从数组头部弹出第一个元素(改变原数组, 返回弹出的元素)
		9) reverse: 将数组反转(改变原数组)
			var arr = [1, 2, 3];
			arr.reverse(); => [3, 2, 1]
		10) sort: 数组排序(改变原数组)
			--> 直接调用 sort 方法
			sort 方法将数组的每项转换为字符串, 然后进行比较, 即使数组中的元素是数字, 也会转换为字符串来比较, 所以会有问题
			var arr = [1, 2, 10];
			arr.sort(); => [1, 10, 2]
			--> 改造后的 sort 方法
			由于 sort 方法存在上述问题, 所以 sort 方法接受一个参数
			(升序)
			function compare (value1, value2) { 
				if (value1 > value2) {
					return 1;
				} else if (value1 < value2) {
					return -1;
				} else {
					return 0;
				}
			}
			(降序)
			function compare (value1, value2) { 
				if (value1 < value2) {
					return 1;
				} else if (value1 > value2) {
					return -1;
				} else {
					return 0;
				}
			}
			arr.sort(compare);
		11) concat: 将几个数组拼成一个数组(不改变原数组)
		12) slice: 从一个数组中切出子数组(不改变原数组)
			--> 一个参数的情况: 从参数的位置一直到数组的最后一项
			var arr = [1, 2, 3, 4, 5];
			arr.slice(2); => [3, 4, 5]
			--> 两个参数的情况: 从参数1的位置一直到参数2的前面一项
			var arr = [1, 2, 3, 4, 5];
			arr.slice(1, 3); => [2, 3]
			--> 参数中有负数, 用 负数 + length
			--> 如果 参数1 > 参数2, 返回空数组
		13) splice: 向数组任意位置插入任意多项(改变原数组, 返回从原数组中删除的项, 如果没有就返回空数组)
			splice(起始位置, 删几个元素, 要增加的任意项...)
			var arr = [1, 2, 3, 4, 5, 6];
			arr.splice(1, 2, 'a', 'b'); => [2, 3]
			arr => [1, "a", "b", 4, 5, 6]
		14) indexOf: 查找某项在数组中的索引(从数组头部开始查, 如果没有查到返回 -1)
			参数: indexOf(要查找的项, 查找开始的起点)
			var arr = [1, 2, 3, 4, 5, 4, 6];
			arr.indexOf(4); => 3
			arr.indexOf(4, 4); => 5
		15) lastIndexOf: 查找某项在数组中的索引(从数组尾部开始查, 如果没有查到返回 -1)
			参数: indexOf(要查找的项, 查找开始的起点)
			var arr = [1, 2, 3, 4, 5, 4, 6];
			arr.lastIndexOf(4); => 5
			arr.lastIndexOf(4, 4); => 3
四、Date
	1、创建日期: 构造函数, 返回日期对象
		1) 不传参, 创建当前时间对象: 
			var date = new Date();               // Fri Nov 24 2017 17:24:35 GMT+0800 (CST)
		2) 传入指定时间戳, 创建指定时间对象: 
			var date = new Date(1511515475043);  // Fri Nov 24 2017 17:24:35 GMT+0800 (CST)
		3) 传入日期格式的字符串, 创建指定时间:
			var date = new Date('2017-01-01');  // Sun Jan 01 2017 08:00:00 GMT+0800 (CST)
		4) 传入指定的 年月日, 时分秒, 创建指定日期:
			var date = new Date(2017, 1, 1);  // Sun Jan 01 2017 08:00:00 GMT+0800 (CST)
	2、底层方法: 返回日期的毫秒数
		--> 上例中的 3 和 4 就是 Date 在调用 Date.parse 和 Date.UTC 获得时间戳, 之后如上例2的方式创建的时间对象
		1) Date.parse() , 参数是日期格式的字符串
			var date = Date.parse('2017-01-01'); => 1483228800000
		2) Date.UTC(), 参数是 年月日时分秒 的数字, 只有年和月是必须的, 若省略日则为1号, 其他省略的都为0
			var date = Date.UTC(2017, 1, 1); => 1485907200000
	3、快捷获取当前时间戳:
		1) Date.now()
			var now = Date.now();  // 1511516557268
		2) + 
			var now = +new Date(); // 1511516557268
	4、常用方法(时间对象才有这些方法, 不是时间戳)
		1) getTime(), 获取时间对象的毫秒数
			var date = new Date();
			date.getTime(); // 1511517394387
		2) getFullYear(), 获取年份
		3) getMonth(), 获取月份, 索引从 0 开始
		4) getDate(), 获取几号
		5) getDay(), 获取周几, 周天是 0
		6) getHours(), 获取几点, 24小时制的
		7) getMinutes(), 获取几分
		8) getSeconds(), 获取几秒
		--> 对应的从2-8有对应的 set 方法, 可以直接改变时间对象
五、Function
	1、函数是 对象 , 是 Function 类型的实例, 因此函数有对应的属性和方法, 函数名是一个指向函数对象的指针
	2、创建函数
		1) 函数声明语句:
			function sum (num1, num2) {
				return num1 + num2;
			}
		2) 函数表达式
			var sum = function (num1, num2) {
				return num1 + num2;
			};
		3) 构造函数: 前面都是参数, 最后一个是函数体 (不推荐)
			var sum = new Function ('num1', 'num2', 'return num1 + num2');
	3、函数声明 & 函数表达式 区别
		js解析器会率先读取函数声明, 使其在执行任何代码之前可以访问(优先级提升), 而函数表达式则只有在代码执行到声明语句所在代码行时才被解释执行
		1)  alert(sum(10, 10));
		    function sum (num1, num2) { return num1 + num2; };
			// 可以执行
		2)  alert(sum(10, 10));
		    var sum = function (num1, num2) { return num1 + num2; }
			// 报错
	4、js 函数没有重载, 如果定义了两个同名函数, 后面的会覆盖前面的
	5、函数名 是 一个变量, 也是一个指向函数对象的 指针, 所以函数可以作为值来使用
	6、函数可以作为参数传递给另外一个函数, 也可以作为另外一个函数的结果返回
	7、每个函数都有的 内部 属性: 
		1) arguments: 伪数组, 包含着传入函数的所有参数
			arguments有一个属性: callee, 是指针, 指向当前函数
			// arguments、callee、递归函数的应用
			function factorial (num) {
				if (num <= 1) {
					return 1;
				} else {
					return num * argument.callee(num - 1);
				}
			}
			注: 所谓递归函数: 就是自己调用自己
		2) this: 指针, 指向当前函数执行的环境
		3) caller: 指针, 指向调用当前函数的函数(如果是在全局作用域调用函数, 则返回 null)
			function outer () {
				inner();
			}
			function inner () {
				alert(arguments.callee.caller);
			}
			outer();
			// 函数 outer 里面调用了函数 inner , 所以最终结果为outer函数的源码
	8、每个函数都有的属性
		1)length: 表示函数 期望接收到的参数 的个数
			function sum (num1, num2) {
				return num1 + num2;
			}
			alet(sum.length); => 2
		2) prototype: 保存引用类型所有实例方法的真正所在( prototype 不可枚举, 使用 for-in 方法, 无法发现 )
	9、call & apply : 在特定的作用域内调用函数( 等于设置函数体内this对象的值 )
		1) apply(): 
			参数一: 函数运行的作用域
			参数二: 参数数组(可以是arguments)
			例1: 第二个参数是arguments
				function sum (num1, num2) {
					return num1 + num2;
				}
				function callSum (num1, num2) {
					return sum.apply(this, arguments);
				}
				alert(callSum(10, 10)); => 20
			例2: 第二个参数是数组
				function sum (num1, num2) {
					return num1 + num2;
				}
				function callSum (num1, num2) {
					return sum.apply(this, [num1, num2]);
				}
				alert(callSum(10, 10)); => 20
		2) call();
			参数一: 函数运行的作用域
			参数二: 逐个列举需要的参数
			例: 
				function sum (num1, num2) {
					return num1 + num2;
				}
				function callSum (num1, num2) {
					return sum.call(this, num1, num2);
				}
				alert(callSum(10, 10)); => 20
		注意: apply 和 call 都是重新指定当前函数执行的作用域, 区别在于apply 的参数可以用数组或者arguments 表示, 但是call方法的参数只能逐个列举出来
	10、call 和 apply 的强大之处
		可以用着两个方法, 扩大函数赖以运行的作用域
		function sayColor () {
			console.log(this.color);
		}
		window.color = 'red';
		var o = {
			color: 'green'
		};

		console.log(sayColor.call(this)); => red
		console.log(sayColor.call(window)); => red
		console.log(sayColor.call(o)); => green
	11、bind: 生成一个函数, 这个函数的this, 会被指定到传给bind方法的参数上面
		例:
		function sayColor () {
			console.log(this.color);
		}
		var color = 'red';
		var o = {
			color: 'green';
		}

		var objectSayColor = sayColor.bind(o); // 定义一个函数objectSayColor, objectSayColor 的执行等同于在 o 的作用域内执行sayColor方法
		objectSayColor(); => red
六、基本包装类型
	1、3个基本包装类型, 也是特殊的引用类型: String, Boolean, Number
	2、
</pre>
</div>
{%/block%}
{%block name="js"%}
<script type="text/javascript">
	var info = {%json_encode($info)%};
	// require(['partner/index']);
</script>
{%/block%}