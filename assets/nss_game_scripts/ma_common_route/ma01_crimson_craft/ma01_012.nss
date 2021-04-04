//<continuation number="0">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_012.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg002_空a_03=true;
	#bg013_鎌倉俯瞰a_03=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_013.nss";

}

scene ma01_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_011.nss"

//◆奈：ここは蜘蛛村正も真改も出さない

//◆転換

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景20", 10020, Center, Middle, "cg/bg/bg002_空a_03.jpg");


	CreateSE("SE01","se自然_風_野原01_L");
	MusicStart("SE01",3000,1000,0,1000,null,true);

	FadeDelete("上背景", 2000, true);

	SoundPlay("@mbgm09",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……その二人を。
　虚ろな<RUBY text="がんか">眼窩</RUBY>が見据えている。

　蜘蛛。

　民家の壁に、逆さに張り付いて、温度のない視線を
二人の背に送っている。
　蜘蛛。しかし、並みの蜘蛛ではない。

　身の丈は六、七尺にも及ぼうか。
　人間をひと抱えに出来るであろう長さの節足。
　胴体だけでも酒樽ほどはある。

　<RUBY text="おぞけ">怖気</RUBY>をふるうまでの巨躯。
　
　体色は、赤い。

　それも噴き出たばかりの鮮血の色。
　夜の陰りの下では、腐った血の色に化けているが。

　肌はあたかも、<RUBY text="はがね">鋼</RUBY>めいて冷たく、硬質の輝きがある。
　
　――否。
　鋼鉄、そのものか。

　紅い鋼鉄の大蜘蛛。
　絵草子の中にのみ在るべき、<RUBY text="いぎょう">異形</RUBY>であった。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg013_鎌倉俯瞰a_03.jpg");
	FadeDelete("絵背景20", 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　妖しく瞬く複眼の下、二人の学生が遠ざかってゆく。

　蜘蛛が体をたわめた。

　二人を追うためにか。
　あるいはそれ以外の何かを為すためにか。
　
　蝿を捕食するためではなかったろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　――だが。
　その機先を制するものが居る。

　音はなかった。
　ただ風を切る気配だけがあった。

　蜘蛛の動きが止まる。
　定かならぬその視線が方向を転じる。

　向かい側の民家の屋根の上。
　そこに、屹立する一影。

　人の姿。
　だが決して人ではない形。
　
　鋼鉄の<RUBY text="かおり">香</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　それは鎧。
　黄銅色の鎧。

　しかし並みの鎧であれば、風と化して瞬時に現れる
ことなど叶わぬ。
　常理を全く超えた跳躍、そして着地を遂げるのなら、
それは既に鎧ではない。

　<RUBY text="ツルギ">劔冑</RUBY>だ。
　武者だ。

　黄銅の武者。

　鈍くひらめく眼光をまず二人の背へ注ぎ、そして、
蜘蛛を見る。
　そこに好意を示すものは一片もない。

　見返す蜘蛛とても同様のこと。
　こちらは、好意など示す術もなかったであろうが。

　対峙の時間はおよそ数秒。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 0, 0, null);
	SetVolume("OnSE*", 0, 0, null);
	OnSE("se人体_動作_跳躍01",1000);

	CreateTextureSP("絵ＥＦ100", 10000, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	DrawTransition("絵ＥＦ100", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵背景*");
	CreateTextureSP("絵背景20", 20, Center, Middle, "cg/bg/bg002_空a_03.jpg");

	DrawDelete("絵ＥＦ*", 200, 1000, "slide_01_03_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　武者が屋根を蹴る。

　虚空を駆けるその速度が疾風のものであるならば、
同時に<RUBY text="はし">迅</RUBY>った刃は閃光にも等しい。
　逃れようもない雷火。

　しかし、蜘蛛の機動は雷火にすら劣らなかった。

　紅い巨躯が、ひょう、と軽々しい風を連れて舞う。
　閃光の刃も、切り裂き得たのはその風までか。

　蜘蛛は無傷のまま、並木の上へ己を載せた。
　
　緑の葉を座布団のように、ちょこんと座る姿は滑稽。

　だがその滑稽さこそ魔境にあろう。
　鋼鉄の生物を迎えながら、小枝の一本とても折れる
響はない。

　武者もまた人外。
　一閃の仕損じを意に介さず、<RUBY text="・・">垂直</RUBY>の壁面に苦もなく
着地するや、再び跳ねて蜘蛛を狙う。

　蜘蛛が逃げる。
　そして今度は、逃げるのみに留まらなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、糸攻撃
	PrintGO("上背景", 15000);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	CreateTextureSP("絵ＥＦ100", 100, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	SetBlur("絵ＥＦ100", true, 3, 500, 100, false);
	Zoom("絵ＥＦ100", 0, 1800, 1800, null, true);

	CreateSE("SE01","se特殊_生物_蜘蛛の糸吐く01");
	MusicStart("SE01",0,1000,0,600,null,false);
	FadeDelete("上背景", 200, true);

	FadeDelete("絵フラ", 200, false);
	Zoom("絵ＥＦ100", 400, 1000, 1000, DxlAuto, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　夜の風を渡りながら、吐きかけたそれは糸。

　鋼鉄の投網。
　瞬時にして膨大な群が放たれ、標的へ向かう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_衝撃_鎧転倒01",1000);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 200, 1000, null, true);

	WaitKey(400);

	Delete("絵ＥＦ*");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg013_鎌倉俯瞰a_03.jpg");

	FadeDelete("絵フラ", 600, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
　武者は飛び込む格好となった。
　反応する間さえなかったのではないか。鋼線の束が
武者を捕らえ、渦を巻く。

　あまりにも異様な光景がそこに現れた。

　民家と民家の間に糸を張った鋼鉄の繭。
　これを目にした者がいれば、果たしてここから何が
<RUBY text="かえ">孵</RUBY>るのかと恐れ<RUBY text="おのの">戦</RUBY>いたことだろう。

　だがここからは何も生まれない。
　繭に見えようともこれは檻。
　生み落とすためではなく封じ込めるための創造物だ。

　鋼の糸を幾重にも巻いて出来た重厚な牢。
　これに囚われた罪人ははて、どれだけの歳月の後に
罪を許され、外界へ帰るのだろう。

　十年か。百年か。千年か――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃
	CreateColorSPadd("絵フラ", 15000, "#FFFFFF");
	CreateColorSP("絵暗転", 1000, "#000000");

	Fade("絵フラ", 200, 0, null, true);

	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01",0,1000,0,1700,null,false);

	SL_down(@0,@0,2000);
	SL_downfade2(10);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　息ひとつ吸う暇さえ、必要ではなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃二回
	CreateSE("SE02","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	SL_rightup(@0,@0,2000);
	SL_rightupfade2(10);

	CreateSE("SE03","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE03",0,1000,0,2000,null,false);
	SL_left(@0,@0,2000);
	SL_leftfade2(10);

	OnSE("se特殊_鎧_装着03",1000);
	Fade("絵フラ", 200, 1000, null, true);
	Wait(300);
	Delete("絵暗転*");

	FadeDelete("絵フラ", 600, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　白い光が走る。
　刃の<RUBY text="きらめ">煌</RUBY>き。

　繭の内側から溢れた閃光は、瞬きの間に鋼糸という
鋼糸を切り払い、藻屑へと変えた。
　堅固な牢のあえない最期。

{	CreateSE("SE11","se自然_風_野原01_L");
	MusicStart("SE11",2000,1000,0,700,null,true);}
　それは単純な真理を語っているのか。
　
　――より強い者を閉じ込められる獄などない。

　武者の剣は明らかに、蜘蛛の力を上回った。
　渾身の糸ですら、武者には下らぬ手妻に過ぎない。

　……自然至極のことである。

　武者こそは戦場の王。
　何者であれその前には膝を屈するほかになし。

　武者を打倒し得るものは唯一、
　より強き武者があるのみ。

　……その理を、わきまえていたに違いない。

　自由を得た武者が辺りを<RUBY text="ね">睨</RUBY>める。
　しかし、視線は何も捉えなかった。

　糸を吐きつけておき、蜘蛛は逃げ失せたのであろう。
　跡も残さずいずこかへ、異形の蟲は消え去っていた。

　視線が流れる。
　蜘蛛と武者が共に着眼していた二人の姿は、とうに
無い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
<voice name="鈴川" class="鈴川" src="voice/ma01/0210580b57">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　何を思うか。
　あるいは何も思わぬか。

　ごく短い間、沈思の素振りを見せ。

　武者もまた身を翻し、夜闇の中へ溶けて失せた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000,3000);

}

..//ジャンプ指定
//次ファイル　"ma01_013.nss"



