//<continuation number="500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_045b.nss_MAIN
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
	#ev128_病床の光_g01=true;
	#bg105_城門付近内側_02=true;
	#ev230_泣きじゃくる村正=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_046.nss";

}

scene md04_045b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_045.nss"

//あきゅん「演出：ここではまだ汚染状態にします、森島了承済」

//●捨てられない
	PrintBG("上背景", 30000);
	CreateColorSP("白", 10, "WHITE");

	SoundPlay("@mbgm31", 0, 1000, true);


	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　捨てられる。
　
　
　…………と。

　そう言えたら、この魂はどれほど安らぐだろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想・病床の光

	EfRecoIn1(18000,600);

	CreateTextureEX("絵回想", 1000, @0, @0, "cg/ev/ev128_病床の光_a01.jpg");
	Fade("絵回想", 0, 1000, null, true);

	EfRecoIn2(300);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　光を守るため。光を救うため。
　そのためだけに生きられる。

　俺の魂の平安はそこにある。

　ただ一言、
　ただ一言を言い切るだけで、それは手に入るのだ。

　――――だが。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);


	Delete("絵回想*");

	EfRecoOut2(600,true);


//◆新田雄飛、鈴川令法、ふきとふな、長坂右京、風魔
//◆小太郎、皇路操、皇路卓、ガーゲット少佐


	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 300, 1000, Axl2, true);

//yuuhi

	CreateColorSP("絵色黒地", 18000, "#000000");
	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/st雄飛_通常_制服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/st雄飛_通常_制服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @-256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);

//suzukawa

	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/st鈴川_通常_制服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/st鈴川_通常_制服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);

//ふき

	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/stふき_通常_私服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/stふき_通常_私服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @-256, @0, null, true);


	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);

//ふな

	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/stふな_通常_私服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/stふな_通常_私服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);


//長坂

	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/st長坂_通常_制服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/st長坂_通常_制服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @-256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);

//風魔

	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/st小太郎_通常_私服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/st小太郎_通常_私服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);
	
//操
	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/st操_通常_私服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/st操_通常_私服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @-256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);

//卓
	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/st皇路_通常_私服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/st皇路_通常_私服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);
	
//ガーゲット

	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/stガーゲット_通常_制服a.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/stガーゲット_通常_制服a.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @-256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);

	Delete("絵演立絵*");
	Delete("絵色黒地*");

	FadeDelete("絵色白", 1600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　俺は覚えている。

　この両腕の罪を覚えている。

　血の匂いを覚えている。

　最後の吐息を覚えている。

　瞳が空虚に、輝きを失ってゆく様を覚えている。

　数多の死を覚えている。

　……何故、俺は彼らを殺したのか。
　
　その理由――

　殺した彼らに、彼らの残された近親者に、釈明する
言葉としてのそれは最初から無い。
　俺は己一個の意思決定で殺したのだから、その理由
に意味はなく、憎悪と断罪を免れる道は絶無である。

　殺害理由は、俺自身にのみ意味を持つ。

　……俺は。
　
　より多くの人を死なせないため、彼らを殺した。

　銀星号の災厄を増殖させまい、と。
〝卵〟を享けた武者と、村正の特質が必然として求む
もう一人の人間を、<RUBY text="サクリファイス">犠牲</RUBY>に選んで首を刎ねた。

　俺がもし、今になって銀星号の存在を許容するなら
――彼らは一体何のために命を奪われたのか。

　彼らはおそらくその主観において、全く無価値な死
を遂げねばならなかった。
　それを強いた俺すらも、彼らの死の価値を否定する
のなら。

　彼らは、
　彼らの死は、――――――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲しみ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0010a00">
（できない）

//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0020a00">
（それは、できない）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　許されるとか許されないとか。
　罪深いとかそうでないとか。
　
　そんな域を越えて。

　それはできない事なのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0030a00">
（俺は彼らを<RUBY text="・・">犠牲</RUBY>にしたのだから）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　彼らの命の価値を計り。
　別の何かがそれよりも重いと断定し。

　無慈悲な刃をもって刈り取った。
　
　
　だから、言わねばならないのだ。

　<RUBY text="・・・・・・・・・・・・・・・・・・・・・">お前達はより多くの人間を救う為に死んだのだ</RUBY>、と。
　
　彼らの死の意味を、死の裁定者であった俺は、傲岸
不遜に叫び続けなくてはならないのだ!!

　忘れてはならない――
　捨て去ってはならない!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆精神世界脱出
//◆※汚染時専用テキストボックスを使用していた場合
//◆は、これ以後元に戻る

	SetVolume("@mbgm*", 1000, 0, null);


	OnSE("se特殊_陰義_発動04", 1000);
	CreateColorSP("白幕", 25000, "WHITE");
	DrawTransition("白幕", 300, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	DeleteStL(0,true);

	OnBG(100, "bg105_城門付近内側_02.jpg");
	FadeBG(0, true);

	DrawTransition("白幕", 300, 1000, 0, 100, null, "cg/data/circle_01_00_0.png", true);
	FadeDelete("白幕",1500,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　意識を外界へ復帰させて、最初に味わったのは酷い
失調感だった。
　時間と空間が断線したとでも言えばいいのか。現実
空間を現実空間として認識できない。

　銀星号の精神汚染が解かれたからだろう。
　脳髄の中身が急速に整理整頓され、元の形に復して
ゆく過程は、言うなれば錯乱を強要されているような
ものだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0040a00">
「ぐっ……あ……ッッ！」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0050a01">
「御堂、大丈夫!?」

{	FwC("cg/fw/fw景明汚染_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0060a00">
「……ッッ……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0070a01">
「落ち着いて。
　焦らなくていいの……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　村正が俺の体を支え、額に手を押し当ててくる。
　元々そうなのか、それとも何か操作したのか。手は
ひどく冷たかった。

　……有難い。
　この冷たさは助かる。

　もし温かだったら、心地良かったろう。
　力を失くし、微睡み、やがて眠りに落ちてしまった
かもしれない。

　だが冷たい手は俺に力を与えてくれた。
　両足で立つための力を。

　……そうか。

　この冷たさは鋼の冷たさ。
　力、それそのものの温度なのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm05", 0, 1000, true);


	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0080a01">
「平気？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0090a00">
「ああ。
　もう立てる……」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0100a00">
「村正」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0110a01">
「なに？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0120a00">
「俺は……戻ってこられたのだな？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0130a01">
「……ええ」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0140a01">
「貴方は戻ってきてくれた。
　御堂……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　両足で地を踏みしめる。
　確かな<RUBY text="おのれ">湊斗景明</RUBY>として、立脚する。

　それが力強いとも、爽快だとも思わない。
　ただ、正しく在るという事実を実感した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0150a00">
「村正。有難う」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0160a01">
「……」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0170a00">
「また、お前に助けられた」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0180a01">
「……私は……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0190a01">
「貴方を、助けたの？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0200a00">
「……？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0210a01">
「苦しめているだけじゃないかって、思う」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0220a00">
「ああ。確かに……
　さっきまでは、酷く楽な心地だった」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0230a00">
「今はまた、重い」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0240a01">
「……そうなるのはわかってた。
　でも、私は劒冑だから」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0250a01">
「心が鉄で出来てるから……きっと冷酷なん
でしょうね」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0260a00">
「感謝する」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0270a01">
「……御堂？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0280a00">
「お前のお陰で、俺は正しく俺でいられる。
　お前が冷たい劒冑で良かった」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0290a01">
「――――」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0300a01">
「な、なによ……それ……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0310a00">
「？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0320a01">
「そんなこと言われたら……私」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0330a01">
「……私……」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0340a01">
「どうしていいか、わからなくなるっ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//おがみ：EVきてから演出見直し
//◆ＥＶ：村正、涙
	CreateTextureEX("涙", 5010, -270, InBottom, "cg/ev/resize/ev230_泣きじゃくる村正m.jpg");
	Fade("涙", 1000, 1000, null, true);

	Wait(1000);

	CreateTextureSP("涙下", 5000, Center, Middle, "cg/ev/ev230_泣きじゃくる村正.jpg");


	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140a]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0350a00">
「村正……？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Move("涙", 6000, @0, -50, DxlAuto, false);

	Wait(2000);

	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140b]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0360a01">
「ごめんなさい」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0370a01">
「私、本当は……
　貴方に選ばせたくなんてなかった」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0380a01">
「戻ってきて欲しかったからっ……！」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0390a00">
「…………」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0400a01">
「離れ離れでいたくなかった。
　本当はそれだけ……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0410a01">
「責めてくれればいいのに」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0420a01">
「私は、貴方が苦しむのを承知で……
　貴方を――私のところに、連れ戻したんだ
から……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0430a01">
「……っ……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0440a01">
「ごめんなさい……っ！」

{	FadeDelete("涙", 1000, false);
	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0450a00">
「……何故謝る……」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0460a00">
「お前は正しい事をしてくれた。
　間違いなく」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0470a00">
「感謝している」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0480a01">
「……言わないで……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0490a01">
「言わないでよぉ……！」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0500a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("涙*",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　俺は――
　
　……待つしかなかった。

　俺にはわからない罪悪感と悔悟の念で泣きじゃくる
村正を、ただ黙って支える。
　そうして村正の、揺らがぬ鉄で出来ている筈の内面
に吹き荒れる嵐が去るのを、知恵も無く待ち続けた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト

	ClearWaitAll(3000, 1000);

}

..//ジャンプ指定
//次ファイル　"md04_046.nss"