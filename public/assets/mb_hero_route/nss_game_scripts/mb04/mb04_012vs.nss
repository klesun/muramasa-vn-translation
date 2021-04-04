//<continuation number="40">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_012vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb04_012vs.nss","DenziBladeChargeEX",true);
	Conquest("nss/mb04_012vs.nss","DenziBladeChargeSet",true);
	Conquest("nss/mb04_012vs.nss","FlyMoving",true);
	Conquest("nss/mb04_012vs.nss","FlyMoving2",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#ev156_銀星号との決着英雄編=true;
	#ev901_銀星号天座失墜小彗星_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_013.nss";

}

scene mb04_012vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_011vs.nss"

//◆村正
	SoundPlay("@mbgm12",0,1000,true);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");

	CreateSE("SEL01","se特殊_電撃_帯電02");
	CreateTextureEXadd("プロ絵上", 17020, InRight, -1250, "cg/ev/resize/ev902_村正電磁抜刀レールガン_ctl.jpg");
	CreateTextureEXsub("プロ絵", 17010, InRight, -1250, "cg/ev/resize/ev902_村正電磁抜刀レールガン_ctl.jpg");
	CreateTextureSP("絵演抜刀準備", 17000, InRight, -1250, "cg/ev/resize/ev902_村正電磁抜刀レールガン_btl.jpg");
	SetBlur("絵演抜刀準備*", true, 2, 500, 80, false);

	SetBlur("プロ絵*", true, 1, 500, 80, false);
	MusicStart("SEL01",0,1000,0,1000,null,true);

	SetVertex("プロ絵*", 586, 1592);
	DenziBladeChargeEX();

	$SYSTEM_effect_rain_speed = 96;
	$SYSTEM_effect_rain_dencity = 24;
	CreateEffect("絵効果雨", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Request("絵効果雨", AddRender);
	Fade("絵効果雨", 0, 300, null, true);
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);

	DrawDelete("上背景", 150, 100, "slide_02_01_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_0", true);

	Move("絵演抜刀準備", 16000, @0, @600, null, false);
	Move("プロ絵*", 16000, @0, @600, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　既に理解している。
　技では銀星号を倒せない。

　力だ。
　速度だ。

　銀星号に勝るには、速度を積み重ねるのみ。
　あと一歩。あと一段の速さを。

　ほんの一瞬――その百分の一の時間で構わない。
　魔王の眼をも振り切り、こちらを見失わせるだけの
速度を。

　手に入れるのだ。
　そのためだ。

　そのために、俺は、<RUBY text="・・・・">こうした</RUBY>のだ。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆帯電が鞘から全身へ波及
	CreateSE("SE01","se特殊_電撃_放電01");
	MusicStart("SE01",0,1000,0,1300,null,false);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");

	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 32;
	CreateEffect("絵効果雨", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Request("絵効果雨", AddRender);
	Fade("絵効果雨", 0, 300, null, true);
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);

	Delete("Ｐ*");
	CreateTextureEXadd("プロ絵上", 17020, InRight, -1250, "cg/ev/resize/ev902_村正電磁抜刀レールガン_dtl.jpg");
	CreateTextureEXsub("プロ絵", 17010, InRight, -1250, "cg/ev/resize/ev902_村正電磁抜刀レールガン_dtl.jpg");
	CreateTextureSP("絵演抜刀準備", 17000, InRight, -1250, "cg/ev/resize/ev902_村正電磁抜刀レールガン_ctl.jpg");
	Shake("絵演抜刀準備", 2160000, 0, 4, 0, 0, 1000, null, false);
	SetBlur("絵演抜刀準備*", true, 2, 500, 80, false);

	SetBlur("プロ絵*", true, 1, 500, 80, false);
	MusicStart("SEL01",0,1000,0,1000,null,true);

	SetVertex("プロ絵*", 586, 1592);
	DenziBladeChargeEX();

	FadeDelete("絵色白", 800, true);

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/mb04/012vs0010a14">
「――――――――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　銀星号はその刹那、気付いたのかもしれない。
　<RUBY text="・・・・・・">何が来るのか</RUBY>。

　その正確な洞察を、人間の域から逸脱した戦闘感覚
によって為したのかもしれない。
　
　いや。

　間違いなく、悟ったのだ。
　だから。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 300, null);

//◆銀星号、キメの蹴りモーションへ
	CreateTextureEX("絵演銀壱", 18100, -350, -250, "cg/ev/resize/ev901_銀星号天座失墜小彗星_cl.jpg");
	Request("絵演銀壱", Smoothing);
	Rotate("絵演銀壱", 0, @0, @180, @0, null,true);
	Fade("絵演銀壱", 1000, 1000, null, true);

	WaitKey(1000);

	CreateTextureSP("絵演銀弐", 18090, -350, -250, "cg/ev/resize/ev901_銀星号天座失墜小彗星_dl.jpg");
	Request("絵演銀弐", Smoothing);
	Rotate("絵演銀弐", 0, @0, @180, @0, null,true);
	FadeDelete("絵演銀壱", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　身を翻し、直ちに打ち放とうとしたのだ。
　<RUBY text="とど">止</RUBY>めの<RUBY text="けり">蹴撃</RUBY>を。

　誰もいない、虚空へ向かって。

　その虚空に、俺が来ると知って。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正全身帯電

	SetVolume("SE*", 1000, 1000, null);
	FadeDelete("絵演銀*", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050a]
　<RUBY text="・">鞘</RUBY>に全ての力を充填する。
　うねり、猛り、反発し合う磁気の嵐。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Move("絵演抜刀準備", 300, @0, @600, AxlDxl, false);
	Move("プロ絵*", 300, @0, @600, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050b]
　嵐の最大の、極みの果てをもって――
　<RUBY text="・">刃</RUBY>を撃ち出す。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	Move("絵演抜刀準備", 600, @0, @-600, Axl3, false);
	Move("プロ絵*", 600, @0, @-600, Axl3, false);

	WaitKey(500);

	SetVolume("SE*", 300, 0, null);

//◆なんか爆発。閃光
//◆なんかが天頂へ向かって疾走する
	CreateSE("SE01a","se特殊_鎧_装着03");
	CreateSE("SE01b","se戦闘_破壊_爆発09");
	CreateSE("SE01c","se戦闘_動作_空突進03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	MusicStart("SE01c",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	Delete("プロ*");
	Delete("Ｐ*");
	Delete("絵効果*");
	Delete("絵演*");


	CreateTextureSP("絵演村正", 17000, 310, -1500, "cg/ef/resize/ef020_村正突貫02tl.jpg");
	Request("絵演村正", Smoothing);
	Zoom("絵演村正", 0, 2000, 2000, null, true);
	SetBlur("絵演村正", true, 4, 500, 70, false);

$ループムーブナット名 = "@絵演村正";
$ループムーブタイム = 200;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");
	Request("プロセス１", Start);

	CreateEffect("絵効果雨", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Request("絵効果雨", SubRender);
	Move("絵効果雨", 0, 1156, 144, null, true);
	Zoom("絵効果雨", 0, 5000, 5000, null, true);
	Rotate("絵効果雨", 0, @-20, @0, @5, null,true);
	Fade("絵効果雨", 0, 150, null, true);

	Shake("絵演村正", 10000000, 1, 0, 0, 0, 1000, null, false);

//	Shake("絵演村正", 1500, 3, 0, 0, 0, 1000, Dxl2, false);


	Fade("絵効果雨", 1500, 0, null, false);
	FadeDelete("絵色白", 1000, false);
	Zoom("絵演村正", 700, 1700, 1700, Dxl2, true);


//	WaitKey(700);
	Delete("プロセス１");

	Zoom("絵演村正", 1600, 1000, 1000, Dxl2, false);
	BezierMove("絵演村正", 1000, (@0,@0){-240,-1000}{-340,-1000}(100,-1300){-50,-300}{-100,-600}(-200,-100){-220,-600}{-120,-410}(-135,-440), null, true);

//	Move("絵演村正", 200, -120, -410, Dxl1, true);
//	Move("絵演村正", 100, -100, -510, AxlDxl, true);
//	Move("絵演村正", 300, @0, -510, Dxl1, true);

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/mb04/012vs0020a14">
「景明ィィィィィィィィィィィィィィィ!!」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateSE("SE02a","se戦闘_動作_空突進03");
	CreateSE("SE02b","se戦闘_動作_空突進01");
	CreateSE("SE02c","se戦闘_破壊_爆発09");
	CreateTextureSPadd("絵演銀星号", 17000, 0, -1050, "cg/ef/resize/ef019_銀星号突貫02t2l.jpg");
	Shake("絵演銀星号", 10000000, 1, 0, 0, 0, 1000, null, false);

	CreateTextureSP("絵演銀星号2", 17000, -100, -1500, "cg/ef/resize/ef019_銀星号突貫02t2l.jpg");
	Request("絵演銀星号2", Smoothing);
	Zoom("絵演銀星号2", 0, 2000, 2000, null, true);
	SetBlur("絵演銀星号2", true, 2, 300, 20, false);

	Move("絵効果雨", 0, @0, @250, null, true);

	Fade("絵効果雨", 0, 150, null, true);
	Zoom("絵演銀星号2", 1600, 1000, 1000, Dxl2, false);
	Fade("絵効果雨", 1600, 100, null, false);
	Zoom("絵効果雨", 1600, 5000, 5000, Dxl2, false);
	Rotate("絵効果雨", 1600, @20, @0, @21, Dxl2,false);

	FadeDelete("絵色白", 1000, false);

	BezierMove("絵演銀星号2", 1000, (@0,@0){-240,-1000}{-340,-1000}(0,-1300){-50,-1000}{-100,-1000}(-150,-1100){-140,-900}{-120,-1000}(0,-1050), null, false);

	Wait(900);

	MusicStart("SE02a",0,1000,0,1000,null,false);
	MusicStart("SE02b",0,1000,0,1000,null,false);
	MusicStart("SE02c",0,1000,0,1500,null,false);


	FadeDelete("絵演銀星号2", 500, false);

	Wait(300);
//	Move("絵演銀星号", 300, @0, -980, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　有り得ない事であったのかもしれないが。
　裂空の世界にあって、俺は光の<RUBY text="こえ">叫</RUBY>を耳で聴いたよう
に思った。

　対象に劒冑を指定して送られる<RUBY text="メタルエコー">装甲通信</RUBY>ではない。
　肉声。

　それは、光が遂に俺の姿を<RUBY text="モニター">視覚</RUBY>から<RUBY text="ロスト">喪失</RUBY>した証。

　光は今も見ているだろう。
　<RUBY text="あか">深紅</RUBY>い劒冑の所在を見失ってはいないだろう。

　だが、<RUBY text="・・・・">俺の姿は</RUBY>もう<RUBY text="み">視</RUBY>えていない。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);

//◆白い閃光の中に景明
//◆ぶっちゃけ裸だが、まあ醜い絵にならんよう誤魔化す。
//◆右腕だけは装甲
	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 1000, 1000, Axl2, true);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵ＥＶ", 18000, Center, Middle, "cg/ev/ev156_銀星号との決着英雄編.jpg");
	Zoom("絵ＥＶ", 0, 2000, 2000, null, true);

	SetBlur("絵ＥＶ", true, 3, 500, 50, false);
	Move("絵ＥＶ", 0, 500, @-200, null, true);

	Delete("上背景");

	CreateSE("SE01","se特殊_電撃_帯電01");
	OnSE("se特殊_電撃_放電02",1000);
	MusicStart("SE01",2000,500,0,1000,null,true);

	Zoom("絵ＥＶ", 2000, 1800, 1800, null, false);
	Move("絵ＥＶ", 2000, 400, -160, null, false);
	Fade("絵暗転", 2000, 0, null, true);

	OnSE("se特殊_電撃_放電01",1000);
	Fade("絵暗転", 100, 500, null, true);
	FadeDelete("絵暗転", 500, false);
	Zoom("絵ＥＶ", 500, 1000, 1000, Axl2, false);
	Move("絵ＥＶ", 500, 0, 0, Axl2, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　最後の<RUBY text="レールガン">電磁抜刀</RUBY>。

　劒冑全てを鞘とし、
　俺の肉体を刃として放った、
　最後の一撃。

　俺は<RUBY text="ひかり">閃光</RUBY>となっていた。

　何も見えない。
　白い輝きに満ちているようで。黒い闇に閉ざされて
いるようで。

　銀星号の姿も見えない。
　銀星号が今、俺を見失っているのと同じに。

　しかしそれは、俺の不利ではない。

　俺にはわかっているのだ。
　敵は直上から、俺を目掛けて真っ直ぐに突き進んで
来ていると。

　だから俺も真っ直ぐに進むだけでいい。

　唯一甲鉄を残した、右の拳を固く握って。
　天頂へ。

　俺の拳は必ず敵騎を捉える。

　だが――
　俺を見失った銀星号は――例え見失う事態を超常的
な感覚で予知し得たとしても――――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆交差
//◆銀星号の蹴り
//◆それをすり抜ける景明
	CreateSE("SE01","se戦闘_攻撃_振る04");
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演上", 18100, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");
	CreateTextureSP("絵演", 18050, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");
	Rotate("絵演*", 0, @0, @180, @0, null,true);
	Zoom("絵演", 0, 1100, 1100, null, true);
	Request("絵演*", Smoothing);

	Fade("絵演*", 0, 1000, null, true);
	Zoom("絵演上", 200, 1200, 1200, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	WaitKey(500);

	DrawDelete("絵演", 150, 100, "circle_01_00_1", true);

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【光】
<voice name="光" class="光" src="voice/mb04/012vs0030a14">
「……!!」


{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/012vs0040a00">
「――――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　そして――――
　銀星号の甲鉄はこの交錯の瞬間、打撃点となる脚に
集約されており。

　その他の箇所は決して頑強ではなく。
　<RUBY text="おれ">村正</RUBY>の甲鉄との激突に耐えるだけの強度を――――<k>
持たない――――!!

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

//◆どがーん。ぶつかった。
	CreateSE("SE01","se戦闘_衝撃_衝突01");
	CreateSE("SE02","se戦闘_衝撃_攻撃交錯02");
	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	CreatePlainSPadd("絵板写", 19990);
	SetBlur("絵板写", true, 3, 500, 30, false);

	MusicStart("SE01",0,1000,0,750,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1150, 1150, null, false);
	Fade("絵色白", 200, 1000, null, true);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵白転", 20000, "#FFFFFF");
	CreateColorSP("絵暗転", 100, "#000000");
	Delete("上背景");
	FadeDelete("絵白転", 2000, true);
	WaitPlay("SE02", null);

//◆べきぼきばき。生々しい破壊の音
	CreateSE("SE03","se戦闘_破壊_銀星号破壊");
	MusicStart("SE03",0,1000,0,1000,null,false);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　鉄を割る感触。
　肉を抉る感触。
　骨を砕く感触。

　……妹を破壊するという行為。
　それがもたらす感覚のすべてを、俺は脳髄にしみて
味わった。

　すべてを。
　総身の毛がよだつおぞましさ、そのすべてを余さず。

　俺はこのために、こうするために、
　戦っていたのだから。

　求めてはいなかった。望んではいなかった。
　それでも俺は、俺の意思で、この結末を選んだのだ
から。

　だから――
　
　俺は妹の心臓を潰した感触を、この拳に刻むのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆完全破壊
	CreateSE("SE01","se特殊_陰義_発動03");
	CreateSE("SE02","se特殊_鎧_装着03");
	CreateSE("SE03","se特殊_ヒロイン_惨殺03");

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Fade("絵色白", 300, 1000, null, true);

	WaitKey(2000);

	SetVolume("SE*", 2000, 0, null);
	Wait(2000);

//	ClearWaitAll(3000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_013.nss"

..//電磁抜刀放電ループカスタム
function DenziBladeChargeEX()
{
	CreateProcess("Ｐ電磁抜刀放電ループ", 5000, 0, 0, "DenziBladeChargeSet");
	SetAlias("Ｐ電磁抜刀放電ループ","Ｐ電磁抜刀放電ループ");
	Request("Ｐ電磁抜刀放電ループ", Start);
}

function DenziBladeChargeSet()
{
	begin:
	while(1)
	{
	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@プロ絵", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 300, $RZS, $RZS, null, false);
	Fade("@プロ絵", 50, 800, Dxl3, false);
	Fade("@プロ絵上", 50, 800, Axl1, true);
	Fade("@プロ絵*", 250, 0, null, true);
	Wait(50);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@プロ絵", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 200, $RZS, $RZS, null, false);
	Fade("@プロ絵", 50, 800, Dxl3, false);
	Fade("@プロ絵上", 50, 800, Axl1, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@プロ絵", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 150, $RZS, $RZS, null, false);
	Fade("@プロ絵", 50, 800, Dxl3, false);
	Fade("@プロ絵上", 50, 800, Axl1, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	}

}


function FlyMoving()
{

$t = $ループムーブタイム;

	$X1 = $x;
	$X2 = ($X1 / 36) * 1 + 5;
	$X3 = ($X1 / 36) * 2 + - 10;
	$X4 = ($X1 / 36) * 3 + - 10;
	$X5 = ($X1 / 36) * 4 + 5;
	$X6 = ($X1 / 36) * 5 + - 10;
	$X7 = ($X1 / 36) * 6 + - 10;
	$X8 = ($X1 / 36) * 7 + - 10;
	$X9 = ($X1 / 36) * 8 + 5;
	$X10 = ($X1 / 36) * 9 + 0;
	$X11 = ($X1 / 36) * 10 + 5;
	$X12 = ($X1 / 36) * 11 + 10;
	$X13 = ($X1 / 36) * 12 + 15;
	$X14 = ($X1 / 36) * 13 + 10;
	$X15 = ($X1 / 36) * 14 + 5;
	$X16 = ($X1 / 36) * 15 + 0;
	$X17 = ($X1 / 36) * 16 + - 5;
	$X18 = ($X1 / 36) * 17 + 5;
	$X19 = ($X1 / 36) * 18;
	$X20 = ($X1 / 36) * 19 + 5;
	$X21 = ($X1 / 36) * 20 + - 10;
	$X22 = ($X1 / 36) * 21 + - 10;
	$X23 = ($X1 / 36) * 22 + 5;
	$X24 = ($X1 / 36) * 23 + - 10;
	$X25 = ($X1 / 36) * 24 + - 10;
	$X26 = ($X1 / 36) * 25 + - 10;
	$X27 = ($X1 / 36) * 26 + 5;
	$X28 = ($X1 / 36) * 27 + 0;
	$X29 = ($X1 / 36) * 28 + 5;
	$X30 = ($X1 / 36) * 29 + 10;
	$X31 = ($X1 / 36) * 30 + 15;
	$X32 = ($X1 / 36) * 31 + 10;
	$X33 = ($X1 / 36) * 32 + 5;
	$X34 = ($X1 / 36) * 33 + 0;
	$X35 = ($X1 / 36) * 34 + - 5;
	$X36 = ($X1 / 36) * 35 + 5;


	$Y1 = $y;
	$Y2 = ($Y1 / 36) * 1 + - 10;
	$Y3 = ($Y1 / 36) * 2 + 10;
	$Y4 = ($Y1 / 36) * 3 + -5;
	$Y5 = ($Y1 / 36) * 4 + -10;
	$Y6 = ($Y1 / 36) * 5 + 5;
	$Y7 = ($Y1 / 36) * 6 + 0;
	$Y8 = ($Y1 / 36) * 7 + 10;
	$Y9 = ($Y1 / 36) * 8 + -10;
	$Y10 = ($Y1 / 36) * 9 + 0;
	$Y11 = ($Y1 / 36) * 10 + -15;
	$Y12 = ($Y1 / 36) * 11 + -10;
	$Y13 = ($Y1 / 36) * 12 + -5;
	$Y14 = ($Y1 / 36) * 13 + 0;
	$Y15 = ($Y1 / 36) * 14 + 5;
	$Y16 = ($Y1 / 36) * 15 + 10;
	$Y17 = ($Y1 / 36) * 16 + 15;
	$Y18 = ($Y1 / 36) * 17 + 5;
	$Y19 = ($Y1 / 36) * 18;
	$Y20 = ($Y1 / 36) * 19 + - 10;
	$Y21 = ($Y1 / 36) * 20 + 10;
	$Y22 = ($Y1 / 36) * 21 + -5;
	$Y23 = ($Y1 / 36) * 22 + -10;
	$Y24 = ($Y1 / 36) * 23 + 5;
	$Y25 = ($Y1 / 36) * 24 + 0;
	$Y26 = ($Y1 / 36) * 25 + 10;
	$Y27 = ($Y1 / 36) * 26 + -10;
	$Y28 = ($Y1 / 36) * 27 + 0;
	$Y29 = ($Y1 / 36) * 28 + -15;
	$Y30 = ($Y1 / 36) * 29 + -10;
	$Y31 = ($Y1 / 36) * 30 + -5;
	$Y32 = ($Y1 / 36) * 31 + 0;
	$Y33 = ($Y1 / 36) * 32 + 5;
	$Y34 = ($Y1 / 36) * 33 + 10;
	$Y35 = ($Y1 / 36) * 34 + 15;
	$Y36 = ($Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$ループムーブナット名", $t, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X4,@$Y4){@$X5,@$Y5}{@$X6,@$Y6}(@$X7,@$Y7){@$X8,@$Y8}{@$X9,@$Y9}(@$X10,@$Y10){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X19,@$Y19){@$X20,@$Y20}{@$X21,@$Y21}(@$X22,@$Y22){@$X23,@$Y23}{@$X24,@$Y24}(@$X25,@$Y25){@$X26,@$Y26}{@$X27,@$Y27}(@$X28,@$Y28){@$X29,@$Y29}{@$X30,@$Y30}(@$X31,@$Y31){@$X32,@$Y32}{@$X33,@$Y33}(@$X34,@$Y34){@$X35,@$Y35}{@$X36,@$Y36}(@$X1,@$Y1), null, true);
	}
}

function FlyMoving2()
{

$t2 = $ループムーブタイム２;

	$X1 = $x;
	$X2 = ($X1 / 36) * 1 + 5;
	$X3 = ($X1 / 36) * 2 + - 10;
	$X4 = ($X1 / 36) * 3 + - 10;
	$X5 = ($X1 / 36) * 4 + 5;
	$X6 = ($X1 / 36) * 5 + - 10;
	$X7 = ($X1 / 36) * 6 + - 10;
	$X8 = ($X1 / 36) * 7 + - 10;
	$X9 = ($X1 / 36) * 8 + 5;
	$X10 = ($X1 / 36) * 9 + 0;
	$X11 = ($X1 / 36) * 10 + 5;
	$X12 = ($X1 / 36) * 11 + 10;
	$X13 = ($X1 / 36) * 12 + 15;
	$X14 = ($X1 / 36) * 13 + 10;
	$X15 = ($X1 / 36) * 14 + 5;
	$X16 = ($X1 / 36) * 15 + 0;
	$X17 = ($X1 / 36) * 16 + - 5;
	$X18 = ($X1 / 36) * 17 + 5;
	$X19 = ($X1 / 36) * 18;
	$X20 = ($X1 / 36) * 19 + 5;
	$X21 = ($X1 / 36) * 20 + - 10;
	$X22 = ($X1 / 36) * 21 + - 10;
	$X23 = ($X1 / 36) * 22 + 5;
	$X24 = ($X1 / 36) * 23 + - 10;
	$X25 = ($X1 / 36) * 24 + - 10;
	$X26 = ($X1 / 36) * 25 + - 10;
	$X27 = ($X1 / 36) * 26 + 5;
	$X28 = ($X1 / 36) * 27 + 0;
	$X29 = ($X1 / 36) * 28 + 5;
	$X30 = ($X1 / 36) * 29 + 10;
	$X31 = ($X1 / 36) * 30 + 15;
	$X32 = ($X1 / 36) * 31 + 10;
	$X33 = ($X1 / 36) * 32 + 5;
	$X34 = ($X1 / 36) * 33 + 0;
	$X35 = ($X1 / 36) * 34 + - 5;
	$X36 = ($X1 / 36) * 35 + 5;


	$Y1 = $y;
	$Y2 = ($Y1 / 36) * 1 + - 10;
	$Y3 = ($Y1 / 36) * 2 + 10;
	$Y4 = ($Y1 / 36) * 3 + -5;
	$Y5 = ($Y1 / 36) * 4 + -10;
	$Y6 = ($Y1 / 36) * 5 + 5;
	$Y7 = ($Y1 / 36) * 6 + 0;
	$Y8 = ($Y1 / 36) * 7 + 10;
	$Y9 = ($Y1 / 36) * 8 + -10;
	$Y10 = ($Y1 / 36) * 9 + 0;
	$Y11 = ($Y1 / 36) * 10 + -15;
	$Y12 = ($Y1 / 36) * 11 + -10;
	$Y13 = ($Y1 / 36) * 12 + -5;
	$Y14 = ($Y1 / 36) * 13 + 0;
	$Y15 = ($Y1 / 36) * 14 + 5;
	$Y16 = ($Y1 / 36) * 15 + 10;
	$Y17 = ($Y1 / 36) * 16 + 15;
	$Y18 = ($Y1 / 36) * 17 + 5;
	$Y19 = ($Y1 / 36) * 18;
	$Y20 = ($Y1 / 36) * 19 + - 10;
	$Y21 = ($Y1 / 36) * 20 + 10;
	$Y22 = ($Y1 / 36) * 21 + -5;
	$Y23 = ($Y1 / 36) * 22 + -10;
	$Y24 = ($Y1 / 36) * 23 + 5;
	$Y25 = ($Y1 / 36) * 24 + 0;
	$Y26 = ($Y1 / 36) * 25 + 10;
	$Y27 = ($Y1 / 36) * 26 + -10;
	$Y28 = ($Y1 / 36) * 27 + 0;
	$Y29 = ($Y1 / 36) * 28 + -15;
	$Y30 = ($Y1 / 36) * 29 + -10;
	$Y31 = ($Y1 / 36) * 30 + -5;
	$Y32 = ($Y1 / 36) * 31 + 0;
	$Y33 = ($Y1 / 36) * 32 + 5;
	$Y34 = ($Y1 / 36) * 33 + 10;
	$Y35 = ($Y1 / 36) * 34 + 15;
	$Y36 = ($Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$ループムーブナット名２", $t2, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X4,@$Y4){@$X5,@$Y5}{@$X6,@$Y6}(@$X7,@$Y7){@$X8,@$Y8}{@$X9,@$Y9}(@$X10,@$Y10){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X19,@$Y19){@$X20,@$Y20}{@$X21,@$Y21}(@$X22,@$Y22){@$X23,@$Y23}{@$X24,@$Y24}(@$X25,@$Y25){@$X26,@$Y26}{@$X27,@$Y27}(@$X28,@$Y28){@$X29,@$Y29}{@$X30,@$Y30}(@$X31,@$Y31){@$X32,@$Y32}{@$X33,@$Y33}(@$X34,@$Y34){@$X35,@$Y35}{@$X36,@$Y36}(@$X1,@$Y1), null, true);
	}
}
