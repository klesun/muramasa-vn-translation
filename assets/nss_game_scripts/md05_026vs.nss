//<continuation number="180">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_026vs.nss_MAIN
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
	#bg110_月面a=true;
	#ev252_村正電磁抜刀穿_a=true;
	#ev252_村正電磁抜刀穿_b=true;
	#bg109_宇宙空間=true;
	#bg110_月面b=true;
	#ev906_アベンジ走行_b=true;
	#ev938_突進してくる銀星号=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_027.nss";

}

scene md05_026vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_025end.nss"

//◆辰気流。ef041

	PrintBG("上背景", 30000);

	SoundPlay("@mbgm10",0,1000,true);
	CreateSE("サウンド１","se特殊_その他_辰気収斂_L");
	SoundPlay("サウンド１",1000,800,true);
	CreateTextureSP("背景１", 100, 0, 0, "cg/ef/ef041_青い波動b.jpg");

	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　放たれる辰気の奔流。
　先端が目前に迫った。

　渦の中心付近に比べればずっと弱い。
　それでも捕まれば騎体運動を大きく阻害されるのは
避けられず、そうなれば続く流れを防ぐ事も叶わず、
再び虜囚に逆戻りするだろう。

　そんな始末は受け入れかねる。

　では逃げるか。

　否。

　逃げる必要はない。

　この程度の辰気なら、<RUBY text="・・">城壁</RUBY>が防いでくれる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆辰気流、散る
	CreateColorEXadd("色１", 19999, "#FFFFFF");
	CreateTextureEX("背景２", 100, 0, 0, "cg/bg/bg110_月面a.jpg");
	Zoom("背景２", 0, 1500, 1500, Dxl2, true);
	CreateTextureEX("自機１", 100, -169, -347, "cg/st/3d村正最終_立ち_抜刀.png");

	OnSE("se特殊_その他_辰気流散る",1000);
	SetVolume("サウンド１", 1000, 0, NULL);

	Fade("色１", 0, 1000, null, true);
	Delete("背景１");
	Fade("背景２", 0, 1000, null, true);
	Fade("色１", 1000, 0, null, false);

	Move("背景２", 2000, @0, @50, Dxl1, false);
	Wait(1000);
	Fade("自機１", 1000, 1000, null, false);
	Move("自機１", 2000, @0, @-100, Dxl1, true);


	SetFwR("cg/fw/fw光_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/md05/026vs0010a14">
《――――!?》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　<RUBY text="おれ">私</RUBY>がするべき事は一つ。

　逃げ込んだこの要塞とて長くは保たない。
　与えられた時間はわずか。無駄な行為をしていれば
すぐに尽きよう。

　騎体の全機能を解放する。
　肉体の全能力を動員する。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw二世女王蟻_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/026vs0020a15">
《おお……!?》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：月を背負って村正、レールガン準備
	OnSE("se戦闘_陰義_磁力展開",1000);
	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",300,700,0,1000,null,true);

	CreateTextureEX("イベント１", 200, 0, 0, "cg/ev/ev252_村正電磁抜刀穿_a.jpg");
	Fade("イベント１", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　辰気の第二波、第三波が押し寄せる。
　だが、まだ届かない。まだ守りの力はある。

　黒き渦の牽引力を、白き月の重力が打ち払い、<RUBY text="おれ">私</RUBY>を
支えてくれている。

　この短い時間。
　ごく微量の騎体運用機会。

　これを全て、勝利の為の一手に使い尽くす。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆エネルギー最高
	CreateTextureEX("イベント２", 200, 0, -172, "cg/ev/ev252_村正電磁抜刀穿_b.jpg");
	CreateTextureEX("イベント３", 2000, 0, -172, "cg/ev/ev252_村正電磁抜刀穿_b.jpg");
	Move("イベント１", 500, @0, -172, Dxl2, true);
	CreateSE("SE02","se特殊_電撃_放電02");

	Wait(300);

	CreateTextureEXadd("絵背景効果線", 17500, 0, -172, "cg/ev/ev252_村正電磁抜刀穿_b.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur2");
	SetAlias("プロセス１","プロセス１");


	RailgunFlash();
	Shake_Loop("@イベント３","supershake01");
	Request("プロセス１", Start);


	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("イベント２", 1000, 1000, null, true);
	Fade("イベント３", 1000, 1000, null, true);
	Delete("イベント１");

	Wait(500);

	SetFwR("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/026vs0030a01">
《<RUBY text="レールガン">電磁抜刀</RUBY>――》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/026vs0040a01">
《<RUBY text="ウガチ">穿</RUBY>!!》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//―――――――――――――――――――――――――――――

//◆発動。ずごーん。
//◆飢餓虚空を両断。ef037の上で斬撃アニメか？

	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);
	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);

	SetVolume("SE*", 3000, 0, null);

	//ムービームービーはいりまーす
	Zoom("イベント３", 1000, 1500, 1500, Axl3, false);
	FadeF4("イベント３", 1000, 1000, 3000, 0, 0, Axl3, false);
	Fade("色１", 1000, 1000, null, true);

	RG_FlashDelete();
	Delete("supershake01");
	Delete("イベント*");
	Delete("絵背景効果線");

	CreateSE("SE01","se特殊_電撃_帯電02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(16);
	OnSE("se戦闘_破壊_鎧05",1000);
	SetVolume("SE01", 3000, 0, Axl3);

	MovieSESet(20000,"mv穿","se特殊_mv用_穿");
	MovieSEStart(0);

	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);


	SetVolume("@mbgm10", 3000, 0, NULL);
	Wait(4000);


//◆村正、月面に着地
	CreateTextureSP("背景２", 100, 0, 0, "cg/bg/bg109_宇宙空間.jpg");
	Delete("イベント２");
	Fade("色１", 2000, 0, null, true);

	Wait(1000);

	OnSE("se人体_足音_鎧歩く03",1000);
	StR(1000, @0, @20,"cg/st/3d村正最終_立ち_抜刀.png");
	FadeStR(500,false);
	Move("@StR*", 500, @0, @30, Dxl1, true);
	Move("@StR*", 1000, @0, @-50, AxlDxl, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　出力限界に到達。
　月面を<RUBY text="サーチ">探査</RUBY>、小高い丘を選んで着陸する。

　確かに、斬った。
　
　飢餓虚空――虚無の術式に光迅の刃を入れ、両断し、
構成を崩壊へ導いた。

　辰気現象は霧散しただろう。
　あるいは、銀星号の騎体もろとも。

　中核のみが刃先から逃れたとは考えられない。
　少なくとも、相当の打撃は受けた筈だ。

　これで勝負は決する。

　光速の一剣の前には、何者も――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト置いて
	Wait(1000);
	CreateColorEX("色２", 10000, "#000000");
	Fade("色２", 300, 1000, null, true);
	DeleteStA(0,false);
	Wait(200);
	SetNwC("cg/fw/nw光.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/md05/026vs0050a14">
《――屈する、と思うか？》

//【光】
<voice name="光" class="光" src="voice/md05/026vs0060a14">
《いや……おまえは忘れているだけだ。
　かつて一度だけ、その速度を超えたものが
あったことを》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm11",0,1000,true);

	Fade("色２", 300, 0, null, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/026vs0070a01">
《――ッ!?》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/026vs0080a14">
《邪魔だ、月ッッ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥ：亀裂音。ビキィィ。
//◆どがーん。月、砕ける
	CreateTextureEX("背景０", 100, 0, 0, "cg/bg/bg110_月面a.jpg");
	Zoom("背景０", 0, 10000, 10000, Dxl2, true);
	CreateTextureEX("背景宇宙", 100, -4000, -250, "cg/bg/bg204_横旋回背景_04.jpg");
//	Rotate("背景宇宙", 0, @0, @0, @-30, null,true);
	CreateTextureEX("背景銀", 100, 100, 0, "cg/st/3d銀星号_騎航_蹴り.png");
	Move("背景銀", 0, @100, @-100, null, true);
	Rotate("背景銀", 0, @0, @0, @-40, null,true);
	SetBlur("背景銀", true, 2, 500, 100, false);

	CreateTextureEX("背景１", 100, 0, 0, "cg/bg/bg110_月面b.jpg");
	Zoom("背景１", 0, 1200, 1200, Dxl2, true);

	CreateEffect("絵効果雨", 18000, Center, Middle, 512, 288, "Rain");
	Fade("絵効果雨", 0, 0, null, true);
	SetAlias("絵効果雨","絵効果雨");
	Request("絵効果雨", SubRender);
	Move("絵効果雨", 0, 200, 144, null, true);
	Zoom("絵効果雨", 0, 5000, 5000, null, true);
	Rotate("絵効果雨", 0, @0, @0, @75, null,true);

	OnSE("se戦闘_動作_空突進01",1000);


	Fade("背景０", 100, 1000, null, false);
	Zoom("背景０", 1000, 1000, 1000, Dxl2, 700);


	Move("背景宇宙", 1000, 0, 0, null, false);
	Move("背景銀", 1000, @-100, @20, null, false);
	Fade("背景銀", 200, 1000, null, false);
	Fade("背景宇宙", 200, 1000, null, false);
	Fade("絵効果雨", 200, 100, null, false);
	Wait(600);

	Fade("色１", 200, 1000, null, true);
	OnSE("se戦闘_破壊_爆発09",1000);
	Delete("背景０");
	Delete("背景２");
	Delete("自機１");
	Delete("背景宇宙");
	Delete("背景銀");
	Delete("絵効果雨");
	Fade("背景１", 0, 1000, null, true);



//おがみ：素材定義
	CreateTextureEX("絵背景100", 17500, Center, Middle, "cg/bg/bg110_月面b.jpg");
	CreateTextureEX("絵背景200", 17500, Center, Middle, "cg/bg/bg110_月面b.jpg");
	SetBlur("絵背景200", true, 3, 500, 200, false);
	Request("絵背景200", Smoothing);

	CreateTextureEX("絵背景400", 17000, Center, Middle, "cg/bg/bg110_月面b.jpg");
	CreateTextureEX("絵背景500", 17000, Center, Middle, "cg/bg/bg110_月面b.jpg");
	Request("絵背景400", Smoothing);
	Request("絵背景500", Smoothing);
	Zoom("絵背景400", 0, 2000, 2000, null, true);
	Zoom("絵背景500", 0, 1200, 1200, null, true);
	SetBlur("絵背景500", true, 3, 200, 70, false);

	CreateSE("SE05","se人体_動作_跳躍03");
	CreateSE("SE06","se戦闘_攻撃_鎧かする01");
	CreateSE("SE07","se戦闘_攻撃_鎧かする01");
	CreateSE("SE08","se戦闘_攻撃_鎧_絞める01");


//おがみ：爆発動作
	MusicStart("SE05",200,1000,0,1000,null,false);

	Fade("色１", 0, 1000, null, true);
	Fade("色１", 150, 0, null, false);
	Fade("絵背景400", 0, 1000, null, true);
	DrawTransition("絵背景400", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	MusicStart("SE06",0,1000,0,1000,null,false);
	Move("絵背景400", 0, -312, -100, null, true);
	Wait(50);
	Move("絵背景400", 0, -350, -150, null, true);
	Wait(50);
	MusicStart("SE07",0,1000,0,1000,null,false);
	Move("絵背景400", 0, -510, -120, null, true);

	Fade("色１", 50, 1000, null, true);
	Delete("絵背景200");
	Delete("絵背景400");
	CP_AllDelete();

	MusicStart("SE08",0,1000,0,1000,null,false);
	OnSE("se戦闘_破壊_爆発05",1000);
	Fade("絵背景500", 0, 1000, null, true);
	Zoom("絵背景500", 500, 1200, 1200, Dxl2, false);
	EffectZoomadd(18000, 3000, 4000, "cg/bg/bg110_月面b.jpg", false);
	Fade("色１", 2000, 0, null, true);
	FadeDelete("絵背景*", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　鬼気を感じて飛翔すると同時、白い大地が砕けた。
　仮にも一個の星たるものが割れ、崩れてゆく向こう
――騎影が一つ、こちらに突き進んでくる。

　月を――――<k>叩き割った</RUBY>!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ぼかーんぼかーん。爆砕

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　不味い。
　まだ騎体は戦える状態にない。

　敵騎がその状態にあるというのも信じ難いが……
　今は兎も角も離脱し、時間を稼がねば。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、逃げ
	OnSE("se戦闘_動作_空突進02",1000);

	Move("背景１", 500, @100, @0, Axl1, false);
	DrawDelete("背景１", 500, 100, "slide_01_01_0", true);

	SetFwC("cg/fw/fw光_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【光】
<voice name="光" class="光" src="voice/md05/026vs0090a14">
《逃がすものかよ》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/026vs0100a14">
《――翼を！
　願いに打ち克つための翼を！》

//【光】
<voice name="光" class="光" src="voice/md05/026vs0110a14">
《<RUBY text="アベンジ・ザ・ブルー">逆襲の青洸</RUBY>ッッ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジダッシュ
	CreateTextureEX("背景１", 100, 0, 0, "cg/ef/ef023_アベンジ_直進.jpg");
	Zoom("背景１", 0, 2000, 2000, Dxl2, true);

	CreateTextureEX("絵ef100", 3000, 0, -576, "cg/ef/resize/ef023_アベンジ_カーブ_l.jpg");
	SetBlur("絵ef100", true, 3, 500, 50, false);

	Fade("絵ef100", 200, 1000, null, false);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);

	BezierMove("絵ef100", 1000, (@0,@0){-512,-576}{-756,-400}(-1024,-211){-756,-150}{-256,-100}(0,-40), Dxl1, false);

	Wait(900);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵ef100");

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

	Fade("色１", 100, 1000, null, true);
	Fade("背景１", 0, 1000, null, true);

	OnSE("se戦闘_動作_空突進03",1000);
	Zoom("背景１", 500, 1000, 1000, Dxl2, false);
	Fade("色１", 500, 0, null, true);

	SetFwC("cg/fw/fw村正武者_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/026vs0120a01">
《――――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　この速度。
　この機動――これは――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：アベンジ
	CreateTextureEX("背景２", 2100, 0, 0, "cg/ev/ev906_アベンジ走行_b.jpg");
	SetTone("背景２", Sepia);

	Fade("色１", 0, 1000, null, true);
	Fade("背景２", 0, 1000, null, true);
	Fade("色１", 300, 0, null, true);
	Wait(500);
	Fade("色１", 100, 1000, null, true);
	Delete("背景２");
	Fade("色１", 500, 0, null, true);

//◆戻り
	SetFwC("cg/fw/fw光_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/md05/026vs0130a14">
《光は記憶に焼き付けていたぞ。
　この速さ……この煌きを》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/026vs0140a14">
《そして<RUBY text="おの">己</RUBY>がものとした！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　これで――――電磁抜刀の直撃を防いだのか!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆半壊銀星号＋飢餓虚空残余
	CreateTextureEX("背景２", 100, 0, 0, "cg/ev/ev938_突進してくる銀星号.jpg");
	Zoom("背景２", 0, 2000, 2000, null, true);
	SetBlur("背景２", true, 2, 500, 100, false);
	Zoom("背景２", 1000, 1000, 1000, Dxl2, false);
	Fade("背景２", 1000, 1000, null, true);

	CreateMask("絵覆", 1000, 0, 0, "cg/data/slide_07_00_0.png", false);
	SetAlias("絵覆","絵覆");
	CreateTextureEX("絵覆/絵演背景", 1000, -310, -260, "cg/ev/resize/ev938_突進してくる銀星号l.jpg");
	Move("絵覆/絵演背景", 10000, @0, -320, null, false);
	Fade("絵覆/絵演背景", 1000, 800, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　無論、無傷では済んでいない。
　眼前に現れた銀星号の姿は、満身創痍どころか瓦解
寸前と呼ぶのが相応しいものだ。

　この状態でどうしてあれ程の機動を成し遂げられた
のか。
　しかも――<k>まだ、飢餓虚空の術式を維持している!!

　理解できない。
　この力は何だ。

　<RUBY text="おれ">私</RUBY>にはわからない。
　
　――この敵を、ここまで戦わせるものは何だ!?

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	Move("絵覆/絵演背景", 10000, @0, -380, null, false);
	FadeDelete("絵覆/絵演背景", 1000, false);

	SetFwL("cg/fw/fw光_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【光】
<voice name="光" class="光" src="voice/md05/026vs0150a14">
《おれは唯、一つの夢》

//【光】
<voice name="光" class="光" src="voice/md05/026vs0160a14">
《湊斗光の、願いのかたまり》

//【光】
<voice name="光" class="光" src="voice/md05/026vs0170a14">
《夢は破れぬ……》

{	FwL("cg/fw/fw光_怒り.png");}
//嶋：修正（られて）【090930】
//【光】
<voice name="光" class="光" src="voice/md05/026vs0180a14">
《破れてはならぬ!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	Delete("絵覆");

//◆飢餓虚空
	SetVolume("@mbgm*", 2000, 0, NULL);
	CreateSE("サウンド１","se特殊_その他_辰気収斂_L");
	SoundPlay("サウンド１",2000,1000,true);

	OnSE("se戦闘_銀星号_飢餓虚空魔王星_発動",1000);

	Fade("色２", 500, 1000, null, true);
	CreateTextureSPmul("背景１", 1000, 0, 0, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	Zoom("背景１", 0, 2000, 2000, Axl1, false);
	Fade("色２", 500, 0, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　――――渦。

　闇が広がり、
　そして、

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	Rotate("背景１", 1000, @0, @0, @360, Axl1, false);
	Zoom("背景１", 1000, 4000, 4000, Axl1, false);
	Fade("色２", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
　<RUBY text="おれ">私</RUBY>は全てを呑み尽くされた。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetVolume("サウンド１", 3000, 0, NULL);
	SetVolume("@OnSE*", 3000, 0, NULL);

	ClearFadeAll(3000, true);
	Wait(2000);

}

..//ジャンプ指定
//次ファイル　"md05_027.nss"