//<continuation number="1500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_020vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma04_020vs.nss","MeimetuAction",true);
	Conquest("nss/ma04_020vs.nss","MeimetuSET",true);

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		//$Ichizyou_Dead = true;
		//$Kanae_Dead = true;
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#ev124_江ノ島航空図_a=true;
	#ev124_江ノ島航空図_b=true;
	#ev124_江ノ島航空図_c=true;
	#ev503_村正抜刀剣光=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma04_021.nss";

}

scene ma04_020vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_019.nss"

//◆夜空
//◆ちとウェイト
//◆白銀流星
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	WaitKey(2000);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵演", 2000, Center, Middle, "cg/ef/ef019_銀星号突貫02.jpg");
	Wait(50);
	FadeDelete("絵色白", 1000, true);

//◆小分岐
//◆両方生存の場合は普通に進行して良いか、要奈良原確認

//――――――――――――――――――――――――――――――
.//●一条生存
//◆このシーン、一条がいる場合のみ

..//if_start
if(!$Ichizyou_Dead){
//◆一条

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/020vs0010a02">
「――あ――」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

}
..//if_end

//――――――――――――――――――――――――――――――
.//●香奈枝生存
//◆小分岐
//◆このシーン、香奈枝がいる場合のみ

..//if_start
if(!$Kanae_Dead){

//◆香奈枝＆さよ
	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/020vs0020a03">
「……あれは」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/020vs0030a04">
「――装甲を！
　お嬢さま、お早く！」

</PRE>
	SetTextEXC();
	if($Ichizyou_Dead){
		TypeBeginCI();//―――――――――――――――――――――――――――――
	}else{
		TypeBeginTimeCIFO(0);//――――――――――――――――――――――――
	}
}
..//if_end

//――――――――――――――――――――――――――――――
.//●合流？　要奈良原確認
.//嶋：●合流ポイントに設定

//◆村正＆ＧＨＱ

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs0040a01">
《あっ……》

{	FwC("cg/fw/fwガーゲット_不快.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0050b02">
「何？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0060a00">
「――――!!」

</PRE>
	SetTextEXC();
	if($Ichizyou_Dead && $Kanae_Dead){
		TypeBeginCIO();//―――――――――――――――――――――――――――――
	}else{
		TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	}

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg002_空a_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_02_01_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　瞬時。
　誰もが空を見上げた。

　――見よ、と。
　何者かの絶対的な命令を聞いたかのように。

　そして見る。
　その星を。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ＢＧＭ：魔王星
	SoundPlay("@mbgm37",2000,1000,true);

//◆白銀流星
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/ef019_銀星号突貫02.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef019_銀星号突貫02.jpg");
	Zoom("絵演", 0, 1100, 1100, null, false);
	Zoom("絵演上", 0, 1300, 1300, null, false);

	Zoom("絵演上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆メテオストライク。ずがごらごーん。
	CreateSE("SE01a","se戦闘_銀星号_メテオストライク");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, -950, "cg/ef/resize/ef019_銀星号突貫tl.jpg");
	CreateTextureSP("絵演", 3000, Center, -950, "cg/ef/resize/ef019_銀星号突貫tl.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Move("絵演*", 200, @0, -1050, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆なんかすげーことになった。つーか天変地異
	CreateSE("SE02","se戦闘_破壊_大爆発01");
	MusicStart("SE02",0,1000,0,700,null,false);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	SetVertex("絵演*", center, bottom);
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 5000, 1200, 2000, Dxl2, false);
	Shake("絵演上", 5000, 0, 0, 20, 0, 1000, Dxl3, false);

	WaitKey(1000);

	Fade("絵色白", 3000, 1000, Axl1, true);

//◆空
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg002_空b_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0070a14">
「……うぅむ。
　少しばかり、力が乗り過ぎたようだ」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0080a14">
「江ノ島が<RUBY text="・・・・・">無くなって</RUBY>しまったぞ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆江ノ島周辺マップ。江ノ島がない？
//◆ピッ。本来あった位置を点線で表示
	CreateTextureEX("絵ＥＶａ", 4000, Center, -490, "cg/ev/resize/ev124_江ノ島航空図_al.jpg");
	Fade("絵ＥＶａ", 700, 1000, null, true);

	WaitKey(300);

	CreateTextureSP("絵ＥＶｂ", 4010, Center, -490, "cg/ev/resize/ev124_江ノ島航空図_bl.jpg");

	Wait(700);
	Fade("絵ＥＶｂ", 0, 1000, null, true);
	Wait(700);
	Fade("絵ＥＶｂ", 0, 0, null, true);

	Wait(700);
	Fade("絵ＥＶｂ", 0, 1000, null, true);
	Wait(700);
	Fade("絵ＥＶｂ", 0, 0, null, true);

	Wait(700);
	Fade("絵ＥＶｂ", 0, 1000, null, true);
	Wait(700);
	Delete("絵ＥＶｂ");

	WaitKey(1000);

	//SetFwC("cg/fw/fw二世女王蟻_通常.png");
	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma04/020vs0090a15">
《……御堂》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma04/020vs0100a15">
《あそこだ》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0110a14">
「うん？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピッ。マップ上方を矢印で示す
//◆本州側に食い込んでいる江ノ島
	Move("絵ＥＶａ", 3000, @0, -150, DxlAuto, true);

	WaitKey(1000);

	//SetFwC("cg/fw/fw二世女王蟻_通常.png");
	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma04/020vs0120a15">
《<RUBY text="・・">半島</RUBY>になっている》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0130a14">
「おお。
　本当だ！」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0140a14">
「綺麗に飛んだものだな。
　あれは浮島だったのか」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶｃ", 3980, Center, Middle, "cg/ev/ev124_江ノ島航空図_a.jpg");
	FadeDelete("絵ＥＶａ", 1000, true);

	CreateTextureSP("絵ＥＶｅ", 3990, Center, Middle, "cg/ev/ev124_江ノ島航空図_b.jpg");
	CreateTextureSP("絵ＥＶａ", 3980, Center, Middle, "cg/ev/ev124_江ノ島航空図_c.jpg");
	Wait(700);
	Fade("絵ＥＶｅ", 0, 1000, null, true);
	Wait(700);
	Fade("絵ＥＶｅ", 0, 0, null, true);

	Wait(700);
	Fade("絵ＥＶｅ", 0, 1000, null, true);
	Wait(700);
	Fade("絵ＥＶｅ", 0, 0, null, true);

	Wait(700);
	Fade("絵ＥＶｅ", 0, 1000, null, true);
	Wait(700);
	Delete("絵ＥＶｅ");

	Wait(700);
	FadeDelete("絵ＥＶａ", 300, true);

	//FwC("cg/fw/fw二世女王蟻_通常.png");
	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma04/020vs0150a15">
《違うぞ。多分》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0160a14">
「ともあれ無事で何より。
　あのように景観の美しい島をなくしてしま
っては惜しいものな！」

{	//FwC("cg/fw/fw二世女王蟻_通常.png");
	FwC("cg/fw/fw銀星号_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma04/020vs0170a15">
《……その意味では、もう、台無しだが》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正周辺
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　……奇妙としか言いようもない話だが。
　振動、あるいは衝撃というものは、余り感じること
がなかった。

　覚えたものは、周囲の全てが一瞬にして消え去った
かのような、凄まじい喪失感――
　そしてその一瞬が過ぎた後の、<RUBY text="・・・・・・・・・">しかし何も変わって</RUBY>
<RUBY text="・・・">いない</RUBY>という、感覚と現実の甚だしい乖離。

　最後に。
　鎌倉周辺なら何処でも眺められる六波羅の普陀楽城
が、さっきより<RUBY text="・・・・・・">近付いている</RUBY>ということから……

　……『事実』が理解されて……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0180a00">
「――ひ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　畏怖のあまり、俺は失禁しかけた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs0190a01">
《………………
　あ……あ》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs0200a01">
《あの……これは……
　<RUBY text="・・・・・">達磨落とし</RUBY>のようなことになったのかしら
……？》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs0210a01">
《……この島が……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　村正の<RUBY text="こえ">金打声</RUBY>も上擦っている。
　自分で言っている事を、自分で理解していない……
そう知れる声音。

　――そんな、馬鹿な。
　
　口にせずとも、俺と劔冑の思いは同じだった。

　おそらくこれは、<RUBY text="・・">あれ</RUBY>の固有技能である重力制御に
よって実現した現象なのだろう、が……
　推測が及ぶのはそこまでで、具体的な部分はまるで
想像もつかなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0220b02">
《……何だ。
　今、何が起きた？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　こちらは理解していないらしい、ガーゲット少佐。
　狐に化かされた心地ででもいるのか。ぽかんとした
表情が窺える素振りで、ままならぬ巨躯の首を巡らし
辺りを見回している。

　配下の兵も同様なのであろう。
　指揮官の問いに答えられる者はなく、指揮官と同じ
事をせずにいられる者もいない。

　やがて、少佐の座す巨騎が一点を向いて固まる。
　俺と同じ。<RUBY text="・・・・・">妙に大きな</RUBY>普陀楽城。

　……半秒後に、彼は求めた答えを得ることになるだ
ろう。
　彼の部下は、もうあと数秒ほど遅れるだろう。

　つまり――
　そこには最後の平安があったのだ。

　何が来たのかも知らず、何が起きたのかも知らず、
怯えず狂わず壊れずにいられる。
　貴重な時間。

　もはや還らぬ刻。
　最後の――最後の。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆精神汚染波
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSPmul("絵演汚染", 4100, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateTextureEXadd("絵演汚染上", 4110, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演汚染上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演汚染上", 250, 1000, null, true);
	Fade("絵演汚染上", 250, 0, DxlAuto, true);
	FadeDelete("絵演汚染", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　――来た。
　心を犯す、銀の猛毒。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_侮蔑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160a]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0230b02">
《……何？
　…………<RUBY text="メタルエコー">装甲通信</RUBY>……？》


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆生と死の
	CreateTextureEX("Gin_song01", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄01.png");
//◆されば嘲笑
	CreateTextureEX("Gin_song02", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄02.png");

	Move("Gin_song01", 0, @0, @-40, null, true);
	Move("Gin_song02", 0, @0, @+10, null, true);

	Move("Gin_song01", 1000, @0, @-10, null, false);
	Fade("Gin_song01", 1000, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song02", 1000, @0, @-10, null, false);
	Fade("Gin_song02", 1000, 1000, null, true);

	Fade("silver_son*", 500, 0, null, true);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160b]
《生と死の選択を己に課す命題として自ら問う》

《されば嘲笑の歓喜する渦に喜劇の幕よいざ上がれ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――
*/

	CreatePlainSP("絵板写", 6000);
	Delete("Gin_song*");
	FadeDelete("絵板写", 1000, true);

//◆汚染
	CreateSE("SEL01","se戦闘_銀星号_精神汚染波_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵演汚染", 4100, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateTextureEXadd("絵演汚染上", 4110, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演汚染上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演汚染上", 250, 1000, null, true);
	Fade("絵演汚染上", 250, 0, DxlAuto, true);

//◆嵐の夜に
	CreateTextureEX("Gin_song03", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄03.png");
//◆温かい巣で
	CreateTextureEX("Gin_song04", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄04.png");
//◆木漏れ日の下
	CreateTextureEX("Gin_song05", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄05.png");
//◆せせらぎを聞く
	CreateTextureEX("Gin_song06", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄06.png");
//◆生の意味
	CreateTextureEX("Gin_song07", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄07.png");
//◆死の恐怖
	CreateTextureEX("Gin_song08", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄08.png");
//◆生命の問いに
	CreateTextureEX("Gin_song09", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄09.png");
//◆生命を信じ
	CreateTextureEX("Gin_song10", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄10.png");
//◆獣よ踊れ野を馳せよ
	CreateTextureEX("Gin_song11", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄11.png");
//◆いまや如何なる
	CreateTextureEX("Gin_song12", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄12.png");

	Move("Gin_song07", 0, @0, @-40, null, true);
	Move("Gin_song06", 0, @0, @-80, null, true);
	Move("Gin_song05", 0, @0, @-120, null, true);
	Move("Gin_song04", 0, @0, @-160, null, true);
	Move("Gin_song03", 0, @0, @-200, null, true);
	Move("Gin_song08", 0, @0, @0, null, true);
	Move("Gin_song09", 0, @0, @+40, null, true);
	Move("Gin_song10", 0, @0, @+80, null, true);
	Move("Gin_song11", 0, @0, @+120, null, true);
	Move("Gin_song12", 0, @0, @+160, null, true);

	Move("Gin_song03", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song03", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song04", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song04", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song05", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song05", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song06", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song06", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song07", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song07", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song08", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song08", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song09", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song09", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song10", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song10", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song11", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song11", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song12", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song12", 600, 1000, null, false);

	WaitKey();

	Fade("Gin_song0*", 500, 0, null, false);
	Fade("Gin_song10", 500, 0, null, false);
	Fade("Gin_song11", 500, 0, null, false);
	Fade("Gin_song12", 500, 0, null, true);
	Delete("Gin_song*");

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
《嵐の夜に吼え立てる犬は愚かな盗賊と果敢に戦う》

《温かい巣で親鳥を待つ雛は蛇の腹を寝床に安らぐ》

《木漏れ日の下で生まれた獅子は幾千の鹿を飽食し》

《せせらぎを聞く蛙の卵は子供が拾って踏みつぶす》

《生の意味を信じる者よ道化の真摯な詭弁を聞け》

《死の恐怖に震える者よ悪魔の仮面は黒塗りの鏡》

《生命に問いを向けるなら道化と悪魔は匙を持ち》

《生命を信じ耽溺するなら道化と悪魔は冠を脱ぐ》

《獣よ踊れ野を馳せよ唄い騒いで猛り駆けめぐれ》

《いまや如何なる鎖も檻も汝の前には朽ちた土塊》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――
*/

//◆発狂世界
	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateSE("SEL01","se背景_ガヤ_合戦01");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSPmul("絵演汚染", 4100, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateTextureEXadd("絵演汚染上", 4110, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");

	CreateColorSP("絵色白弐", 10000, "#FFFFFF");
	CreateTextureSP("絵演", 4000, Center, Middle, "cg/ev/ev003_銀星号事件イメージ３.jpg");
	CreateTextureSPover("絵演覆", 4001, Center, Middle, "cg/ev/ev003_銀星号事件イメージ３.jpg");
	Zoom("絵演覆", 0, 1500, 1500, null, true);
	DrawEffect("絵演覆", 31600000, "LowWave", 30, 30, null);
	FadeDelete("絵色白弐", 30, true);

	FadeDelete("絵色白", 500, false);
	Zoom("絵演汚染上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演汚染上", 250, 1000, null, true);
	Fade("絵演汚染上", 250, 0, DxlAuto, true);
	Delete("絵演汚染上");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　吠え声が上がった。

　人のものではない。
　知性持たぬ、<RUBY text="けだもの">獣</RUBY>の。

　殺意を謳う。
　悪意を謳う。
　害意を謳う。

　そこに不純物は何もない。
　人がましい一切がない。

　かくも透き通った<RUBY text="まがき">凶</RUBY>の唄、決して人には歌えぬもの。
　だからそれは人ではなかった。

　二本足で立ち、皮膚を鉄の毛皮で覆い、器械の牙を
持つ獣。
　彼らは獣だった。

　ＧＨＱの特殊部隊は、獣の群れと化していた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0240b02">
《何を……っ、
　何をしている!?》

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0250b02">
《やめんか!!
　やめろ！　仲間だ！》

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0260b02">
《わからないのか!?
　<RUBY text="・・・・・・・・・・・">そこにいるのは同胞だぞ</RUBY>!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆銃声とか。同士討ちの様子
	CreateSE("SE01","se背景_ガヤ_戦場の風景03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	MFlash(30, 8);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　彼らは、猛る。
　手当たり次第に、暴れ狂う。

　ある歩兵は、同僚の群れに機関銃を乱射した。
　そして、背後から戦車に踏み潰された。

　その戦車は前方の同型機に主砲を向けた。
　しかし、弾を撃ち出す前に砲口へ手榴弾を投げ入れ
られ、轟火を噴いて爆砕した。

　狙われていた戦車は終始構う様子なく、空へ砲弾を
撒き散らし続けている。
　機動性の高い武者にそうそう命中するものではない
――が、遂に一発が<RUBY text="ワーウルフ">Ｓ-一四</RUBY>の翼を撃ち抜いた。

　天空から一騎が転げ落ち、仲間は彼の悲劇を茫然と
眺めやる。
　彼らは獣になっていなかった。

　金剛の甲鉄で守られた武者達だけが……
　この小世界で、丸裸の人間の脆弱さを味わっていた。

　虚しい叱咤を繰り返すガーゲット少佐は、その中で
最も冷静さを保っていた一人だと言えるだろう。
　だからこそ、異色で――獣には<RUBY text="・・">好餌</RUBY>と見えたのか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("Gin_song15", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄15.png");
	CreateTextureEX("Gin_song16", 5100, Center, Middle, "cg2/sys/telop/tp_銀星号の唄16.png");
	CreateTextureEX("Gin_song17", 5100, Center, Middle, "cg2/sys/telop/tp_銀星号の唄17.png");
	CreateTextureEX("Gin_song18", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄18.png");
	CreateTextureEX("Gin_song19", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄19.png");
	CreateTextureEX("Gin_song20", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄20.png");
	CreateTextureEX("Gin_song21", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄21.png");
	CreateTextureEX("Gin_song22", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄22.png");
	CreateTextureEX("Gin_song23", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄23.png");
	CreateTextureEX("Gin_song24", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄24.png");

	Move("Gin_song19", 0, @0, @-40, null, true);
	Move("Gin_song18", 0, @0, @-80, null, true);
	Move("Gin_song17", 0, @0, @-120, null, true);
	Move("Gin_song16", 0, @0, @-160, null, true);
	Move("Gin_song15", 0, @0, @-200, null, true);
	Move("Gin_song20", 0, @0, @0, null, true);
	Move("Gin_song21", 0, @0, @+40, null, true);
	Move("Gin_song22", 0, @0, @+80, null, true);
	Move("Gin_song23", 0, @0, @+120, null, true);
	Move("Gin_song24", 0, @0, @+160, null, true);

	Move("Gin_song15", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song15", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song16", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song16", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song17", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song17", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song18", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song18", 600, 1000, null, false);

	WaitKey(2000);

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

	WaitKey(2000);

	Move("Gin_song23", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song23", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song24", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song24", 600, 1000, null, false);

	WaitKey();

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
《奇跡を行う聖人は衆生を救い神を呪って嘔吐する》

《黄金の兜の覇王は万里を征し愛馬と共に川底へ沈む》

《湖の美姫は国を捨て愛を選び糞尿に溺れて刑死する》

《孤赤児は蚯蚓の血を母の乳とし三夜して腹より腐る》

《生命よこの賛歌を聞け笑い疲れた怨嗟を重ねて》

《生命よこの祈りを聞け怒りおののく喜びを枕に》

《百年の生は炎と剣の連環が幾重にも飾り立てよう》

《七日の生は闇と静寂に守られ無垢に光り輝くだろう》

《獣よ踊れ野を馳せよ唄い騒いで猛り駆けめぐれ》

《いまや如何なる鎖も檻も汝の前には朽ちた土塊》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――
*/

	SetVolume("SE*", 1000, 0, null);
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　じろり、じろりと、獣らの血走った眼が嘗ての上官
を舐める。
　申し合わせたように、一様に。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0270b02">
《ッ!?
　貴官ら――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　彼は何を言おうとしたのか。
　彼が信じていたものの一つ、尊い何かの崩壊に直面
して、どんな言葉で防ぎ止めようとしたのか。

　あくまでも人としての、彼の気高い試みは、しかし
機会さえ与えられなかった。
　せめてもの慰めは、どのみち無意味であったという
事だ。

　何を言おうと変わらない。
　何を言おうと、獣には意味を為さないのだから。

　変わりようがない。
　拳と刃と鉛弾の返答は。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆荒覇吐に銃撃砲撃
	CreateSE("SE01","se戦闘_銃器_機関銃乱射01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵演", 4000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Wait(30);
	Delete("絵色白");
	MFlash(30, 8);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　……乱打を浴びる。
　怪物が――ガーゲット少佐が。

　先刻彼なりの表現で、貴重な存在であると言明した
人々から牙を突き立てられるなか。
　その胸には何が去来するのか。

{	CreateSE("SE01a","se戦闘_銃器_跳弾04");
	MusicStart("SE01a",0,1000,0,1250,null,false);}
　分厚い甲鉄は通常弾など苦もなく跳ね返している。
　
　だが<RUBY text="・・">無傷</RUBY>ではないのだろう。決して。

　巨騎の沈黙の中に、俺は遣り場のない怨嗟を聴いた。
　誰にとも、何処へとも、向けられぬ憤懣。

　いや――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0280b02">
《…………》

{	FwC("cg/fw/fwガーゲット_不快.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0290b02">
《……貴様……か……》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0300a00">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 500, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

//◆銀星号。幻想的演出？
	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵演汚染", 4100, -240, -970, "cg/ev/resize/ev952_銀星号登場_l.jpg");
	CreateTextureEXadd("絵演汚染上", 4110, -240, -970, "cg/ev/resize/ev952_銀星号登場_l.jpg");
	SetShade("絵演汚染", MEDIUM);
	MusicStart("SE01",0,1000,0,1500,null,false);
	FadeDelete("絵色白", 500, false);
	Zoom("絵演汚染上", 500, 1250, 1250, Dxl2, false);
	Fade("絵演汚染上", 250, 1000, null, true);
	Fade("絵演汚染上", 250, 0, DxlAuto, true);
	Delete("絵演汚染上");

	Move("絵演汚染*", 10000, @0, -240, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　<RUBY text="ぎん">銀</RUBY>。
　<RUBY text="ぎん">白銀</RUBY>。
　<RUBY text="ぎん">純銀鋼</RUBY>。

　月の欠片と信じられし<RUBY text="かね">金属</RUBY>。
　魔力有ると畏れられし金属。
　狂気導くと忌避されし金属。

　それは古代の、素朴な人々の信仰。
　近代実証主義という凶暴な剣が、引き裂き絶命させ
てしまったもの。

　無知と蒙昧が見せた幻想と――
　
　しかし、果たして無知蒙昧はどちらであったのか。

　<RUBY text="ぎん">白銀</RUBY>は今ここに在る。

　月の美貌を、
　魔の武威を、
　狂気の光を、

　全て備えて。
　白銀の武者は此処にいる。

　ならばどうして疑えよう。
　銀の信仰を捨てられよう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号。しゃきーん。
	PrintBG("上背景", 30000);
	CreateSE("SE01","se特殊_雰囲気_鎧登場演02");
	CreateColorSP("絵暗転", 15000, "#FFFFFF");
	CreateTextureSP("絵演", 4100, -240, -240, "cg/ev/resize/ev952_銀星号登場_l.jpg");
	Delete("上背景");
	Wait(30);
	MusicStart("SE01",0,1000,0,1500,null,false);
	FadeDelete("絵暗転", 100, true);
	SoundPlay("@mbgm01",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　銀星号！
　この光輝が今、此処に在る！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_04_01_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_04_01_0", true);

	SetFwC("cg/fw/fwガーゲット_侮蔑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0310b02">
《貴様が――
　貴様が！》

{	FwC("cg/fw/fwガーゲット_不快.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0320b02">
《〝<RUBY text="シルヴァー">銀星号</RUBY>〟か!!
　我が同胞を、壊したのか!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　ＧＨＱ将校であれば当然、銀星号事件の詳細は聞き
知っていたのだろう。
　その異様なばかりの内容とこの現状を合致させたに
違いない。

　真実を衝く叫びに、当の銀星号は鷹揚に頷いた。
　――そう。彼女はいつも、誰のどんな言葉でもなお
ざりにはしない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0330a14">
「<RUBY text="うむ">肯</RUBY>。
　自ら称した覚えはないが、たしかにおれは
<RUBY text="ぎん">白銀</RUBY>の名で呼ばれる者に他ならぬ」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0340a14">
「同胞とは、彼らのことか。
　そうだ。<RUBY text="・・・・・・">いらんものを</RUBY>、<RUBY text="・・・・・・">消し飛ばした</RUBY>」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0350b02">
《要らんもの……!?》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0360a14">
「〝倫理〟」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0370a14">
「人が自らの手足に填めた枷。
　これを、取り払ってやったのだ」

{	FwC("cg/fw/fwガーゲット_不快.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0380b02">
《何故!!》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0390a14">
「それが、この<RUBY text="ヒカル">光</RUBY>の道を阻むゆえに。
　打破し、破壊し、壊滅させねばならぬ」

{	FwC("cg/fw/fwガーゲット_不快.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0400b02">
《……貴様は……》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0410a14">
「〝倫理〟……
　そして倫理に基づいて構成された〝社会〟」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0420a14">
「延いてはつまり〝人の世界〟」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0430a14">
「すべて砕く。
　この光の手で打ち滅ぼす」

{	FwC("cg/fw/fwガーゲット_不快.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0440b02">
《貴様は――狂っているのか！》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0450a14">
「否！
　おれは理性の命じるところに従っている」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0460a14">
「疑うなら、この光の雄図を聞け！
　江ノ島の面積が約十分の四平方キロ」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0470b02">
《……何だと？》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0480a14">
「地球上の陸地総面積約一億五千万平方キロ。
　これを割り算すると」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0490a14">
「…………」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0500a14">
「……村正？」

{	//FwC("cg/fw/fw二世女王蟻_通常.png");
	FwC("cg/fw/fw銀星号_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma04/020vs0510a15">
《三億七千五百万》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0520a14">
「そう！
　世界は江ノ島三億七千五百万個分」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0530a14">
「つまり計算上、さっきの江ノ島キック三億
七千五百万回で世界は光の武力に屈服する！
　どうだ。違うか」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0540b02">
《…………》

{	FwC("cg/fw/fwガーゲット_不快.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0550b02">
《こ……この……
　気狂いめ……！》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0560a14">
「むう。こんな単純な話がなぜわからん。
　英国人は数字に弱いのか？」

{	//FwC("cg/fw/fw二世女王蟻_通常.png");
	FwC("cg/fw/fw銀星号_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma04/020vs0570a15">
《人のこと言えんぞ御堂。
　それにそういう問題ではないと思う》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0580a14">
「もしかして彼は失われたムー大陸とか信じ
ている人なのか？
　まだ地底帝国がある、と？」

{	//FwC("cg/fw/fw二世女王蟻_通常.png");
	FwC("cg/fw/fw銀星号_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma04/020vs0590a15">
《いや。そうでもなく。
　非現実的な話を大真面目に語る人間を見た
時、大概の人間は彼のような反応をするもの
だ。御堂》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0600a14">
「……非現実的？
　何を馬鹿な」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0610a14">
「<RUBY text="・・・">やるぞ</RUBY>？
　おれは」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0620a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号。ちょっと演出入れ
	CreatePlainSP("絵板写", 5000);
	CreateSE("SE01","se人体_足音_鎧歩く04");
	StR(1100, 0, -305,"cg/st/3d銀星号_立ち_戦闘b.png");
	FadeStR(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵板写", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　光。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆過去シーンなんか
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/ev/ev101_プロローグ_a.jpg");//ダミー注意
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("絵回想*");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	DeleteStA(0,true);
	FadeBG(0,true);
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　光。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆過去シーンなんか
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/ev/ev133_兜割に挑む光_a.jpg");//ダミー注意
	SetShade("絵回想", NOMORE);
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("絵回想*");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	//StL(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	StR(1100, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeBG(0,true);
	FadeStA(0,true);
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　光。
　俺の――――<k>いもうと。

　度重なる劇変に疲れ切った<RUBY text="こころ">精神</RUBY>は、周囲で繰り広げ
られる<RUBY text="サバト">饗宴</RUBY>にも揺れ動くことがない。
　それでも、想う――そこにいる彼女を。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0630a00">
「光……」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0640a14">
「うん」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　思わず口をついた、胸中の名。
　すぐさまくるりと、彼女はこちらに顔を向けた。

　続く言葉はない。
　銀の姿を見つめる。

　過去の面影はそこに無かった。
　何一つ――

　彼女もこちらを見つめていたのか。
　暫し黙った後、嬉しげな所作で頷いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0650a14">
「苦痛。
　煩悶。
　懊悩」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0660a14">
「<RUBY text="しか">而</RUBY>して未だ、折れぬ意思」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0670a14">
「上々だ！
　こちらへ近付いてきているぞ、景明」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　――この二年。
　彼女が俺に対して意味のある言葉を投げかけたのは、
今が初めてではないかと思う。

　なのに、わからなかった。
　彼女が何を言っているのか。何を言いたいのか。

　やはり――
　やはり、そうなのだ。

　あれは違うのだ。
　<RUBY text="・・・・・">光ではない</RUBY>のだ。

　妹は、もう……
　失われてしまったのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0680a00">
「どうして……」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0690a14">
「ん？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　俺はこの上ない愚問を発した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0700a00">
「どうして、狂った」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0710a14">
「おまえまでそんなことを言うのか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　拗ねたような声。

　そこに狂気の自覚など露ほどもない。
　……当然だ。<RUBY text="・・・・・">だからこそ</RUBY>狂っているのだ。

　こんな問いには意味がない。わかっている。
　それでも未練が、俺に言葉を続けさせた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0720a00">
「<RUBY text="・・・・">呪われた</RUBY>からか？
　そうなのか？」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0730a14">
「…………」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0740a14">
「狂ってなどいないよ……
　景明」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0750a00">
「狂っている。
　狂っているではないか！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,1250,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　俺はＧＨＱの兵士ら――だったもの――を指差した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0760a00">
「彼らを見ろ！
　お前の放つ<RUBY text="・">波</RUBY>を浴びてああなった！」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0770a00">
「お前が狂っているから、お前と心を重ねた
彼らも狂ってしまったのだ！
　そうだろう!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　俺の指を追って、銀の眼差しが地上をさすらう。
　……阿鼻叫喚の巷。

　視線がわずかに細まった。
　それは、会心の態。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0780a14">
「……〝布武〟……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0790a00">
「何？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　……布武？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0800a14">
「しかし、確かに解せないところはある」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0810a14">
「なぜ誰も彼もが知性を失うのか？
　なぜ光のようにはいられないのか？」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0820a14">
「それほどに飢えていたのだろうか……
　人は常日頃、そこまで<RUBY text="とうそう">斗争</RUBY>の<RUBY text="さが">性</RUBY>を抑圧しな
がら生きているものなのか？　<RUBY text="・・・・・・">光とは違って</RUBY>」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0830a14">
「だから」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　銀星号は、右手の人差し指と親指で輪を作った。
　それを一人の兵士に向ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0840a14">
「少し弾いただけで」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　指を弾く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0850a14">
「こうなってしまうのか？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆汚染波演出
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSPmul("絵演汚染", 4100, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateTextureEXadd("絵演汚染上", 4110, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	DeleteStA(0,true);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	FadeDelete("絵色白", 500, false);
	Zoom("絵演汚染上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演汚染上", 250, 1000, null, true);
	Fade("絵演汚染上", 250, 0, DxlAuto, true);
	FadeDelete("絵演汚染", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　――その指先から、見えぬ何かが飛ばされたのか。
　兵士の身体が跳ね上がった。

　常識では考えられない跳躍。
　口をつく奇声。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, -30, -90, "cg/ev/resize/ev909_荒覇吐_m.jpg");
	CreateTextureSP("絵演", 3000, -30, -90, "cg/ev/resize/ev909_荒覇吐_m.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	SetBlur("絵演上", true, 3, 500, 50, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0541]
　彼は怪物に取り付いた。
　搭乗者の少佐が収納されている辺り、分厚い甲鉄の
<RUBY text="おうとつ">凹凸</RUBY>をつかみ、血色の眼光を突き刺す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0860b02">
《……ケヴェック！》

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0870b02">
《ケヴェック上等兵!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01a","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE01b","se擬音_粘着質_ゲル潰れる02");

	CreateTextureEXmul("絵演血漿", 4120, Center, Middle, "cg/anime/Right/blood_B_6.png");
	CreatePlainEXadd("絵板写", 4110);
	Zoom("絵板写", 0, 1250, 1250, null, true);
	SetBlur("絵板写", true, 3, 500, 50, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　名を呼ばわれて。
　その兵士は笑った。

　そう見えたのだ。
　犬歯を剥き出しにした顔が。

　彼は、そのまま、上体を煽り、
　反動をつけて、

{	MusicStart("SE01a",0,1000,0,1000,null,true);
	MusicStart("SE01b",0,1000,0,1000,null,true);
	Fade("絵演血漿", 0, 1000, null, true);
	FadeDelete("絵演血漿", 300, false);
	Fade("絵板写", 0, 1000, null, true);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1000, 1000, null, false);
	FadeDelete("絵板写", 1300, false);}
　顔面を甲鉄に投げつけ。
　――噛み付いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_侮蔑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0880b02">
《……うっ……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　傷もつく筈がない。
　それでも齧る。

　己の歯を砕き散らしながら。
　喜悦じみた吠え声を上げ、歯が立たない甲鉄を齧り
続ける。

　――地獄の餓鬼の<RUBY text="さま">様</RUBY>に似ていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0890b02">
《う……》

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0900b02">
《うあああァァァァァァッ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);

//◆荒覇吐、ブレストファイアー
	CreateSE("SE01","se戦闘_荒覇吐_攻撃01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵演", 3000, -780, -720, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	Request("絵演", Smoothing);
	Rotate("絵演", 0, @0, @180, @0, null,true);
	FadeDelete("絵色白", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　兵士の身体が粉微塵に砕け散る。
　それでも巨騎の斉射は止まない。

　兵士のいたあたりに、何かが張り付いている。
　……顎だ。食いついた顎だけが残って、怪物の甲鉄
を飾っている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_不快b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0910b02">
《アアアアアアアアアアアア!!
　貴様ァァァァァァァァァァァァァ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE00","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE00",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Zoom("絵演", 0, 1100, 1100, null, false);
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateSE("SE01b","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSPadd("絵演上", 4910, Center, Middle, "cg/ev/resize/ev910_荒覇吐胸元アップm.jpg");
	CreateTextureSPover("絵演", 4900, Center, Middle, "cg/ev/resize/ev910_荒覇吐胸元アップm.jpg");
	Rotate("絵演*", 0, @0, @180, @0, null,true);

	CreateTextureEXover("絵演下地", 4010, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureSP("絵演下元地", 4000, Center, Middle, "cg/bg/bg002_空a_03.jpg");
	StR(4800, 315, -160,"cg/st/3d銀星号_騎突_通常.png");
	Fade("絵演下地", 0, 600, null, true);
	FadeStR(0,true);
	FadeDelete("絵色白", 100, false);
	SetBlur("絵演上", true, 3, 500, 50, false);
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateWindow("絵窓", 15000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	CreateTextureEX("絵窓/絵演立絵装甲", 15100, -980, -1240, "cg/st/resize/3d銀星号_立ち_戦闘blm.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　音程を外した憎悪の叫びが、弾幕と共に空を塗る。
　既に正気ではなかったのかもしれない。だが狙点は
正確だった。銀影を目掛け、無数の針が飛ぶ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEXadd("絵窓/絵被弾効果壱", 19500, Center, Middle, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵窓/絵被弾効果弐", 19500, Center, Middle, "cg/ef/ef044_火花c.png");

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0920a14">
「ふっ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　銀星号の細い手が、再び<RUBY text="・・・">指打ち</RUBY>の形をつくった。
　そして、消える。

　いや――
　<RUBY text="はし">疾</RUBY>る。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆かんかんかんかん。
//◆銃弾デコピン返し
	CreateSE("SE01","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE01a","se戦闘_銃器_跳弾02");
	MusicStart("SE01*",0,1000,0,1500,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(20);

	CreateTextureEXadd("絵窓/絵被弾効果参", 19500, Center, Middle, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵窓/絵被弾効果四", 19500, Center, Middle, "cg/ef/ef044_火花c.png");

	StR(4800, 130, -330,"cg/st/3d銀星号_立ち_戦闘b.png");
	FadeStR(0,true);

	Delete("絵演*");
	Fade("絵色白", 100, 0, null, true);

	CreateSE("SE01a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE01aa","se戦闘_銃器_跳弾01");
	MusicStart("SE01a*",0,1000,0,1500,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(20);
	Fade("絵色白", 100, 0, null, true);

	CreateSE("SE01b","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE01bb","se戦闘_銃器_跳弾02");
	MusicStart("SE01b*",0,1000,0,1200,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(20);
	Fade("絵色白", 100, 0, null, true);

	CreateSE("SE01c","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE01cc","se戦闘_銃器_跳弾01");
	MusicStart("SE01c*",0,1000,0,1200,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(20);
	Fade("絵色白", 100, 0, null, true);

	CreateSE("SE01e","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE01ee","se戦闘_銃器_跳弾02");
	MusicStart("SE01e*",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(20);

	FadeDelete("絵色白", 2000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　到底、眼に留めることなどできない速度で駆け巡る
銀星号の指先。
　その一閃ごとに鳴る乾いた音。

　確認できる事実はそれのみ。
　否、あともう一つ。

　銃弾は一発たりと、銀星号の甲鉄に着弾していない。
　ガーゲット少佐は撃ち続け、狙いは正確であり続け
ているというのに、だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0930a14">
「なんとも不器用な指遣いであることよ！
　<RUBY text="クルセイダー">騎士</RUBY>、乙女の柔肌に触れたいと望むなら、
もそっと丁寧にしなくてはならぬ」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0940a14">
「これではどんな娘も<RUBY text="なび">靡</RUBY>くまい。
　平手打ちを食うのが落ちであろうよ！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	CreateSE("SEz00","se戦闘_銃器_機関銃乱射02");
	MusicStart("SEz00",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色間繋白", 30000, "#FFFFFF");
	Wait(10);

//あきゅん「演出：一気に読むと重いので分散させます」
	//CreateWindow("絵窓", 15000, 0, 144, 1024, 288, false);
	//SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 15010, "#66FFCC");
	CreateTextureSPmul("絵窓/絵演背景", 15020, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	//CreateTextureEX("絵窓/絵演立絵装甲", 15100, -980, -1240, "cg/st/resize/3d銀星号_立ち_戦闘blm.png");
	Fade("絵窓/絵演立絵装甲", 0, 1000, null, true);
	Move("絵窓/絵演立絵装甲", 0, -1080, @0, Dxl2, false);

	//CreateTextureEXadd("絵窓/絵被弾効果壱", 19500, Center, Middle, "cg/ef/ef044_火花c.png");
	//CreateTextureEXadd("絵窓/絵被弾効果弐", 19500, Center, Middle, "cg/ef/ef044_火花c.png");
	//CreateTextureEXadd("絵窓/絵被弾効果参", 19500, Center, Middle, "cg/ef/ef044_火花c.png");
	//CreateTextureEXadd("絵窓/絵被弾効果四", 19500, Center, Middle, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵窓/絵被弾効果五", 19500, Center, Middle, "cg/ef/ef044_火花c.png");

	Delete("絵色間繋白");

	$火花縮小率甲=Random(5)*30;
	$火花縮小率=$火花縮小率甲+250;
	Move("絵窓/絵被弾効果壱", 0, -520, -400, null, true);
	Zoom("絵窓/絵被弾効果壱", 0, $火花縮小率, $火花縮小率, null, true);
	Wait(10);
	SetBlur("絵窓/絵演立絵装甲", true, 2, 500, 50, false);
	Move("絵窓/絵演立絵装甲", 100, -1284, -1125, Dxl2, true);
	CreateSE("SE00","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE00a","se戦闘_銃器_跳弾02");
	MusicStart("SE00*",0,1000,0,1500,null,false);
	Fade("絵窓/絵被弾効果壱", 0, 1000, null, true);
	Shake("絵窓/絵演立絵装甲", 300, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵被弾効果壱", 300, @250, @250, Dxl2, false);
	Rotate("絵窓/絵被弾効果壱", 450, @0, @0, @3600, null,false);
	Shake("絵窓/絵被弾効果壱", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("絵窓/絵被弾効果壱", 300, 1000, 0, 100, null, "cg/data/slide_01_02_0.png", false);
	FadeDelete("絵窓/絵被弾効果壱", 450, false);

	$火花演出待基本=20;
	$火花演出待=$火花演出待基本+(Random(3)*20);
	Wait($火花演出待);

	$火花縮小率甲=Random(5)*30;
	$火花縮小率=$火花縮小率甲+250;
	Move("絵窓/絵被弾効果弐", 0, -98, -465, null, true);
	Zoom("絵窓/絵被弾効果弐", 0, $火花縮小率, $火花縮小率, null, true);
	Rotate("絵窓/絵被弾効果弐", 0, @0, @0, 0, null,false);
	Wait(10);
	Move("絵窓/絵演立絵装甲", 100, -865, -1170, Dxl2, true);
	CreateSE("SE01a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE01aa","se戦闘_銃器_跳弾01");
	MusicStart("SE01a*",0,1000,0,1500,null,false);
	Fade("絵窓/絵被弾効果弐", 0, 1000, null, true);
	Shake("絵窓/絵演立絵装甲", 300, 20, 10, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵被弾効果弐", 300, @250, @250, Dxl2, false);
	Rotate("絵窓/絵被弾効果弐", 450, @0, @0, @3600, null,false);
	Shake("絵窓/絵被弾効果弐", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("絵窓/絵被弾効果弐", 300, 1000, 0, 100, null, "cg/data/slide_01_02_2.png", false);
	FadeDelete("絵窓/絵被弾効果弐", 450, false);

	$火花演出待=$火花演出待基本+(Random(3)*20);
	Wait($火花演出待);

	$火花縮小率甲=Random(5)*30;
	$火花縮小率=$火花縮小率甲+250;
	Move("絵窓/絵被弾効果参", 0, -415, -346, null, true);
	Zoom("絵窓/絵被弾効果参", 0, $火花縮小率, $火花縮小率, null, true);
	Rotate("絵窓/絵被弾効果参", 0, @0, @0, 0, null,false);
	Wait(10);
	Move("絵窓/絵演立絵装甲", 100, -1178, -1061, Dxl2, true);
	CreateSE("SE01b","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE01bb","se戦闘_銃器_跳弾02");
	MusicStart("SE01b*",0,1000,0,1200,null,false);
	Fade("絵窓/絵被弾効果参", 0, 1000, null, true);
	Shake("絵窓/絵演立絵装甲", 300, 20, 0, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵被弾効果参", 300, @250, @250, Dxl2, false);
	Rotate("絵窓/絵被弾効果参", 450, @0, @0, @3600, null,false);
	Shake("絵窓/絵被弾効果参", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("絵窓/絵被弾効果参", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", false);
	FadeDelete("絵窓/絵被弾効果参", 450, false);

	$火花演出待=$火花演出待基本+(Random(3)*20);
	Wait($火花演出待);

	$火花縮小率甲=Random(5)*30;
	$火花縮小率=$火花縮小率甲+250;
	Move("絵窓/絵被弾効果四", 0, -220, -470, null, true);
	Zoom("絵窓/絵被弾効果四", 0, $火花縮小率, $火花縮小率, null, true);
	Rotate("絵窓/絵被弾効果四", 0, @0, @0, 0, null,false);
	Wait(10);
	Move("絵窓/絵演立絵装甲", 100, -990, -1173, Dxl2, true);
	CreateSE("SE01c","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE01cc","se戦闘_銃器_跳弾01");
	MusicStart("SE01c*",0,1000,0,1200,null,false);
	Fade("絵窓/絵被弾効果四", 0, 1000, null, true);
	Shake("絵窓/絵演立絵装甲", 300, 30, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵被弾効果四", 300, @250, @250, Dxl2, false);
	Rotate("絵窓/絵被弾効果四", 450, @0, @0, @3600, null,false);
	Shake("絵窓/絵被弾効果四", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("絵窓/絵被弾効果四", 300, 1000, 0, 100, null, "cg/data/zoom_01_00_1.png", false);
	FadeDelete("絵窓/絵被弾効果四", 450, false);

	$火花演出待=$火花演出待基本+(Random(3)*20);
	Wait($火花演出待);

	$火花縮小率甲=Random(5)*30;
	$火花縮小率=$火花縮小率甲+250;
	Move("絵窓/絵被弾効果五", 0, -326, -565, null, true);
	Zoom("絵窓/絵被弾効果五", 0, $火花縮小率, $火花縮小率, null, true);
	Rotate("絵窓/絵被弾効果五", 0, @0, @0, 0, null,false);
	Wait(10);
	Move("絵窓/絵演立絵装甲", 100, -1087, -1268, Dxl2, true);
	CreateSE("SE01e","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE01ee","se戦闘_銃器_跳弾02");
	MusicStart("SE01e*",0,1000,0,1000,null,false);
	Fade("絵窓/絵被弾効果五", 0, 1000, null, true);
	Shake("絵窓/絵演立絵装甲", 300, 30, 0, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵被弾効果五", 300, @250, @250, Dxl2, false);
	Rotate("絵窓/絵被弾効果五", 450, @0, @0, @3600, null,false);
	Shake("絵窓/絵被弾効果五", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("絵窓/絵被弾効果五", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", false);
	FadeDelete("絵窓/絵被弾効果五", 450, true);

	SetBlur("絵窓/絵演立絵装甲", false);
	Move("絵窓/絵演立絵装甲", 6000, -1280, @0, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　銀月の武者が<RUBY text="らんまん">爛漫</RUBY>に笑う。

　……あれは、何だ。
　弾丸を指先で打ち返しているのか。

　……………………。

　自分で言っておいて、信じられない。
　信じたくはない。

　だが目前の光景から類推される真実は他になかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Zoom("絵窓", 300, 1000, 0, Dxl2, true);
	Delete("絵窓");

	SetFwC("cg/fw/fwガーゲット_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0950b02">
《お――
　おおおおアアアアア!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜気砲
	CreateSE("SE01","se戦闘_銃器_砲門構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 6100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreateTextureSP("絵演", 6000, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateSEEX("SE01a","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SE01a",3000,1000,0,1000,null,true);
	CreateTextureEXadd("絵演上", 6100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	Zoom("絵演上", 0, 1100, 1100, null, true);
	Shake("絵演上", 360000, 6, 0, 0, 50, 1000, Axl3, false);

	DeleteStA(0,true);
	Delete("絵演下*");

	MeimetuAction();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　巨獣が回頭し、一際不穏な砲門が首を伸ばす。
　肌の粟立つような唸りが、夜風を乱す。

　……あれを撃つ気か。

　弾を使わず、標的を焼き尽くす魔砲。
　あれは――銀星号と云えど、躱しようがない――？

　その脅威を知ってか知らずか。
　銀星号は何やら不興げに、むぅ、と吐息した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0960a14">
「――慮外者。
　乙女に向かって、許しも得ず、そんな無粋
な代物を突きつけるとは何事か」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0970a14">
「光に対する狼藉は高いぞ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　あるいは警告であったのかもしれないそれを、少佐
は聞き入れなかった。
　聴こえてもいなかったのだろう。

　剣呑な唸りが極限に達する。
　不可思議なる死の呪術が完成に至る。

　銀星号は不動。
　未知の脅威に対して、備えは何もなく――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0980a14">
「ふん……？
　何だ。<RUBY text="・・・・・">そんなもの</RUBY>か」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);

//◆竜気砲発振
	CreateSE("SE01","se戦闘_荒覇吐_攻撃03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("プロセス*");
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ev/resize/ev912_荒覇吐竜気砲アップ_bl.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/resize/ev912_荒覇吐竜気砲アップ_bl.jpg");
	SetBlur("絵演", true, 3, 500, 50, false);
	Zoom("絵演*", 0, 2000, 2000, null, true);

	Fade("絵演上", 5000, 1000, null, false);
	Zoom("絵演*", 10000, 500, 500, Dxl2, false);
	Wait(1000);

	Zoom("絵演*", 500, 600, 600, Dxl2, false);
	Shake("絵演", 500, 0, 50, 0, 0, 1000, Dxl3, false);

	CreateWindow("絵窓", 5000, 636, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateColorSP("絵窓/絵演色", 5010, "#66FFFF");
	CreateTextureSPmul("絵窓/絵演背景", 5020, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, Middle, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Request("絵窓/絵演立絵装甲", Smoothing);
	Rotate("絵窓/絵演立絵装甲", 0, @0, @180, @0, null,true);
	Move("絵窓/絵演立絵装甲", 0, @280, @0, null, true);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	CreateColorEXadd("絵窓/絵演覆白", 6000, "#FFFFFF");
	CreateColorEXover("絵窓/絵演色竜気砲", 5500, "#FFFF00");
	CreateTextureEXmul("絵窓/絵演色竜気砲上", 5510, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	Fade("絵窓/絵演色竜気*", 0, 800, null, true);
	DrawTransition("絵窓/絵演色竜気砲上", 300, 0, 1000, 100, Dxl2, "cg/data/slide_01_02_0.png", false);
	DrawTransition("絵窓/絵演色竜気砲", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Fade("絵窓/絵演覆白", 3000, 950, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　<RUBY text="シキ">死気</RUBY>が飛ぶ。
　身体の前で両腕を×字に交差して、銀星号がそれを
受ける。

　そのまま動かず――
　数瞬、凍った時が流れて。

　……死んだ？

　その一語が脳裏を過ぎった。
　そう思ったから、<RUBY text="・・・・">ではなく</RUBY>。

　そう思えなかったから。
　否定するために、そう考えたのだ。

　事実。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0990a14">
「<RUBY text="・">波</RUBY>を送って内から壊す。
　なるほど。良く出来てはいるが」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs1000a14">
「要は<RUBY text="・・・">裏当て</RUBY>ではないか……
　この程度の打法、返すのは造作もない」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs1010a14">
「こう――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);
	SetVolume("@mbgm*", 300, 0, null);

//◆フラッシュ？
	CreateSE("SE01","se特殊_エネルギー放棄");
	CreateSE("SE01a","se戦闘_衝撃_攻撃交錯02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 10000, "#FFFFFF");
	Fade("絵色白", 300, 1000, null, false);
	Zoom("絵窓", 300, 10000, 10000, null, true);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	Delete("プロセス*");
	FadeDelete("絵暗転", 2000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　ふっと、銀色武者が両腕を開く。
　目の覚めるような鋭い動き。

　その刹那、怪物の砲が<RUBY text="・・・">溶けた</RUBY>。

　砲だけではない。
　周辺の装甲がごっそりと――火にあてられた氷よろ
しく、曲線的な形で削られている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs1020a14">
「波を返してやれば、ほら、斯様――
　未熟な拳を使った腕は、自ら砕けることに
なる」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs1030a14">
「な？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
　兜の奥で片目を瞑り、最後の一語は俺に投げる。
　……同意など求められたところで、返す言葉という
ものがないが。

　全く理解の及ばない攻防だった。
　あの砲器は結局どんな代物であったのか――そして
銀星号は如何にしてそれを破ったのか。

　まるでわからない。
　
　つまりは<RUBY text="・・">これ</RUBY>が俺と<RUBY text="あれ">銀星号</RUBY>の間にある差か。

　想像の翼も届かぬ果ての果て。
　別次元の別世界。

　そんな処にあの白銀はいるのだ。
　天地の隔たりより、更に遠い。

　――――行き着けるのか？
　俺は……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg001_空a_03.jpg");
	CreateTextureSP("絵演空立絵Ａ", 1200, Center, Middle, "cg/st/3dワーウルフ_騎航_通常.png");
	Move("絵演空立絵Ａ", 0, @350, @-17, null, true);
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_04_00_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_04_00_1", true);

	SetNwC("cg/fw/nwＧＨＱ竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//◆ボイス「サー・ジョージ!?」
//【ｅｔｃ／ＧＨＱ竜騎兵Ａ】
<voice name="ｅｔｃ／ＧＨＱ竜騎兵Ａ" class="その他男声" src="voice/ma04/020vs1040e006">
「ガーゲット卿!?」

//◆ボイス「Screw you――」
//◆「スクリュー！」くらいの発音か。
{	NwC("cg/fw/nwＧＨＱ竜騎兵Ｂ.png");}
//【ｅｔｃ／ＧＨＱ竜騎兵Ｂ】
<voice name="ｅｔｃ／ＧＨＱ竜騎兵Ｂ" class="その他男声" src="voice/ma04/020vs1050e007">
「くそ、殺してやる――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm08",0,1000,true);

//◆ＧＨＱ竜騎兵襲来
	CreateSE("SE01","se人体_動作_跳躍02");
	MusicStart("SE01",0,1000,0,1100,null,false);
	CreateTextureEX("絵演空立絵Ｂ", 1180, Center, Middle, "cg/st/3dワーウルフ_騎航_通常.png");
	Request("絵演空立絵Ｂ", Smoothing);
	Zoom("絵演空立絵Ｂ", 0, 950, 950, null, true);
	Move("絵演空立絵Ｂ", 0, @-150, @240, null, true);

	Fade("絵演空立絵Ｂ", 300, 1000, null, false);
	Move("絵演空立絵Ｂ", 300, @-30, @0, Dxl2, true);

	CreateSE("SE02","se人体_動作_跳躍01");
	MusicStart("SE02",0,1000,0,900,null,false);
	CreateTextureEX("絵演空立絵Ｃ", 1160, Center, Middle, "cg/st/3dワーウルフ_騎航_通常.png");
	Request("絵演空立絵Ｃ", Smoothing);
	Zoom("絵演空立絵Ｃ", 0, 750, 750, null, true);
	Move("絵演空立絵Ｃ", 0, @-210, @-130, null, true);

	Fade("絵演空立絵Ｃ", 300, 1000, null, false);
	Move("絵演空立絵Ｃ", 300, @-30, @0, Dxl2, true);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs1060a14">
「うん？　新手か……。
　乱雑に群れを成してとは、また無作法な」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs1070a14">
「<RUBY text="レディ">淑女</RUBY>に<RUBY text="ダンス">舞</RUBY>を申し込むなら、<RUBY text="・・・・">順番待ち</RUBY>くらい
するものぞ。
　しかし良かろう」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs1080a14">
「狩猟民族に作法を云々しても始まらぬ！
　参れ、光が相手して遣わす！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号、遊んでやる。
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateSE("SE02","se戦闘_動作_空突進02");
	CreateSE("SE03","se戦闘_動作_空突進02");

	CreateSE("SE001","se戦闘_動作_空突進01");

	CreateColorEXadd("絵色白", 5000, "#FFFFFF");

	MusicStart("SE001",0,1000,0,750,null,false);
	Move("絵演空立絵Ｃ", 1000, @-40, @0, null, false);

	Wait(50);

	Move("絵演空立絵Ｂ", 1000, @-40, @0, null, false);

	Wait(50);

	Move("絵演空立絵Ａ", 1000, @-40, @0, null, false);

	WaitKey(300);

	MusicStart("SE01",0,1000,0,1150,null,false);
	SetBlur("絵演空立絵Ｃ", true, 1, 500, 30, true);
	Move("絵演空立絵Ｃ", 200, @-1200, @-40, Axl2, false);
	Zoom("絵演空立絵Ｃ", 200, 500, 500, Axl2, false);


	Wait(60);

	MusicStart("SE02",0,1000,0,1000,null,false);
	SetBlur("絵演空立絵Ｂ", true, 1, 500, 30, true);
	Move("絵演空立絵Ｂ", 200, @-1200, @0, Axl2, false);

	WaitKey(200);

	MusicStart("SE03",0,1000,0,900,null,false);
	SetBlur("絵演空立絵Ａ", true, 1, 500, 30, true);
	Move("絵演空立絵Ａ", 200, @-1200, @120, Axl2, false);
	Zoom("絵演空立絵Ａ", 200, 3000, 3000, Axl2, false);

	Wait(180);

	Fade("絵色白", 100, 1000, null, true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵色白");

	CreateTextureSP("絵演背景", 2000, InRight, -450, "cg/bg/resize/bg043_江ノ島山林_03l.jpg");
	StL(2100, @-512, @0,"cg/st/3d銀星号_立ち_戦闘.png");
	FadeStL(0,true);

	Move("絵演背景", 150, @512, @0, Dxl2, false);
	Move("@StL*", 150, @512, @0, Dxl2, false);
	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
　……<RUBY text="しばい">演劇</RUBY>は、次の場面に移った。
　上空を飛遊していた竜騎兵隊が次々と降下し、上官
を打ち伏せた敵騎を襲う。

　迎え撃つ銀星号。
　繰り広げられる戦闘――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	DeleteStA(0,true);

	Wait(150);
	DrawDelete("絵色白", 300, 1000, "slide_07_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0811a]
　……それが本当に戦闘と呼ぶに値するものであった
かは、疑問の余地を有した。
　銀星号は見るも明らかに<RUBY text="・・・・・">戯れている</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01a","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 5000, "#FFFFFF");

	CreateTextureSP("絵背効果", 2100, -70, -170, "cg/ev/resize/ev302_94式射撃_l.jpg");

	CreateSE("SE02a","se戦闘_動作_空突進02");
	CreateTextureSPmul("絵演銀一", 3010, -340, -330, "cg/st/3d銀星号_騎航_通常3.png");

	MusicStart("SE02a",0,1000,0,1000,null,false);
	Move("絵演銀一", 300, -470, -360, Dxl2, false);
	Request("絵演銀一", Smoothing);

	FadeDelete("絵色白", 300, true);

	MFlash(30, 8);

	CreateSE("SE02b","se戦闘_動作_空突進01");
	CreateTextureEXmul("絵演銀二", 3020, -30, -80, "cg/st/3d銀星号_騎航_通常4.png");
	Request("絵演銀二", Smoothing);
	MusicStart("SE02b",0,1000,0,1000,null,false);
	Move("絵演銀二", 300, -160, -40, Dxl2, false);
	Fade("絵演銀二", 300, 1000, null, true);

	CreateSE("SE02c","se戦闘_動作_空突進02");
	CreateTextureEXmul("絵演銀三", 3030, 150, -130, "cg/st/3d銀星号_騎航_通常.png");
	Request("絵演銀三", Smoothing);
	MusicStart("SE02c",0,1000,0,850,null,false);
	Move("絵演銀三", 300, 280, -80, Dxl2, false);
	Fade("絵演銀三", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0811b]
　<RUBY text="クロスファイア">十字銃火</RUBY>の間隙を縫い、必殺の剣閃を指であしらい、
楽しげに踊る。
　そう――踊っている。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//――――――――――――――――――――――――

	CreateSE("SE01b","se戦闘_動作_空突進02");
	MusicStart("SE01b",0,1000,0,1500,null,false);

	Move("絵演銀一", 300, -1300, -576, Dxl2, false);
	Wait(50);
	Move("絵演銀二", 300, -1024, 576, Dxl2, false);
	Wait(50);
	Move("絵演銀三", 300, 1024, @0, Dxl2, true);

	WaitKey(300);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("@MF*");
	Delete("絵演*");
	Delete("絵演銀*");
	Delete("絵背効果");

	CreateTextureSP("絵空背景", 1000, Center, Middle, "cg/bg/resize/bg203_旋回演出背景海a_03.jpg");
//	CreateTextureSP("絵雑魚二", 2010, -410, -110, "cg/st/3dトロール_騎航_通常.png");
	CreateTextureSP("絵雑魚二", 2010, -410, -110, "cg/st/3dワーウルフ_騎航_通常.png");
	CreateTextureSP("絵雑魚一", 2000, 120, -280, "cg/st/3dガルム_騎航_通常.png");
	Request("絵雑魚*", Smoothing);
	Zoom("絵雑魚二", 0, 800, 800, null, true);
	Zoom("絵雑魚一", 0, 740, 740, null, true);

	DrawDelete("絵黒幕", 150, 1000, "circle_01_00_0", true);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,100,0,1000,null,true);
	MusicStart("SEL01b",2000,100,0,1500,null,true);

	CreateTextureEX("絵銀", 1800, Center, Middle, "cg/st/3d銀星号_騎突_通常.png");
	Move("絵銀", 0, @0, @10, null, true);
	Zoom("絵銀", 0, 20, 20, null, true);
	Move("絵銀", 1000, @0, @-10, DxlAuto, false);
	Fade("絵銀", 300, 1000, null, true);

	SetVolume("SEL*", 5000, 300, null);
	Zoom("絵銀", 5000, 100, 100, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0811c]
　文字通りに。
　銀星号の駆ける軌道が、常に美しい文様を描くなら、
他にどう解釈できるというのか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("音001","se戦闘_動作_空突進04");
	SetVolume("SEL*", 5000, 350, null);

	Zoom("絵空背景", 5000, 1200, 1200, null, false);
	Zoom("絵雑魚*", 5000, @1000, @1000, null, false);
	Move("絵雑魚二", 5000, @-500, @0, null, false);
	Move("絵雑魚一", 5000, @500, @0, null, false);
	Zoom("絵銀", 5000, @60, @60, null, false);
	Wait(1600);
	MusicStart("音001",0,1000,0,1000,null,false);
	Wait(1400);
	Zoom("絵銀", 1000, 1500, 1500, Dxl3, false);

	Wait(400);

	SetVolume("SE*", 200, 0, null);
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 3100, Center, Middle, "cg/ev/ev301_銀星号クラッシュ.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev301_銀星号クラッシュ.jpg");
	SetVertex("絵演上", 850, 140);
	SetBlur("絵演上", true, 3, 300, 100, false);

	Delete("絵黒幕");

	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 1000, false);

	SetVolume("音*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0811d]
　俺は呆然と<RUBY text="みと">見蕩</RUBY>れた。
　観客席に、棒立ちになって。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820a]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1090a01">
《……!!》


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820b]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1100a01">
《御堂！
　いけない――こんな場合じゃない》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1110a01">
《<RUBY text="・・・・・・">数が減ってる</RUBY>……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　数が減ってる？
　数――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1120a01">
《御堂ッ！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　――!!

　その刹那、ようやく意識が醒めた。
　銀星号の出現以来、衝撃に麻痺し切っていた脳髄が
急速に動き出す。

　狂っていた兵士たちの数が<RUBY text="・・・・">足りない</RUBY>。
　それは無論、凄惨な同士討ちの結果でもある。

　だがそれを加えても足りない。
　この倍はいた筈だ。車両も歩兵も。何処へ消えた？

　何処へ…………<k>
　まさか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1130a00">
「<RUBY text="・・・">目の前</RUBY>の片瀬へ向かったのか!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1140a01">
《可能性はある……
　あれが<RUBY text="・">獣</RUBY>で、<RUBY text="・">餌</RUBY>を求めているとすれば》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　本能的に、人の多い場所を目指したとも――
　考え得るのか！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1150a01">
《止めないと！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1160a00">
「あ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890a]
　あ、と応答しかけて。
　俺の思考が停止する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SEL01","se戦闘_荒覇吐_移動02_L");
	MusicStart("SEL01",3000,1000,0,1000,null,true);
	CreateTextureEX("絵荒覇", 10000, -680, InBottom, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	Move("絵荒覇", 6000, @0, -150, DxlAuto, false);
	Fade("絵荒覇", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890b]
　狂乱の渦の中で、一際暴れ猛っているもの。
　怪物――ガーゲット少佐。

{	SetVolume("SEL01", 2000, 0, null);
	CreateSE("SE01","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　半壊しながらも尚、上空の銀騎を狙い、砲撃を続け
ている。
　
　――あの中には、<RUBY text="・・">彼ら</RUBY>が。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEXadd("絵効果", 10010, Center, Middle, "cg/ev/ev003_銀星号事件イメージ３.jpg");
	Fade("絵効果", 500, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0891]
　それに、この場の地獄……
　心を壊され、仲間と食い合う進駐軍の兵士ら……

　彼らを救うには、銀星号を止めるほかなく――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 20000);
	Wait(1);
	CreateColorSP("絵色黒", 19000, "#000000");

	Delete("絵荒覇");
	Delete("絵効果");

	SetVolume("SE*", 1000, 0, null);
	FadeDelete("絵板写", 300, true);
	FadeDelete("絵色黒", 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1170a01">
《どうするの!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1180a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
　どうする。
　どうすれば良いかは――わかっている。

　<RUBY text="いちどき">一時</RUBY>に全てを片付けることはできない。
　ここにはもはや<RUBY text="おれ">村正</RUBY>しかいないのだ。

　恃むべき味方はこの場にいない。
　そもそも今、無事でいるか――いや。その点は信じ
られる。生き延びる力がある筈だ。だからこそ、この
危険な道程へ巻き込む事も<RUBY text="がえ">肯</RUBY>んじたのだから。

　俺は目前の状況と俺のみの力で戦おう。
　それには優先順位をつけるしかない。

　……<RUBY text="・・・・">優先順位</RUBY>！
　その烏滸がましさは何とした事であろう。

　だが明らかな真実が一つだけあるのだ。
　こうしている間にも<RUBY text="・・・">無駄に</RUBY>死んでゆくという！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1190a00">
「まず怪物を始末する！
　次いで狂った兵団！
　最後に、最も手間取るであろう銀星号！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1200a00">
「以上、方針！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1210a01">
《諒解！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵黒幕", 16000, "#FFFFFF");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
　即座、村正が合当理を吹き鳴らす。
　全身を煽る飛躍の衝動。

　……<RUBY text="パワー">出力</RUBY>が不足している！
　これでどこまで動けるか……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs1220a14">
「来るか……
　景明」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
　銀星号がこちらを見ていた。
　剣林弾雨の下を悠々と散策しながら。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs1230a14">
「待ちきれなくなる頃だと思っていたぞ。
　良し――今日はおまえに<RUBY text="・・・・">いいもの</RUBY>を贈ろう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 1000, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 1000, "slide_01_03_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
　言うや、その銀影は包囲網の中央から消え失せた。
　忽然と、噴煙も残さず。

　魔術を使ったわけではない。
　騎航によって脱出したに過ぎない。

　だがその加速性、旋回性が異常極まるために、常人
の眼には消えたようにしか見えないのだ。
　進駐軍の武者は<RUBY text="うろた">狼狽</RUBY>え、愕然としている。

　<RUBY text="じゅうりょく">辰気</RUBY>を操る銀星号なればこその超常機動。
　――それが、<RUBY text="く">襲来</RUBY>る！

{	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　俺は身構えた。
　余りにも<RUBY text="はかな">儚</RUBY>い抵抗だと知りながらに。

　次にあの銀色を見た瞬間、この身体が割れていたと
しても、不条理を嘆くには値しないのだ。
　
　しかし、そうはならなかった。

　白銀の武者が姿を現したのは、嵐の中心。
　巨怪の頭上。

{	CreateSE("SE01","se特殊_雰囲気_発光04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 200, 600, Axl2, false);}
　そんな所へ優美に腰掛け、彼女は片手を掲げる。
　指の間に、現れる――光明。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01a","se特殊_雰囲気_卵発光01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1240a01">
《〝卵〟!!》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1250a00">
「何だと!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
　止める間もない。

{	CreateSE("SE02","se特殊_雰囲気_崩壊音");
	MusicStart("SE02",0,1000,0,1250,null,false);}
　光の球を握り締め、銀星号がその手を怪物の甲鉄に
突き入れる。
　力を篭めたとも見えぬのに、肘までが沈んだ。

{	CreateSE("SE02a","se戦闘_銀星号_精神汚染波_L");
	MusicStart("SE02a",0,1000,0,1000,null,true);}
　のたうつ巨獣。
　軽やかな笑声を上げて、銀騎がそこから飛び立って
ゆく。

　憤激を尚更に煽られたか、怪物は鈍足を馳せて追い
つけもせぬ敵を追った。砲火を浴びせる。
　ろくに視線もやらぬまま、銀星号が躱す。待ち受け
ていた竜騎兵をもするりと避け、暗空へ舞う――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE02a", 1000, 0, null);
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵黒幕", 16000, "#FFFFFF");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵色白");

	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1260a01">
《御堂！
　いけない！》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1270a01">
《あの〝卵〟はもう孵化直前！
　<RUBY text="・・・・・・・">こないだのやつ</RUBY>と同じよ！　今すぐに止め
ないと！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1280a00">
「ッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
　村正の声を理解した刹那、返答の間も俺は惜しんだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛翔
	Move("絵演*", 150, @-60, @-200, Dxl2, false);

	CreateSE("SE01a","se戦闘_動作_空突進01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵演");
	OnBG(100,"bg002_空a_03.jpg");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 150, 100, "slide_02_01_1", true);

	CreateSE("SE01","se戦闘_荒覇吐_移動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
　夜空に輝く銀影を追い、足掻く、半死の巨獣騎。
　それを更に追って飛ぶ。

　虫の止まるような速度でしかない標的の、その後姿
が視界の中で大きさを<RUBY text="・・・・">増さない</RUBY>。
　こちらも同等程度の速度しか出せていないのだ。

　それでも近付き、狙いを定める。
　太刀を担ぐ。

　怪物はこちらに全く注意を払っていなかった。
　追いつきさえすれば隙を取るのは容易く、俺は振り
かぶった刃を一点へ向けた。

　<RUBY text="ほろ">翼甲</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆剣撃。ざしゅー。
	CreateColorEX("絵色黒", 10000, "#000000");

	CreateTextureSPadd("絵演効果", 6000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreatePlainSP("絵板写", 5000);
	SetBlur("絵板写", true, 3, 500, 80, false);

	Fade("絵色黒", 300, 1000, null, false);
	Zoom("絵板写", 500, 1200, 1200, Dxl2, false);

	Zoom("絵演効果", 300, 2000, 2000, AxlDxl, false);
	Fade("絵演効果", 300, 0, null, false);
	DrawDelete("絵演効果", 300, 100, "circle_01_00_1", false);

	WaitAction("絵色黒", null);

	Delete("絵板写");
	Delete("絵演効果");

	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_down2(10010,@0, @-200,2000);
	SL_downfade2(10);

	CreateSE("SE04a","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE04a",0,1000,0,850,null,false);
	CreateColorSP("絵色白", 30000, "#FFFFFF");
	Delete("絵色黒");

	CreateTextureSPadd("絵演荒覆", 13010, -100, -100, "cg/ev/resize/ev909_荒覇吐_m.jpg");
	CreateTextureSP("絵演荒", 13000, -100, -100, "cg/ev/resize/ev909_荒覇吐_m.jpg");
	Zoom("絵演荒覆", 0, 1250, 1250, null, true);
	SetBlur("絵演荒覆", true, 3, 500, 80, false);
	FadeDelete("絵色白", 150, false);

	FadeDelete("絵演荒覆", 1000, false);
	Shake("絵演荒覆", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵演荒覆", 200, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fwガーゲット_侮蔑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs1290b02">
《ぬおぉっ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1040]
　怪物の姿勢が致命的に傾斜する。
　あやうい均衡の上に成立していた騎航が崩れるや、
巨躯は万有引力の手に屈して地上への道を辿った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ずずーん。
	CreateSE("SE03","se戦闘_荒覇吐_転倒01");
	MusicStart("SE03",0,1000,0,750,null,false);
	CreateColorSP("絵白転", 30000, "#FFFFFF");

	Wait(10);
	Delete("絵演荒*");
	CreateTextureSP("絵演", 2000, Center, -230, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,1000,null,false);
	WaitKey(10);
	Delete("絵色黒");
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
　半ば埋まるようにして、怪奇な劔冑が座礁する。
　もう飛び立てはしないだろう――試させるつもりも
ない。

　俺は<RUBY text="いびつ">歪</RUBY>なオブジェの上空を襲った。
　一秒を惜しむ。一瞬を惜しむ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs1300b02">
《邪魔をするなぁ!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_荒覇吐_攻撃05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ev/ev910_荒覇吐胸元アップ.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev910_荒覇吐胸元アップ.jpg");
	Zoom("絵演", 0, 1000, 1000, Dxl2, false);
	Request("絵演*", Smoothing);

	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
　騎士が吠えた。
　なお残る無数の銃砲が俺を指す。

　避けている暇はない。
　撃たれている暇もない。

　ままならぬ翼で飛ぶことがもどかしい。
　俺は自由落下に身を任せた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演２", 4000, Center, Middle, "cg/ev/ev503_村正抜刀剣光.jpg");
	Fade("絵演２", 300, 750, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0000]
　太刀を構える。
　この一身全てを鏃と成す。

　穿つ――――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆ずがーん。
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);

	SL_down2(20000,@0, @0,2000);
	SL_downfade2(10);

	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 3100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetBlur("絵演上", true, 3, 300, 100, false);

	Delete("絵色黒");
	Delete("絵演２");

	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1080]
　既に深々と刻まれていた、甲鉄の亀裂を狙った一撃
は、完全に貫通し、斬り断って、怪物の身体を二つに
割った。
　勢い余り、肩甲で地表を打つ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1090]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1310a00">
「……ッ。
　仕留めたか!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
　衝撃に暗転しかける意識を引き戻して、見やる。
　残骸……すぐ手近に、四角い箱。

　檻。
　――その中の子ら。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1320a00">
「芳養さん！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120]
　…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆がっ。格子を掴む
	CreateSE("SE01","se日常_建物_扉開かず");
	MusicStart("SE01",0,1000,0,800,null,false);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1130]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1330a00">
「芳養さん!?」

{	FwC("cg/fw/fw芳養_不安.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/020vs1340b48">
「………………あ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1140]
　かすかに目蓋が上がる。
　瞳は曇っていた。俺を見てはいない。だが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_不安.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/020vs1350b48">
「……湊斗さん……？」

//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/020vs1360b48">
「湊斗さん……
　そこに……いるの？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1370a00">
「はい！」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/020vs1380b48">
「……あー……
　なんか……安心した……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1160]
　生きている。
　その周りで、彼の弟妹も弱々しく呻き、身じろぎを
していた。

　……生きている！　助けられた！
　
　脳天から肛門まで突き抜けるような安堵感に、俺は
思わず膝をついた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1170]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1390a01">
《御堂ッ！》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1400a01">
《まだよ!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1410a00">
「何!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_雰囲気_発光04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 200, 1000, Axl2, true);

	CreateTextureSP("絵演荒", 4900, -680, -850, "cg/ev/resize/ev122_擱坐した荒覇吐l.jpg");
	Move("絵演荒", 6000, @0, -570, DxlAuto, false);

	WaitKey(300);

	FadeDelete("絵色白", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1180]
　慌てて顔を上げる。

　――まだ!?

　愕然として、俺は怪物を見た。
　いや――あれは、死んでいる。

　間違いない。この二年の経験から断定できる。
　この劔冑は只の鉄屑と化したと。

　なら、〝卵〟も共に滅びた筈――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色白", 5000, "#FFFFFF");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1190]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1420a01">
《<RUBY text="・・・・・・・">こっちじゃない</RUBY>！
〝卵〟を植えられたのは、中の武者の方っ！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1430a00">
「!!」

{	CreateSE("SE01a","se特殊_雰囲気_卵発光01");
	Fade("絵色白", 200, 750, Axl2, false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs1440b02">
「ルゥオオオオオッ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	SL_rightdown2(5100,@0, @0,1500);
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");

	Delete("絵色白");
	Delete("絵演荒");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightdownfade2(10);

	CreateSE("SE01a","se戦闘_攻撃_鎧_剣戟04");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演覆", 110, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	CreateTextureSP("絵演", 100, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Request("絵演*", Smoothing);
	Rotate("絵演*", 0, @0, @180, @0, null,true);
	Zoom("絵演*", 0, 1300, 1300, null, true);
	SetBlur("絵演*", true, 3, 500, 30, false);
	Delete("絵色黒");
	Shake("絵演*", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵演*", 200, 1100, 1100, null, false);
	FadeDelete("絵演覆", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1200]
　理解と敵意の訪れは同時。
　絶叫と斬撃も同瞬だった。

　危うくも受け止める。
　襲撃者と視線を合わせる。

　進駐軍の将校。
　美々しい劔冑に身を包んだ騎士。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1210]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1450a00">
「ガーゲット少佐!!」

{	FwC("cg/fw/fwガーゲット_不快b.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs1460b02">
「蛮族どもがぁ！
　蛮族どもがぁッ!!」

{	FwC("cg/fw/fwガーゲット_不快.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs1470b02">
「よくも、よくも私の同胞を――
　こんな異境の僻地で！」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs1480b02">
「幾人死んでしまったのだ!?
　ああ……」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs1490b02">
「母なる大陸のため、<RUBY text="きた">来</RUBY>る聖戦を共に戦う筈
だった彼らが！
　ああ！　ああああああァ!!」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1500a00">
「……ッ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	StL(1000, @-75, @0,"cg/st/3dアスカロン_立ち_抜刀.png");
	StR(1100, @75, @0,"cg/st/3d村正標準_立ち_戦闘.png");
	FadeStA(0,true);
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_01_03_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1220]
　逆恨みだと、言い捨てても良かったのだろう。
　彼らは無辜の市民としてここにいたのではない。俺
を討つため、戦うために、ここへ来ていたのだから。

　しかし少佐の怒りは本物だった。
　悲しみも。

　涙も。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_斧振る01");
	SL_down2(5100,@0, @-288,2000);
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_downfade2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1222a]
　一刀一刀に、憤怒が乗る。
　その一閃に、悲痛が宿る。

　無機質な鉄面の奥からこぼれる雫は、血の色をして
地面に<RUBY text="したた">滴</RUBY>る。

　その全てを、<K>
　
　黙殺して。

　心を鎧戸で閉ざし。
　一切、何も省みず――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆斬。ずばしゅー。
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	SL_centerout2(5100,@0, @0,1500);
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_centeroutfade2(10);

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01a","se人体_血_血しぶき01");
	SL_centerdamN(@0, @0,1500);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_centerdamfadeN2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1230]
　俺は――
　ジョージ・ガーゲット少佐を殺した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_021.nss"

}



.//プロセス用======================================================

..//明滅な光
function MeimetuAction()
{
	CreateProcess("プロセス明暗", 5000, 0, 0, "MeimetuSET");
	SetAlias("プロセス明暗","プロセス明暗");
	Request("プロセス明暗", Start);

}

function MeimetuSET()
{
	begin:
	while(1)
	{
	Fade("@絵演上", 800, 1000, null, true);
	Wait(200);
	Fade("@絵演上", 800, 250, null, true);
	Wait(200);
	}

}