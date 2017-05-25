;;; `cfs--custom-set-fontsnames' 列表有3个子列表，第1个为英文字体列表，第2个为中文字体列表，
;;; 第3个列表中的字体用于显示不常用汉字，每一个字体列表中，*第一个* *有效并可用* 的字体将被使用。
;;; 将光标移动到上述列表中，按 `C-c C-c' 可以测试字体显示效果。另外，用户可以通过命令
;;; `cfs-insert-fontname’ 来选择一个 *可用* 字体，然后在当前光标处插入其字体名称。
(setq cfs--custom-set-fontnames
      '(
        ("Courier" "Courier New" "Consolas" "PT Mono" "Lucida Sans Typewriter" "Andale Mono" "Lucida Console" "Monaco" "DejaVu Sans Mono" "Droid Sans Mono" "PragmataPro" "Ubuntu Mono" "Liberation Mono" "MonacoB" "MonacoB2" "MonacoBSemi" "Droid Sans Mono Pro" "Inconsolata" "Source Code Pro" "Envy Code R" "monoOne" "Lucida Typewriter" "Panic Sans" "Hack" "Bitstream Vera Sans Mono" "HyperFont" "Ti92Pluspc" "Excalibur Monospace" "Menlof" "Cousine" "Fira Mono" "Lekton" "M+ 1mn" "BPmono" "Free Mono" "Anonymous Pro" "ProFont" "ProFontWindows" "Latin Modern Mono" "Code 2002" "ProggyCleanTT" "ProggyTinyTT")
        ("Microsoft Yahei" "SimSun" "SimHei" "Hiragino Sans GB" "STSong" "KaiTi" "微软雅黑" "Noto Sans S Chinese Regular" "Microsoft_Yahei" "Ubuntu Mono" "文泉驿等宽微米黑" "文泉驿等宽正黑" "黑体" "文泉驿正黑" "文泉驿点阵正黑" "NSimSun" "FangSong" "FangSong_GB2312" "KaiTi_GB2312" "LiSu" "YouYuan" "新宋体" "宋体" "楷体_GB2312" "仿宋_GB2312" "幼圆" "隶书" "STXihei" "STKaiti" "STZhongsong" "STFangsong" "FZShuTi" "FZYaoti" "STCaiyun" "STHupo" "STLiti" "STXingkai" "STXinwei" "方正姚体" "方正舒体" "方正粗圆_GBK" "华文仿宋" "华文中宋" "华文彩云" "华文新魏" "华文细黑" "华文行楷")
        ("SimSun-ExtB" "HanaMinB" "MingLiU-ExtB" "PMingLiU-ExtB" "MingLiU_HKSCS-ExtB")
        ))

;;; `cfs--custom-set-fontsizes' 中，所有元素的结构都类似：(英文字号 中文字号 EXT-B字体字号)
;;; 将光标移动到各个数字上，按 C-c C-c 查看光标处字号的对齐效果。
;;; 按 C-<up> 增大光标处字号，按 C-<down> 减小光标处字号。
(setq cfs--custom-set-fontsizes
      '(
        (9    10.5 10.5)
        (10   12.0 12.0)
        (11.5 14.0 14.0)
        (12.5 14.5 14.5)
        (14   16.5 16.5)
        (15   18.0 18.0)
        (16   20.0 20.0)
        (18   22.0 22.0)
        (20   24.0 24.0)
        (22   25.5 25.5)
        (24   28.5 28.5)
        (26   31.5 31.5)
        (28   33.0 33.0)
        (30   36.0 36.0)
        (32   39.0 39.0)
        ))
