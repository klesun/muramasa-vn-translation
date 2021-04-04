//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_022.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma04_022.nss","Fall",true);
	Conquest("nss/ma04_022.nss","Egg",true);

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
	#bg043_江ノ島山林_03 = true;
	#bg001_空c_03 = true;

	#ev101_プロローグ_a = true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma04_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_021.nss"

.//●１９

//◆村正方面
//◆倒れるガーゲット少佐
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	Delete("上背景");

	CreateSE("SE01","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(1200);

	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　――殺した――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/ma04/0220010a14">
「惜しいな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ひゅー、どごんどごん。
//◆竜騎兵が落ちてくる。

//プロセスの定義
	CreateTextureSP("絵落下震", 200, Center, Middle, "cg/bg/bg043_江ノ島山林_03.jpg");
	CreateProcess("プロセス落下", 5000, 0, 0, "ma04022_fall");
	SetAlias("プロセス落下","プロセス落下");

//プロセススタート
	Request("プロセス落下", Start);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　突如。
　空から降り来る何か――

　ＧＨＱの竜騎兵！
　それが次々と、隕石よろしく墜落してくる。

　地面に打ち据えられる以前に、彼らの全ては絶命し
ていた。
　首を断たれ、あるいは縦割りにされて。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@SE*", 5000, 0, null);
	CreateSE("SE01","se戦闘_衝撃_衝突01");
	MusicStart("SE01",0,800,0,1000,null,false);

	CreateTextureEX("絵ＥＦ", 5000, -880, -412, "cg/ev/resize/ev101_プロローグ_a.jpg");
	Move("絵ＥＦ", 6000, @0, -86, DxlAuto, false);
	Fade("絵ＥＦ", 1000, 1000, null, false);
	Delete("プロセス*");

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0220020a00">
「……<RUBY text="ひかる">銀星号</RUBY>！」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/0220030a14">
「あと一手、早ければな。
　……今回の戯れはおれの勝ちだ、景明」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵落下*");
	OnBG(100,"bg001_空c_03.jpg");
	FadeBG(0,true);
	StR(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStR(0,true);

	FadeDelete("絵ＥＦ", 1000, true);
	SoundPlay("@mbgm37",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　振り仰いだ先。暗天に月を背負い。
　果たして銀星号はそこにいた。

　透き通った羽根を打ちもせず。
　あろうことか、<RUBY text="・・">滞空</RUBY>している。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/ma04/0220040a14">
「初めてだな……
　楽しみだ。さて、どんな姿で<RUBY text="・・・・">生まれて</RUBY>くる
だろう？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0220050a01">
《御堂……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　<RUBY text="・・・・">わくわく</RUBY>した様子を隠さない銀星号の声と、
　反して凍える劔冑の<RUBY text="メタルエコー">装甲通信</RUBY>。

　理解してしまった。
　何が起きたのか。

　何が<RUBY text="・・・">始まる</RUBY>のか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);

	CreateColorEXadd("絵卵光", 500, "#FFFFFF");
	DrawTransition("絵卵光", 0, 100, 250, 200, null, "cg/data/circle_13_00_0.png", true);

//プロセスの定義
	CreateProcess("プロセスエッグ", 1000, 0, 0, "Egg");
	SetAlias("プロセスエッグ","プロセスエッグ");

//プロセススタート
	Request("プロセスエッグ", Start);
	FadeDelete("上背景", 300, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0220060a00">
「――！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　凝然と、それを見つめる。
　進駐軍将校の骸。

　彼は既に息絶えている。
　だが。

　その胸の、奇怪な脈動は何か。
　その甲鉄の、異様な発光は何か。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0220070a00">
「――あ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110a]
　<RUBY text="・・・・・・・・">間に合わなかった</RUBY>!!

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆白銀閃光
	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,1300,null,false);
	CreateColorSPadd("絵白", 5500, "#FFFFFF");
	Delete("プロセス*");
	Delete("絵卵光");
	FadeDelete("絵白", 800, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110b]
　それは、裏返った。

　<RUBY text="・・・・">くるくる</RUBY>と、劔冑は自らを内側へ巻き込む。
　中の肉体も諸共に。

{	CreateSE("SE02","se人体_体_骨複数砕ける01");//ダミー注意
	MusicStart("SE02",0,1000,0,1000,null,false);}
　……くるくる。
　……ずぶずぶ。

　紙細工のように丸められ、
　綺麗な綺麗な白銀の球体になる。

　そしてまた裏返る。

　くるくると、外側へ広がる。
　<RUBY text="・・">手足</RUBY>を伸ばす。

　<RUBY text="・">首</RUBY>を出し。
　<RUBY text="・">背</RUBY>を立てる。

　やがて現れるは、元通りの人の形。

{	CreateSE("SE03","se特殊_その他_零零式孵化");
	MusicStart("SE03",0,1000,0,1000,null,false);}
　しかし身体は一回り小さくなっている。
　容姿も全く異なっている。

　<RUBY text="つや">艶</RUBY>やかな黒髪。
　幼く愛らしい<RUBY text="かんばせ">貌</RUBY>。
　銀色の甲鉄――

　白銀の少女。

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆八剣姫番外、グレイワンド

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　……その娘は。
　俺を見て。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◎べー：ボイスなしとのことでタグ消去

	SetFwC("cg/fw/fw灰色の杖_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆ボイスはいらん。
//（灰色の杖）
<voice name="灰色の杖" class="その他女声" src="voice/ma04/0220079z00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　それはそれは、嬉しそうに――
　微笑んだのだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆過去の光カット挿入
//あきゅん「演出：回想カットは適当です」
	CreateColorSP("絵白", 8500, "#FFFFFF");
	CreateTextureSP("絵ＥＦ１", 1000, Center, Middle, "cg/ev/ev133_兜割に挑む光_a.jpg");
	Wait(10);

	Fade("絵白", 0, 0, null, true);
	Wait(100);

//◆一度ブラックアウト。シーン切り
	Fade("絵白", 0, 1000, null, true);
	Wait(1);
	ClearWaitAll(2000, 4000);


.//●１９．５
//◆精神汚染波発散
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＦ", 5000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateSE("SEL01","se特殊_その他_渦巻く力");
	MusicStart("SEL01",2000,500,0,1000,null,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 1000, "wave_01_00_0", true);

	WaitKey(1000);


//◆銀星号
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	StR(1000, @0, @0,"cg/st/3d銀星号_立ち_通常b.png");
	FadeStR(0,true);
	Fade("絵ＥＦ", 1000, 0, null, true);
	SoundPlay("@mbgm01",0,1000,true);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/ma04/0220080a14">
「うむ――うむ！
　良い娘だ。申し分ない」

//【光】
<voice name="光" class="光" src="voice/ma04/0220090a14">
「おまえには〝<RUBY text="グレイワンド">灰色の杖</RUBY>〟の名を与えよう。
　さあ……唄え！」

//【光】
<voice name="光" class="光" src="voice/ma04/0220100a14">
「この母と共に！
　猛き<RUBY text="いくさうた">戦歌</RUBY>を！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆汚染波発散
	CreateTextureEXmul("絵ＥＦ２", 5000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,750,null,false);
	Zoom("絵ＥＦ２", 0, 1200, 1200, null, true);
	DrawEffect("絵ＥＦ２", 3600000, "Ripple", 200, 200, null);
	Fade("絵ＥＦ２", 1000, 750, null, true);
	Fade("絵ＥＦ", 1000, 1000, null, true);

	SetFwC("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0220110a00">
「――あ――
　あ、あ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　……<RUBY text="フェロモン">汚染波</RUBY>が、撒き散らされている。
　<RUBY text="・・">二重</RUBY>に。

　俺はいい。

　竜騎兵は死んでいる。

　ガーゲット少佐ももういない。

　後は。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(0,true);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Fade("絵ＥＦ２", 1000, 400, null, false);
	FadeDelete("絵ＥＦ", 1000, false);

	SetFwC("cg/fw/fw芳養_発狂.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆狂相
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0220120b48">
「――――」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0220130a00">
「あ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SEL01","se擬音_粘着質_ゲル潰れる03_L");
	MusicStart("SEL01",2000,700,0,750,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　檻の中で。
　芳養少年が。

　禽獣と化して、肉親を襲っている。

　涎をこぼし、意味のない奇声を上げながら。
　千切り。裂き。抉り。

　ぶちぶち、びりびりと――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL01", 1000, 0, null);

//◆回想
	CreateColorEXadd("絵白", 10000, "#FFFFFF");
	Fade("絵白", 600, 1000, null, true);
	Delete("絵ＥＦ２");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);
	CreateTextureSP("絵回想背景", 6100, Center, Middle, "cg/bg/bg041_片瀬海岸_01.jpg");
	StL(7000, @0, @0,"cg/st/st芳養_通常_私服.png");
	StR(7000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStA(0,true);
	Fade("絵白", 300, 0, null, true);

	SetFwC("cg/fw/fw芳養_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0220140b48">
「オレみたいな子供でもお構いなしってとこ
は、安いか、ヤバいか、どっちかだからな。
　難しいよ。それでもガキ共は食わせてやら
なきゃならねえ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("絵白", 400, 1000, null, true);
	Delete("絵回想*");
	DeleteStA(0,true);
	FadeDelete("絵白", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　弟たちも、
　妹たちも、
　
　同じように、

　殴り。
　蹴り。
　噛み。
　潰し。

　兄弟の血肉を漁っている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//◆↓二台詞、呆然と。抑揚なく。
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0220150a00">
「やめろ」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0220160a00">
「やめるんだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　虚ろに呟く。
　本当に声が出ているのかどうかもわからない。

　彼らは続ける。
　檻の中で饗宴に浸る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆汚染波
	SetVolume("SE*", 300, 0, null);
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	WaitKey(100);
	CreateTextureSP("絵ＥＦ", 3100, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateColorEX("絵薄黒", 3110, "#000000");
	Fade("絵薄黒", 0, 600, null, true);
	FadeDelete("絵フラ", 600, true);

	WaitKey(400);

	CreateTextureEX("Gin_song19", 4600, Center, Middle, "cg/sys/telop/tp_銀星号の唄21.png");
	CreateTextureEX("Gin_song20", 4600, Center, Middle, "cg/sys/telop/tp_銀星号の唄22.png");
	CreateTextureEX("Gin_song21", 4600, Center, Middle, "cg/sys/telop/tp_銀星号の唄19.png");
	CreateTextureEX("Gin_song22", 4600, Center, Middle, "cg/sys/telop/tp_銀星号の唄20.png");


	Move("Gin_song19", 0, @0, @-60, null, true);
	Move("Gin_song20", 0, @0, @-20, null, true);
	Move("Gin_song21", 0, @0, @+20, null, true);
	Move("Gin_song22", 0, @0, @+60, null, true);

	Move("Gin_song19", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song19", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song20", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song20", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song21", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song21", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song22", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song22", 600, 1000, null, false);

	WaitKey();

/*
//あきゅん「演出：プロローグと同じ風にしています」
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
《百年の生は炎と剣の連環が幾重にも飾り立てよう》

《七日の生は闇と静寂に守られ無垢に光り輝くだろう》

《生命よこの賛歌を聞け笑い疲れた怨嗟を重ねて》

《生命よこの祈りを聞け怒りおののく喜びを枕に》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――
*/

	WaitAction("Gin_song22", null);
	PrintGO("上背景", 25000);
	Delete("Gin*");
	CreateColorSP("絵黒", 3099, "#000000");
	CreateTextureSP("絵ＥＦ", 3100, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateColorEX("絵薄黒", 3110, "#000000");
	Fade("絵薄黒", 0, 600, null, true);
	FadeDelete("上背景", 1000, true);

	PrintGO("上背景", 25000);
	OnBG(100,"bg001_空c_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　銀星号が祝福を唄う。
　銀の少女が唱和する。

　響き渡る<RUBY text="デュエット">二部合唱</RUBY>。
　檻の中の活況はいや増すばかり。

　芳養少年は真っ赤になっている。
　兄弟達も真っ赤になっている。
　
　みんなみんな血達磨で、もう見分けがつかない。

　止めないと。
　これを、止めないと。

　斬れば良いのだ。
　このバケモノを、斬ってしまえば。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆グレイワンド
//◆レイヤー重ね？　光（過去）の姿が重なる
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(1000,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0220170a00">
「う――っ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　違う。
　違う。

　似てなんかいない。
　何の共通点もない。

　これはただの化物。
　ただの敵だ。

　斬れ。
　斬れ――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景100", 20, Center, Middle, "cg/bg/bg001_空c_03.jpg");
	StC(30, @0,@0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStC(0,true);
	FadeDelete("@OnBG*", 300, false);

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【光】
<voice name="光" class="光" src="voice/ma04/0220180a14">
「可愛らしいだろう？
　景明……」

//【光】
<voice name="光" class="光" src="voice/ma04/0220190a14">
「おれとおまえの〝卵〟から生まれた娘だ！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ドクン
	SetVolume("@mbgm*", 5000, 750, null);
	PrintGO("上背景", 25000);
	CreateColorSP("絵フラ", 3000, "#FFFFFF");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("上背景");
	Wait(10);
	Fade("絵フラ", 100, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　娘。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン
//◆光出産時の養母画像挿入。一瞬、部分的に
	SetVolume("@mbgm*", 5000, 750, null);
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵フラ", 100, 1000, null, true);
	CreateTextureSP("絵ＥＦ", 2900, Center, Middle, "cg/ev/ev008_赤子を抱える女.jpg");
	Wait(10);
	Fade("絵フラ", 100, 0, null, true);
	Wait(100);
	Fade("絵フラ", 100, 1000, null, true);
	Delete("絵ＥＦ*");
	Wait(10);
	Fade("絵フラ", 100, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　娘――？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン
//◆斬り割られた鎧兜
	SetVolume("@mbgm*", 5000, 0, null);
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵フラ", 100, 1000, null, true);
	CreateTextureSP("絵ＥＦ", 2900, Center, Middle, "cg/ev/ev005_斬り割られた兜.jpg");
	Wait(10);
	Fade("絵フラ", 100, 0, null, true);
	Wait(100);
	Fade("絵フラ", 100, 1000, null, true);
	Delete("絵ＥＦ*");
	Wait(10);
	Fade("絵フラ", 100, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　娘――
　だと？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

//◆選択：娘だ／違う

..//ジャンプ指定
//◆娘だ　"ma04_022a.nss"
//◆違う　"ma04_022b.nss"



//★選択肢シーン
scene ma04_022.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice02("娘だ","違う");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//娘だ　"ma04_022a.nss"
				$GameName = "ma04_022a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//違う　"ma04_022b.nss"
				$GameName = "ma04_022b.nss";
		}
	}
}



.//プロセス用======================================================

..//落下震動
function Fall()
{
	while(1)
	{
	CreateSound("SEP01", SE, "sound/se/se戦闘_衝撃_衝突01");//ダミー注意
	SetVolume("SEP01", 0, 0, NULL);
	SetAlias("SEP01", "SEP01");
	$RSEtime1 = Random(8);
	$RSE1 = $RSEtime1 * 100;

	Request("SEP01", "Play");
	SetVolume("SEP01", 0, $RSE1, null);
	Request("SEP01", Disused);

	Shake("@絵落下震", 1000, 0, 8, 0, 0, 1000, DxlAuto, false);
	Wait(1000);
	$RQtime1 = Random(4) + 2;
	$Fall1 = $RQtime1 * 100;
	Wait($Fall1);


	CreateSound("SEP02", SE, "sound/se/se戦闘_破壊_爆発02");//ダミー注意
	SetVolume("SEP02", 0, 0, NULL);
	SetAlias("SEP02", "SEP02");

	$RSEtime2 = Random(6);
	$RSE2 = $RSEtime2 * 100;

	Request("SEP02", "Play");
	SetVolume("SEP02", 0, $RSE2, null);
	Request("SEP02", Disused);

	Shake("@絵落下震", 1000, 0, 6, 0, 0, 1000, DxlAuto, false);
	Wait(200);
	$RQtime2 = Random(2);
	$Fall2 = $RQtime2 * 50;
	Wait($Fall2);


	CreateSound("SEP03", SE, "sound/se/se戦闘_破壊_建物02");//ダミー注意
	$RSEtime3 = Random(6) + 4;
	$RSE3 = $RSEtime3 * 100;

	Request("SEP03", "Play");
	SetVolume("SEP03", 0, $RSE3, null);
	Request("SEP03", Disused);

	Shake("@絵落下震", 1000, 0, 10, 0, 0, 1000, DxlAuto, false);
	Wait(1000);
	$RQtime3 = Random(4) + 10;
	$Fall3 = $RQtime3 * 100;
	Wait($Fall3);


	CreateSound("SEP04", SE, "sound/se/se戦闘_衝撃_衝突01");//ダミー注意

	$RSEtime4 = Random(3);
	$RSE4 = $RSEtime4 * 100;

	Request("SEP04", "Play");
	SetVolume("SEP04", 0, $RSE4, null);
	Request("SEP04", Disused);

	Shake("@絵落下震", 1000, 0, 3, 0, 0, 1000, DxlAuto, false);
	Wait(600);
	$RQtime4 = Random(4) + 3;
	$Fall4 = $RQtime4 * 100;
	Wait($Fall4);


	CreateSound("SEP05", SE, "sound/se/se戦闘_衝撃_衝突01");//ダミー注意

	$RSEtime5 = Random(6);
	$RSE5 = $RSEtime5 * 100;

	Request("SEP05", "Play");
	SetVolume("SEP05", 0, $RSE5, null);
	Request("SEP05", Disused);

	Shake("@絵落下震", 3000, 0, 6, 0, 0, 1000, DxlAuto, false);
	Wait(1000);
	$RQtime5 = Random(5) + 1;
	$Fall5 = $RQtime5 * 100;
	Wait($Fall5);
	}
}


..//エッグ
function Egg()
{
	while(1)
	{
	Fade("@絵卵光", 2000, 300, null, true);
	Fade("@絵卵光", 2000, 100, null, true);
	}
}



function ma04022_fall(){

	CreateSound("SEP01", SE, "sound/se/se戦闘_衝撃_衝突01");
	SetVolume("SEP01", 0, 0, NULL);
	SetAlias("SEP01", "SEP01");

	CreateSound("SEP02", SE, "sound/se/se戦闘_破壊_爆発02");
	SetVolume("SEP02", 0, 0, NULL);
	SetAlias("SEP02", "SEP02");

	CreateSound("SEP03", SE, "sound/se/se戦闘_破壊_建物02");
	SetVolume("SEP03", 0, 0, NULL);
	SetAlias("SEP03", "SEP03");

	CreateSound("SEP04", SE, "sound/se/se戦闘_衝撃_衝突01");
	SetVolume("SEP04", 0, 0, NULL);
	SetAlias("SEP04", "SEP04");

	CreateSound("SEP05", SE, "sound/se/se戦闘_破壊_爆発05");
	SetVolume("SEP05", 0, 0, NULL);
	SetAlias("SEP05", "SEP05");

	begin:

	while(1){
		$RSEtime1 = Random(8);
		$RSE1 = $RSEtime1 * 100;
	
		Request("SEP01", "Play");
		SetVolume("SEP01", 0, $RSE1, null);
	
		Shake("@絵落下震", 1000, 0, 8, 0, 0, 1000, DxlAuto, false);
		Wait(1000);
		$RQtime1 = Random(4) + 2;
		$Fall1 = $RQtime1 * 100;
		Wait($Fall1);
	
		$RSEtime2 = Random(6);
		$RSE2 = $RSEtime2 * 100;
	
		Request("SEP02", "Play");
		SetVolume("SEP02", 0, $RSE2, null);
	
		Shake("@絵落下震", 1000, 0, 6, 0, 0, 1000, DxlAuto, false);
		Wait(200);
		$RQtime2 = Random(2);
		$Fall2 = $RQtime2 * 50;
		Wait($Fall2);
	
		$RSEtime3 = Random(6) + 4;
		$RSE3 = $RSEtime3 * 100;
	
		Request("SEP03", "Play");
		SetVolume("SEP03", 0, $RSE3, null);
	
		Shake("@絵落下震", 1000, 0, 10, 0, 0, 1000, DxlAuto, false);
		Wait(1000);
		$RQtime3 = Random(4) + 10;
		$Fall3 = $RQtime3 * 100;
		Wait($Fall3);
	
		$RSEtime4 = Random(3);
		$RSE4 = $RSEtime4 * 100;
	
		Request("SEP04", "Play");
		SetVolume("SEP04", 0, $RSE4, null);
	
		Shake("@絵落下震", 1000, 0, 3, 0, 0, 1000, DxlAuto, false);
		Wait(600);
		$RQtime4 = Random(4) + 3;
		$Fall4 = $RQtime4 * 100;
		Wait($Fall4);
	
		$RSEtime5 = Random(6);
		$RSE5 = $RSEtime5 * 100;
	
		Request("SEP05", "Play");
		SetVolume("SEP05", 0, $RSE5, null);
	
		Shake("@絵落下震", 3000, 0, 6, 0, 0, 1000, DxlAuto, false);
		Wait(1000);
		$RQtime5 = Random(5) + 1;
		$Fall5 = $RQtime5 * 100;
		Wait($Fall5);
	
	}


}

