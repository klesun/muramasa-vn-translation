//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_041vs.nss_MAIN
{

	
//コックピット用Ｓｅｔ
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
	#ev205_矢を撃ち放つバロウズ_a=true;
	#ev205_矢を撃ち放つバロウズ_b=true;
	#ev205_矢を撃ち放つバロウズ_c=true;
	#ev004_香奈枝の凶眼_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mc04_042vs.nss";

}

scene mc04_041vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_040vs.nss"


//◆村正サイド
	PrintBG("上背景", 30000);

	CreateSE("SE10","se戦闘_動作_空突進05");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	Wait(1000);

	CreateColorSP("黒幕１", 18000, "BLACK");
	CreateTextureSP("絵背景50", 100, Center, -400, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Request("絵背景50", Smoothing);

	Delete("上背景");


	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CP_AltChange(0,10,AxlDxl,false);
	CP_AziChange(0,-150,AxlDxl,false);
	CP_SpeedChange(0,600,null,false);
	CP_HighChange(0,453,null,false);

	SetVolume("SE10", 3000, 300, null);
	SetFrequency("SE10", 3000, 900, null);

	OnSE("se戦闘_動作_空突進01",1000);

	DrawDelete("黒幕１", 200, 100, "slide_02_01_1", false);
	Move("絵背景50", 1000, @0, @100, Dxl2, true);

	BGMoveAuto("@絵背景50",1);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　――――来る!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	BGMoveDelete();

/*
	CreateTextureEXadd("発射", 18500, 0, Middle, "cg/ef/ef044_火花a.jpg");
	CreateTextureSP("kana", 18100, 0, Middle, "cg/ev/resize/ev205_矢を撃ち放つバロウズ_al.jpg");
	SetBlur("kana", true, 3, 300, 100, false);
	Move("kana", 0, @-200, @-200, null, true);
	CreateTextureSP("絵EV100", 18000, 0, Middle, "cg/ev/ev205_矢を撃ち放つバロウズ_a.jpg");
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	SetBlur("絵EV100", true, 3, 300, 100, false);

	Move("kana", 200, @-200, @+100, Dxl1, true);

	Wait(100);

	OnSE("se特殊_鎧_装着06",1000);
	Move("kana", 300, @-500, @250, Dxl2, true);

	Wait(1000);

	Move("絵EV100", 0, -390, 140, null, true);

	OnSE("se戦闘_バロウズ_ボーガン構え01",1000);
	FadeDelete("kana", 250, false);
	Move("絵EV100", 200, 0, 0, Axl3, false);
	Zoom("絵EV100", 200, 1000, 1000, Axl3, true);

	Wait(200);
*/

	CreateColorEXadd("絵色下敷", 18000, "WHITE");


	OnSE("se特殊_mv用_パラドックス",1000);
	OnSE("se特殊_mv用_パラドックス",1000);
	Fade("絵色下敷", 300, 1000, Axl3, false);
	MovieSESet(21000,"mvパラドックス","se特殊_mv用_パラドックス");
	MovieSEStart(0);


//◆回避機動

//おがみ：定義
	CreateTextureEX("絵背景150", 100, 0, 0, "cg/bg/resize/bg201_旋回演出背景市街地a_01.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 12000, 1000, null, true);
//おがみ：サーフェース作成
	CreateSurfaceEX("絵Suf",1000,2000,"絵背景150");

	CreateSE("SEロックオン","se特殊_コックピット_起動音02");
//	CreateSE("SEボウガン","se戦闘_バロウズ_ボーガン射撃01");
	CreateSE("SE突進","se戦闘_動作_空突進03");

//おがみ：ボウガン発射演出
	EffectZoomDXadd(13000, 1000, 1000, "#FFFFFF", "cg/ef/ef039_時間移動.jpg", false);
	Wait(100);
//	MusicStart("SEボウガン",0,1000,0,1000,null,false);
	Fade("発射", 0, 1000, null, true);
	Rotate("発射", 300, @0, @0, @3600, null,false);
	Zoom("発射", 300, 3000, 3000, Axl3, false);
	Zoom("絵EV100", 300, 2000, 2000, Axl3, false);
	FadeDelete("発射", 500, false);
	FadeDelete("絵色下敷", 300, false);

//おがみ：コックピット計器
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);


//おがみ：動作
	CP_AziChange(2000,-32,AxlDxl,false);
	CP_SpeedChange(2000,700,AxlDxl,false);
	CP_HighChange(2000,479,AxlDxl,false);
	Move("@絵背景50", 800, @-200, @0, Axl3, false);
	Wait(500);
	Fade("絵背景150", 500, 1000, null, false);
	Fade("絵Suf", 500, 1000, null, false);
	Rotate("絵Suf", 2000, @0, @0, @345, AxlDxl,false);
	CP_RollBarMove2(2000,370,AxlDxl,false);
	Move("@絵背景150", 2500, @-4048, @0, AxlDxl, false);
	Fade("@絵背景150", 300, 1000, null, true);

	Move("@絵背景50", 0, -312, -388, null, true);

	MusicStart("SE突進",0,1000,0,1000,null,false);
	Wait(1500);

//おがみ：サーフェース動作終了
	Fade("絵Suf", 300, 0, null, false);
	CP_RollBarMove2(800,360,AxlDxl,false);
	Move("@絵背景50", 800, -512, -288, Dxl2, false);

//	BGMoveAuto("@絵背景50",1);

	SetFwC("cg/fw/fw景明_戦闘.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/041vs0010a00">
（躱した！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　射撃瞬間の察知に成功。
　射線から――<RUBY text="おのれ">自騎</RUBY>を外す！

　これで、勝てる、<k>
　
　
　　　　　　　　　　　　　　　　　　　その一瞬。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);
	CreateColorSP("絵色100", 18000, "BLACK");
//おがみ：サーフェース削除
	Delete("絵背景150");
	Delete("絵Suf");
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
　音速の風の中に、<RUBY text="とな">唱</RUBY>われる<RUBY text="ノロイ">呪句</RUBY>を聴いた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＧ処理？

	CreateColorEX("絵色200", 18500, "WHITE");
	Fade("絵色200", 200, 1000, null, true);
	CreateTextureSP("絵背景100", 18010, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Delete("絵色100");

	SoundPlay("@mbgm07",0,1000,true);

	Wait(300);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　
　ウィリアム・テルの矢は決して林檎に届かない。
　　　　The paradox of "Tell and apple"<PRE>.</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


	FadeDelete("絵色200", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……それは多くの哲学者を苦悩させた<RUBY text="パラドックス">背理</RUBY>。
　広く知られるアキレスと亀の背理に近しいもの。

　テルと林檎の背理。
　テルの弓から放たれた矢は林檎まで到達しない――
何故なら矢はまず弓と林檎の中間点Ａに到達する必要
がある。

　Ａ点に到達するため、まずはＡ点と弓の中間点Ｂに
到達しなくてはならない。
　Ｂ点に到達するには、まずＢ点と弓の中間点Ｃまで
到達せねばならない……

　このように、通過すべき中間点は無限に設定される。
　従って、無限の点を通過せねばならない矢は決して
目標まで到達し得ない。

　現実の事象に背く理論。
　
　この名詭弁の巧妙さは、我々の世界が<RUBY text="・・">観測</RUBY>によって
成立するという点を無視しているところにある。

　<RUBY text="・・">無限</RUBY>の中間点を観測し、矢がその一点一点を通過し
てゆく<RUBY text="・・">無限</RUBY>の瞬間をも観測する者がいるならば、その
者にとって背理は真実となるだろう。
　だがそんな観測者はこの世界に存在しない。

　する筈がないのだ――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 1000, 0, null);

	Wait(500);

//◆凶眼アップ→凶眼の香奈枝全体像
//◆鎧姿と瞬時に入れ替えつつカメラを引いていく感じか？
//◆演出に合わせて次の狂笑。テキストは出さない
	CreateColorEXadd("絵色200", 18500, "WHITE");
	CreateSE("SE01","se特殊_バロウズ_パワー充電_L");
	MusicStart("SE01",500,1000,0,1000,null,false);
	OnSE("se戦闘_動作_空突進04",1000);
	Fade("絵色200", 100, 1000, null, true);

	CreateTextureSP("絵背景100", 18010, Center, Middle, "cg/ev/ev004_香奈枝の凶眼_a.jpg");
	Zoom("絵背景100", 0, 1200, 1200, null, true);
	CreateTextureEX("絵背景200", 18020, Center, Middle, "cg/ev/ev205_矢を撃ち放つバロウズ_b.jpg");
	CreateTextureEX("絵背景300", 18030, Center, Middle, "cg/ev/ev205_矢を撃ち放つバロウズ_a.jpg");
	Request("絵背景*", Smoothing);

	Zoom("絵背景200", 0, 2000, 2000, null, true);
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景200", true, 1, 300, 100, false);
	SetBlur("絵背景300", true, 1, 300, 100, false);

	Zoom("絵背景100", 3000, 1000, 1000, null, false);
	FadeDelete("絵色200", 1000, false);


	Wait(1800);

	Zoom("絵背景200", 2000, 1800, 1800, null, false);
	Fade("絵背景200", 1000, 1000, null, true);
	Wait(1000);
	SetVolume("SE*", 1000, 0, null);
	OnSE("se戦闘_バロウズ_ボーガン構え01",1000);
	Fade("絵背景300", 700, 1000, null, false);
	Zoom("絵背景200", 700, 1000, 1000, Dxl2, false);
	Zoom("絵背景300", 700, 1000, 1000, Dxl2, true);
	Delete("絵背景200");

	Wait(500);

	SetFwC("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/041vs0020a03">
「ゲェェァァァーーハハハハハハハハハハハ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆中点屈折
	CreateTextureEX("絵背景100", 18040, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	CreateTextureEX("絵背景200", 18040, -512, 288, "cg/ef/ef038_汎用射撃.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Zoom("絵背景200", 0, 2000, 2000, null, true);

	Fade("絵背景100", 150, 1000, Axl3, false);
	Fade("絵背景200", 150, 1000, Axl3, false);
	MovieSESet(21000,"mvパラドックス矢","se特殊_mv用_パラドックス矢");
	MovieSEStart(0);



	CreateSE("SE01","se戦闘_バロウズ_ボーガン射撃01");

	OnSE("se戦闘_バロウズ_ボーガン射撃02",1000);

	Shake("絵背景100", 300, 5, 5, 0, 0, 500, null, false);
	Move("絵背景200", 500, @1024, @-576, Dxl2, false);
	FadeDelete("絵背景300", 100, false);

	Wait(400);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵背景100", 500, 1000, 1000, null, false);
	FadeDelete("絵背景200", 100, false);
	EffectZoomDXadd(18100, 1000, 300, "#FFFFFF", "cg/ef/ef025_パラドックスシューティングa.jpg", true);

	Wait(300);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/041vs0030a00">
「…………!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0,150);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　矢が、
　
　　　　　　　　　　　　――――曲がった？

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵フラッシュ", 18500, "WHITE");

	CreateTextureEX("絵背景200", 18050, Center, Middle, "cg/ef/ef025_パラドックスシューティングb.jpg");
	CreateTextureEX("絵背景300", 18050, Center, Middle, "cg/ef/ef025_パラドックスシューティングc.jpg");
	CreateTextureEX("絵背景400", 18050, Center, Middle, "cg/ef/ef025_パラドックスシューティング.jpg");
	CreateTextureEX("絵爆発", 18150, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Zoom("絵爆発", 0, 1100, 1100, null, true);

	CreateSE("SE01","se戦闘_バロウズ_ボーガン射撃02");
	CreateSE("SE02","se戦闘_バロウズ_ボーガン射撃02");
	CreateSE("SE03","se戦闘_バロウズ_ボーガン射撃02");
	CreateSE("SE04","se戦闘_破壊_鎧03");
	CreateSE("SE05","se戦闘_衝撃_鎧転倒02");


	Fade("絵フラッシュ", 0, 1000, null, true);
	Fade("絵背景200", 0, 1000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
//	EffectZoomDXadd(18100, 150, 100, "#FFFFFF", "cg/ef/ef025_パラドックスシューティングb.jpg", true);
	Wait(30);
	Fade("絵フラッシュ", 0, 0, null, true);

	Wait(100);

	Fade("絵フラッシュ", 0, 1000, null, true);
	Fade("絵背景300", 0, 1000, null, false);
	MusicStart("SE02",0,1000,0,1000,null,false);
//	EffectZoomDXadd(18100, 150, 100, "#FFFFFF", "cg/ef/ef025_パラドックスシューティングc.jpg", true);
	Wait(30);
	Fade("絵フラッシュ", 0, 0, null, true);

	Wait(100);

	Fade("絵フラッシュ", 0, 1000, null, true);
	Fade("絵背景400", 0, 1000, null, false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	FadeDelete("絵フラッシュ", 200, false);
	EffectZoomDXadd(18100, 300, 200, "#FFFFFF", "cg/ef/ef025_パラドックスシューティング.jpg", true);

//◆命中。ぞごーん

	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE05",0,1000,0,1000,null,false);

	EffectZoomDXadd(18500, 1000, 500, "#FFFFFF", "cg/ef/ef040_汎用衝突.jpg", false);

	Shake("絵爆発", 3500, 20, 20, 0, 0, 500, Dxl2, false);
	Zoom("絵爆発", 3500, 1500, 1500, Dxl2, false);
	Fade("絵爆発", 50, 1000, null, true);

	Wait(2000);

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	ClearFadeAll(2000, true);
	CP_AllDelete();

	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"mc04_042vs.nss"

