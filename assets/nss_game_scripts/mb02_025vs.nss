//<continuation number="390">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_025vs.nss_MAIN
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
	#bg070_普陀楽城内階段ホール_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_026vs.nss";

}

scene mb02_025vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_024vs.nss"

//◆景明ＶＳ常闇
	SoundPlay("@mbgm13",0,1000,true);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 5000, "#000000");
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftdown2(5100,@0, @0,2000);
	SL_leftdownfade2(5);

	StL(1000, @0, @0,"cg/st/st常闇斎_通常_私服.png");
	SetBlur("@StL*", true, 2, 500, 70, false);

	StR(1100, @30, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStA(0,true);

	CreateColorSPadd("絵色白", 6000, "#FFFFFF");
	Delete("絵暗転");
	Move("@StL*", 600, @-30, @0, DxlAuto, false);
	FadeDelete("絵色白", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　――何たる。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆村正攻撃。ひゅんひゅん。
//◆常闇、避ける。受けるのでなく避ける。
	CreateSE("SE02a","se戦闘_攻撃_刀振る01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	Zoom("絵演*", 0, 1200, 1200, null, false);
	Zoom("絵演上", 150, 1000, 1000, Dxl2, false);
	Shake("絵演", 400, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 100, true);

	CreateSE("SE02b","se戦闘_攻撃_刀振る02");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	Zoom("絵演*", 0, 1200, 1200, null, false);
	Zoom("絵演上", 150, 1000, 1000, Dxl2, false);
	Shake("絵演", 400, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 100, true);

	CreateSE("SE02c","se戦闘_攻撃_刀振る03");
	MusicStart("SE02c",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	Zoom("絵演*", 0, 1200, 1200, null, false);
	Zoom("絵演上", 150, 1000, 1000, Dxl2, false);
	Shake("絵演", 400, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 100, true);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 600, false);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0010a00">
「ちぃ――」


{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0020b37">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆どーんと一撃
//◆常闇、ひょーんと飛んで避けてすたーんと着地
	SetVolume("SE*", 1000, 0, null);
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_衝撃_衝突01");
	MusicStart("SE01",0,1000,0,1250,null,false);
	SL_down2(5100,@0, @0,2000);
	SL_downfade2(5);

	CreateColorSP("絵色白", 6000, "#FFFFFF");
	CreatePlainSP("絵演震", 500);
	Fade("絵演震", 0, 500, null, true);
	Shake("絵演震", 1000, 0, 30, 0, 0, 1000, Dxl3, false);
	Delete("絵色黒");
	FadeDelete("絵色白", 600, true);

	CreateSE("SE01a","se人体_動作_跳躍02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	StL(1000, @30, @0,"cg/st/st常闇斎_通常_私服.png");
	SetBlur("@StL*", true, 2, 500, 70, false);
	Move("@StL*", 300, @-30, @0, Dxl2, false);
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　――何たる事か。

　この様を傍で見ている立場であったら、<RUBY text="・・・・">演技指導</RUBY>を
したかもしれない。
　もう少し<RUBY text="リアリティ">現実感</RUBY>を、とでも。

　<RUBY text="サムライアクション">時代活劇</RUBY>の中にしか有り得ぬ光景だ――
　
　武者と生身で渡り合う剣士など！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/025vs0030a01">
《……実は貴方たち……
　二人で<RUBY text="・・">ぐる</RUBY>になって、私をからかってたり
しない？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0040a00">
「同じ事を俺も訊こうと思っていたのだが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　他にどう考えろというのか。
　全ては夢で、現実の俺はどこかで眠っているのか。
今ここの<RUBY text="・・">現実</RUBY>よりは、まだ有りそうな話に思えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0050b37">
「さほどに奇妙な事ではないのです……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　間の抜けたやり取りを聞いていたように――実際は
こちらの動揺を読み切ってか。
　異装の男が口を挟む。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0060b37">
「ここは狭い。武者の最大の利点である騎航
能力が全く活かせません。
　翼を奪われた鷹が鼠に手間取るは、むしろ
道理というものでしょう」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0070a00">
「……それでも鷹には嘴がある。
　鼠の牙と渡り合って互角以下では、やはり
不甲斐ないかと思われるが？」


{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0080b37">
「他にも事情はあります。
　私はここで、無理に勝ちを取る必要はない。
足止めできればそれでいい」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0090b37">
「しかし貴方は違う。
　一刻も早く私を倒さねばならない……こう
している間にも私の部下達が駆けつけて来る
かもしれないのだから」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0100a00">
「……」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0110b37">
「<RUBY text="とき">時間</RUBY>を味方とする者は<RUBY text="ゆとり">余裕</RUBY>を得、敵とする
者は<RUBY text="あせり">焦慮</RUBY>を得る。
　私と貴方。<RUBY text="タイ">体</RUBY>は貴方が大きく優るでしょう。
しかし<RUBY text="シン">心</RUBY>は私が優位にあります」


{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0120b37">
「ここまでは五分。
　残るは、<RUBY text="ギ">技</RUBY>……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0130a00">
（それが、比較にならぬというわけか!?）

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆打ち下ろし一閃
//◆常闇避け
//◆横薙ぎ一閃
//◆常闇避けて反撃
//◆すぱー。
	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01",0,1000,0,1300,null,false);
	CreatePlainEX("絵板写", 500);
	Fade("絵板写", 0, 750, null, true);
	Shake("絵板写", 300, 0, 20, 0, 0, 1000, Dxl3, false);
	CreateSE("SE01a","se人体_動作_跳躍02");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	DeleteStL(50,false);
	Move("@StL*", 50, @60, @0, Dxl2, false);
	SL_down(@-290, @0,1000);
	SL_downfade(0);

	StR(1000, @-30, @0,"cg/st/st常闇斎_通常_私服.png");
	SetBlur("@StR*", true, 2, 500, 50, false);
	Move("@StR*", 100, @30, @0, Dxl2, false);
	FadeStR(100,true);

	WaitAction("@slashD*", null);

	CreateSE("SE01b","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01b",0,1000,0,1300,null,false);
	Shake("絵板写", 300, 20, 00, 0, 0, 1000, Dxl3, false);
	CreateSE("SE01c","se人体_動作_跳躍01");
	MusicStart("SE01c",0,1000,0,1500,null,false);
	DeleteStR(50,false);
	Delete("@slashD*");
	Move("@StR*", 50, @-30, @60, Dxl2, false);
	SL_right(@0, @0,1000);
	SL_rightfade(0);

	WaitAction("@slashD*", null);

	StC(1000, @20, @120,"cg/st/st常闇斎_戦闘_私服a.png");
	SetBlur("@StC*", true, 2, 500, 50, false);
	Move("@StC*", 100, @-20, @-120, Dxl2, false);
	FadeStC(100,true);

	PrintGO("上背景", 5000);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("上背景");
	Delete("@slash*");
	WaitKey(10);
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreatePlainEXadd("絵板写", 4999);
	Zoom("絵板写", 0, 1200, 1200, null, true);
	Zoom("絵板写", 300, 1000, 1000, null, false);
	FadeFR2("絵板写",0,750,300,0,0,50,Dxl3, true);
	Delete("絵板写");

	CreateSE("SE01d","se人体_血_たれる01");
	MusicStart("SE01d",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0140a00">
「――ぬぅ！」


{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0150b37">
「御小手一本」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　こちらの繰り出す太刀を<RUBY text="たいさば">体捌</RUBY>きで避け、更に避け。
そうして生じた隙を突き、左手首に一撃を<RUBY text="く">呉</RUBY>れてきた。
　関節部である手首は防護が薄い。切り離されること
こそなかったが、肉を深く裂かれている。

　遂に反撃まで食った事に、衝撃は無論ある。
　だがそれ以上に<RUBY text="たま">堪</RUBY>らぬのは、こちらの剣撃が躱され
続けている事だった。彼は刀を使って受け止めてすら
いない。

　俺は<RUBY text="・・・・・">受けさせる</RUBY>事さえできていないのだ。

　受けさせれば、力で押し切れる。
　武者と常人の筋力差は絶対だ。

　それは必ずしも難しい事ではない、筈だった。
　力量に大きな差でもない限り、そうそう太刀筋を見
切って避けるなどという真似はできないからだ。

　つまり。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	StC(1000, @0, @0,"cg/st/st常闇斎_通常_私服.png");
	FadeStC(300,true);

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -344, "cg/bg/resize/bg070_普陀楽城内階段ホール_03l.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, 60, -120, "cg/st/resize/st常闇斎_通常_私服l.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Move("絵演窓上/絵演背景", 60000, @-100, @0, null, false);
	Move("絵演窓上/絵立絵", 60000, @-200, @0, null, false);
	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0160a00">
（技量に、それだけの差がある……）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――



	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　大人と子供。
　玄人と素人ほどの。

　剣師である養父にさえ、ここまで軽くあしらわれた
覚えは無かった。
　何者なのか――この男。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0170b37">
「……いえ。やや浅い……
　咄嗟に力を抜いて打ちに備えた？」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0180a00">
「……」


{	FwR("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0190b37">
「戦慣れした反応、だけでは説明できない。
　貴方は知っているようですね。我々六波羅
新陰流の剣筋を」


{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0200a00">
「一度、立ち合ったことがある」


{	FwR("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0210b37">
「その者の名は？」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0220a00">
「一ヶ尾瑞陽」


{	FwR("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0230b37">
「……あの娘。
　道理で……成程」


{	FwR("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0240b37">
「あれと剣を交えていたのなら納得もゆく」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0250a00">
「あの方をご存知か……」


{	FwR("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0260b37">
「つまらぬ汚職事件に巻き込まれたりしなけ
れば、今頃は私の手元に引き上げていたかも
しれない者です。
　惜しいことをした……」


//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0270b37">
「私が<RUBY text="じか">直</RUBY>に手解きをしたのはほんの数度です
が、確かに<RUBY text="てんぴん">天稟</RUBY>と呼べるものがありました。
　彼女は今？」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0280a00">
「……二年前、己の矜持に殉じられた。
　他に語るべき事はない」


{	FwR("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0290b37">
「……そうですか……」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0300a00">
「貴方は彼女の師か」


{	FwR("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0310b37">
「そう言っても差し支えはないでしょうね。
　……宜しい。これも人の<RUBY text="えにし">縁</RUBY>」


{	FwR("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0320b37">
「あの者に伝え切れなかった<RUBY text="おうひ">奥秘</RUBY>を、貴方に
お教えしましょう。
　――掛かっておいでなさい」


{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0330a00">
「……？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 500, false);
	FadeDelete("絵演窓上*", 500, true);
	Delete("絵演窓上*");

	WaitKey(300);

	CreateSE("SE01","se戦闘_動作_刀構え02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StC(1000, @0, @0,"cg/st/st常闇斎_戦闘_私服a.png");
	FadeStC(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　言うや、男は初めて<RUBY text="かまえ">構</RUBY>を取った。
　刀を右肩上に担ぐ、武者正調の上段。

　それはかえって、隙を生んだように見えた。
　無構と違って太刀筋はある程度限定される。動きを
読み取ることが可能になっている。

　より、単純な力の勝負に近くなったと言ってもいい。
　そうなれば、生身の劣勢は明らかだ。

　何のつもりか？
　
　しかし、躊躇する時間を俺は持たなかった。

　この瞬間にも、後背に敵が現れ得るのだ。
　何があろうと――挑むしかない。

{	CreateSE("SE01a","se戦闘_動作_刀構え01");
	MusicStart("SE01a",0,1000,0,1000,null,false);}
　俺は対手に倣って太刀を上段に取った。
　そして呼吸を――計らない。こんな剣術の化け物の
ような相手にそんな真似をしても墓穴掘りだ。

　何も考えず、
　斬り込む。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

//◆斬撃
//◆対称な斬撃
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");

	CreateWindow("絵窓左", 3000, 0, 0, 512, 576, false);
	SetAlias("絵窓左","絵窓左");
	CreateColorSP("絵窓左/絵色黒下", 3005, "#000000");
	CreateTextureSP("絵窓左/絵演斬左", 3100, -256, 0, "cg/ef/ef008_汎用上下軌道.jpg");
	DrawTransition("絵窓左/絵演斬左", 200, 0, 250, 300, null, "cg/data/slide_02_01_0.png", false);

	CreateSE("SE01b","se戦闘_攻撃_刀振る01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateWindow("絵窓右", 3000, 512, 0, 512, 576, false);
	SetAlias("絵窓右","絵窓右");
	CreateColorSP("絵窓右/絵色黒下", 3005, "#000000");
	CreateTextureSP("絵窓右/絵演斬右", 3100, 256, 0, "cg/ef/ef008_汎用上下軌道.jpg");
	Request("絵窓右/絵演斬右", Smoothing);
	Rotate("絵窓右/絵演斬右", 0, @0, @180, @0, null,true);
	DrawTransition("絵窓右/絵演斬右", 200, 0, 300, 300, null, "cg/data/slide_02_01_0.png", false);

	FadeDelete("絵色白", 200, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0340a00">
（――！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　こちらの攻撃に、敵は<RUBY text="・・・">遅れて</RUBY>動いた。
　
　遅れて――しかし真っ向から挑むようなその軌道。

　これは。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0350a00">
（<RUBY text="キリオトシ">切落</RUBY>か!?）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　遅れて剣を起こしながら――
　相手の剣を<RUBY text="・・・・・">切り落とし</RUBY>、体をも断って勝つ技法。

　一刀流の秘極として名高い剣。
　それを……ここで？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0360a00">
（馬鹿な）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　俺は構わず振り込む。
　手を止める必要はない――この勝負は勝てる。

　単純な力において、武者と生身の差は<RUBY text="・・">絶対</RUBY>だ。
　男の剣がいかに精妙を極めようとも、武者の一刀を
切り弾いて軌道を変えさせる事など叶わない。

　俺に相手を殺す気は無いから、加減はしている。
　しかし同じ事だ。

　せいぜいが相打ち。
　受ける被害は確実に、相手の方が大きい――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆剣閃、交差。打ち合いはしないので注意。
//◆すばっ。腕一本斬った音
//◆血
//◆村正と常闇
//◆ウェイト
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	DrawTransition("絵窓左/絵演斬左", 200, 250, 1000, 300, Dxl2, "cg/data/slide_02_01_0.png", false);

	CreateSE("SE01b","se戦闘_攻撃_刀振る01");
	MusicStart("SE01b",0,1000,0,1500,null,false);
	DrawTransition("絵窓右/絵演斬右", 200, 300, 1000, 300, Dxl2, "cg/data/slide_02_01_0.png", true);

	SetVolume("@mbgm*", 300, 0, null);
	CreateSE("SE02","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒面", 6000, "#000000");
	CreateTextureSPadd("絵演上", 6100, @0, @0, "cg/ef/ef006_汎用血しぶき.jpg");
	CreateTextureSP("絵演", 6050, @0, @0, "cg/ef/ef006_汎用血しぶき.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	SetBlur("絵演上", true, 3, 500, 50, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	PrintGO("上背景", 30000);
/*
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	StL(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	StR(1000, @0, @0,"cg/st/st常闇斎_戦闘_私服a.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 300, true);
	FadeDelete("絵暗転", 300, true);
*/


	CreateWindow("絵ＷＬ", 150, Center, -288, 1024, 288, true);
	SetAlias("絵ＷＬ","絵ＷＬ");
	CreateTextureSP("絵ＷＬ/絵背景Ｌ100", 100, Center, InBottom, "cg/bg/resize/bg070_普陀楽城内階段ホール_03l.jpg");
	CreateTextureSP("絵ＷＬ/絵ＳＴＬ", 500, Center, InBottom, "cg/st/3d村正標準_立ち_抜刀.png");
	Move("絵ＷＬ/絵背景Ｌ100", 0, @0, @144, null, true);
	Move("絵ＷＬ/絵ＳＴＬ", 0, @-120, @300, null, true);
	Move("絵ＷＬ", 0, @0, @288, null, true);

	CreateWindow("絵ＷＲ", 150, Center, 576, 1024, 288, true);
	SetAlias("絵ＷＲ","絵ＷＲ");
	CreateTextureSP("絵ＷＲ/絵背景Ｒ100", 100, Center, InBottom, "cg/bg/resize/bg070_普陀楽城内階段ホール_03l.jpg");
	CreateTextureSP("絵ＷＲ/絵ＳＴＲ", 500, Center, InBottom, "cg/st/st常闇斎_戦闘_私服a.png");
	Move("絵ＷＲ/絵背景Ｒ100", 0, @-212, @244, null, true);
	Move("絵ＷＲ/絵ＳＴＲ", 0, @120, @230, null, true);
	Move("絵ＷＲ", 0, @0, @-288, null, true);

	Rotate("絵ＷＲ/絵背景Ｒ100", 0, @0, @-180, @0, null,true);

	FadeDelete("上背景", 500, false);

	Move("絵ＷＬ/絵背景Ｌ100", 1500, @-380, @0, Dxl1, false);
	Move("絵ＷＲ/絵背景Ｒ100", 1500, @380, @0, Dxl1, false);
	Move("絵ＷＬ/絵ＳＴＬ", 1500, @-190, @0, Dxl2, false);
	Move("絵ＷＲ/絵ＳＴＲ", 1500, @190, @0, Dxl2, true);
	WaitKey(500);

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0370b37">
　　　　　　　　「六波羅新陰流」


　
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/025vs0380b37">
　　　　　　　　　　「<RUBY text="ガッシ">合撃</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぼとっ。
	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");

	CreateTextureEX("絵演背景", 2000, 0, -450, "cg/bg/resize/bg070_普陀楽城内階段ホール_03l.jpg");//ダミー注意
	Move("絵演背景", $残時間, @0, @-60, DxlAuto, false);
	Fade("絵演背景", 300, 1000, null, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/025vs0390a00">
「――――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　何も言える事はなく。
　ただ、黙って<RUBY text="・・">それ</RUBY>を見詰める。

　俺の左手が廊下に落ちていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_026vs.nss"