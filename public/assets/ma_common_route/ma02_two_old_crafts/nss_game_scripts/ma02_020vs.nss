//<continuation number="790">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_020vs.nss_MAIN
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
	#bg025_坑道山脈と森a_01=true;
	#bg025_坑道山脈と森a_02=true;
	#bg002_空a_02=true;
	#bg001_空a_02=true;
	#bg020_山脈坑道_02=true;
	#bg020_山脈_02=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_021vs.nss";

}

scene ma02_020vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_019vs.nss"

//◆山遠望・昼
//◆→夕方


	PrintBG("上背景", 15000);
	OnBG(100,"bg025_坑道山脈と森a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);
	WaitKey(1500);
	OnBG(100,"bg025_坑道山脈と森a_02.jpg");
	FadeBG(4000,true);
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　夕暮れ刻。
　山は未だ平穏の内にあった――望ましからざる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0010a00">
「……遅い」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0020b55">
「うむ」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0030a00">
「斥候の雪車町一蔵を制圧したことが裏目に
出たのかもしれません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　敵陣営は武者三騎。こちらは一騎。
　である以上各個撃破は必須の戦術だったが、その為
に敵の行動を萎縮させてしまったのでは、作戦目的が
達せられない。

　あるいは月山と同様に雪車町をも不利は覚悟の上で
見逃し、一対三の戦闘へ敵を誘い出すべきだったのか。
　戦術的有利に拘泥するあまり、戦略的意味を失った
のかもしれない……。

　<RUBY text="ほぞ">臍</RUBY>を噛む。
　今更どうにもならぬことを思い煩う、己の愚昧が<RUBY text="かん">癇</RUBY>
に障る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0040b55">
「多少、慎重になったのは事実であろうがな。
　その程度のことで穴熊を決め込んでしまう
ほど、あの男はまだ枯れておらんよ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0050a00">
「は……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0060b55">
「あやつは坑道を諦められん。
　故に、来る。これは間違いない」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0070a00">
「……はい。
　しかし、問題は時間です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　事態の推移が最悪を極めた場合。
　この夜にも、大鳥香奈枝の措置を無効化する後任の
派遣官がＧＨＱから到着しかねないのだ。

　そうなった場合でも代官を討たねばならぬ俺の都合
に変わりはないが、村にとっては事情が激変する。
　正体不明の流れ者の犯行とみられるならば、いい。
　だが、そうなるとは限らない。

　俺が村長の家に出入りしていた事実や、山の蝦夷家
に厄介になっていたことなどが不利に働き、村全体で
代官を弑したのだと六波羅に断じられる可能性もある。
　……迷惑で済む話ではない。

　ＧＨＱの巡察官に従っただけ、という弁解が立つ内
に事を終わらせなくてはならないのだ。俺の私事で村
が破局に陥るような結果を避けるためには。
　その時間は残り少ない……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0080a00">
「もう少し派手に誘いをかけましょう。
　この際です。本当に坑道を潰しかねない程
の爆破を」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0090b55">
「うむ…………
　いや」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0100a00">
「御老？」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0110b55">
「どうやらその儀は無用の様子。
　奴め、ようやく堪忍袋の緒を切ったわ」


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0120a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空。騎航する武者の軌跡
//あきゅん「演出：仮入れ、超適当」

	PrintGO("上背景", 15000);

	CreateColorSP("絵暗転", 5000, "#000000");

	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(0,true);


//	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/st/3d月山_騎航_戦闘a.png");
//	Move("絵背景100", 0, @-800, @100, null, true);

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateTextureEX("絵演窓上/絵演背景", 6100, 0, 0, "cg/bg/bg001_空a_02.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 6200, -35, -450, "cg/st/3d月山_騎航_戦闘a.png");
	Move("絵演窓上", 0, @0, @-288, null, true);
	SetBlur("絵演窓上/絵立絵", true, 3, 300, 100, false);




	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	Fade("絵背景100", 0 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
　茜の空を轟音が貫く。

　噴煙を引いて躍る軌跡。
　それはあたかも幼児の一筆書き。

　乱雑に、
　戯れるように、
　嘲笑うように、
　誘うように、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進02",1000);

	Move("絵演窓上", 500, @0, @432, Dxl2, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, true);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0057]
　<RUBY text="かけ">騎航す</RUBY>る武者――
　ただ一騎。

　地上では事前の指示通り、作業にあたっていた村人
らが一目散に逃げ散ってゆく。
　一度だけそちらに視線を送ってから、俺は再び空を
見上げた。目を<RUBY text="すが">眇</RUBY>め、天を舞う姿形を見極める。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進01",1000);
	Move("絵演窓上/絵立絵", 300, @1500, @0, Axl3, false);
	FadeDelete("絵演窓上*", 300, true);


	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0130a00">
「あれは……月山。
　風魔小太郎！」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0140b55">
「ほう。あれが……
　なるほど、の。なかなかに曲者と見ゆるわ。
あの甲鉄……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0150a00">
「まさに。
　しかし……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0160b55">
「む？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0170a00">
「代官が」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　いない。
　空にあるは月山、ただ一騎のみ。

　代官の劔冑は<RUBY text="つばさ">母衣</RUBY>がまだ回復していない、という事
もあろうが。
　――おそらくこれは陽動。

　月山で俺を誘い出し、その隙に代官が坑道を<RUBY text="つ">衝</RUBY>く。
　これではうかつに動けない……！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);

	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStA(0,true);

	FadeDelete("上背景", 500, true);

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0180b55">
「構わぬ。
　ゆけ、御堂」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0190a00">
「いや、弥源太老、これは――」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0200b55">
「なれの留守を代官が襲う。わかっておる。
　そちらはうてが引き受けた」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0210a00">
「無謀です。
　武者に常人が挑むなど」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0220b55">
「無謀は無謀だがな。何とかなろうさ。
　向こうは翼を失った武者、こちらはこちら
で少々の手妻がある。そう悪い勝負でもない」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0230a00">
「……御老人。
　死ぬおつもりか？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0240b55">
「いや、いや。孫どもも幼い。まだ死ねぬよ。
　案ずるな、御堂……うては守るべきものの
ために戦う。そして、そういう者は死んでは
ならんことを知っている」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0250b55">
「死んで守れるものなどないからな。
　……ふっふ。ここは冗談だ。笑ってくれて
良いぞ」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0260a00">
「は……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0270b55">
「ゆかれよ。
　出陣の<RUBY text="はなむけ">餞</RUBY>に一言贈るなら、御堂……なれの
劔冑は紛れもなく天下至強」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0280b55">
「<RUBY text="・・・・・・・・・・・">良きにしろ悪しきにしろ</RUBY>、その力は絶境、
何者にも劣るを知らぬ。
　されば御堂、なれはその至強を<RUBY text="ひとえ">偏</RUBY>に信じよ。
それだけで良い。それだけで打ち勝てる」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0290b55">
「なれ<RUBY text="ら">等</RUBY>の前に立ち塞がるもの――
　遍く全てに」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0300a00">
「……はっ。
　承りました」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0310b55">
「御堂。
　酒はいける口かな」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0320a00">
「……？
　それは、一応……人並み程度には」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0330b55">
「では今宵は一献酌み交わそう。
　思えば御堂と出会ってからは忙しないこと
続きで、そんな暇もなかったが……」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0340b55">
「年寄りにとって若い者との酒は何よりの薬。
　だというにうちの孫は二人とも娘、しかも
まだ子供とあってはどうにもならぬ。
　得難い機会よ。御堂、付き合って貰えぬか」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0350a00">
「御意に！
　では……今宵」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざっ。
//◆景明

	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 1500, "#000000");

	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 250, 100, "slide_01_03_1", true);

	WaitKey(500);

	DrawDelete("絵暗転", 250, 100, "slide_01_03_1", true);

	StL(1000, @60, @0,"cg/st/st景明_通常_私服.png");

	OnSE("se人体_動作_後ずさり01",1000);

	Move("@StL*", 150, @-60, @0, Dxl2, false);
	FadeStL(150,true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0360a00">
「村正！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg020_山脈坑道_02.jpg");

	OnSE("se特殊_その他_村正人間変化02",1000);

//◆村正
	StR(900, @60, @0,"cg/st/3d村正蜘蛛_俯瞰.png");
	Move("@StR*", 150, @-60, @200, Dxl2, false);
	FadeStR(150,true);
	Shake("絵背景100", 300, 0, 5, 0, 0, 1000, Dxl2, false);

	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/020vs0370a01">
《――御堂》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0380a00">
「騎体状況を送れ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/020vs0390a01">
《諒解！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆電子音。ピッ。
	OnSE("se特殊_コックピット_起動音01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
　　　甲鉄錬度：<RUBY text="四四／五二">焔慧地ノ上</RUBY>
{	OnSE("se特殊_コックピット_起動音02",800);}
　　　騎体能力：<RUBY text="四一／五二">離垢地ノ上</RUBY>
{	OnSE("se特殊_コックピット_起動音02",800);}
　　　騎航推力：<RUBY text="三八／五二">真如相廻向ノ上</RUBY>
{	OnSE("se特殊_コックピット_起動音02",800);}
　　　騎航速力：<RUBY text="三四／五二">至一切処廻向ノ上</RUBY>

{	OnSE("se特殊_コックピット_起動音02",800);}
　　　<RUBY text="まどわし">磁気撹乱</RUBY>：勅令封印／限定禁戒
{	OnSE("se特殊_コックピット_起動音02",800);}
　　　<RUBY text="くるわし">磁気汚染</RUBY>：勅令封印／絶対禁戒
{	OnSE("se特殊_コックピット_起動音02",800);}
　　　<RUBY text="ながれ">磁気鍍装</RUBY>：使用可能
{	OnSE("se特殊_コックピット_起動音02",800);}
　　　<RUBY text="おわりのながれ">蒐窮磁装</RUBY>：使用可能

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/020vs0400a01">
《戦闘に一切の支障なし！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/020vs0410a00">
「承知！
　参る！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("フラ", 10000, "#FFFFFF");
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");

	MusicStart("SE02",0,1000,0,1250,null,false);
	Fade("フラ", 50, 1000, null, true);

	DeleteStA(0,true);

	StC(1000, @0,@0,"cg/st/st景明_装甲_私服a.png");
	FadeStC(0,true);


	Fade("フラ", 500, 0, null, true);

	Wait(500);

	MusicStart("SE01",0,1000,0,700,null,false);
	Fade("フラ", 50, 1000, null, true);
	StC(1000, @0,@0,"cg/st/st景明_装甲_私服b.png");
	FadeStC(0,true);

	Fade("フラ", 500, 0, null, true);

//◆パーツ分離
//◆ガシーン。武者変身


	Fade("フラ", 600, 1000, Axl3, true);

	DeleteStA(0,true);

	StC(1000, @0,@0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStC(0,true);

	FadeDelete("フラ", 2000, true);

	WaitKey(1000);

//◆飛びます。ズキューン。
//◆空

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	PrintGO("上背景", 15000);

	OnBG(100,"bg001_空a_02.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 300, 100, "slide_02_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
　……しかし、弥源太老。
　俺は――夜には――

　夜には――――！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);

//◆坑道前
//あきゅん「演出：仮入れ、超適当」

	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 5000, "#000000");
	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStL(0,true);

	FadeDelete("絵暗転", 2000, true);


	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0420b55">
「…………」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0430b55">
「もう良かろうよ。
　さっさと出て参れ」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0440b55">
「それとも……
　うてにさえも臆したか？」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0450b45">
「抜かせ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆代官
	OnSE("se人体_動作_一歩",600);

	StR(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	FadeStR(300,true);

	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw長坂_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0460b45">
「あの小癪な若造を避けたのは事実、復仇を
遂げるまでは何を言われようと構わんが……
　貴様などに怯えねばならぬ理由が一体どこ
にある？　余り嗤かしてくれるなよ、弥源太」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0470b55">
「それは上々。
　ようやく決着をつけられるというものだ」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0480b45">
「こちらの台詞を奪うでないわ。
　今更になって<RUBY text="はら">肚</RUBY>を決めた戯けが、豪胆ぶる
のも程々にしておけ。俺まで道化芝居の役者
になる」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0490b55">
「道化よ、右京。なれもうてもな。道化以外
の何だと云う？
　五十の坂を下りながら、かくも<RUBY text="ろく">碌</RUBY>でもなき
理由で斬り結ぼうとする我らが……」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0500b55">
「およそ人並みの知恵があればなされぬ所業
であろうよ。
　これは出来の悪い滑稽劇、人の失笑を買う
種以外の何物でもない」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0510b45">
「違うとは言わんがな。我らの生をここまで
下らぬ芝居に仕立てたのは貴様の<RUBY text="きょうだ">怯懦</RUBY>よ。
　三〇年前に殺していれば良かったのだ。
　三〇年前に殺されていれば良かったのだ！」


{	FwC("cg/fw/fw長坂_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0520b45">
「三〇年――――はッ！
　貴様がくれたこの年月、反吐のような三〇
年だったわ！　何を得ても何を奪っても心が
満ちぬ。それが<RUBY text="・・・">代わり</RUBY>でしかないからだ！」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0530b45">
「ただ――閉じた輪の中を回るような。
　下らぬ、下らぬ時間であった……！」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0540b55">
「……そうか。
　やはりなれはそういう男よ、右京」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0550b55">
「いくら歳月が流れようと変わるわけがない。
　……なれにとっては、決着がつかぬ限り、
何事も決して終わらんのだからな」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0560b45">
「…………」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0570b55">
「そこをうても一媛も見誤った……。
　時の癒しは誰にも平等と思い込んだ。なれ
の上にもいずれ、と。
　……なれの性格は知っていた筈なのにな」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0580b55">
「一言だけ詫びておく。
　済まなかった。右京」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0590b45">
「…………。
　今更……俺がそんな言葉を欲しがると思う
のか」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0600b55">
「思わぬよ。なれには嘲弄としか聞こえまい。
だがこれも、けじめというもの。
　案ずるな。口先の詫びで済ませるつもりは
ない。遅れた決着をくれてやる」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0610b55">
「なれを終わらせてやろうぞ、右京。
　三〇年分の負債、今ここで清算する」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0620b45">
「……はっ。言いおったわ、老廃が。
　貴様一人で俺を終わらせる？　ほざけ……
今となっては貴様を殺し、お山の神を殺し、
一媛を奪わぬ限り何も終わらぬ！」


//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0630b45">
「貴様など、その最初の踏み台に過ぎん。
　叩き潰して打ち棄てる。勝手に土へ還るが
いい――」


{	FwC("cg/fw/fw長坂_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0640b45">
「八紘一宇ッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆右京装甲
//◆八八式竜騎兵
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d八八式指揮官_立ち_通常.png");
	FadeStR(0,true);
	OnBG(100,"bg020_山脈_02.jpg");
	FadeBG(0,true);
	DeleteStL(0,true);

	Wait(500);
	FadeDelete("絵フラ", 1000, true);

	Wait(500);
	SetFwC("cg/fw/fw弥源太_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0650b55">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg020_山脈坑道_02.jpg");
	DeleteStR(300,false);
	FadeBG(300,true);
//◆チャキ。
	CreateSE("SE01","se戦闘_動作_刀構え01");

	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	MusicStart("SE01",0,1000,0,750,null,false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0660b45">
「……ふん？　またその棒切れか。
　何の<RUBY text="まじな">呪</RUBY>いかは知らぬが、そんなもので俺に
どう抗うと云う？」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0670b55">
「……こうするのよ」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0680b55">
「世に鬼あれば鬼を断つ。
　世に悪あれば悪を断つ」


{	FwC("cg/fw/fw弥源太_叫ぶ.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0690b55">
「ツルギの<RUBY text="ことわり">理</RUBY>ここに在り」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆ジャキーン。
//◆弥源太＋正宗小太刀。あと篭手？
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,750,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StL(1000, @0, @0,"cg/st/st弥源太_戦闘_私服.png");
	FadeStL(0,true);
	Wait(500);
	FadeDelete("絵フラ", 1000, true);
	Wait(500);




	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateTextureEX("絵演窓上/絵演背景", 6100, 0, -144, "cg/bg/bg020_山脈坑道_02.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 6200, -35, -350, "cg/st/resize/st弥源太_戦闘_私服_l.png");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	Move("絵演窓上", 0, @0, @-288, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);
	SetBlur("絵演窓上/絵立絵", true, 3, 300, 100, false);


	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	Fade("絵背景100", 0 1000, null, true);

	OnSE("se戦闘_動作_刀構え02",1000);

	Move("絵演窓上", 1000, @0, @438, Dxl2, false);
	Move("絵演窓上/絵立絵", 1500, @50, @-100, Dxl2, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, true);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);

	Wait(1000);

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0700b45">
「――むっ!?」

{	FwR("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0710b55">
「右京。
　これが何かわかるか」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0720b45">
「……劔冑……か？」


{	FwR("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0730b55">
「然り。
　なれらが坑道を掘り始める時……<RUBY text="・・・">守り石</RUBY>を
砕き、中の神宝を奪ったであろう？」


{	FwR("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0740b55">
「これは、その断片よ」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵演窓上*", 500, true);


	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0165]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0750b45">
「……ほう。
　するとそれは、曲がりなりにも天下一名物
ということか」


//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0760b45">
「あの劔冑、どうにも扱えぬので、雪車町に
渡してしまったが……惜しいことをしたな。
　貴様が使えると知っておればくれてやった
ものを。いささか面白くなったであろうに」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0770b55">
「驕っておれよ、右京。
　<RUBY text="かたわ">片羽</RUBY>の武者如き、この小太刀一つで釣りが
来る……」


{	FwC("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/020vs0780b45">
「……随分と安く見積もられたものだ。
　釣りを貰うのはこちらよ、弥源太！」


{	FwC("cg/fw/fw弥源太_叫ぶ.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/020vs0790b55">
「すぐに知れる。
　参れ、右京！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 1000);

}

..//ジャンプ指定
//次ファイル　"ma02_021vs.nss"