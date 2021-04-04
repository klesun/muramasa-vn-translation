//<continuation number="470">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_033vs.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_034vs.nss";

}

scene md01_033vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"md01_032.nss"



//◆村正ＶＳ銀星号・決着（嘘）
//◆要は一条編の決着シーンを再現。
//◆銀星号の失墜彗星に対して村正の全身レールガン
//◆ずどーん。
//◆すげーエネルギーの渦

	PrintBG("上背景", 30000);
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
	CreateColorSP("絵暗転", 15000, "#000000");
	Delete("上背景");
	FadeDelete("絵白転", 2000, true);


	Wait(1000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/033vs0010a01">
《やっ――――た!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0020a00">
「…………！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がきーん。再装甲
//◆村正
	OnSE("se特殊_鎧_装着04",1000);
	CreateSE("SE停滞", "se戦闘_動作_空走行02_L");
	CreateSE("SE余波", "se特殊_電撃_帯電01");

	CloudZoomSet(2500);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 1100, 1100, null, true);

	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@0,@0,null,true);

$ループムーブナット名２ = "@絵背景100";
$ループムーブタイム２ = 5000;

	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス２","プロセス２");
	Request("プロセス２", Start);
	Shake("絵背景100", 1000000, 1, 5, 0, 0, 500, null, false);

	MusicStart("SE停滞", 3000, 700, 0, 1000, null,true);
	MusicStart("SE余波", 3000, 400, 0, 1000, null,true);
	FadeDelete("絵暗転", 1500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　手応えはあった。

　銀星号の必勝手、<RUBY text="フォーリンダウン・レイディバグ">垂直降下からの蹴撃</RUBY>――
　これに肉体を射出する<RUBY text="レールガン">電磁抜刀</RUBY>で応じ、遂に<RUBY text="まさ">勝</RUBY>った。

　薄紙一枚の差。
　だが確かに、俺が一撃を打ち込んだ。

　これまで一度たりと届かなかった銀影に。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆乱流が収まってゆく
	Shake("絵背景100", 5000, 1, 5, 0, 0, 500, Dxl1, false);
	SetVolume("SE余波", 5000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　重力波の余震が散り、空に平穏が戻ってくる。
　見渡す範囲に敵影は無い。

　銀星号の姿は何処にも無い。

　…………終わった、
　
　
　のか。

　俺は、とうとう、<k>
　
　やった、

　やって、<k>しまったのか？

　やっては、<k>ならない、<k>ことを――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	CreateColorEX("絵色100", 15000, "BLACK");
	SetVolume("SE停滞", 1000, 1, null);
	Fade("絵色100", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　
　　　　　　光を頼むよ、景明。
　　　　　　あの、約束……忘れないで。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE停滞", 3000, 500, null);
	FadeDelete("絵色100", 1000, true);

//◆イン
	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0030a00">
「……っ……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/033vs0040a01">
《御堂、上ぇっ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずどがーん。
//◆吹っ飛び
	Delete("プロセス２");
	SetVolume("SE停滞", 3000, 0, null);

	CreateTextureEX("絵背景100", 100, Center, -50, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	CreateTextureEX("絵背景200", 10000, Center, Middle, "cg/ef/ef045_スパーク.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);
	CreateTextureEX("絵背景村正", 100, Center, -250, "cg/st/3d村正標準_騎航_通常4a.png");
	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 500, 500, null, true);
	Rotate("絵背景村正", 0, @0, @0, @180, null,true);
	SetBlur("絵背景村正", true, 1, 500, 100, false);


	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);

	Zoom("絵背景200", 500, 1500, 1500, Dxl2, false);
	Fade("絵背景200", 200, 1000, null, false);
	EffectZoomadd(15000, 500, 500, "cg/ef/ef045_スパーク.jpg", false);
	Wait(300);

	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 10000000, 1, 1, 0, 0, 1000, Dxl1, false);
	Move("絵背景100", 2000, @0, -1200, Dxl1, false);
	Rotate("絵背景村正", 2000, @0, @0, @10, null,false);
	Shake("絵背景村正", 10000000, 1, 1, 0, 0, 1000, Dxl1, false);
	Move("絵背景村正", 2000, @0, -200, Dxl1, false);
	Fade("絵背景村正", 0, 1000, null, true);
	FadeDelete("絵背景200", 500, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　――――――な、<k>
　
　何？

　攻撃？<k>
　何処から？<k>
　
　……誰が？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＢＧＭ？
//◆銀星号再臨

	CreateTextureEX("絵背景500", 3000, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	Request("絵背景500", Smoothing);
	Zoom("絵背景500", 0, 1100, 1100, null, true);

	CreateTextureEX("絵背景銀", 3000, Center, Middle, "cg/st/resize/3d銀星号_立ち_通常l.png");
	Move("絵背景銀", 0, @100, @0, null, true);

	Fade("絵背景500", 1000, 1000, null, true);


	Move("絵背景銀", 3000, @0, @200, null, false);
	Fade("絵背景銀", 1000, 1000, null, true);
	Delete("絵背景村正");
	Delete("絵背景100");
	CloudZoomDelete(500,false);

	SoundPlay("@mbgm02",0,1000,true);

	Wait(2500);

	SetFwC("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【光】
<voice name="光" class="光" src="voice/md01/033vs0050a14">
「見事」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/033vs0060a14">
「見事……！
　魅せてくれたな、景明!!」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md01/033vs0070a14">
「おまえがここまで達しているとは、よもや
思わなかった……。
　おれの非礼な見識を詫びる！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("絵背景銀", 1000, @0, @350, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　健在。
　健在、だ。

　死力の剣だった。渾身の<RUBY text="わざ">術技</RUBY>だった。
　
　それでも――ここまで。全く、

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



	Move("絵背景銀", 500, @-100, @0, Axl1, false);
	FadeDelete("絵背景銀", 500, true);

	CreateTextureEX("絵背景銀", 3000, -670, Middle, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Request("絵背景銀", Smoothing);
	Zoom("絵背景銀", 0, 150, 150, null, true);
	Move("絵背景銀", 0, @100, @0, null, true);
	SetBlur("絵背景銀", true, 1, 500, 100, false);
	CreateTextureEX("絵背景村正", 3001, 50, -250, "cg/st/3d村正標準_騎航_通常4a.png");
	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 800, 800, null, true);
//	SetBlur("絵背景村正", true, 1, 500, 100, false);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(500,@-400,@0,null,false);

	CreateSE("SE停滞", "se戦闘_動作_空走行02_L");

$ループムーブナット名 = "@絵背景村正";
$ループムーブタイム = 25000;

$ループムーブナット名２ = "@絵背景銀";
$ループムーブタイム２ = 15000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");

	Request("プロセス１", Start);
	Request("プロセス２", Start);

	MusicStart("SE停滞",2000,500,0,1000,null,true);

	Fade("絵背景銀", 1000, 1000, null, false);
	Fade("絵背景村正", 1000, 1000, null, true);


	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0080a00">
「無駄、なのか!?」

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/033vs0090a14">
「何を云う。
　無駄どころか、<RUBY text="・・">快い</RUBY>一撃であった」

//【光】
<voice name="光" class="光" src="voice/md01/033vs0100a14">
「見よ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　銀星号が己の胸を指す。
　甲鉄の表面に、一筋だけ――浅い亀裂が生じていた。

　……馬鹿な。
　あの手応えで、たかだかこの程度の損傷!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【光】
<voice name="光" class="光" src="voice/md01/033vs0110a14">
「初めてだ……！
　光の<RUBY text="たて">辰気障壁</RUBY>が破られ、<RUBY text="はだ">甲鉄</RUBY>に傷を負わさ
れたのは！」

{	FwR("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md01/033vs0120a14">
「この感覚――」

{	FwR("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md01/033vs0130a14">
「疼く！
　<RUBY text="ざわ">騒</RUBY>めく！
　震えが走る！」

{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md01/033vs0140a14">
「あぁ……これが<RUBY text="きず">創痕</RUBY>か！
　これが戦いか」

{	FwR("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md01/033vs0150a14">
「これが交わりというものかッ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　喜悦を叫ぶ銀星号。
　小さな傷に……有るか無きかの裂傷に、慈しむ仕草
で手を押し当てて。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/033vs0160a01">
《た、た、<RUBY text="たて">辰気障壁</RUBY>って……
　そんなの張ったまま戦ってたって言うの!?
これまでずっと！》

{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0170a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　村正の悲鳴は、俺の心境を丸々代弁していた。

　光の言う<RUBY text="たて">辰気障壁</RUBY>とは、<RUBY text="おれたち">村正</RUBY>の用いる磁気障壁――
負極の磁装と同等のものだろう。
　それが使えること自体は、何ら驚くに値しない。

　しかし。
　常に障壁を張り巡らせながら戦っていた、となると
――

　村正の磁気障壁は多大な熱量を必要とする。
　従って障壁の展開中は、騎航その他の機能に割ける
余力が極めて少なくなる。

　ために通常、磁気障壁は敵騎の攻撃を浴びる一瞬を
見切ってその間のみ展開することになる。

　もしもこれを常時張れば、敵手がどう不意を打って
きても対応できる代わり、騎体性能が激減する。
　総じて戦闘能力は低下する――どころではなく騎航
すらまともに行えなくなるだろう。

　<RUBY text="・・・">つまり</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0180a00">
「銀星号はこれまで……
　性能をろくろく発揮していなかったという
ことか……？」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/033vs0190a01">
《冗談きっつい》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　<RUBY text="とぼ">惚</RUBY>けたような<RUBY text="こえ">金打声</RUBY>の中に、決壊寸前の絶望を感じ
取ったのは、俺の感性の錯覚ではないだろう。

　悪夢だ。
　悪夢にも程がある……!!

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【光】
<voice name="光" class="光" src="voice/md01/033vs0200a14">
「ようやくここまで来てくれたな景明。
　光の立つ処へ！」

//【光】
<voice name="光" class="光" src="voice/md01/033vs0210a14">
「おまえ相手に、<RUBY text="こんなもの">辰気障壁</RUBY>はもはや無粋。
　これよりは素肌にて迎えよう！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ジキャー。フィールド解除っぽく
//◆※銀星号（従前）と銀星号（解除後）とで色合いを
//◆少し変える？　輝きとか。後者の方が強く見えるように
	CreateTextureEXadd("絵背景銀強", 3000, -670, Middle, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Request("絵背景銀強", Smoothing);
	Zoom("絵背景銀強", 0, 150, 150, null, true);
	Move("絵背景銀強", 0, @100, @0, null, true);

	OnSE("se特殊_エネルギー放棄",1000);
	Fade("絵背景銀強", 0, 1000, null, true);
	Zoom("絵背景銀強", 2000, 200, 200, Dxl2, false);
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef003_汎用移動.jpg", true);

	FadeDelete("絵背景銀強", 2000, false);
	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　辰気の壁を――解いた!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/md01/033vs0220a14">
「正真正銘の<RUBY text="ムラマサ・ヒカル">銀星号</RUBY>！
　つまらん出し惜しみはもう無しだ！」

//【光】
<voice name="光" class="光" src="voice/md01/033vs0230a14">
「味わえ！
　楽しめ！
　ゆくぞ、景明!!」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0240a00">
「く――ッ!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景銀近", 3000, Center, Middle, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Zoom("絵背景銀近", 0, 500, 500, null, true);
	Move("絵背景銀近", 0, @0, @-90, null, true);
	CreateColorEX("絵色100", 15000, "WHITE");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　……心を折るな！
　戦う前に負けるなど、武人の端くれにも有るまじき
恥。

　銀星号は防壁を捨てた！
　いま一撃を加えれば、今度こそ墜とせる！

　一度やり遂げた事だ。
　もう一度やれない道理はない
</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	SetVolume("SE*", 100, 0, null);

//◆↑改頁クリック待たず
//◆攻撃食らってずがーん。ぶっとび

	OnSE("se戦闘_動作_空突進01",1000);
	Fade("絵背景銀", 0, 0, null, true);

	Fade("絵背景銀近", 50, 1000, null, false);
	Shake("絵背景銀近", 250, 10, 2, 0, 0, 1000, Dxl2, false);
	Fade("絵色100", 200, 1000, Axl2, true);

	OnSE("se戦闘_破壊_鎧03",1000);
	CreateSE("SE停滞", "se戦闘_動作_空走行02_L");
	Wait(100);
	Delete("プロセス*");
	Delete("絵背景*");

	CreateTextureEX("絵背景スクロール１", 3100, 0, @0, "cg/bg/bg204_横旋回背景_01.jpg");
	CreateTextureEX("絵背景スクロール２", 3100, 0, @0, "cg/bg/bg204_横旋回背景c_01.jpg");

	CreateTextureSP("絵背景村正", 3101, -150, -250, "cg/st/3d村正標準_騎航_通常4a.png");
	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 800, 800, null, true);
	Rotate("絵背景村正", 0, @0, @0, @180, null,true);
	SetBlur("絵背景村正", true, 1, 500, 100, false);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@1000,@0,null,false);

	CreateSCR1("@絵背景スクロール１","@絵背景スクロール２",300,-4000,@0);
	Shake("絵背景村正", 10000000, 1, 2, 0, 0, 1000, null, false);
	Move("絵背景村正", 10000, @100, @0, Dxl1, false);


	MusicStart("SE停滞",2000,1000,0,1300,null,true);
	FadeDelete("絵色100", 1000, true);

	Wait(1000);

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0250a00">
「…………」

{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0260a00">
「――あ――？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 15000, "WHITE");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　<RUBY text="・・・・・">飛んでいる</RUBY>。

　まるで吹き飛ばされたかのように、宙を泳いでいる。

　……何故だ？

　俺は攻撃など――<k>受けては――
</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆↑改頁クリック待たず
//◆またずがーん
	SetVolume("SE停滞", 100, 1, null);

	OnSE("se戦闘_動作_空突進01",1000);
	Fade("絵色100", 100, 1000, Axl2, true);

	OnSE("se戦闘_攻撃_鎧攻撃命中03",1000);

	Wait(100);
	Delete("プロセス*");
	Delete("絵背景*");
	SCR1stop();

	CreateTextureSP("絵背景スクロール１", 3100, -4000, @0, "cg/bg/bg204_横旋回背景_01.jpg");
	CreateTextureSP("絵背景スクロール２", 3100, -4000, @0, "cg/bg/bg204_横旋回背景c_01.jpg");

	CreateTextureSP("絵背景村正", 3101, -150, -250, "cg/st/3d村正標準_騎航_通常2.png");
	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 800, 800, null, true);
	Rotate("絵背景村正", 0, @0, @0, @180, null,true);
	SetBlur("絵背景村正", true, 1, 500, 100, false);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-2000,@0,null,false);

	CreateSCR1("@絵背景スクロール１","@絵背景スクロール２",300,0,@0);
	Shake("絵背景村正", 10000000, 1, 2, 0, 0, 1000, null, false);
	Move("絵背景村正", 10000, @-100, @0, Dxl1, false);


	SetVolume("SE停滞", 2000, 1000, null);
	FadeDelete("絵色100", 1000, true);

	Wait(1000);

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0270a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 15000, "WHITE");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　何だ、これは。

　何が起きている？

　何故、俺は跳ね飛ばされている？

　何
</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆↑クリック待たず
//◆またずがーん
	SetVolume("SE停滞", 100, 1, null);
	OnSE("se戦闘_動作_空突進01",1000);
	Fade("絵色100", 100, 1000, Axl2, true);

	OnSE("se戦闘_攻撃_鎧攻撃命中02",1000);

	Wait(100);
	Delete("プロセス*");
	Delete("絵背景*");
	SCR1stop();

	CreateTextureSP("絵背景スクロール１", 3100, Center, -4000, "cg/bg/resize/bg204_横旋回背景_01tl.jpg");
	CreateTextureSP("絵背景スクロール２", 3100, Center, -4000, "cg/bg/resize/bg204_横旋回背景_01tl.jpg");
	Rotate("絵背景スクロール２", 0, @0, @180, @0, null,true);


	CreateTextureSP("絵背景村正", 3101, -150, -250, "cg/st/3d村正標準_騎航_通常4a.png");
	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 800, 800, null, true);
	Rotate("絵背景村正", 0, @0, @0, @110, null,true);
	SetBlur("絵背景村正", true, 1, 500, 100, false);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@0,@-1000,null,false);

	CreateSCR1("@絵背景スクロール１","@絵背景スクロール２",300,@0,0);
	Shake("絵背景村正", 10000000, 1, 2, 0, 0, 1000, null, false);
	Move("絵背景村正", 10000, @0, @-100, Dxl1, false);


	SetVolume("SE停滞", 2000, 1000, null);
	FadeDelete("絵色100", 1000, true);

	Wait(1000);

	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0280a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　何だというのだ。

　何だ――――これは？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/033vs0290a01">
《こ……こんな。
　こんなの》

{	FwR("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0300a00">
「村正……」

//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0310a00">
「俺達は、攻撃されている……のか？」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/033vs0320a01">
《…………》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　何処だ。

　銀星号は、何処に、

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE停滞", 2000, 1, null);

//◆銀星号・空中静止
	CreateTextureEX("絵背景1000", 4000, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	CreateTextureEX("絵背景銀近", 4000, Center, Middle, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Request("絵背景銀近", Smoothing);
	SetBlur("絵背景銀近", true, 2, 500, 100, false);

	Fade("絵背景1000", 1000, 1000, null, true);

	Wait(1000);
	Move("絵背景銀近", 1000, @0, @-100, Dxl2, false);
	Zoom("絵背景銀近", 1000, 500, 500, Dxl2, false);
	Fade("絵背景銀近", 1000, 1000, null, true);
	Wait(500);

	Delete("絵背景村正");
	SCR1stop();

	SoundPlay("@mbgm01",0,1000,true);


	CloudZoomDelete(0,true);


	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0330a00">
「――――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　銀星号は居た。<k>
　
　<RUBY text="・・・・・・">静止して居た</RUBY>。

　……飛行体は、移動し続けなければ落下する。
　そんな掟が、空の世界にはあった筈である。

　この掟を越えられるのは一部の昆虫と鳥類、そして
高度な性能を備えた飛行艦のみ。
　それらにしても多大な<RUBY text="コスト">労力</RUBY>を支払い、ごく短時間に
限って可能とするのだ。

　こんな――事も無げに。
　そこにガラス張りの床があるのだと言わんばかりに。
　
　悠然と<RUBY text="・・">立つ</RUBY>、など。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【光】
<voice name="光" class="光" src="voice/md01/033vs0340a14">
「ふ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　俺の凝視を感じ取ってか、銀色の不条理が微笑の波
を向けてくる。
　と思うと。

　伸びやかに片腕を差し上げ――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆空中舞踏
//◆戦闘ＳＴ利用しつつ動かしたりしてそれっぽく。
	CreateTextureSP("絵背景スクロール１", 3100, 0, @0, "cg/bg/bg204_横旋回背景_01.jpg");
	CreateTextureSP("絵背景スクロール２", 3100, 0, @0, "cg/bg/bg204_横旋回背景c_01.jpg");

	CreateTextureSP("絵背景銀1", 3101, -1050, -250, "cg/st/3d銀星号_騎航_通常2.png");
	Request("絵背景銀1", Smoothing);
	Zoom("絵背景銀1", 0, 1500, 1500, null, true);
	SetBlur("絵背景銀1", true, 1, 500, 100, false);

	CreateTextureEX("絵背景銀2", 3101, -1300, -400, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Request("絵背景銀2", Smoothing);
	Zoom("絵背景銀2", 0, 800, 800, null, true);
	SetBlur("絵背景銀2", true, 1, 500, 100, false);

	CreateTextureEX("絵背景銀3", 3101, -1150, -250, "cg/st/3d銀星号_立ち_戦闘b3.png");
	Request("絵背景銀3", Smoothing);
//	Zoom("絵背景銀3", 0, 500, 500, null, true);
	SetBlur("絵背景銀3", true, 1, 500, 100, false);

	CreateTextureEX("絵背景銀4", 3101, -1250, -400, "cg/st/3d銀星号_立ち_戦闘b.png");
	Request("絵背景銀4", Smoothing);
	Zoom("絵背景銀4", 0, 800, 800, null, true);
	SetBlur("絵背景銀4", true, 1, 500, 100, false);

	CreateTextureEX("絵背景銀5", 3101, -850, -100, "cg/st/3d銀星号_騎航_通常.png");
	Request("絵背景銀5", Smoothing);
	Zoom("絵背景銀5", 0, 900, 900, null, true);
	SetBlur("絵背景銀5", true, 1, 500, 100, false);

	OnSE("se戦闘_動作_空突進08",1000);

	CreateSCR1("@絵背景スクロール１","@絵背景スクロール２",20000,-1000,@0);
	Move("絵背景銀", 10000, @100, @0, Dxl1, false);

	Move("絵背景銀近", 500, @100, @0, Axl1, false);
	FadeDelete("絵背景1000", 500, false);
	FadeDelete("絵背景銀近", 500, true);

	Zoom("絵背景銀1", 3000, 800, 800, Dxl1, false);
	Move("絵背景銀*", 1000, @800, @50, Dxl2, true);

	Fade("絵背景銀1", 500, 0, null, false);
	Fade("絵背景銀2", 500, 1000, null, false);
	Move("絵背景銀*", 500, @150, @-50, AxlDxl, true);

	Fade("絵背景銀2", 500, 0, null, false);
	Fade("絵背景銀3", 500, 1000, null, false);
	Move("絵背景銀*", 600, @150, @-20, AxlDxl, true);

	Fade("絵背景銀3", 500, 0, null, false);
	Fade("絵背景銀4", 500, 1000, null, false);
	Move("絵背景銀*", 400, @150, @50, AxlDxl, true);

	Fade("絵背景銀4", 500, 0, null, false);
	Fade("絵背景銀5", 500, 1000, null, false);
	Move("絵背景銀*", 1000, @650, @-50, Axl2, false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　<RUBY text="バレエ">舞踏劇</RUBY>『くるみ割り人形』
　第二幕『チョコレートの精』
　
　……帝劇舞踏団、興隆三三年北陸公演版。

　不世出の傑作と斯界に名高いその一場面を。
　<RUBY text="オリジナル">本物</RUBY>と見紛う躍動感で、鮮麗に踊って見せた。

　虚空の舞台を踏みしめて。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0350a00">
「……は……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　ここが<RUBY text="おかしのくに">夢の中</RUBY>だというのなら、さっさと現実へ戻し
てもらいたかった。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景1000", 4000, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	CreateTextureEX("絵背景銀近", 4000, Center, Middle, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Zoom("絵背景銀近", 0, 500, 500, null, true);
	Move("絵背景銀近", 0, @-100, @-100, null, true);
	Request("絵背景銀近", Smoothing);
	SetBlur("絵背景銀近", true, 2, 500, 100, false);

	Fade("絵背景1000", 500, 1000, null, true);

	OnSE("se戦闘_動作_空突進07",1000);
	Move("絵背景銀近", 1000, @100, @0, Dxl2, false);
	Fade("絵背景銀近", 1000, 1000, null, true);

	SetFwR("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【光】
<voice name="光" class="光" src="voice/md01/033vs0360a14">
「これぞ真の<RUBY text="グラビトンコントロール">引辰制御</RUBY>」

//【光】
<voice name="光" class="光" src="voice/md01/033vs0370a14">
「真の<RUBY text="・・">飛行</RUBY>というものだ。
　騎航とは少々、わけが違うぞ」

{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0380a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　武者の騎航は、欧州言語圏において一般にネイルと
呼称される。
　その語源はラテン語の〝<RUBY text="ナーレ">泳ぐ</RUBY>〟だ。

　……確かに、銀星号のそれはもはや<RUBY text="ネイル">騎航</RUBY>と呼ぶには
相応しくないだろう。
　少々どころではなく。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【光】
<voice name="光" class="光" src="voice/md01/033vs0390a14">
「この舞の相手ができるか――景明！」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色100", 15000, "WHITE");

	CreateTextureEX("絵背景銀近２", 4000, Center, Middle, "cg/st/3d銀星号_騎突_通常.png");
	Zoom("絵背景銀近２", 0, 500, 500, null, true);
	Move("絵背景銀近２", 0, @0, @0, null, true);
	Request("絵背景銀近２", Smoothing);
	SetBlur("絵背景銀近２", true, 1, 500, 10, false);

//◆ずがーん
	OnSE("se戦闘_動作_空突進02",1000);
	FadeDelete("絵背景銀近", 100, false);
	Fade("絵背景銀近２", 50, 1000, null, false);
	Fade("絵色100", 100, 1000, Axl3, false);
	Zoom("絵背景銀近２", 100, 2000, 2000, Axl2, true);

	OnSE("se戦闘_攻撃_鎧攻撃命中03",1000);

	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　何も見えない。

　何も理解できない。

　……そんな話があるか。

　かつても、銀星号の攻撃速度は俺にとってまさしく
圧倒的であった。
　しかし、反応はできなくとも、攻撃の瞬間に<RUBY text="・・">それ</RUBY>と
察するくらいの事は可能だったのだ。

　攻撃された事を、理解はできた。
　
　……それが今はできない。

　いつ、何処から、どう打たれたのか。
　<RUBY text="・・">後で</RUBY>振り返ってみても全くわからないのだ。

　――――――――そんな事がッッ!!

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆ずがーん
	CreateTextureEX("絵背景100", 10000, Center, -50, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	CreateTextureEX("絵背景200", 11000, Center, Middle, "cg/ef/ef045_スパーク.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);
	CreateTextureEX("絵背景村正", 10000, Center, -250, "cg/st/3d村正標準_騎航_通常2.png");
	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 1000, 1000, null, true);
	Rotate("絵背景村正", 0, @0, @0, @180, null,true);
	SetBlur("絵背景村正", true, 1, 500, 100, false);


	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);

	Zoom("絵背景200", 500, 1500, 1500, Dxl2, false);
	Fade("絵背景200", 200, 1000, null, false);
	EffectZoomadd(15000, 500, 500, "cg/ef/ef045_スパーク.jpg", false);
	Wait(300);

	Fade("絵背景100", 0, 1000, null, true);
	Delete("絵色100");
	Shake("絵背景100", 10000000, 1, 1, 0, 0, 1000, Dxl1, false);
	Move("絵背景100", 2000, @0, -1200, Dxl1, false);
	Rotate("絵背景村正", 2000, @0, @0, @10, null,false);
	Zoom("絵背景村正", 2000, 500, 500, Dxl1, false);
	Shake("絵背景村正", 10000000, 1, 1, 0, 0, 1000, Dxl1, false);
	Move("絵背景村正", 2000, @0, -200, Dxl1, false);
	Fade("絵背景村正", 0, 1000, null, true);
	FadeDelete("絵背景200", 500, true);

	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0400a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　――同じ場所に立った。
　光は先刻、そんな事を俺に言ったと思う。

　大嘘だ。

　全く、同じ所になどいない。

　<RUBY text="・・・・・">世界が違う</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆ずがーん
	CreateTextureEX("絵背景銀近", 10000, Center, Middle, "cg/st/3d銀星号_騎航_通常3.png");
	Zoom("絵背景銀近", 0, 800, 800, null, true);
	Move("絵背景銀近", 0, @-150, @0, null, true);
	CreateColorEX("絵色100", 15000, "WHITE");

	OnSE("se戦闘_動作_空突進01",1000);
	Fade("絵背景銀", 0, 0, null, true);

	Fade("絵背景銀近", 50, 1000, null, false);
	Shake("絵背景銀近", 250, 10, 2, 0, 0, 1000, Dxl2, false);
	Fade("絵色100", 200, 1000, Axl2, true);

	Delete("絵背景*");

	CreateTextureSP("絵背景100", 3001, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	CreateTextureSP("絵背景エフェクト", 13000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");

	CreateTextureSP("絵背景村正", 3003, -150, -250, "cg/st/3d村正標準_騎航_通常4a.png");
	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 1800, 1800, null, true);
	Rotate("絵背景村正", 0, @0, @0, @100, null,true);

	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス２", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス２","プロセス２");


	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(500,@0,@0,null,false);


$ループムーブナット名 = "@絵背景村正";
$ループムーブタイム = 25000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");

	Request("プロセス１", Start);
	Request("プロセス２", Start);

	OnSE("se戦闘_攻撃_鎧攻撃命中02",1000);


	EffectZoomadd(15000, 600, 100, "cg/ef/ef040_汎用衝突.jpg", false);
	Zoom("絵背景エフェクト", 600, 1200, 1200, Dxl1, false);
	FadeDelete("絵色100", 100, true);
	Wait(200);

	Shake("絵背景村正", 10000000, 0, 1, 0, 0, 1000, null, false);
	Rotate("絵背景村正", 1000, @0, @0, @80, Dxl2,false);
	Zoom("絵背景村正", 1000, 500, 500, Dxl2, false);
	FadeDelete("絵背景エフェクト", 1000, true);


	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0410a00">
「ぐ……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　見えない。
　<RUBY text="め">視覚</RUBY>は何の役にも立たない。

　残像すら網膜に映らない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0420a00">
（目に……頼るな）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　役に立たぬなら、切り捨てるべきだ。
　邪魔になる。

　他の感覚を。

　聴覚？

　いや。

　嗅覚？

　いや。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0430a00">
（<RUBY text="・">感</RUBY>ではない。
　<RUBY text="・">勘</RUBY>でもない）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　<RUBY text="カン">観</RUBY>。

　感覚を越えたところに有るという認識。
　光を見て知る、音を聴いて知る――のように婉曲な
<RUBY text="プロセス">過程</RUBY>を置かず、<RUBY text="・・・・">戦闘自体</RUBY>を観取し対応する。

　単なる強者、単なる巧者という枠から飛び抜けて、
　達人、名人と称揚される域をも凌ぎ、
　
　剣聖と呼ばれるに至った武人だけが備えるもの。

　……俺にある筈はない。
　だが。

　そんなものでも無くては、勝負にならない！

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆ずがーん
	CreateTextureEX("絵背景銀近", 3002, Center, Middle, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Zoom("絵背景銀近", 0, 400, 400, null, true);
	Move("絵背景銀近", 0, @-150, @0, null, true);
	CreateColorEX("絵色100", 15000, "WHITE");

	OnSE("se戦闘_動作_空突進02",1000);
	Fade("絵背景銀", 0, 0, null, true);

	Fade("絵背景銀近", 50, 1000, null, false);
	Shake("絵背景銀近", 250, 10, 2, 0, 0, 1000, Dxl2, false);
	Fade("絵色100", 200, 1000, Axl2, true);
	Delete("絵背景*");

	OnSE("se特殊_鎧_レース_クラッシュ",1000);

	Wait(2000);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0440a00">
（……養父は）

//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0450a00">
（師は、何と言った？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　観。

　それは、如何にして得るべきか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 5000, 0, null);

//◆フェードアウト
	CreateColorEX("絵色200", 16000, "BLACK");
	Fade("絵色200", 1000, 1000, null, true);
	Delete("絵色100");
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　
　　　　　　　　　――捨てよ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景100", 3001, Center, Middle, "cg/bg/bg001_空a_01.jpg");

	SetVolume("SE停滞", 3000, 500, null);
	FadeDelete("絵色200", 1000, true);


//◆イン
	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0460a00">
（明堯様）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　吉野御流の秘伝にそうあると、あの方は言った。

　――捨てるべし。

　<RUBY text="・・">見る</RUBY>を。
　<RUBY text="・・">聴く</RUBY>を。
　<RUBY text="・・・">感ずる</RUBY>を。
　<RUBY text="・・・">考える</RUBY>を。

　世界と断絶する。
　世界を捨て去る。

　<RUBY text="ムソウ">無想</RUBY>。

　全てを失えば、
　何物にも囚われる事なし。

　その境地。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0470a00">
（捨てる……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　俺にできるのか。

　全てを捨て、心魂を<RUBY text="ソラ">虚界</RUBY>へ投げ出す事が――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 500, 0, null);
	ClearFadeAll(500, true);


}

..//ジャンプ指定
//次ファイル　"md01_034vs.nss"