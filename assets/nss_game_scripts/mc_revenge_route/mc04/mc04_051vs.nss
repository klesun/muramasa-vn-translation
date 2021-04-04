//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_051vs.nss_MAIN
{

	
//コックピット用Ｓｅｔ
	CP_AllSet("バロウズ");

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
	#ev207_最後の術技を放つ村正_a=true;
	#ev207_最後の術技を放つ村正_b=true;
	#ev207_最後の術技を放つ村正_c=true;


	//▼ルートフラグ、選択肢、次のGameName
	#msong05=true;
	#msong02=true;

	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mc04_052.nss";

	//★ＥＤロール超速対応
	PreSetRoll(1);
	TheEND(1);
}

scene mc04_051vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_049vs.nss"

	PrintBG("上背景", 30000);

	SetVolume("@mbgm*", 1000, 0, null);



	CreateColorSP("黒幕１", 16000, "BLACK");

	Delete("上背景");



//●正解
//◆降下直進

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg001_空a_02.jpg");
//	CreateTextureSP("絵村正", 200, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	CreateTextureSP("絵背景200", 100, 0, -388, "cg/ev/resize/ev207_最後の術技を放つ村正_al.jpg");

	CreateEffect("絵効果雨", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Request("絵効果雨", AddRender);
	Move("絵効果雨", 0, 200, 144, null, true);
	Zoom("絵効果雨", 0, 5000, 5000, null, true);
	Rotate("絵効果雨", 0, @0, @0, @90, null,true);
	Fade("絵効果雨", 0, 100, null, true);

	CreateSE("SE10","se戦闘_動作_空突進05");
	MusicStart("SE10",2000,1000,0,1200,null,true);
	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進03",1000);


	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", false);
	Move("絵背景200", 500, -1024, @0, null, true);
	Move("絵背景200", 20000, -1724, @0, null, false);

	Wait(1000);
	SetVolume("SE10", 3000, 200, null);

	SoundPlay("@msong05_short",0,1000,true);

//◆村正突進

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　真っ直ぐに――
　敵影を正面へ置いて疾駆する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//	Zoom("絵村正", 500, 2000, 2000, Axl3, false);
//	FadeDelete("絵村正", 500, false);
//	EffectZoomDXadd(10000, 500, 100, "#FFFFFF", "cg/ev/ev207_最後の術技を放つ村正_a.jpg", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
　太刀はひたりと、前方へ。
　
　敵騎の矢を迎える我もまた一筋の矢と化す。

　鋭き尖鋒を備えた刺貫の一器。

　この技は大鳥獅子吼から学び取った。
　眩惑の剣――尖端で相手の視界焦点を刺し、精神と
感覚の平衡を失わしめる妖術。

　……無論、俺とてわかっている。
　あの技は至近距離の白兵戦であったからこそ効果を
上げたのだ。

　遠距離から音速で接敵しまた遠く離れる、空の武者
戦にあって、相手の<RUBY text="かまえ">戦形</RUBY>を詳細に観察できる機会など
<RUBY text="クロスレンジ">太刀打間合</RUBY>へ入るほんの一刹那しかない。
　妖剣の働く余地は無かった。

　しかしここに、常識外の要素が加われば話は変わる。
　常識外の――<k>あの眼が。

　そう。
　敵はこの遠距離で、精確にこちらの動静を掌握して
いる……。

　<RUBY text="・・・・・・・・・・・">見えてしまっているのだ</RUBY>。
　恐るべき凶瞳には、この剣が。

　ならば？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝サイド
//◆バロウズモニター。村正ロックオン中
//◆レイヤ重ねでev207a？
	OnSE("se戦闘_動作_空突進06",1000);
	Move("絵背景200", 500, -1024, -576, Axl2, false);
	Zoom("絵背景200", 500, 500, 500, Axl2, false);

	Wait(300);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵効果雨");
	Delete("絵背景200");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");

	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(100,"off",true);
	CP_EnemyFade(0,2,420,300);

	MyLife_Count(0,180);
	MyTr_Count(0,250);
	CP_PowerChange(0,205,null,true);
	CP_IHPChange(0,3,null,false);

	CreateSE("SEロックオン","se特殊_コックピット_起動音02");

	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ev/ev207_最後の術技を放つ村正_a.jpg");
	CreateTextureEX("絵背景300", 18000, Center, Middle, "cg/ev/ev207_最後の術技を放つ村正_a.jpg");
	SetBlur("絵背景300", true, 2, 300, 100, false);

	CreateTextureSP("絵村正", 1010, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Zoom("絵村正", 0, 100, 100, null, true);


	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", false);

	FadeF4("@CP_LockOff", 50, 1000, 1000, 0, 0, null, false);
	FadeF3("絵村正", 50, 1000, 1000, 0, 0, null, true);

//	Move("@CP_LockOff", 1000, 485, 180, AxlDxl, true);
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
//	Move("@CP_LockOn", 0, 485, 180, null, true);
	CP_LockOnFade(100,"on",true);

	Zoom("絵背景300", 500, 1100, 1100, Dxl2, false);
	Fade("絵背景300", 300, 1000, null, false);
	Fade("絵背景200", 300, 1000, null, true);
	FadeDelete("絵背景300", 200, false);

	Wait(500);

	SetFwC("cg/fw/fw香奈枝_警戒.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/051vs0010a03">
「…………っ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆景明サイド
	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	CP_LockOnDelete();
	Cockpit_AllFade0();

	Delete("絵村正");
	Delete("絵背景200");
	Delete("絵背景300");
	CreateTextureSP("絵背景100", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵演村正", 1010, Center, Middle, "cg/st/3d村正標準_騎航_通常3b.png");
	CreateTextureSP("絵演バロウズ", 1010, Center, Middle, "cg/st/3dバロウズ_騎航_陰義.png");
	Rotate("絵演バロウズ", 0, @0, @180, @0, null,true);
	Zoom("絵演バロウズ", 0, 50, 50, null, true);

	SetBlur("絵演村正", true, 1, 300, 100, false);
	SetBlur("絵演バロウズ", true, 1, 300, 100, false);



	Move("絵演村正", 0, @-400, @60, null, true);
	Move("絵演バロウズ", 0, @200, @-60, null, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@100,@-50,null,true);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

$ループムーブナット名 = "@絵演バロウズ";
$ループムーブタイム = 30000;
//$ループムーブテンポ = "null";
//$ループムーブ待ち = "true";

$ループムーブナット名２ = "@絵演村正";
$ループムーブタイム２ = 10000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");


	Request("プロセス１", Start);

	Move("絵背景100", 30000, @0, @200, null, false);

//	FadeF3("絵演バロウズ", 0, 1000, 101000, 0, 0, null, false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_0", false);
	Move("絵演村正*", 1000, @20, @-60, Dxl2, true);

//	FlyMoving("絵演バロウズ", 10000);
//	FlyMoving("絵演村正", 10000);
//	FadeF4("絵演村正*", 0, 1000, 100000, 0, 0, null, false);

	Request("プロセス２", Start);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　眩惑効果は一瞬も二瞬も<RUBY text="も">保</RUBY>たないだろう。
　しかし今、それは永遠と等しい。

　敵は感覚の回復を待たずに撃つ。
　待っていては俺に接敵され、先制の機を失う以上、
そうする以外に無いのだ。

　眩惑されながら、如何にして狙点を定めるか？
　
　……方法は唯一つだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆香奈枝サイド
//◆切先最先端に照準合わせて
//◆射撃
	CreateColorSP("黒幕１", 18500, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	SetVolume("SE10", 3000, 0, null);
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");

	CloudZoomVertex(0,0,0,null,true);

	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();

	CP_EnemyFade(0,3,200,250);

	CP_AltChangeA();
	CP_HighChange(0,453,null,false);
	CP_SpeedChange(0,440,null,false);
	CP_AziChange(0,-189,nul,false);

	MyLife_Count(0,189);
	MyTr_Count(0,160);
	CP_PowerChange(0,205,null,false);
	CP_IHPChange(0,3,null,false);

	Request("プロセス１", Stop);
	Request("プロセス２", Stop);
//	Delete("プロセス１");
//	Delete("プロセス２");
	Delete("絵演*");


	CreateSE("SE01","se戦闘_バロウズ_ボーガン射撃02");

	CreateColorEXadd("絵色100", 18500, "WHITE");

	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("絵村正", 18010, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	CreateTextureSP("絵村正下", 10010, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ev/ev207_最後の術技を放つ村正_b.jpg");
	Zoom("絵村正*", 0, 50, 50, null, true);
	SetBlur("絵村正*", true, 1, 300, 100, false);


	Zoom("絵村正*", 1100, 100, 100, null, false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", false);


	Wait(1000);

	Fade("絵背景100", 300, 1000, Axl2, false);
	FadeF4("絵村正下", 0, 1000, 500, 0, 0, Axl3, false);
	FadeF4("絵村正", 300, 1000, 500, 0, 0, Axl3, false);
	Zoom("絵村正*", 500, 500, 500, Axl2, false);


//	ClearFadeAll(100, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色100", 500, 1000, Axl3, true);
	CloudZoomDelete(0,true);

//◆景明サイド
	Delete("絵背景100");
	Delete("絵村正*");
	Fade("絵背景200", 0, 1000, null, true);
	FadeDelete("絵色100", 2000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　そう。
　剣先しか見えないなら、<RUBY text="・・・・・・・・・・">その剣先を狙って撃つ</RUBY>。

　そこに<RUBY text="おれ">対手</RUBY>はいるのだから、それで良い。
　正確に狙われた俺は、無謀にもそれを切り払おうと
するのでなければ、回避しなくてはならない。

　前者は考慮から外して良いだろう。
　俺が回避動作をとったなら――俺の剣先の呪縛から
解き放たれたなら。敵騎はあの陰義の威力を遺憾なく
発揮する事ができる。

　射撃は屈曲し、有り得ない角度から俺を射抜く。
　それで<RUBY text="ジ・エンド">結末</RUBY>だ。

　だから敵の決断は正しい。
　全く間違っていない。<k>
　
　間違いは、その前の段階において存在した。

　敵は俺に作戦を考える一秒間など与えず、さっさと
撃っておくべきだったのだ。
　照準など適当でいい。どうせ陰義で修正が利くのだ
から。発射時点の照準が外れていても問題はなかった。

　しかし、射手のプライドがそんな雑な射撃を許さな
かったのか……。
　敵は照準を合わせるため、僅かな時間を費やした。

　誤りは其処。
　ただ一つの失敗が、弓騎士を殺す。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆疾る矢
//◆村正直進
	CreateTextureEX("絵背景EF", 18000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");

	OnSE("se戦闘_バロウズ_ボーガン射撃01",1000);

	Fade("絵背景EF", 100, 1000, null, false);
	EffectZoomDXadd(18050, 1000, 100, "#FFFFFF", "cg/ef/ef038_汎用射撃.jpg", true);

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/051vs0020a03">
「――――あ――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　回避、しない。
　切り払いもしない。

　迫り来る矢に対して、一切の<RUBY text="リアクション">反応</RUBY>を起こさない。

　何故なら俺は信じている。
　魔弾の射手を信じている。

　絶対に外さない、と。
　太刀の尖端の一点さえ。

　避ける必要も防ぐ必要もない。
　真っ直ぐに進み続けるだけでいい。

　敵は必ず、俺の剣に当ててくれる！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆矢と剣先。正面衝突。
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ev/ev207_最後の術技を放つ村正_c.jpg");
	Zoom("絵背景200", 0, 1200, 1200, null, true);
	CreateTextureEXadd("絵スパーク", 18500, Center, Middle, "cg/ef/ef044_火花c.png");

	CreateColorEXadd("絵色100", 18500, "WHITE");

	CreateSE("SE01","se特殊_電撃_放電02");
	CreateSE("SE02","se戦闘_動作_空突進04");

	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake("絵背景200", 500, 10, 15, 0, 0, 1000, Dxl2, false);
	Fade("絵背景200", 200, 1000, null, false);
	Zoom("絵背景200", 300, 1000, 1000, Dxl2, true);

	Wait(500);

	EffectZoomadd(18050, 2000, 100, "cg/ev/ev207_最後の術技を放つ村正_c.jpg", false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵スパーク", 150, 1000, null, false);
	Rotate("絵スパーク", 2000, @0, @0, 60000, null,false);
	Zoom("絵スパーク", 2000, 2000, 2000, null, false);


	Wait(500);

//◆なんかグワキャーと炸裂。ホワイトアウト
	Fade("絵色100", 1500, 1000, Axl3, true);
	Delete("絵スパーク");
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　太刀が<RUBY text="ねじ">拗</RUBY>けて、折れて、砕けた。
　右腕までも吹き飛んだ。

　しかしまだ命は残っている。
　削り<RUBY text="かす">滓</RUBY>ほどだが、動く力が残されている。

　足りる。
　その一滴の力に全て託そう。

　進むのだ。
　あと一歩。その先のあと一歩を。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトを突き抜けるような感じで戦闘画面戻り
//◆直進
//◆バロウズ。抜剣
	CreateTextureSP("絵背景200", 18000, Center, Middle, "cg/ev/ev949_バロウズ構え.jpg");
	Zoom("絵背景200", 0, 1200, 1200, null, true);
	SetBlur("絵背景200", true, 3, 300, 50, false);

	OnSE("se戦闘_動作_空突進08",1000);

	DrawDelete("絵色100", 300, 500, "circle_01_00_1", false);
	Zoom("絵背景200", 1200, 1000, 1000, Dxl1, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　左手で脇差を抜く。
　最後の武器。

　敵もまた剣を抜いていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆激突
	SetVolume("@msong*", 1000, 0, null);
	CreateColorEXadd("絵色100", 18500, "WHITE");
	CreateSE("SE01","se戦闘_破壊_鎧01");
	CreateSE("SE04","se戦闘_破壊_鎧04");
	CreateSE("SE05","se戦闘_攻撃_鎧_剣戟05_L");

	Fade("絵色100", 2000, 1000, Axl3, false);
	Zoom("絵背景200", 2000, 2000, 2000, Axl3, true);
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE05",0,1000,0,1000,null,false);

	Wait(1500);
	SetVolume("SE05", 1000, 0, null);
	Wait(1500);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1500);
	Delete("絵背景200");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　斬ったのか。
　斬られたのか。

　……それはもう、わからなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆終了
	SetVolume("SE*", 6000, 0, null);
	ClearFadeAll(6000, true);
	CP_AllDelete();

	SoundPlay("@msong02_full",0,1000,true);
	Wait(4000);

}

..//ジャンプ指定
//次ファイル　"mc04_052.nss"
