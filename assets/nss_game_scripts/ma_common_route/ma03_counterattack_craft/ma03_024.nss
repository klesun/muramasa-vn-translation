//<continuation number="1160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_024.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma03_024.nss","ma03_SB2",true);
	Conquest("nss/ma03_024.nss","ma03_SB3",true);
	Conquest("nss/ma03_024.nss","ma03_SB",true);
	Conquest("nss/ma03_024.nss","ma_03_SBProcess",true);
	Conquest("nss/ma03_024.nss","ma_03_SBDelete",true);
	Conquest("nss/ma03_024.nss","ma03_024_runs",true);
	Conquest("nss/ma03_024.nss","ma03_024_runsProcess",true);
	Conquest("nss/ma03_024.nss","ma03_024_runsDelete",true);
	Conquest("nss/ma03_024.nss","ma03_024_shakeloop",true);
	Conquest("nss/ma03_024.nss","ma03_024_shakeloopProcess",true);
	Conquest("nss/ma03_024.nss","ma03_024_shakeloopDelete",true);
	Conquest("nss/ma03_024.nss","ma03_024_GC",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCP1",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCPC",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCP2",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCPDelete",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCF",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCFP",true);

	CP_AllSet("村正");

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

//嶋：仮
	#ev117_レースの情景_a=true;
	#ev904_村正マグネットコーティング_c=true;
	#ev904_村正マグネットコーティング_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_スーパーハウンド=true;
	#av_RG10=true;
	#av_セクシー=true;
	#av_ザ・ゲイシャ=true;
	#av_ジェントルダッシュ=true;

	Cockpit_AllFade0();

	$PreGameName = $GameName;
	$GameName = "ma03_025.nss";

}

scene ma03_024.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_023.nss"

//◆スタートランプ。赤→青
//◆ピッ、ピッ、ピッ、ポーン。
//◆各騎発進
//嶋：ev指定：ev117_レースの情景_a


	PrintBG("上背景", 30000);

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ef/ef048_シグナルa.jpg");
	CreateTextureEX("絵背景200", 1100, Center, Middle, "cg/ef/ef048_シグナルb.jpg");
	CreateTextureEX("絵背景300", 1200, Center, Middle, "cg/ef/ef048_シグナルc.jpg");
	CreateTextureEX("絵背景400", 1300, Center, Middle, "cg/ef/ef048_シグナルd.jpg");

	CreateSE("SE10","se特殊_鎧_レース_アイドリング");
	CreateSE("SE11","se戦闘_衝撃_攻撃交錯02");
	CreateSE("SE12","se特殊_鎧_レース_加速01");
	CreateSE("SE00","se背景_ガヤ_サーキット03_L");
	CreateSE("SE01","se特殊_鎧_レース_加速01");
	CreateSE("SE02","se特殊_鎧_レース_加速02");
	CreateSE("SE03","se戦闘_動作_空突進08");
	CreateSE("SE04","se特殊_鎧_レース_加速01");
	CreateSE("SE05","se戦闘_動作_空突進08");
	CreateSE("SE06","se特殊_鎧_レース_加速02");
	CreateSE("SE07","se特殊_鎧_レース_加速01");


	MusicStart("SE10",500,500,0,1000,null,true);

	Fade("絵背景100", 0, 1000, null, true);

	FadeDelete("上背景", 500, true);

Wait(750);

	OnSE("se特殊_その他_スタートランプ02",1000);
	Fade("絵背景200", 300, 1000, null, true);

Wait(750);

	OnSE("se特殊_その他_スタートランプ02",1000);
	Fade("絵背景300", 300, 1000, null, true);

Wait(750);

	MusicStart("SE10",500,1000,0,1000,null,true);
	OnSE("se特殊_その他_スタートランプ03",1000);
	Fade("絵背景400", 300, 1000, null, true);

Wait(100);

	MusicStart("SE11",0,1000,0,1000,null,false);
	MusicStart("SE12",0,1000,0,1000,null,false);

	PrintGO("上背景", 5000);

	CreateTextureSP("絵st001", 1400, 1024, Middle, "cg/st/3dウルティマ_騎航_通常.png");
	CreateTextureSP("絵st002", 1500, 1024, Middle, "cg/st/3dアベンジ_騎航_通常_b.png");
	CreateTextureSP("絵st003", 1200, 1024, Middle, "cg/st/3dＲＧ−１０_騎航_通常.png");
	CreateTextureSP("絵st004", 1300, 1024, Middle, "cg/st/3dＳハウンド_騎航_通常.png");
	CreateTextureSP("絵st005", 1400, 1024, Middle, "cg/st/3dＧダッシュ_騎航_通常.png");
	CreateTextureSP("絵st006", 1300, 1024, Middle, "cg/st/3dゲイシャ_騎航_通常.png");
	CreateTextureSP("絵st007", 1400, 1024, Middle, "cg/st/3dセクシー_騎航_通常.png");
	CreateTextureSP("絵st008", 1500, 1024, Middle, "cg/st/3d村正競技_騎航_通常.png");

	#av_スーパーハウンド=true;
	#av_RG10=true;
	#av_セクシー=true;
	#av_ザ・ゲイシャ=true;
	#av_ジェントルダッシュ=true;

//アベンジ
	Move("絵st002", 0, @0, @200, null, true);
//ＲＧ−１０
	Move("絵st003", 0, @0, @-100, null, true);
//ハウンド
	Move("絵st004", 0, @0, @-250, null, true);
//ダッシュ
	Move("絵st005", 0, @0, @-40, null, true);
//ゲイシャ
	Move("絵st006", 0, @0, @+120, null, true);
//セクシー
	Move("絵st007", 0, @0, @-130, null, true);
//ホットドック
	Move("絵st008", 0, @0, @-50, null, true);

	Zoom("絵st002", 0, 1200, 1200, null, true);
	Zoom("絵st003", 0, 500, 500, null, true);
	Zoom("絵st004", 0, 750, 750, null, true);
	Zoom("絵st005", 0, 400, 400, null, true);
	Zoom("絵st006", 0, 300, 300, null, true);
	Zoom("絵st007", 0, 1000, 1000, null, true);

	ma03_SB2(1000,3,1000,0);
	ma03_SB3(2000,300);

	SetVolume("SE10", 1000, 0, null);

	MusicStart("SE00",500,800,0,1000,null,true);
	FadeDelete("上背景", 300, true);

	$Race_Time = 1000;

	Wait(200);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵st001", $Race_Time, @-7000, @0, Dxl2, false);
	Wait(100);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("絵st002", $Race_Time, @-6500, @0, DxlAuto, false);
	Wait(100);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("絵st003", $Race_Time, @-6000, @0, Dxl1, false);
	Wait(100);
	MusicStart("SE04",0,1000,0,1000,null,false);
	Move("絵st004", $Race_Time, @-5000, @0, Dxl2, false);
	Wait(100);
	MusicStart("SE05",0,1000,0,1000,null,false);
	Move("絵st005", $Race_Time, @-4800, @0, DxlAuto, false);
	Wait(100);
	MusicStart("SE06",0,1000,0,1000,null,false);
	Move("絵st006", $Race_Time, @-4900, @0, Dxl1, false);
	Wait(100);
	MusicStart("SE07",0,1000,0,1000,null,false);
	Move("絵st007", $Race_Time, @-4500, @0, Dxl1, false);
	Wait(500);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵st008", $Race_Time, @-4000, @0, Dxl1, true);

	SetVolume("SE00", 500, 0, null);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev117_レースの情景_a.jpg");
	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/ev/ev117_レースの情景_a.jpg");

	Delete("絵st*");
	ma_03_SBDelete();

	CreateTextureEX("絵背景200", 200, Center, Middle, "cg/ev/ev117_レースの情景_a.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);
	Zoom("絵背景200", 500, 2000, 2000, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, false);

	CreateSE("SE10","se背景_ガヤ_サーキット01_L");
	CreateSE("SE01","se特殊_鎧_レース_加速01");
	MusicStart("SE10",500,1000,0,1000,null,true);
	Move("絵背景200", 1000, @0, @-100, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	DrawDelete("黒幕１", 250, 100, "slide_01_01_1", true);
	FadeDelete("絵背景200", 500, false);

	SoundPlay("@mbgm13",0,1000,true);

	Wait(500);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240010a07">
《各騎一斉に飛び出したぁーーーッ!!
　凄まじい<RUBY text="エグゾースト・シンフォニー">爆音交響曲</RUBY>！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240020a07">
《群を成してホームストレートを駆け抜けて
ゆく！　危険だッ！　クラッシュの発生率は
今この瞬間が最も高いィィィーーーッ!!》

{	FwC("cg/fw/fw茶々丸変装_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240030a07">
《あぁーー!?
　一三番、浮いた――――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どごーん。
//爆発まとめ
	SetVolume("SE10", 500, 0, null);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵st004", 1300, -268, -50, "cg/st/3dアベンジ_騎航_通常_b.png");
	CreateTextureSP("絵st005", 1400, -388, -148, "cg/st/3dＳハウンド_騎航_通常.png");
	Zoom("絵st004", 0, 500, 500, null, true);
	Zoom("絵st005", 0, 750, 750, null, true);

	CreateTextureSP("絵st106", 1300, 1024, Middle, "cg/st/3dゲイシャ_騎航_通常.png");
	CreateTextureSPadd("絵st116", 1400, 1024, Middle, "cg/st/3dゲイシャ_騎航_通常.png");
	Zoom("絵st106", 0, 800, 800, null, true);
	Zoom("絵st116", 0, 800, 800, null, true);
	SetTone("絵st116", Sepia);

	Move("絵st004", 0, @+1024, @0, null, false);
	Move("絵st005", 0, @+1024, @0, null, false);

	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureEXadd("絵背景200", 3200, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");

	SetBlur("絵背景200", true, 3, 300, 50, false);

	Shake("絵st004", 50000, 2, 1, 0, 0, 1000, null, false);
	Shake("絵st005", 50000, 1, 2, 0, 0, 1000, null, false);

//	BezierMove("絵st004", 1000, (@0,@0){@-950,@+10}{@-970,@-30}(@-850,@-10){@-860,@+50}{@-870,@+70}(@-800,@-600), DxlAxl, false);

	ma03_SB2(1000,3,1000,0);
	ma03_SB3(2000,300);

	Request("絵st004", Smoothing);
	Request("絵st005", Smoothing);
	Request("絵st1*", Smoothing);

	CreateSE("SE01","se戦闘_動作_空走行02_L");
	CreateSE("SE02","se特殊_鎧_レース_加速02");
	CreateSE("SE03","se特殊_鎧_レース_加速01");
	CreateSE("SE04","se特殊_鎧_レース_減速01");
	CreateSE("SE05","se戦闘_破壊_爆発05");

	MusicStart("SE01",300,500,0,1300,null,true);

	Move("絵st004", 500, @-1024, @0, null, false);
	Move("絵st005", 500, @-1024, @0, null, false);
	DrawDelete("黒幕１", 250, 100, "slide_01_01_1", true);

	MusicStart("SE04",0,1000,0,1300,null,false);
	Rotate("絵st1*", 1000, @0, @0, @30, Axl1,false);
	BezierMove("絵st1*", 1000, (@0,@0){@-950,@+10}{@-970,@-30}(@-850,@-10){@-860,@+50}{@-870,@+70}(@-800,@-600), DxlAxl, false);

	Wait(500);

	MusicStart("SE02",0,1000,0,1300,null,false);
	Move("絵st004", 500, @-890, @+10, Dxl1, false);
	Wait(100);
	MusicStart("SE01",0,1000,0,1300,null,false);
	Move("絵st005", 500, @-1000, @-100, Dxl1, true);

	SetVolume("SE04", 500, 0, null);

	Wait(100);

	CreateColorEXadd("絵色100", 1500, "White");

	MusicStart("SE05",0,1000,0,1300,null,false);
	SetVolume("SE01", 1000, 0, null);
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 300, 0, 1000, 100, null, "cg/data/circle_10_00_0.png", true);


	Zoom("絵背景200", 500, 3000, 3000, null, false);
	Zoom("絵背景100", 250, 1200, 1200, null, false);

	Fade("絵背景100", 250, 1000, null, false);
	Shake("絵背景100", 100000, 5, 3, 0, 0, 1000, null, false);

	BezierMove("絵背景100", 1500, (@0,@0){@0,@-35}{@0,@-70}(@0,@-95){@0,@-70}{@0,@-35}(@0,@0){@0,@+10}{@0,@+20}(@0,@0){@0,@-20}{@0,@-10}(@0,@0), AxlDxl, false);
	BezierMove("絵背景200", 1500, (@0,@0){@0,@-35}{@0,@-70}(@0,@-95){@0,@-70}{@0,@-35}(@0,@0){@0,@+10}{@0,@+20}(@0,@0){@0,@-20}{@0,@-10}(@0,@0), AxlDxl, false);

	Fade("絵背景200", 250, 1000, null, true);
	Fade("絵背景200", 500, 0, null, false);

	Wait(1000);

	SetVolume("SE05", 500, 0, null);

	CreateColorEX("黒幕", 15000, "Black");
	Fade("黒幕",500,1000,null,true);
	ma_03_SBDelete();
	Delete("絵色100");
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵sy004");
	Delete("絵sy005");
	Delete("絵sy1*");

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	Fade("黒幕",1000,0,null,true);
	Delete("黒幕");

/*
	OnSE("se戦闘_破壊_爆発01",1000);

	CreatePlainSP("絵振", 100);
	Wait(1);
	CreatePlainEX("絵振２", 110);
	SetBlur("絵振２", true, 3, 600, 50, false);

	CreateColorEXadd("絵フラ", 2000, "#FFFFFF");

	Fade("絵振２", 0, 700, null, false);
	Zoom("絵振２", 200, 1200, 1200, null, false);

	OnSE("se戦闘_破壊_爆発04",1000);
	Fade("絵フラ", 200, 1000, null, true);
	Delete("絵振２");

	FadeDelete("絵フラ", 300, false);

	FadeFR4("絵振",0,1000,1000,0,0,30,Dxl2,false);
	Delete("絵振*");
*/

	SetFwC("cg/fw/fw茶々丸変装_歯噛.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240040a07">
《直撃ッ！
　接触を避けようと無理な騎首転換を行った
一三番、チーム・サワダ！　浮いてしまった！
コースアーチに激突ぅッ！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240050a07">
《直ちに救助が行われます！》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240060a08">
《無様ね。
　翼の扱いを知らない鳥は、落ちて当然よ》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240070a07">
《吹き飛んだアーチの修復も手早く行われて
おります。この辺りはさすが熟練のスタッフ、
仕事に無駄がない。
　一方レースは――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);

	ma03_SB2(700,1,1000,0);
	ma03_SB3(2000,300);

//1:翔京：ウルティマ・シュール
	CreateTextureSP("絵st001", 1400, 1300, Middle, "cg/st/3dウルティマ_騎航_通常.png");
	Zoom("絵st001", 0, 1100, 1100, null, true);
	Request("絵st001", Smoothing);

//2:ヨコタン：スーパーハウンド
	CreateTextureSP("絵st002", 1300, 1024, Middle, "cg/st/3dＳハウンド_騎航_通常.png");
	Request("絵st002", Smoothing);
//3:ＴＦＦ：アベンジ
	CreateTextureSP("絵st003", 1500, 1024, Middle, "cg/st/3dアベンジ_騎航_通常_b.png");
	Zoom("絵st003", 0, 800, 800, null, true);
	Request("絵st003", Smoothing);
//4:マツイ：ザ・ゲイシャ
	CreateTextureSP("絵st004", 1100, 1024, 0, "cg/st/3dゲイシャ_騎航_通常.png");
	Zoom("絵st004", 0, 750, 750, null, true);
	Request("絵st004", Smoothing);
//5:アソシエイブル：ＲＧ−１０
	CreateTextureSP("絵st005", 1100, 1024, -200, "cg/st/3dＲＧ−１０_騎航_通常.png");
	Zoom("絵st005", 0, 500, 500, null, true);
	Request("絵st005", Smoothing);

	CreateSE("SE01","se特殊_鎧_レース_加速01");
	CreateSE("SE02","se特殊_鎧_レース_旋回02");
	CreateSE("SE03","se特殊_鎧_レース_旋回02");
	CreateSE("SE04","se特殊_鎧_レース_旋回02");
	CreateSE("SE05","se戦闘_動作_空突進03");

	$レースタイム１ = 1000;
	$レースタイム２ = 1200;

	FadeDelete("上背景", 300, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵st001", $レースタイム１, -5000, @0, Dxl1, false);
	Wait(100);
	MusicStart("SE02",0,1000,0,1000,null,false);
	BezierMove("絵st002", $レースタイム１, (1424,-364){0,300}{-512,-100}(-1524,-300), Dxl1, false);
	Wait(200);
	MusicStart("SE03",0,1000,0,1000,null,false);
	BezierMove("絵st004", $レースタイム２, (1524,-164){400,400}{0,-200}(-1624,@0), Dxl1, false);
	Wait(50);
	Move("絵st005", $レースタイム１, -2000, @0, Dxl1, false);
	Wait(50);
	MusicStart("SE04",0,1000,0,1000,null,false);
	BezierMove("絵st003", $レースタイム２, (2024,-264){100,-600}{-300,100}(-1524,-264), Dxl1, true);


	Wait(200);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	ma_03_SBDelete();
	Delete("絵st0*");

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev907_ウルティマ走行.jpg");
	CreateTextureEX("絵背景200", 200, Center, Middle, "cg/ev/ev907_ウルティマ走行.jpg");

	SetBlur("絵背景200", true, 3, 500, 100, false);

	Zoom("絵背景200", 600, 2000, 2000, Dxl1, false);
	Move("絵背景200", 600, @-200, @0, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, false);
	Fade("絵背景100", 300, 1000, null, true);
	FadeDelete("絵背景200", 300, false);

	MusicStart("SE05",0,1000,0,1000,null,false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240080a07">
《第一コーナーへ突入ッ！
　先頭はやはりか！　翔京ウルティマ！》

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240090a07">
《続いてヨコタン、タムラ、マツイにアソシ、
後は団子だ！
　最後尾はポリスチーム！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240100a07">
《さぁ、この順位！
　最初のコーナーを抜けてどう変化する!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆村正視点
//◆モニター展開。サーキット騎航中。
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 20000, "#000000");

	FadeDelete("上背景", 600, true);
	Wait(1000);
	Cockpit_AllFade2();
	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_024_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,182,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateSE("SE01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",500,1000,0,1000,null,true);

	FadeDelete("絵暗転", 600, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　…………予想通りと言おうか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240110a00">
「足の性能が違い過ぎるな」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240120a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　数打劔冑は真打劔冑に劣る。
　それは現在における常識であり、疑いない事実でも
ある。

　が、数打劔冑の<RUBY text="キャパシティ">性能的容量</RUBY>が八しかないとしても、
その全てを速度と運動性の増強に費やした<RUBY text="レーサークルス">競技用劔冑</RUBY>
は――一〇の容量を戦闘力と機動力に五ずつ分配して
いる真打劔冑に足の競い合いで負ける筈もない道理だ。

　この分析は余りにも数学的に過ぎようが。
　実際、力量の差はそれほどにあった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240130a01">
《……駆けっこで勝つのが目的じゃないんで
しょ。いいじゃない、別に》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240140a00">
「その通りだが。
　余り遅れるようだと不都合が生じる」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　後方に取り残されればそれだけ、孵化が起こった時
に駆けつけるのが遅れる。
　その遅れが被害者の数を一桁増やさないとは、断言
できない。

〝卵〟覚醒の瞬間に訪れる災厄は銀星号。
　諸人を殺し、殺し尽くす天象、その複製なのだ。

　せめて下位集団の渦中に位置したいところだが……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆コーナーリング

//◆俯瞰視点（放送席）

	SetVolume("SE01", 600, 0, null);

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 20000, "#000000");

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	Cockpit_AllFade0();

	DrawDelete("上背景", 125, 100, "slide_01_03_1", true);
	WaitKey(50);
	DrawDelete("絵暗転", 125, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw茶々丸変装_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240150a07">
《ポリスチームがコーナーを曲がる！
　なんというかッ――堅実な騎航だ！》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240160a08">
《……なにあれ。
　劔冑の性能も騎手の力量も凡庸。見るべき
点が無いわね》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正視点
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 20000, "#000000");

	FadeDelete("上背景", 600, true);
	Wait(1000);
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,182,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_024_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",500,1000,0,1000,null,true);

	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240170a01">
《…………》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240180a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　気のせいだろうか。
　肌に触れる甲鉄から、何かこう、刺すようなものを
感じるが……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 600, 0, null);

//◆俯瞰視点
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 20000, "#000000");

	DrawDelete("上背景", 125, 100, "slide_02_01_1", true);

	Cockpit_AllFade0();

	ma03_024_runsDelete();

	CreateSE("SE01","se特殊_鎧_レース_加速02");
	CreateSE("SE02","se戦闘_動作_空突進08");
	CreateSE("SE03","se背景_ガヤ_サーキット01_L");

	CreateTextureSP("絵st100", 1000, 0, 0, "cg/st/3dウルティマ_騎航_通常3.png");
	Rotate("絵st100", 0, @0, @0, @-35, null,true);
	Move("絵st100", 0, 1024, 200, null, true);
	Request("絵st100", Smoothing);
	SetBlur("絵st100", true, 3, 300, 30, false);

	CreateTextureEXadd("絵背景100", 1300, -543, -552, "cg/ef/ef044_火花c.png");
	Zoom("絵背景100", 0, 100, 100, null, true);
	CreateTextureSP("Rollbg001", 300, -727, -400, "cg/bg/bg038_サーキットカーブ_01.jpg");
	CreateTextureSP("Rollbg002", 400, -727, -400, "cg/bg/bg038_サーキットカーブ_01 アーチ01.png");
	CreateTextureEX("Rollbg003", 2000, -727, -400, "cg/bg/bg038_サーキットカーブ_01 アーチ01.png");
	Zoom("Rollbg00*", 0, 750, 750, null, true);
//	Zoom("", 0, 750, 750, null, true);

	Move("Rollbg00*",0, @-2000, @-400, null, true);

	MusicStart("SE03",1000,1000,0,1000,null,true);

	Move("Rollbg00*",2000, -727, -400, Dxl1, false);
	DrawDelete("絵暗転", 125, 100, "slide_02_01_1", true);

	WaitAction("Rollbg00*",null);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Rotate("絵st100", 400, @0, @0, -45, DxlAuto,false);
	Zoom("絵st100", 400, 800, 800, DxlAuto, false);
	Move("絵st100", 400, -500, -100, DxlAuto, false);

	Wait(350);

	Fade("Rollbg003", 0, 1000, null, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵背景100", 25, 800, Dxl1, false);
	Move("絵st100",300, @-30, @0, DxlAuto, false);
	Zoom("絵背景100", 250, 2000, 2000, Dxl1, false);
	Rotate("絵st100", 250, @0, @0, 45, Dxl1,false);
	Wait(100);
	Fade("絵背景100", 500, 0, Dxl1, false);
	Zoom("絵st100", 400, 350, 350, Dxl1, false);
	Move("絵st100", 500, 1024, -350, Dxl1, true);
	Fade("絵背景100", 200, 0, Dxl1, false);

	SetVolume("SE03", 1000, 0, null);

	Wait(1000);

	PrintGO("上背景", 25000);

	Delete("Rollbg*");

	CreateColorSP("絵暗転", 20000, "#000000");

	DrawDelete("上背景", 125, 100, "slide_02_01_1", true);

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");

	FadeBG(0,true);

	DrawDelete("絵暗転", 125, 100, "slide_02_01_1", true);


	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240190a07">
《ウルティマがスプーンカーブを抜けるッ！
　どうやら頭一つ抜き出たッ！》

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240200a07">
《続く集団はスーパーハウンド、ＲＧ-一〇、
アベンジの三強！　激しい鍔迫り合い！
　マツイはやや遅れたか!?》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240210a08">
《おおむね順当な展開ね。
　さあ、これからどうなるかしら……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆観客席
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStA(0,true);

	FadeDelete("上背景", 600, true);
	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0240220a02">
「うぅ……
　湊斗さん、頑張ってー……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0240230a03">
「……とは言いましても、ねぇ。
　<RUBY text="レーサークルス">競技用劔冑</RUBY>の足に<RUBY text="ドラコ">軍用</RUBY>で挑むというのは」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0240240a04">
「無駄無駄無駄ァでございます。
　例えるならそう、鳥と魚の競走とでも申し
ましょうか」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0240250a02">
「比べようがねぇだろ、それ」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0240260a04">
「つまりはそういうことでございます。
　世界が違うのですよ、綾弥さま」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0240270a02">
「くそー……。
　じゃあこのままか。悔しいなぁ……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0240280a03">
「まぁま、お忘れなく。
　景明さまの――わたくしどもの目的は別に
あるんですのよ？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0240290a04">
「はい。
　レース参加はあくまで方便でございます」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0240300a02">
「……そりゃ、わかってるけどさ。
　なんか見てると、こう……熱が入るんだよ」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0240310a04">
「お気持ちはよくわかります。
　湊斗さまご自身がその熱に流されねば良い
のですが」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0240320a03">
「あの方なら大丈夫でしょう」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0240330a02">
「……見てみたい気も、ちょっとするけど。
　そういう湊斗さん」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0240340a04">
「ほっほっ。
　さようでございますね」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0240350a03">
「わかりました。お任せなさい。
　今からわたくしが愛のエナジィを送ります」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0240360a02">
「おい。
　いきなり微妙なこと言い出してんだけど。
あんたの主人」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0240370a04">
「微妙というか、完全アウトでございますね。
　どうかほうっておいてやってくださいませ。
白く柔らかい壁に囲まれた密室の中で暮らす
方々を見るような感じで」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0240380a03">
「こういう時、窮地にある男に闘志を注ぐの
は女の愛情ッ！
　燃え盛る想いが景明さまを猛り狂わせ逆転
の道を開きます！　さぁ届けわたくしの愛！」

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0240390a02">
「ポップコーン食う？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0240400a04">
「ありがたく頂きます。
　いや、懐かしゅうございますねぇ。私めの
若い頃はこういう物もなかなか珍しく……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆村正視点
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStA(0,true);

	CreateTextureSP("絵st001", 1300, 1024, Middle, "cg/st/3d村正競技_騎航_通常.png");

	ma03_SB2(1000,1,1000,0);
	ma03_SB3(1100,300);

	OnSE("se特殊_鎧_レース_加速01",1000);


	Move("絵st001", 800, -150, @+50, Dxl1, false);

	DrawDelete("黒幕１", 250, 100, "slide_01_01_1", true);



	CreateSE("SEL01","se特殊_鎧_レース_巡航音");
	MusicStart("SEL01",1000,500,0,1000,null,true);


	BGMoveAuto("@絵st001",1);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　Ｓ字カーブを抜ける。
　我ながら、危なげのない騎航だ。

　全く褒め言葉ではないが。
　サーキットコースにおける速度と安全を限界の一線
で両立させる<RUBY text="レーシングテクニック">競技騎航技術</RUBY>の持ち合わせがないため、
速度を切り捨てて安全を取っているだけの話である。

　観客にしてみれば面白くもなんともあるまい。
　どうにも仕様がないので、勘弁して貰うしかないが。

　先頭からの遅れはそろそろ半周になろうとしている。
現在進行形で伸張中であり、縮まる気配はまるでない。
黄金騎は騎手も騎体も調子が良いようだ。
　どうしたものか。

　この際無理に追うのはやめ、あえて周回遅れになる
べきかもしれない。要は選手達に近接できればそれで
良いのだ。
　……根本的解決とは言い難いが。

　一時的には近付けても、また引き離されれば同じ事。
　こちらの速度が大きく劣っているという事実がある
以上、騎手達と至近距離を保つという希望はどうにも
成立しない。

　いっそ発想の転換が必要か。
　コースを無視して飛ぶなど…………？

　一手ではある。
　が――競技放棄、競技妨害とみられればそれまで、
レースから排除されてしまう。ポリスチームが蒙るで
あろう多大な迷惑も看過し得ない。

　何か良い策はないだろうか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240410a07">
《おっ、アソシが抜きに掛かった！
　インを攻める――が、駄目だッ！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240420a07">
《ヨコタンのスーパーハウンドが一枚上手！
　がっちりラインを封じられては手も足も
出せず！　二位三位の変動はありません！》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240430a08">
《良い攻防ね。
　……それに引き換え、最下位のあれは何
なのよ。どん臭いったら》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240440a08">
《よっぽどの駄作なのね、あの<RUBY text="クルス">劔冑</RUBY>》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240450a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　……黙りこくる村正が妙に気になって仕方ない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SEL*", 1000, 0, null);

//◆俯瞰視点
	SetBlur("絵st001", true, 3, 500, 50, false);

	BGMoveDelete();
	OnSE("se特殊_鎧_レース_加速02",1000);
	Move("絵st001", 800, -2500, @-50, Dxl1, true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	Delete("絵st001");

	ma_03_SBDelete();

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240460a07">
《先頭がコントロールラインを越えたっ。
　これで五周！　六周目です！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240470a07">
《残り一五周。そろそろ中盤戦に差し掛かり
ます。
　状況はやや膠着してきたか？》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240480a08">
《そのようね。
　翔京を筆頭にヨコタン、アソシ、タムラ、
マツイ……上位陣は順当なところで安定して
いるわ》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240490a07">
《一方、下位の情勢はいまだ混沌。
　激突ありコースアウトありの激しいデッド
ヒートを繰り広げています！》

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240500a07">
《しかし、最後尾のポリスチームだけは孤立
気味だッ！　やはり予備騎での参加は無理が
あったか!?　昨日の事故が痛かった！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240510a07">
《それでもポリスは<RUBY text="はし">騎航</RUBY>る！　ご来場の皆様、
血税ではありません！　彼らは皆様の税金を
浪費して参戦しているのではありませんッ！
月給です！　月給から費用を捻出しています》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240520a07">
《安月給の貴重な一部、一食の食費を三〇円
から二〇円に切り詰めて貯めたお金で彼らは
駆ける！　偉いぞ警察！　頑張れポリス！
　失われた給料にかけて飛べ、<RUBY text="ホットドッグ">串焼腸詰</RUBY>！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240530a07">
《いけー<RUBY text="ホットドッグ">串焼腸詰</RUBY>！
　負けるな<RUBY text="ホットドッグ">串焼腸詰</RUBY>！
　頑張れファイトだ<RUBY text="ホットドッグ">串焼腸詰</RUBY>ゥーーー!!》

{	FwC("cg/fw/fw茶々丸変装_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240540a07">
《うわーん！
　応援してるこっちがアホみてー！》

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240550a08">
《ほっときゃいいでしょうがッ!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆村正視点
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 20000, "#000000");

	FadeDelete("上背景", 300, true);
	Wait(1000);
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,182,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_024_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("絵暗転", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　悩むのを打ち切る。
　……やはり、そうそう虫の良い手はない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240560a00">
「村正。コースを外れるぞ。
　この際は止むを得ん」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240570a01">
《………………》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240580a00">
「上空から選手集団を把握し――――
　……村正？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240590a01">
《…………。
　<RUBY text="はし">騎航</RUBY>れば……いいんでしょう……？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240600a00">
「おい？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240610a01">
《速く飛べばいいんでしょう。
　……速く……飛べばッ!!》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240620a00">
「応答しろ、村正。
　状況を認識しているか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240630a01">
《……ッッ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　していなかった。
　いや、むしろ状況に没頭しているというべきなのか。

　村正の注意は遥か先へ集中している。
　遠い彼方を駆ける<RUBY text="レーサークルス">競技用劔冑</RUBY>達に。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240640a00">
「村正――」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240650a01">
《舐めるな<RUBY text="・・・">餓鬼共</RUBY>!!
　ぺらぺらの紙細工がッ!!》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240660a01">
《<RUBY text="ほんもの">真物</RUBY>の劔冑の力――
　思い知りなさい!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　おい。
　その前に。
　何をするつもりなのか、俺に思い知らせて欲しいの
だが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240670a01">
《<RUBY text="ながれ・まわる">磁装・正極</RUBY>！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正マグネットコーティング
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#003399");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　……<RUBY text="エンチャント">磁気鍍装</RUBY>！
　防御障壁となる負極とは逆性の、自分自身へ向ける
正極――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240680a00">
「冷静さを回復しろ村正。
　その手は俺も考えた」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240690a01">
《――――》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240700a00">
「だが届かん。
　消耗だけで終わる」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　<RUBY text="エンチャント・プラス">磁装・正極</RUBY>は甲鉄全領域を分割・複層的に磁化して
ゆく事によって生じる反発と吸着を利用し、あらゆる
駆動系を効率化する術。
　機動力の上昇も見込める。

　が、<RUBY text="シノギ">陰義</RUBY>の必然として<RUBY text="カロリー">熱量</RUBY>の消耗を必要とし、その
程度は効果の高さに比例する。
　劇的な効果を――レーサークルスに伍する速度など
――を望めば無論、消耗は大きく。

　持続する筈がない。そもそも、そんな真似が可能で
あるのかすら疑問だ。
　結論として、この状況では無効の一手。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240710a01">
《――御堂。執行を》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240720a00">
「対話が成立していないように思える」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240730a01">
《私が貴方を<RUBY text="・・・">あそこ</RUBY>へ送る！
　嘘はつかない。御堂、これが貴方の欲して
いた最善の手よ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　……とてもそうは思えないが。
　脳内で計算を行う。

　このまま興奮状態の村正と言い合いを続ける場合。
　ひとまず好きにさせる場合。
　どちらがより不毛か。どちらがより<RUBY text="・・・・・・">致命的な失敗</RUBY>か。

　さほど掛からず、結論は出た。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240740a00">
「……<RUBY text="リニア・アクセル">磁気加速</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE02", 300, 0, null);

//◆村正磁力加速
//嶋：ev指定：ev904_村正マグネットコーティング_c
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	ma_03_SBDelete();
	ma03_024_runsDelete();

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_c.jpg");
	CreateTextureSP("絵背景200", 200, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_c.jpg");

	ma03_024_shakeloop("@絵背景200",2,1);

	DrawDelete("黒幕１", 250, 100, "slide_01_01_1", true);

	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#003399");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);



	CreateSE("SE02","se特殊_陰義_磁力加速03_L");
	MusicStart("SE02",500,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　<RUBY text="コマンド・オン">呪句実行</RUBY>。

　風が硬く、重くなる。
　速度の急上昇がもたらすものだ。

　先程までとは段違いに速い。
　………とはいえようやく、一線級レーサークルスの
一番下に引っ掛かったか、というあたりだが。

　とりあえず、前方との差の拡大は収まっている。
　他騎手のミスを待って順位を上げることも可能かも
しれない。無論、こちらはミスをしないという前提で
だ。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240750a00">
「……これで満足か？」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240760a01">
《ここからよ》

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240770a00">
「何？」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　纏う劔冑の低い呟き。
　何とはなし、不吉なものを感じ取る。

　――甲鉄が、異様な<RUBY text="・・・">ナニカ</RUBY>を帯びた。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240780a01">
《天地万物に吸引の力有り。
　この作用を<RUBY text="インシン">引辰</RUBY>、力を<RUBY text="シンキ">辰気</RUBY>と称す――》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆重力波。青黒い？
	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,500,null,false);
	CreateTextureEX("絵ＥＦ", 300, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_c.jpg");
	SetTone("絵ＥＦ", NegaPosi);
	Fade("絵ＥＦ", 200, 1000, null, false);
	DrawTransition("絵ＥＦ", 200, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	ma03_024_GC();

	CreateColorEXover("絵色", 5000, "#7900BE");
	Fade("絵色", 200, 1000, null, false);
	WaitKey(100);

	FadeDelete("絵色", 300, false);
	DrawDelete("絵ＥＦ", 300, 100, "circle_02_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　…………!?
　これは――まさか。

　まさか。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240790a00">
「何の真似だ!?」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240800a01">
《<RUBY text="シンキシュウレン">辰気収斂</RUBY>》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆村正、グラビティコーティング
	CreateSE("SE01","se特殊_コックピット_起動音04");
	MusicStart("SE01",0,1000,0,750,null,false);

	ma03_024_GCPC(500,1000,5000);

	CreateTextureEXsub("絵ＥＦ", 100, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_c.jpg");
	SetBlur("絵ＥＦ", true, 3, 600, 50, false);
	Fade("絵ＥＦ", 200, 500, null, false);

	WaitKey(200);

	FadeDelete("絵ＥＦ", 2000, false);
	Zoom("絵ＥＦ", 600, 1200, 1200, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　甲鉄の周囲にエネルギーが満ちる。
　それは村正が性質として備える、磁力操作ではない。

　全く異なる力。
　だが良く似ている力――

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240810a00">
「これは……重力操作……」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240820a01">
《……の、亜流といったところね》

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240830a00">
「何故そのような事ができる？
　これは、」

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240840a00">
「これは……
　<RUBY text="・・・">銀星号</RUBY>の<RUBY text="ちから">能力</RUBY>だろう！」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240850a01">
《〝卵〟を壊して野太刀の断片を回収した時
に<RUBY text="・・・">おまけ</RUBY>でついてきたのよ。
　微々たるものだけれどね》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　……〝卵〟は銀星号の力の結晶。
　今回の〝卵〟はそこに村正の力――野太刀の破片を
加えて生成されている。

　野太刀の破片が村正の元へ戻る時、混合した銀星号
の〝力〟も一緒に引き摺ってきたという事か……！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240860a00">
「扱いきれるのか？」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240870a01">
《この高度なら。たぶん、辰気は地表に近い
ほど御しやすい……はず。
　<RUBY text="かかさま">先代</RUBY>のようにはいかないけれど……足回り
を軽くするくらいのことはできる》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240880a01">
《<RUBY text="・・・">もどき</RUBY>共に一泡吹かせるには充分よ！》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆弾けるエネルギー。バチバチと。
	SetVolume("@mbgm*", 300, 0, null);
	CreateSE("SE01","se特殊_陰義_発動03");
	CreateSE("SE02","se特殊_電撃_帯電01");
	MusicStart("SE01",0,1000,0,1250,null,false);
	MusicStart("SE02",0,1000,0,800,Axl2,true);

	ma03_024_GCPC(500,1000,4000);
	CreateColorEXadd("絵フラ", 5000, "#000033");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240890a01">
《御堂！》

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240900a00">
「――<RUBY text="グラビティ・アクセル">辰気加速</RUBY>」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆重力加速。ばびーん。
//嶋：ev指定：ev904_村正マグネットコーティング_d

	CreateSE("SE03","se戦闘_陰義_磁力展開");
	MusicStart("SE03",0,1000,0,1000,null,false);

	SetVolume("SE*", 100, 0, null);
	CreateSE("SE04a","se特殊_電撃_放電01");
	MusicStart("SE04a",0,1000,0,1000,null,false);
	ma03_024_GCPDelete();

	CreateSE("SE04","se戦闘_動作_空突進03");
	MusicStart("SE04",0,1000,0,1500,Dxl2,false);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);

	PrintGO("上背景", 25000);
//◆俯瞰視点
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm25",0,1000,true);

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240910a07">
《…………えーーーーーーーーーー!?》

{	FwC("cg/fw/fw雷蝶_仰天.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240920a08">
《なんじゃありゃァーーーーーーー!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆観客席
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStA(0,true);

	CreateSE("SE01","se背景_ガヤ_歓声02");
	MusicStart("SE01",600,1000,0,1000,null,true);

	FadeDelete("上背景", 200, true);
	FadeDelete("絵暗転", 200, true);

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0240930a03">
「愛、届いたッ!?」

{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0240940a02">
「嘘ぉーーーーーーーーー!?」

{	FwC("cg/fw/fwさよ_怒り.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0240950a04">
「ぶはッッ」
　
（→ポップコーン噴いた）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);

//◆村正視点
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 20000, "#000000");

	Cockpit_AllFade2();

	CP_SpeedChange(0,256,null,true);
	MyTr_Count(0,381);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_024_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	$ma03_024_runs01 = 100;
	$ma03_024_runs02 = 200;
	CreateSE("SE01","se特殊_陰義_重力コーテイング01");

	CreateColorEXmul("絵24co", 2500, "#330033");
	Fade("絵24co", 0, 500, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateSE("SE02","se特殊_鎧_レース_巡航音");
	MusicStart("SE02",500,700,0,1000,null,true);
	FadeDelete("上背景", 200, true);
	FadeDelete("絵暗転", 200, true);

	Fade("絵24co", 100, 0, null, true);
	Fade("絵24co", 100, 500, null, true);
	Fade("絵24co", 100, 0, null, true);
	Fade("絵24co", 100, 500, null, true);
	Fade("絵24co", 100, 0, null, true);
	Fade("絵24co", 100, 500, null, true);
	Fade("絵24co", 100, 0, null, true);
	Delete("絵24co");


	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240960a07">
《すげー！　すごいぞホットドッグ！
　なんだかわけわかんねー加速で一気に追い
上げたぁーーーーーッ!!》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240970a08">
《なんでよっ！　なんであんな騎体であんな
スピードがあんな急に出るのよ！
　ありえないわっ、監視員に連絡！　なにか
おかしな器械を使ってなかったか確かめて！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240980a00">
「村正！　速過ぎだ！
　誰がどう見てもこれは変だッ！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240990a01">
《ちょっと……力の制御が……
　でも追いついたんだからいいでしょ!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0241000a00">
「それはそうだがここまで異様に目立ちたく
はないっ！
　後で困るッ！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0241010a01">
《なら、後で困っておいてっ！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0241020a00">
「俺は来月の<RUBY text="アーマーレース">装甲競技</RUBY>雑誌の表紙を『謎の超
新星現る』などという月並みなコピーと一緒
に飾るつもりは毛頭ないのだ！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0241030a01">
《良かったじゃない子供の頃の夢が叶って！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0241040a00">
「速度を落とせーーー!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXmul("絵24co", 2500, "#330033");
	CreateSE("SE01","se特殊_陰義_グラビティアクセル加速");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵24co", 100, 500, null, true);
	Fade("絵24co", 100, 0, null, true);
	Fade("絵24co", 100, 500, null, true);
	Fade("絵24co", 100, 0, null, true);
	Fade("絵24co", 100, 500, null, true);
	Fade("絵24co", 100, 0, null, true);
	Fade("絵24co", 100, 500, null, true);
	Fade("絵24co", 100, 0, null, true);
	Delete("絵24co");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　渦巻く力に振り回<RUBY text="・・・">されて</RUBY>いるらしい村正に叫ぶ。
　届いているのかどうか知れたものではないが。

　もはや風を感じない。
　空気はどこかへ消失していた。ここはそんな領域。

　<RUBY text="すがすが">清々</RUBY>しい。
　素晴らしい。
　……冗談ではない。

　ここは装甲競技の中にさえ<RUBY text="・・・・">無い世界</RUBY>だ。
　そんなところに行ってしまってどうする。

　甲鉄表面を駆け巡る力に精神の指先を伸ばす。
　村正だけでは抑えかねるのなら、こちらからも制御
するほかない。

　沸騰した滝のようなエネルギーの渦を握り締める。
　意識が白熱。脳梁が弾けた。左脳と右脳が分断され
自己が二つに割り裂かれる。

　封じる――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆エネルギー集束
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#330033");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　もう少し――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆集束
//◆減速

	CP_SpeedChange(1000,204,null,false);
	MyTr_Count(1000,213);
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,750,null,false);
	SetVolume("SE02", 1000, 400, null);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	OnSE("se特殊_鎧_レース_減速01",1000);

	$ma03_024_runs01 = 200;
	$ma03_024_runs02 = 300;
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0241050a07">
《おお!?　ホットドッグ、加速が止まった！
　結局なんだったのかさっぱりわからんけど
とにかく限界に達した模様》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0241060a07">
《安定した騎航に戻るようです》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0241070a08">
《……それでもまだ……さっきまでの騎航に
比べると随分速いわね。
　これが本当の性能なのかしら……？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　重力加速を制御可能範囲内に縮小。
　姿勢安定回復。

　……ようやく落ち着いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0241080a00">
「このペースを維持するぞ、村正。
　もう加速は無しだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0241090a01">
《ええ……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE02", 500, 0, null);

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 20000, "#000000");

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	ma03_024_runsDelete();
	Cockpit_AllFade0();

	DrawDelete("上背景", 125, 100, "slide_01_03_1", true);
	WaitKey(50);
	DrawDelete("絵暗転", 125, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0471]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0241100a07">
《やー、すごかったね。
　そういやおめー、あれに凡庸だの駄作だの
散々言ってなかったっけ？》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0241110a08">
《……くっ。
　わかったわよ。取り消すわよ、認めるわよ》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0241120a08">
《あの騎体は並ではないわね。
　どうにもよくわからないところがあるけど
……》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0241130a08">
《あの加速は超常的で――美しくもあったわ。
　あれを見せただけでも、この決勝戦に参加
する資格はあったと言えるでしょう》

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0241140a07">
《主催者サマのお言葉でした。
　良かったねー、ポリスの人！》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0241150a01">
《ふふっ》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0241160a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 1000);

..//ジャンプ指定
//次ファイル　"ma03_025.nss"


}

..//◆1.ma03_SB2
function ma03_SB2($サーキット真横_BG,$ma03_BGNum,$ma03_BGTime,$ma03_BGpoint){

	if($ma03_BGNum==1){
	//昼間
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");

	}else if($ma03_BGNum==2){
	//夜
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");

	}else if($ma03_BGNum==3){
//レーススタート直後
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_04.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_04.jpg");

	}else{
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	}

	CreateSCR1("@Circuit01","@Circuit02",$ma03_BGTime,$ma03_BGpoint, @0);

}

..//◆2.ma03_SB3
function ma03_SB3($サーキット真横_BG01,$ma03_SBtime){


	CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_01.png");
	SetBlur("Circuit_Bar", true, 3, 300, 8, false);

	CreateProcess("柱プロセス", 15000, 0, 0, "ma_03_SBProcess");
	Request("柱プロセス", Start);
	SetAlias("柱プロセス","柱プロセス");

}

..//◆3.ma03_SB
function ma03_SB($サーキット真横_BG01,$ma03_SBtime){


	CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_03.png");
	SetBlur("Circuit_Bar", true, 3, 300, 8, false);

	CreateProcess("柱プロセス", 15000, 0, 0, "ma_03_SBProcess");
	Request("柱プロセス", Start);
	SetAlias("柱プロセス","柱プロセス");

}

..//◆4.ma_03_SBProcess
function ma_03_SBProcess(){

	begin:

	while(1){
		Fade("@Circuit_Bar", 0, 1000, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, 1074, @0, null, true);
		Fade("@Circuit_Bar", 0, 0, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, -100, @0, null, true);
	}

}

..//◆5.ma_03_SBDelete
function ma_03_SBDelete(){

	Fade("@Circuit_Bar", 0, 0, null, true);
	Delete("@柱プロセス");
	Delete("@Circuit_Bar");
	SCR1stop();
	Delete("@Circuit*");

}

..//◆6.ma03_024_runs
function ma03_024_runs($md03_024_既存ファイル,優先度,$md03_024_ファイル名){

	CreateTextureEX("絵runs01", 優先度, Center, Middle, $md03_024_ファイル名);
	CreateTextureEX("絵runs02", 優先度, Center, Middle, $md03_024_ファイル名);
	SetBlur("絵runs01", true, 3, 400, 20, false);
	SetBlur("絵runs02", true, 3, 400, 20, false);

	SetVertex("絵runs01", 518, 389);
	SetVertex("絵runs02", 518, 389);
	SetVertex($md03_024_既存ファイル, 518, 389);

	CreateProcess("疾走", 1500, 0, 0, "ma03_024_runsProcess");
	SetAlias("疾走","疾走");
	Request("疾走", Start);

	$ma03_024_runs01 = 125;
	$ma03_024_runs02 = 250;

}

..//◆7.ma03_024_runsProcess
function ma03_024_runsProcess(){

	begin:

		Zoom($md03_024_既存ファイル, 50000, 2000, 2000, AxlAuto, false);
		Shake($md03_024_既存ファイル, 50000, 1, 1, 0, 0, 500, null, false);
		Fade($md03_024_既存ファイル, 500, 0, null, false);

		Fade("@絵runs01", $ma03_024_runs01, 500, null, false);
		Zoom("@絵runs01", $ma03_024_runs02, 3000, 3000, AxlAuto, false);

		Wait($ma03_024_runs01);

	while(1){

		Shake($md03_024_既存ファイル, 50000, 1, 1, 0, 0, 500, null, false);

		Zoom("@絵runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs01", $ma03_024_runs01, 0, Axl1, false);
		Zoom("@絵runs02", $ma03_024_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs02", $ma03_024_runs01, 700, Dxl1, false);
		Wait($ma03_024_runs01);
		Zoom("@絵runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs02", $ma03_024_runs01, 0, Axl1, false);
		Zoom("@絵runs01", $ma03_024_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs01", $ma03_024_runs01, 700, Dxl1, false);
		Wait($ma03_024_runs01);
		Zoom("@絵runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs01", $ma03_024_runs01, 0, Axl1, false);
		Zoom("@絵runs02", $ma03_024_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs02", $ma03_024_runs01, 700, Dxl1, false);
		Wait($ma03_024_runs01);
		Zoom("@絵runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs02", $ma03_024_runs01, 0, Axl1, false);
		Zoom("@絵runs01", $ma03_024_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs01", $ma03_024_runs01, 700, Dxl1, false);
		Wait($ma03_024_runs01);

	}


}

..//◆8.ma03_024_runsDelete
function ma03_024_runsDelete(){

	Request("@疾走", Stop);
	Delete("@疾走");
	Delete("@絵runs*");

}

..//◆9.ma03_024_shakeloop
function ma03_024_shakeloop($024SLP,$024揺れ幅x,$024揺れ幅y){

	CreateProcess("揺れ揺れ", 15000, 0, 0, "ma03_024_shakeloopProcess");
	SetAlias("揺れ揺れ","揺れ揺れ");
	Request("揺れ揺れ", Start);

}

..//◆10.ma03_024_shakeloopProcess
function ma03_024_shakeloopProcess(){

	begin:

	while(1){Shake($024SLP, 500000, $024揺れ幅x,$024揺れ幅y, 0, 0, 1000, null, true);}

}

..//◆11.ma03_024_shakeloopDelete
function ma03_024_shakeloopDelete(){

	Request($024SLP, Stop);
	Shake($024SLP, 0, 0, 0, 0, 0, 1000, null, true);
	Delete($024SLP);
	Delete("@揺れ揺れ");

}

..//◆12.ma03_024_GC
function ma03_024_GC(){

	$GCPC_time = 300;
	$GCPC_time2 = 1000;
	$GCPC_time3 = 5000;

	CreateTextureEXmul("絵GC001", 2000, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_d.jpg");
	CreateTextureEXover("絵GC002", 1999, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_d.jpg");

	CreateProcess("辰気1", 15000, 0, 0, "ma03_024_GCP1");
	SetAlias("辰気1","辰気1");

	CreateProcess("辰気2", 15000, 0, 0, "ma03_024_GCP2");
	SetAlias("辰気2","辰気2");


	Request("辰気1", Start);
	Request("辰気2", Start);

}

..//◆13.ma03_024_GCP1
function ma03_024_GCP1(){

	begin:

	while(1){
		Zoom("@絵GC001", $GCPC_time3, 1300, 1300, AxlDxl, false);
		Fade("@絵GC001",$GCPC_time2, $GCPC_time, null, true);
		Fade("@絵GC001",$GCPC_time2, 0, null, true);
		Zoom("@絵GC001", 0, 1000, 1000, AxlDxl, true);
	}

}

..//◆14.ma03_024_GCPC
function ma03_024_GCPC($GCPC_time,$GCPC_time2,$GCPC_time3){}

..//◆15.ma03_024_GCP2
function ma03_024_GCP2(){

	begin:

	while(1){
		Fade("@絵GC002",5000, 300, null, true);
		Fade("@絵GC002",5000, 0, null, true);
	}

}

..//◆16.ma03_024_GCPDelete
function ma03_024_GCPDelete(){

	Request("@辰気1",Stop);
	Request("@辰気2",Stop);

	Delete("@辰気*");

	SetBlur("@絵GC001", true, 3, 400, 100, false);
	Fade("@絵GC002",500, 0, null, false);
	Zoom("@絵GC001", 1000, 2000, 2000, AxlDxl, false);
	Fade("@絵GC001",500, 700, null, true);
	FadeDelete("@絵GC001",500, true);

	Delete("@絵GC*");

}


..//◆17.ma03_024_GCF
function ma03_024_GCF(){

	CreateColorEXmul("絵24co", 2500, "#330033");

	CreateTextureEXover("絵24ef", 2000, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	Zoom("絵24ef", 0, 4000, 4000, null, true);
	Request("絵24ef", Smoothing);

	CreateProcess("辰気色", 15000, 0, 0, "ma03_024_GCFP");
	SetAlias("辰気色","辰気色");

	Request("辰気色", Start);

}

..//◆17.ma03_024_GCFP
function ma03_024_GCFP(){

	begin:

	Fade("@絵24ef",0, 800, null, false);
	DrawTransition("@絵24ef", 0, 0, 200, 200, DxlAxl, "cg/data/circle_02_00_1.png", true);
	Shake("@絵24ef", 500000, 20, 10, 0, 0, 1000, null, false);
//	Rotate("@絵24ef", 500000, @0, @0, 18000, null,false);
	Fade("@絵24co",0, 300, null, false);

while(1){

	Shake("@絵24ef", 500000, 20, 10, 0, 0, 1000, null, true);

}

/*
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 100, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 300, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 100, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 300, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 100, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
*/

}
