//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_037vs.nss_MAIN
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
	#ev501_村正鎮座=true;
	#ev901_銀星号天座失墜小彗星_a=true;
	#ev008_赤子を抱える女=true;
	#ev255_野太刀を構える村正_a=true;
	#ev255_野太刀を構える村正_b=true;
	#ev255_野太刀を構える村正_c=true;
	#ev941_村正飛翔=true;
	#ev940_最後の天座失墜小彗星_a=true;
	#ev940_最後の天座失墜小彗星_b=true;
	#ev940_最後の天座失墜小彗星_c=true;
	#ev940_最後の天座失墜小彗星_a02=true;
	#ev940_最後の天座失墜小彗星_b02=true;
	#ev940_最後の天座失墜小彗星_c02=true;
	#ev902_村正電磁抜刀レールガン_b=true;
	#ev256_銀星号の最期_a=true;
	#ev256_銀星号の最期_b=true;

//あきゅん「演出：ネタバレ解放」
	#ev007_犯されている女性=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_001.nss";

	//★ＥＤロール超速対応
	PreSetRoll(2);
	TheEND(2);
}

scene md05_037vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_036.nss"

//◆黒
	PrintBG("上背景", 30000);
	SoundPlay("@msong02_full",0,1000,true);
	Delete("上背景");

	Wait(3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　魔剣の話をしよう。<k>
　
　魔剣とは理論的に構築され、論理的に行使されねば
ならない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正
	CreateTextureEX("背景１", 100, 0, 0, "cg/ev/ev501_村正鎮座.jpg");
	Fade("背景１", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　資格が無いと告げられた。

　誰もを不幸にするだけだと。

　その言葉に、頷いた。

　自分の愚かさ、そして無力を知っていた。

　だから屈した。

　決断をした。

　…………しかし。

　やはりあれは、間違った決断ではなかったか。

　資格が無いなら、
　資格を得ようと奮うべきではなかったか。

　不幸にしてしまうなら、
　幸福も生むよう、努めるべきではなかったか。

　何故その決断ができなかったのか。

　血の責務を放棄してしまったのか。

　――――――罪はここにある。

　――――――敵はそこにいる。

　そう。
　ここにいる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆宇宙から地球を衝く彗星
	CreateTextureEX("背景２", 100, 0, 0, "cg/ef/ef019_銀星号突貫03.jpg");
	CreateColorEX("色１", 19999, "#FFFFFF");

	Fade("色１", 1000, 1000, null, true);

//	CreateSE("SE01","se特殊_雰囲気_鎧登場演01");
//	CreateSE("SE02","se特殊_雰囲気_鎧登場演01");
//	CreateSE("SE03","se特殊_雰囲気_鎧登場演01");
//	CreateSE("SE04","se特殊_雰囲気_鎧登場演01");
//	CreateSE("SE05","se特殊_雰囲気_鎧登場演01");
//	CreateSE("SE06","se特殊_雰囲気_鎧登場演02");


	OnSE("se戦闘_動作_空突進03",1000);
	CreateSE("サウンド１","se戦闘_動作_空突進05");
	SoundPlay("サウンド１",2000,500,true);

	Fade("背景２", 0, 1000, null, true);
	Fade("色１", 500, 0, null, true);

	Wait(1000);

	CreateColorEX("絵色100", 15000, "Black");

	Fade("絵色100", 100, 1000, null, true);

//	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("絵エフェクト１", 16000, Center, 0, "cg/sys/Telop/tp_魔剣対決01-a.png");
	Wait(300);
//	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("絵エフェクト１", 16000, Center, 0, "cg/sys/Telop/tp_魔剣対決01-b.png");
	Wait(300);

	PrintGO("上背景", 20000);
	CreateTextureSP("背景１", 100, 0, 0, "cg/ev/ev940_最後の天座失墜小彗星_a02.jpg");
	CreateTextureSP("背景２", 100, 0, 0, "cg/ev/ev940_最後の天座失墜小彗星_a02.jpg");

	SetBlur("背景２", true, 3, 500, 100, false);


	Move("背景２", 1500, @+200, @0, null, false);
	Zoom("背景２", 1500, 2000, 2000, null, false);
	Fade("背景２", 1000, 0, null, false);
	OnSE("se戦闘_動作_空突進03",1000);
	FadeDelete("上背景",500, true);

	Wait(500);

	CreateColorEX("絵色100", 15000, "Black");

	Fade("絵色100", 100, 1000, null, true);

//	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSP("エフェクト２", 16000, Center, Middle, "cg/sys/Telop/tpex_魔剣対決01_a.png");
	Wait(300);
//	MusicStart("SE04",0,1000,0,1000,null,false);
	CreateTextureSP("エフェクト２", 16000, Center, Middle, "cg/sys/Telop/tpex_魔剣対決01_b.png");
	Wait(300);
//	MusicStart("SE05",0,1000,0,1000,null,false);
	CreateTextureSP("エフェクト２", 16000, Center, Middle, "cg/sys/Telop/tpex_魔剣対決01_c.png");
	Wait(300);
//	MusicStart("SE06",0,1000,0,1000,null,false);
	CreateTextureSP("エフェクト２", 16000, Center, Middle, "cg/sys/Telop/tpex_魔剣対決01_d.png");

	Wait(500);

	CreateColorEXadd("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",300,1000,null,true);
	Delete("絵色100");

	CreateTextureSP("エフェクト２", 16000, Center, Middle, "cg/sys/Telop/tpex_魔剣対決01_d.png");
	CreateTextureSP("背景２", 100, 0, 0, "cg/ev/ev940_最後の天座失墜小彗星_a02.jpg");
	SetBlur("背景２", true, 3, 500, 100, false);
	Move("背景２", 1500, @+200, @0, null, false);
	Zoom("背景２", 1500, 2000, 2000, null, false);
	Fade("背景２", 1000, 0, null, false);
	OnSE("se戦闘_動作_空突進07",1000);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	Wait(500);

	SetVolume("サウンド１", 3000, 0, NULL);
	Fade("色１", 2000, 1000, null, true);
	Fade("エフェクト*", 0, 0, null, true);

//◆テロップ「魔剣」
//◆駆けるレイディバグ
//◆テロップ「天座失墜」
//◆空を貫く
//◆回想：赤子（光）を抱く統

	CreateTextureSP("背景１", 100, 0, 0, "cg/ev/ev008_赤子を抱える女.jpg");
	SetTone("背景１", Sepia);

	Fade("色１", 1000, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
〝あなたは父親ではない〟

〝父親にはなれない〟

〝この子を愛してはならない〟

〝あなたは――〟

〝父ではなく、兄として。
　この子を守ってあげて〟

〝約束して……〟

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正
	CreateTextureEX("背景２", 100, 0, 0, "cg/ev/ev255_野太刀を構える村正_a.jpg");

	Fade("背景１", 500, 0, null, true);

	Wait(1000);

	Fade("背景２", 500, 1000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　敵は一人。
　ただ独り。

　悪しき運命を切り開いた者が、ここにいる。

　だから。

　裁くべきはただ、この男のみ。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分：心臓刺す
	CreateTextureEX("背景１", 100, 0, 0, "cg/ev/ev255_野太刀を構える村正_b.jpg");

	Fade("色１", 1000, 1000, null, true);

		OnSE("se特殊_ヒロイン_惨殺01",1000);

		Fade("背景１", 0, 1000, null, true);
		Delete("背景２");

		Wait(2000);

	Fade("色１", 1000, 0, null, true);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　心底、敵として。

　心底、憎悪して。

　その心臓を刺し通す。

　完璧な致死傷を及ぼす。

　湊斗景明は湊斗景明を殺害する。

　――――故に。
　
　絶対の<RUBY text="ルール">戒律</RUBY>が、発動した。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆テロップ（中）
//◆「善悪相殺」
	CreateTextureEX("エフェクト１", 1000, 640, 30, "cg/sys/Telop/tp_魔王編挿入01.png");
	Fade("エフェクト１", 500, 1000, null, true);
	Wait(1000);

//◆「憎む者を殺したなら　愛する者をも殺すべし」
	CreateTextureEX("エフェクト２", 1000, 200, 72, "cg/sys/Telop/tp_魔王編挿入02.png");

//◆銀星号
//	CreateTextureEX("背景２", 100, 0, 0, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	CreateTextureEX("背景２", 100, 0, 0, "cg/ev/ev940_最後の天座失墜小彗星_a02.jpg");

	CreateSE("サウンド１","se戦闘_動作_空突進05");
	SoundPlay("サウンド１",2000,500,true);

	Fade("エフェクト２", 500, 1000, null, false);
	Fade("背景２", 500, 1000, null, true);

	Wait(2000);

	Fade("エフェクト*", 1000, 0, null, false);

	WaitKey(2000);

	SetFwR("cg/fw/fw光_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md05/037vs0010a14">
「――――――――――――!?」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正
//◆差分：渦巻くエネルギー
	CreateTextureEX("背景１", 100, 0, 0, "cg/ev/ev255_野太刀を構える村正_b.jpg");
	Fade("背景１", 500, 1000, null, true);

	SetVolume("サウンド１", 3000, 0, NULL);
	OnSE("se特殊_雰囲気_発光02",1000);

	Fade("色１", 1000, 1000, null, true);

	EffectZoom(20000, 600, 0, "cg/ev/ev006_景明の狂相.jpg", true);

	CreateTextureEX("背景２", 100, 0, 0, "cg/ev/ev255_野太刀を構える村正_c.jpg");
	Zoom("背景２", 0, 1500, 1500, Dxl2, true);
	SetBlur("背景２", true, 2, 500, 100, false);

	CreateTextureEX("背景３", 100, 0, 0, "cg/ev/ev255_野太刀を構える村正_c.jpg");
	SetBlur("背景２", true, 2, 500, 100, false);

	Zoom("背景２", 2000, 1000, 1000, Dxl2, false);
	Fade("色１", 2000, 0, null, false);
	Fade("背景２", 1000, 700, null, true);
	Fade("背景２", 1000, 0, null, false);
	Fade("背景３", 1000, 1000, null, true);

	Delete("背景１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　肉体の力は既に尽き、

　霊魂は<RUBY text="ひとえ">偏</RUBY>に愛を想う。

　その両者を支配して、

　一つの呪いが飛翔する。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正飛翔
	CreateTextureEX("背景１", 100, 0, -576, "cg/ev/ev941_村正飛翔.jpg");

	OnSE("se特殊_雰囲気_発光03",1000);
	Zoom("背景３", 500, 1200, 1200, Axl2, false);
	Fade("色１", 500, 1000, null, true);

		Fade("背景１", 0, 1000, null, true);

	Move("背景１", 1000, @0, @50, null, false);
	Fade("色１", 500, 0, null, true);
	Fade("色１", 500, 1000, null, true);


//◆失墜の銀星と飛翔の紅星
	CreateTextureEX("背景３", 100, 0, 0, "cg/ef/ef019_銀星号突貫03.jpg");
	Zoom("背景３", 0, 2000, 2000, Dxl2, true);

	Fade("背景３", 0, 1000, null, true);
	Zoom("背景３", 1000, 1000, 1000, Dxl2, false);
	Fade("色１", 1000, 0, null, true);

	CreateTextureEX("背景４", 100, 0, 0, "cg/ef/ef020_村正突貫03.jpg");
	Zoom("背景４", 0, 2000, 2000, Dxl2, true);

	Fade("色１", 100, 1000, null, true);
	Fade("背景４", 0, 1000, null, true);
	Zoom("背景４", 1000, 1000, 1000, Dxl2, false);
	Fade("色１", 1000, 0, null, true);

//◆レイディバグ。最後の蹴りモーションへ
	CreateTextureEX("背景１", 100, 0, 0, "cg/ev/ev940_最後の天座失墜小彗星_a02.jpg");
	Fade("背景１", 300, 1000, null, true);
	Wait(500);
	CreateTextureEX("背景２", 100, 0, 0, "cg/ev/ev940_最後の天座失墜小彗星_b02.jpg");
	Fade("背景２", 300, 1000, null, true);
	Wait(500);
	CreateTextureEX("背景３", 100, 0, 0, "cg/ev/ev940_最後の天座失墜小彗星_c02.jpg");
	Fade("背景３", 300, 1000, null, true);
	Wait(500);

//◆村正
	Fade("色１", 1000, 1000, null, true);
	CreateTextureSP("背景１", 100, -500, -900, "cg/ev/resize/ev941_村正飛翔l.jpg");
	CreateTextureEX("背景２", 100, -400, -300, "cg/ev/resize/ev941_村正飛翔l.jpg");
//	CreateTextureEX("背景３", 100, 0, -50, "cg/ev/ev941_村正飛翔.jpg");

	CreateTextureEX("エフェクト１", 2000, Center, 0, "cg/sys/Telop/tp_魔剣対決01-a.png");
	CreateTextureEX("エフェクト２", 2000, Center, 0, "cg/sys/Telop/tp_魔剣対決01-b.png");
	CreateTextureEX("エフェクト３", 2000, 0, 0, "cg/sys/Telop/tpex_魔剣対決02_a.png");
	CreateTextureEX("エフェクト４", 2000, 0, 0, "cg/sys/Telop/tpex_魔剣対決02_b.png");
	CreateTextureEX("エフェクト５", 2000, 0, 0, "cg/sys/Telop/tpex_魔剣対決02_c.png");
	CreateTextureEX("エフェクト６", 2000, 0, 0, "cg/sys/Telop/tpex_魔剣対決02_d.png");

//◆テロップ「魔剣」
	Move("背景１", 3000, @100, @100, null, false);
	Fade("色１", 1000, 0, null, false);

	Wait(1000);

	CreateColorEX("絵色100", 1500, "Black");

	Fade("絵色100", 200, 1000, null, true);

	Fade("エフェクト１", 0, 1000, null, true);

	Wait(300);

	Fade("エフェクト１", 0, 0, null, false);
	Fade("エフェクト２", 0, 1000, null, true);

	Wait(1000);

	PrintGO("上背景", 15000);

	Delete("エフェクト１");
	Delete("エフェクト２");

	Fade("背景２", 0, 1000, null, true);

	Move("背景２", 4000, @100, @100, null, false);

	FadeDelete("上背景", 200, false);

//◆村正

	Wait(1000);

//◆テロップ「装甲悪鬼」
	CreateColorEX("絵色100", 1500, "Black");
	Fade("絵色100", 200, 1000, null, true);

	Fade("エフェクト３", 0, 1000, null, true);
	Wait(300);

	Fade("エフェクト３", 0, 0, null, false);
	Fade("エフェクト４", 0, 1000, null, true);
	Wait(300);

	Fade("エフェクト４", 0, 0, null, false);
	Fade("エフェクト５", 0, 1000, null, true);
	Wait(300);

	Fade("エフェクト５", 0, 0, null, false);
	Fade("エフェクト６", 0, 1000, null, true);
	Wait(1000);


	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",300,1000,null,true);

	Delete("絵色100");
	CreateTextureSP("背景５", 1000, -16, -264, "cg/ev/resize/ev941_村正飛翔l.jpg");
	SetBlur("背景５", true, 3, 500, 50, false);
	Move("背景２", 0, -16, -264, null, true);

	Move("背景５", 700, @-150, @0, null, false);
	Zoom("背景５", 700, 2000, 2000, null, false);
	FadeDelete("背景５", 500, false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	Wait(2000);

	PrintGO("上背景", 20000);
	Delete("エフェクト*");
	Delete("背景*");
	CreateTextureSP("背景３", 100, 0, -50, "cg/ev/ev941_村正飛翔.jpg");

	FadeDelete("上背景", 500, true);

//◆激突。交錯。
	OnSE("se特殊_その他_噴き上がる光の柱",1000);

	Fade("色１", 2000, 1000, null, true);

	Wait(3000);

//◆ev256
	Delete("背景*");
	Delete("エフェクト*");

	CreateTextureSP("背景１", 100, 0, 0, "cg/ev/ev256_銀星号の最期_a.jpg");
	Fade("色１", 2000, 0, null, false);


/*行間変換付き退避======================
//【光】
<voice name="光" class="光" src="voice/md05/037vs0020a14">
「この……<RUBY text="けん">一刀</RUBY>は……」

//{	FwR("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md05/037vs0030a14">
「…………そう、か……」


//{	FwR("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md05/037vs0040a14">
「…………」

//{	FwR("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md05/037vs0050a14">
「……は……」


//{	FwR("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md05/037vs0060a14">
「はっ……ははは！」

//{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/037vs0070a14">
「善悪、相殺」

//{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/037vs0080a14">
「そうだ。この掟が」

//{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/037vs0090a14">
「愛の実在を証明する」

//{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/037vs0100a14">
「……ふっ……ふふ…………」

//{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/037vs0110a14">
「やはり、あった」

//{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/037vs0120a14">
「ここに……あった」

//{	FwR("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md05/037vs0130a14">
「愛は、あった！」

//{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/037vs0140a14">
「ならば――良し！」

//{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/037vs0150a14">
「光は……望みを叶えた……！」

//{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/037vs0160a14">
「この手に取り戻した」

//{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/037vs0170a14">
「絆を」

//	SetFwR("cg/fw/fw光_驚き.png");

行間変換付き退避======================*/


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/md05/037vs0020a14">
　　　　　　　「この……<RUBY text="けん">一刀</RUBY>は……」

//【光】
<voice name="光" class="光" src="voice/md05/037vs0030a14">
 　　　　　　「…………そう、か……」

//【光】
<voice name="光" class="光" src="voice/md05/037vs0040a14">
 　　　　　　　　　「…………」

//【光】
<voice name="光" class="光" src="voice/md05/037vs0050a14">
　　　　　　　　　「……は……」

//【光】
<voice name="光" class="光" src="voice/md05/037vs0060a14">
 　　　　　　　「はっ……ははは！」

//【光】
<voice name="光" class="光" src="voice/md05/037vs0070a14">
　　　　　　　　　「善悪、相殺」

//【光】
<voice name="光" class="光" src="voice/md05/037vs0080a14">
　　　　　　　　「そうだ。この掟が」

//【光】
<voice name="光" class="光" src="voice/md05/037vs0090a14">
 　　　　　　　「愛の実在を証明する」

//【光】
<voice name="光" class="光" src="voice/md05/037vs0100a14">
　　　　　　「……ふっ……ふふ…………」

//【光】
<voice name="光" class="光" src="voice/md05/037vs0110a14">
　　　　　　　　「やはり、あった」

//【光】
<voice name="光" class="光" src="voice/md05/037vs0120a14">
 　　　　　　　「ここに……あった」

//【光】
<voice name="光" class="光" src="voice/md05/037vs0130a14">
　　　　　　　　「愛は、あった！」

//【光】
<voice name="光" class="光" src="voice/md05/037vs0140a14">
 　　　　　　　「ならば――良し！」

//【光】
<voice name="光" class="光" src="voice/md05/037vs0150a14">
　　　　　「光は……望みを叶えた……！」

//【光】
<voice name="光" class="光" src="voice/md05/037vs0160a14">
　　　　　　　「この手に取り戻した」

//【光】
<voice name="光" class="光" src="voice/md05/037vs0170a14">
　　　　　　　　　　「絆を」

</PRE>
	SetTextEXhyperR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ピキ。ピキーン。
//◆ev256a
	CreateSE("サウンド１","se特殊_鎧_ひび割れ01");
	MusicStart("サウンド１",0,1000,0,1500,null,false);
	Wait(1000);
	CreateSE("サウンド２","se特殊_鎧_ひび割れ02");
	MusicStart("サウンド２",0,1000,0,1500,null,false);

	OnSE("se特殊_雰囲気_発光02",1000);
	Fade("色１", 1000, 1000, null, true);

	Wait(2000);

	OnSE("se特殊_鎧_装着03",1000);
	OnSE("se特殊_雰囲気_崩壊音",1000);

	CreateTextureSP("背景２", 100, 0, 0, "cg/ev/ev256_銀星号の最期_b.jpg");
	Fade("色１", 1000, 0, null, false);

	Wait(4000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【光】
<voice name="光" class="光" src="voice/md05/037vs0180a14">
　　　　　　　　「……良い……」

//【光】
<voice name="光" class="光" src="voice/md05/037vs0190a14">
 　　　　「……良い夢で……あった…………」

</PRE>
	SetTextEXhyperR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆砕け散る。ホワイトアウト

//	OnSE("se特殊_その他_噴き上がる光の柱",1000);
	OnSE("se特殊_雰囲気_発光03",1000);
	OnSE("se特殊_雰囲気_発光04",1000);

	Fade("色１", 4000, 1000, null, false);

	Wait(1000);
	OnSE("se特殊_雰囲気_発光02",1000);

	SetVolume("@msong02_full", 3000, 0, NULL);
	Wait(4000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　
//【景明】
<voice name="景明" class="景明" src="voice/md05/037vs0200a00">
　　　　「……光……」

　
//【景明】
<voice name="景明" class="景明" src="voice/md05/037vs0210a00">
　　　　「――――ひかる――――!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("色１", null);


//◆ＥＤロール。ここは他ルートのと共用？

	Wait(2000);

	SoundPlay("@msong01_full",0,1000,true);

	Wait(7000);

	ClearFadeAll(2000, true);

//◆魔王編・完
//◆→悪鬼編


//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル　"md06_001.nss"