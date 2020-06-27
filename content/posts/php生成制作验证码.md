---
title: php生成制作验证码
categories: [php]
date: 2017-08-29 12:48:51
tags: [php]
---

PHP生成制作验证码 1.0　　首先先看代码

好，现在结合以上代码，来分析分析以上用到的几个函数： ①　　imagecreatetruecolor(); imagecreatetruecolor — 新建一个真彩色图像（感觉哇，那么长，其实仔细一看挺好记的 image/create/true/color，什么是真彩色图像？往下看） 1 resource imagecreatetruecolor ( int $width , int $height ) imagecreatetruecolor() 和 imagecreate()两个函数都能创建画布 1 resource imagecreate ( int $x\_size , int $y\_size ) imagecreatetruecolor()建立的是一幅大小为 x和 y的黑色图像(默认为黑色\[即便叫法就是真彩色图像\])，如想改变背景颜色则需要用填充颜色函数 imagefill($img,0,0,$color); imagecreate 新建一个空白图像资源，用imagecolorAllocate()添加背景色 上面两个函数只不过是一个功能的两种方法 ②　　imagecolorallocate(); imagecolorallocate — 为一幅图像分配颜色 1 int imagecolorallocate ( resource $image , int $red , int $green , int $blue ) 颜色分别用 红 绿 蓝三色组合，这些参数是 0 到 255 的整数或者十六进制的 0x00 到 0xFF。 ③　　mt\_rand(); mt\_rand — 生成更好的随机数 1 int mt\_rand ( int $min , int $max ) $min 可选的、返回的最小值（默认：0）　　$max 可选的、返回的最大值（默认：mt\_getrandmax()） 这里就是用来让他随机生成背景颜色，0-255随便取值。所以页面没刷新一次画布背景颜色就不一样。 效果图：2.0　　开始往里面做干扰线，干扰点。防止验证图像被秒识别
<!--more-->
函数分析： ①　　imageline(); imageline — 画一条线段 1 bool imageline ( resource $image , int $x1 , int $y1 , int $x2 , int $y2 , int $color ) imageline() 用 color 颜色在图像 image 中从坐标 x1，y1 到 x2，y2（图像左上角为 0, 0）画一条线段。 imageline($img, mt\_rand(0,150), mt\_rand(0,50), mt\_rand(0,150), mt\_rand(0,50), $linecolor); 这里意思就是 画布$img 中从坐标 x1，y1 到 x2，y2随机 ②　　imagesetpixel(); imagesetpixel— 画一个单一像素 1 bool imagesetpixel ( resource $image , int $x , int $y , int $color ) imagesetpixel() 在 image 图像中用 color 颜色在 x，y 坐标（图像左上角为 0，0）上画一个点。 imagesetpixel($img, mt\_rand(0,150), mt\_rand(0,60), $dotcolor); 具体含义同上 效果图：  3.0　　添加验证字母数字

函数: imagettftext(); imagettftext — 用 TrueType 字体向图像写入文本 1 array imagettftext ( resource $image , float $size , float $angle , int $x , int $y , int $color , string $fontfile , string $text ) 分析下面的代码： imagettftext($img, 25, mt\_rand(-15,15), $x\_start, 50/2, $fontcolor, "C:/Windows/Fonts/Verdana.TTF", $key); $img-----------画布 25-----------字体的尺寸。 mt\_rand(-15,15)----------角度制表示的角度，0 度为从左向右读的文本。更高数值表示逆时针旋转。例如 90 度表示从下向上读的文本。(就是字体角度的问题,) $x\_start----------通俗易懂的讲就是字符的X轴位置 50/2----------字符的高度 $fontcolor----------字符颜色 "C:/Windows/Fonts/Verdana.TTF"----------字符的字体样式路径 $key-----------遍历出后的字符 效果： 转载：[http://www.cnblogs.com/qiutianjia/p/5576366.html](http://www.cnblogs.com/qiutianjia/p/5576366.html)