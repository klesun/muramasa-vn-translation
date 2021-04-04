//<continuation number="2790">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_013vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma04_013vs.nss","DenziBladeCharge",true);
	Conquest("nss/ma04_013vs.nss","DenziBladeChargeSet",true);

//あきゅん「演出：次のファイルで使用する用に準備」
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
	#bg046_江ノ島観測台_03=true;
	#ev909_荒覇吐=true;
	#ev909_荒覇吐_b=true;
	#ev909_荒覇吐_c=true;
	#ev909_荒覇吐_d=true;
	#ev911_荒覇吐ＡＩフィールド展開=true;
	#ev912_荒覇吐竜気砲アップ_a=true;
	#ev912_荒覇吐竜気砲アップ_b=true;
	#ev913_荒覇吐追尾弾=true;
	#ev944_村正ＶＳ荒覇吐=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma04_014vs.nss";

}

scene ma04_013vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_012.nss"

//●１２
//◆山頂・観測台
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");

	CreateColorSP("絵黒下", 10, "#000000");

	$窓縦枠=384;
	$窓位置調整=288-($窓縦枠/2);

	CreateWindow("絵窓", 19000, 0, $窓位置調整, 1024, $窓縦枠, false);
	SetAlias("絵窓","絵窓");

	CreateTextureSP("絵窓/絵演背景", 100, Center, Middle, "cg/bg/bg001_空a_03.jpg");
	CreateTextureSP("絵窓/絵演村正", 1000, Center, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	Zoom("絵窓/絵演村正", 0, 75, 75, null, true);

	MoveFFP1("@絵窓/絵演村正",20000);

	CreateSE("SE01","se戦闘_動作_空走行01_L");
	MusicStart("SE01",0,300,0,1000,null,true);

	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	WaitKey(1000);

	SetFwR("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0010b02">
「……ふむ。
　あれがムラマサか」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

	PrintGO("上背景", 30000);
	OnBG(100,"bg046_江ノ島観測台_03.jpg");
	StL(1000, @0, @0,"cg/st/st所長_通常_私服.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Move("上背景", 300, @0, 576, Dxl2, true);
	Delete("上背景");

	WaitKey(500);

	StR(1000, @0, @0,"cg/st/stガーゲット_通常_制服a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0020b02">
「この倍率ではよくわからんな……。
　もう少し精度の高い<RUBY text="フィールドスコープ">対地望遠鏡</RUBY>はないのか？」

//◆無視風
{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0030b22">
「…………」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0040b02">
「訊いているのだが？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0050b22">
「あー、はい、ありませんですよぉー。
　うちにある中じゃ、そいつが最新式のやつ
なんで」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0060b02">
「これが、か。
　なるほどな。確かに、類人猿の産物にして
は上等だ」

//◆歯軋り風
{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0070b22">
「…………」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0080b02">
「褒めているのだが？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0090b22">
「あーありがとうごぜぇますだーよー！
　お褒めにあずかり恐悦地獄ー！」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0100b02">
「……つまらない冗談だな、所長。
　全くセンスを感じない」

//◆のけぞり風
{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0110b22">
「…………」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/013vs0120e068">
「<RUBY text="アラハバキ">荒覇吐</RUBY>から通信です。
　所属不明の武者に対する処置を問うてきて
いますが……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0130b02">
「撃破せよ」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0140b22">
「おぉーい！
　あれはまだ調整段階なんですけどぉーー！」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0150b02">
「最悪、相打ちでも構わん」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0160b22">
「構うよっ!?」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/013vs0170e068">
「……あの……？」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0180b02">
「現在、この研究所の指揮権は私が掌握して
いる。そのはずだが……
　それとも、何か異論があるか？」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/013vs0190e068">
「……いえ」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0200b22">
「……うおー。
　殺してぇー。すっげー殺してぇー。とめど
ない願いからひとつだけ選んでこの野郎殺し
てぇー……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正ＶＳ荒覇吐
//◆荒覇吐ブレストファイアー。避ける村正
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵ＥＶ", 19000, Center, -170, "cg/ev/ev944_村正ＶＳ荒覇吐.jpg");
	DrawDelete("上背景", 200, 100, "slide_01_01_0", true);

	SoundPlay("@mbgm10",1000,1000,true);

	CreateSE("SE01","se戦闘_荒覇吐_攻撃01");
	CreateSE("SE01aa","se戦闘_動作_空突進02");
	CreateTextureSPadd("絵演上", 19100, Center, -170, "cg/ev/ev944_村正ＶＳ荒覇吐.jpg");
	CreateTextureSP("絵演", 19050, Center, -170, "cg/ev/ev944_村正ＶＳ荒覇吐.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);

	Delete("絵暗転");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 4, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵演上", 1000, false);
	Wait(400);
	Move("絵演*", 8000, @0, -700, null, false);
	Wait(1300);

	MusicStart("SE01aa",0,1000,0,1000,null,false);
	SetBlur("絵演", true, 2, 500, 40, false);
	Move("絵演*", 300, @0, -700, Dxl2, true);

	WaitKey(500);

//◆少し被弾
	CreateSE("SE01a","se戦闘_動作_空上昇01");
	CreateColorSP("絵黒幕", 20000, "BLACK");

	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	CreateTextureSPadd("絵演上", 19100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 19000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);
	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);
	FadeDelete("絵演上", 200, true);

	CreateSE("SE01b","se戦闘_破壊_鎧03");
	CreatePlainSPadd("絵板写", 19990);
	CreateColorEXmul("絵色赤", 20000, "#CC0000");
	Zoom("絵板写", 0, 1150, 1150, null, true);
	SetBlur("絵板写", true, 3, 500, 200, false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵色赤", 0, 800, null, true);
	FadeDelete("絵色赤", 300, false);
	Zoom("絵板写", 200, 1000, 1000, null, false);
	Shake("絵板写", 600, 0, 20, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0210a00">
「損傷は!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0220a01">
《左上腕に軽微！
　性能に支障なし》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　一般に、銃火器は武者に対してそう有効な兵器とは
みられていない。
　その機動を捕捉するにもその甲鉄を突破するにも、
余りに力不足であるからだ。

　しかしそこに、ごく単純な理論が介在を許されたの
なら、解答は覆る。
　――一発で当たらないなら十発では？　十発で破れ
ないなら百発では？

　集中運用によって、銃火器は武者の脅威と成り得る
のだ。
　巨怪の体皮から幾重にも突き出す砲門群は、まさに
そのためのものだろう。

　しかし、それでも――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0230a00">
「……躱し切れるつもりだったのだが。
　闇で間合を見誤ったか？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0240a01">
《違う。
　こちらの動きが普段より鈍いのよ》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0250a00">
「…………。
　先程の<RUBY text="・・">寒気</RUBY>か」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0260a01">
《そう。それ。
　あれは体内から熱を吸い取る風だった……
対武者用の武装としては恐ろしく有効ね》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　武者の超常的能力はすべて<RUBY text="カロリー">熱量</RUBY>を犠牲とする。
　その熱を奪うのは――確かに。敵騎を無力化するに
おいて最短の道であるかもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0270a00">
「あの風には捕まってはならないということ
だな……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0280a01">
《ええ。
　甲鉄である程度は防げるでしょうけれど、
過信は禁物よ》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0290a00">
「承知した」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("絵演", 1500, @-256, @0, Axl3, false);
	WaitKey(1000);
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateColorSP("絵色黒", 20000, "#000000");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawTransition("絵色黒", 150, 0, 1000, 100, Axl2, "cg/data/slide_01_03_0.png", true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");

	CreateTextureSP("絵ＥＶ", 19010, InRight, Middle, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	SetBlur("絵ＥＶ", true, 2, 500, 50, false);
	CreateSurfaceEX("絵効果サフ", 19000,1000,"@絵ＥＶ");
	Fade("絵効果サフ", 0, 1000, null, true);

	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	Move("絵ＥＶ", 2000, 0, 0, Axl2, false);
	Zoom("絵効果サフ", 2000, 2000, 2000, null, false);
	Rotate("絵効果サフ", 2000, @0, @0, @20, DxlAuto,false);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	Wait(1700);

	CreateSE("SE01a","se戦闘_動作_空上昇01");
	CreateColorSP("絵色黒", 20000, "#000000");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawTransition("絵色黒", 150, 0, 1000, 100, Axl2, "cg/data/slide_02_01_0.png", true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");

	CreateTextureSP("絵演背景", 18000, Center, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	DrawDelete("上背景", 150, 100, "slide_02_01_0", true);
	Move("絵演背景", 650, @0, @286, Dxl2, false);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070a]
　銃砲の推定射程外を円周状に駆け上がり、敵騎後方
上空に出る。
{	CreateSE("SE02","se戦闘_荒覇吐_移動01");
	MusicStart("SE02",0,1000,0,750,null,false);}
　無論、銀の巨体はすぐに姿勢を変えてこちらを向く
――が、その動きはいかにも鈍い。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演荒", 17000, -60, -250, "cg/ev/resize/ev909_荒覇吐_cm.jpg");
	Move("絵演荒", 3000, @0, -90, DxlAuto, false);
	CreateSE("SE01","se戦闘_荒覇吐_移動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵演背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070b]
　再び後背へ。敵が動く――更にその背後へ。
　見えない螺旋階段を駆け下りて、距離を詰める。

　遠間に眺めてさえ疑う余地のなかったその巨獣ぶり
は、肉薄すればより一層明快だった。
　象に挑む蟻。己がそれ以上の何者にも思えない。

　だが。
　蟻の一噛み、象をも倒す――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

	CreateSE("SE00","se戦闘_動作_空突進02");
	MusicStart("SE00",0,1000,0,1000,null,false);
	CreatePlainSP("絵板写", 18000);
	SetBlur("絵板写", true, 3, 500, 60, false);
	Zoom("絵板写", 600, 2000, 2000, Dxl2, false);
	Wait(580);

//◆一閃
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_left2(20010,@0, @0,2000);
	SL_leftfade2(10);

//◆ガキーン。
	PrintGO("上背景", 30000);
	CreateSE("SE01a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE01b","se戦闘_攻撃_刀衝突01");
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreatePlainSPadd("絵板写", 19000);
	Delete("上背景");
	MusicStart("SE01*",0,1000,0,1000,null,false);
	SetBlur("絵板写", true, 2, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵暗転", 600, false);
	WaitKey(200);
	FadeDelete("絵板写", 400, true);

//◆銃火。避けて逃げる村正。
	CreateSE("SE02","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演上", 19100, -340, -730, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	CreateTextureSP("絵演", 19050, -340, -730, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	SetVertex("絵演*", 1070, 1000);
	Delete("絵暗転");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("絵演上", 1500, 1250, 1250, Dxl2, false);
	Shake("絵演", 1000, 4, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵演上", 1000, false);

	WaitKey(800);

	CreateSE("SE03","se戦闘_動作_空突進02");
	CreateColorSP("絵黒幕", 20000, "BLACK");
	MusicStart("SE03",0,1000,0,1000,null,false);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵演背景", 15000, InLeft, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Delete("上背景");
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	CreateSE("SE03","se戦闘_動作_空突進01");
	CreateTextureEX("絵演立絵村正", 15100, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a2.png");
	Move("絵演立絵村正", 0, @-286, @120, null, true);
	Zoom("絵演立絵村正", 0, 850, 850, null, true);

	MusicStart("SE03",0,1000,0,1000,null,false);
	Zoom("絵演立絵村正", 300, 1000, 1000, Dxl2, false);
	Move("絵演立絵村正", 600, @30, @-120, Dxl2, false);
	Fade("絵演立絵村正", 300, 1000, null, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0300a00">
「……とは、いかんものだな。
　なかなかに」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0310a01">
《見掛け通りの分厚い甲鉄ね……。
　張子の虎なら良かったのだけど》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　村正の本来の主武装、野太刀の喪失が今更に惜しま
れる。
　あの長大な一物はまさしくこのような時の為の武器
だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆騎航。適当に捻り入れつつ
	Move("絵演立絵村正", 300, @30, @0, null, false);
	Wait(250);
	CreateSE("SE01","se戦闘_動作_空上昇01");
	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetBlur("絵演立絵村正", true, 2, 300, 30, true);
	Fade("絵色白", 0, 1000, null, true);
	Move("絵演立絵村正", 300, @1800, @0, Dxl2, false);
	Wait(30);
	Fade("絵色白", 400, 0, null, false);
	DrawTransition("絵色白", 800, 1000, 0, 100, Dxl2, "cg/data/slide_07_00_1.png", false);
	BezierMove("絵演背景", 1000, (0,-576){-100,-500}{-300,-400}{-500,-300}(-1024,0), Axl1, false);
	Wait(800);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 200, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	Wait(500);

//◆一撃。やっぱガキーンと。
	CreateSE("SE02","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE02",0,1000,0,1200,null,false);
	SL_leftdown2(20010,@0, @0,2000);
	SL_leftdownfade2(10);

	PrintGO("上背景", 30000);
	CreateSE("SE01a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE01b","se戦闘_攻撃_刀衝突01");
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreatePlainSPadd("絵板写", 19000);
	Delete("上背景");
	MusicStart("SE01*",0,1000,0,800,null,false);
	SetBlur("絵板写", true, 2, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵暗転", 600, false);
	WaitKey(200);
	FadeDelete("絵板写", 400, true);

//◆銃火。逃げるよー。
	CreateSE("SE03","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演上", 19100, -740, -730, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	CreateTextureSP("絵演", 19050, -740, -730, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	Request("絵演*", Smoothing);
	Rotate("絵演*", 0, @0, @180, @0, null,true);
	SetVertex("絵演*", 1070, 1000);
	Delete("絵暗転");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Zoom("絵演上", 1500, 1250, 1250, Dxl2, false);
	Shake("絵演", 1000, 4, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵演上", 1000, false);

	WaitKey(800);

	CreateSE("SE03a","se戦闘_動作_空突進02");
	CreateColorSP("絵黒幕", 20000, "BLACK");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSPadd("絵演上", 18100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 18000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);
	Move("絵演*", 150, -615, @0, Dxl2, false);
	Delete("上背景");
	FadeDelete("絵演上", 600, false);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0320a00">
「堅牢な甲鉄に鈍い足回り……拠点防衛用と
いうところか？
　六波羅も妙な兵器を造ったもの」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0330a00">
「しかし、これで謎はあらかた解けた」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0340a01">
《謎？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0350a00">
「これだけの大きさの劔冑だ。しかも研究と
あってはこれ一つきりということもなかろう。
　失敗作も含めて膨大な量の甲鉄を鍛造する
ために、どれほどの廃材が生まれたか……」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0360a00">
「周辺の海でその処理をしていたとすれば、
局地的に気候が変わるほどの温度変化をもた
らしたとしても不思議ではない」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0370a01">
《確かにそうね。
　昔も廃鋼の始末は鍛冶師の悩みの種だった
から……湖に捨てていたらやがて干上がって
しまった、なんて伝説もあるくらいよ》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0380a00">
「そして、生態系の破壊はあの風の為だろう。
　熱量剥奪兵器の実験に供されたとすれば、
島の無残極まる荒廃ぶりも理解がつく。
　一部地域の繁栄については不明だが……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0390a00">
「いずれにしろ、新兵器のために自然環境を
犠牲としたのなら、何とも割りに合わぬ取引
だという他はないな。自然は有限の資産だが、
新兵器は数年も経てば旧式に堕ちる」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0400a01">
《ええ。
　……でも》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0410a01">
《必ずしも、<RUBY text="・">新</RUBY>兵器ではないのかもしれない》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0420a00">
「……とは」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演荒覇吐", 18100, -460, -90, "cg/ev/resize/ev909_荒覇吐_m.jpg");
	Fade("絵演荒覇吐", 1000, 1000, null, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0119]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0430a01">
《外装は今の技術で造られたものね。勿論。
　けれど中枢は……おそらく、古式のもの》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0440a01">
《真打よ。
　巨大な…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　有り得る話と思えた。

　大艦巨砲主義が軍内を席巻した嘗ての時代、大型の
劔冑という発想も当然のように現れたが、結局は技術
的な問題を克服できず放棄されたと聞いている。
　それが唐突に成功したと言われるよりは――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵演荒覇吐", 600, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0450a00">
「昔はああいう物があったのか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0460a01">
《……言い伝えに聞いたことくらいは。鹿島
に眠るという<RUBY text="フツノミタマ">布都御魂</RUBY>とか、<RUBY text="からくに">唐国</RUBY>の<RUBY text="イテントリュウ">倚天屠竜</RUBY>
とか。
　でも何より》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0470a01">
《あの風……
　私の感覚では、あれは<RUBY text="しのぎ">陰義</RUBY>よ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　陰義。
　古来の法に則り、鍛冶師の命を<RUBY text="しんがね">心鉄</RUBY>として鍛造され
し真打劔冑のみが備えるちから。

　それを行使するならば、成程、現代の新式劔冑では
あり得ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0480a00">
「しかし、だとすると――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆旋回
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演", 2000, @-512, @-200, Axl2, false);

	Wait(500);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵演");

	CreateSE("SE01a","se戦闘_動作_空上昇01");
	CreateTextureSP("絵演旋回背景", 15000, Center, 0, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateTextureSP("絵演立絵村正", 15100, -2300, -200, "cg/st/3d村正標準_騎航_通常3b.png");
	SetVertex("絵演旋回背景", center, 0);
	Zoom("絵演旋回背景", 0, 1000, 3000, null, true);
	Request("絵演旋回背景", Smoothing);

	SetBlur("絵演立絵村正", true, 2, 500, 120, false);
	Shake("絵演立絵村正", 2160000, 1, 3, 0, 0, 1000, null, false);

	Move("絵演旋回背景", 2000, @0, -2304, AxlDxl, false);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawDelete("絵色黒", 150, 1000, "slide_02_01_1", true);

	Move("絵演立絵村正", 2000, @30, @-120, DxlAuto, false);

	Wait(2000);

	Move("絵演立絵村正", 20000, @30, @30, DxlAuto, false);
	Move("絵演旋回背景", 20000, @0, -2880, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　怪物の分厚い皮膚の下には、
　古代の神秘で打ち上げられた重装甲がなお控えると
いう事であり、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE03","se戦闘_荒覇吐_攻撃05");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MFlash(30, 20);

	WaitKey(300);

//◆避けながら接近してガキーンと。
	Zoom("絵演立絵村正", 200, 800, 800, Axl2, false);
	Move("絵演立絵村正", 200, @200, @200, null, true);

	CreateSE("SE01b","se戦闘_動作_空突進02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitKey(500);

	Delete("@MF*");
	Delete("絵演*");

	CreateSE("SE02","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE02",0,1000,0,1200,null,false);
	SL_leftdown2(20010,@0, @0,2000);
	SL_leftdownfade2(10);

	PrintGO("上背景", 30000);
	CreateSE("SE01a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE01b","se戦闘_攻撃_刀衝突01");
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreatePlainSPadd("絵板写", 19000);
	Delete("上背景");
	MusicStart("SE01*",0,1000,0,800,null,false);
	SetBlur("絵板写", true, 2, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵暗転", 600, false);
	WaitKey(200);
	FadeDelete("絵板写", 400, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0490a00">
「……斬り破れる見込みは無いな」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0500a01">
《……残念だけど。
　鉄量が違い過ぎる》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01a","se戦闘_動作_空上昇01");
	CreateColorSP("絵色黒", 20000, "#000000");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawTransition("絵色黒", 150, 0, 1000, 100, Axl2, "cg/data/slide_02_01_1.png", true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");

	CreateTextureSP("絵演背景", 18000, Center, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	DrawDelete("上背景", 150, 100, "slide_02_01_0", true);
	Move("絵演背景", 650, @0, @286, Dxl2, false);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　口惜しげながら、村正も追従した。
　今までに加えた剣撃で、敵騎に損害を被った様子は
ない一方、こちらは腕に骨まで響くほどの衝撃を受け
ている。村正も、刀身に絶望的な手応えを覚えたのか。

　まさに然り、鉄量が違う。
　単純にして絶対的なこの差は、容易な事で打ち破り
ようもない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0510a01">
《どうするつもり……？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0520a00">
「許されるなら、撤退すべき局面ではある。
　が、」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0530a01">
《許されないというの？
　時間稼ぎなら、もうそろそろ良い頃合じゃ
ない？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0540a00">
「……どうにも気に掛かる。
　この怪物が、俺達を待ち構えていたとしか
思えない事――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　先刻の遭逢。
　偶然にしては、発見され攻撃されるのが早過ぎた。
最初からこちらを捕捉していたと考える方が妥当だ。

　そして、この期に及んで他に敵兵力が出現しないと
いう事実――俺達の侵入が不測のものであったならば、
直ちに警報が発せられ、今頃は警備の兵が雲霞の如く
集ってきていて然るべきであろうに。

　何故か。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0550a00">
「今回の件、最初から実に臭い話だったが。
　どうやらやはり、何者かが何らかの目的で
仕掛けた陥穽にまんまと<RUBY text="は">嵌</RUBY>まったようだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0560a01">
《これが罠なら、迂闊な逃走は更なる窮地へ
繋がる……
　そういうこと？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0570a00">
「その見込みが強い。
　それに――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆フラッシュバック。芳養一家
	EfRecoIn1(20000,600);
	CreateTextureSP("絵回想背景", 18000, Center, Middle, "cg/bg/bg041_片瀬海岸_01.jpg");
	StC(18100, @0,@0,"cg/st/st芳養_通常_私服.png");
	FadeStC(0,true);
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("絵回想*");
	DeleteStA(0,true);
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0580a00">
「失踪したという彼らの事もある。
　江ノ島近隣の行方不明事件は単なる夜逃げ
だろうとあの少年は言っていたが、よりにも
よってその少年一家が消えたとなると……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0590a00">
「夜逃げなどではなく島の異変の一環とみる
べきだ。具体的事情は不明だが。
　救助するには迅速に事件を解決する他ない」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0600a01">
《……この島の事件を解決するって事は。
　つまり》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆荒覇吐
	CreateSE("SE01","se戦闘_荒覇吐_移動02_L");
	CreateTextureEX("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐_c.jpg");
	MusicStart("SE01",0,1000,0,1000,null,true);
	Fade("絵演", 2000, 1000, null, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0610a01">
《あれを撃破するって事になりそうだけど？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0620a00">
「そうだな。
　それをもって、結論とする」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　妥当な論を積み重ねた末、無謀な結論に至る。
　一般にはこれを指して<RUBY text="どんづまり">窮余</RUBY>と云う。

　が、無論――
　<RUBY text="おれたち">村正</RUBY>にとってそれは<RUBY text="・・・">常の事</RUBY>に過ぎなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0630a01">
《……諒解。
　なら、手は一つきり》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆銃撃
	CreateSE("SE01","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演上", 19100, -340, -730, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	CreateTextureSP("絵演", 19050, -340, -730, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	SetVertex("絵演*", 1070, 1000);
	Delete("絵暗転");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演上", 1500, 1250, 1250, Dxl2, false);
	Shake("絵演", 1000, 4, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵演上", 1000, false);

	WaitKey(800);

//◆避けっ。
	CreateSE("SE02a","se戦闘_動作_空上昇01");
	CreateColorSP("絵黒幕", 20000, "BLACK");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵演立絵", 18100, 512, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	CreateTextureSP("絵演背景", 18000, InRight, Middle, "cg/bg/resize/bg001_空a_03.jpg");
	Request("絵演背景", Smoothing);
	SetVertex("背景１", right, middle);
	Zoom("絵演背景", 0, 3000, 1000, null, true);
	Delete("上背景");

	SetBlur("絵演立絵", true, 2, 300, 50, false);
	Shake("絵演立絵", 1000, 0, 2, 0, 0, 1000, null, false);
	Move("絵演立絵", 800, -1700, @-10, Axl2, false);
	Move("絵演背景", 10000, 1024, @0, DxlAuto, false);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	Wait(800);

	CreateTextureEX("絵演", 18000, -500, -130, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演", 0, 800, 800, null, true);

	Zoom("絵演", 300, 1000, 1000, DxlAuto, false);
	Move("絵演", 300, @-80, @0, DxlAuto, false);
	Fade("絵演", 300, 1000, null, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0640a01">
《御堂、<RUBY text="ながれ">磁装</RUBY>を！》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0650a00">
「<RUBY text="レールガン">電磁抜刀</RUBY>か」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0660a01">
《ええ。
　私の<RUBY text="おわり">蒐窮</RUBY>の太刀でなら、どんな物でも断ち
切ってみせる》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0670a01">
《あれが今の凡甲だろうと神代の遺産だろう
と、どちらでも関係ない。
　どちらだろうと同じことよ！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　<RUBY text="・">刃</RUBY>が立たなかったという屈辱からか、気負う村正の
言動を、しかし俺も虚言とは思わない。
　蒐窮の太刀――<RUBY text="レールガン">電磁抜刀</RUBY>。強圧的な磁力反発がもた
らす神速の一刀は、確かに前方の鉄壁をも打ち破ろう。

　やや消耗した現在の体調で、細心の集中力を必要と
する術式制御に挑むのは<RUBY text="リスク">危険</RUBY>が大きいが――<k>電磁抜刀
の制御失敗は磁力と熱量の暴走による自壊を意味する
――<k>それは言わば常の事であり、懸念など今更だ。

　が。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0680a00">
「却下」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0690a01">
《なぜ！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0700a00">
「あれは劔冑だ。
　<RUBY text="・・・・・・">中に人がいる</RUBY>」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0710a00">
「<RUBY text="エンディング">蒐窮</RUBY>を行えば力の加減など利かない。
　中の仕手ごと斬り断つ事になる」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0720a01">
《……っ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　せめてあの巨体の何処に仕手が座するのか、それが
わかればやりようもあるが。
　現段階では、中の人間の生死は運任せとなる。

　あれが〝卵〟を植えられた寄生体であるなら――俺
は殺す。その是非は問わず、そう決めている。
　新たな銀星号の誕生を阻止するには、可及的速やか
に破壊し尽くす他はない。それだけが理由だ。

　だが、あれは違うのだ。殺す事はできない。
　あれはあれで罪があるのかもしれない――おそらく
島の環境を破壊し周辺住民を脅かした罪は負うだろう。
生かせば今後、更に破壊を為すかもしれない。

　しかしだからといって、<RUBY text="・・・・">俺が裁く</RUBY>などという傲慢が
認められよう筈はなかった。
　裁きは法の下に行われなくてはならない。俺に許さ
れるのは被疑者を法廷まで連れてゆく事だけだ。

　法すらあてにならぬならば――つまりは相手が幕府
のような権力（濫用）者ならば――あるいは恣意的な
処断を良しとする考えもあるのかもしれない。
　だがそれは<RUBY text="テロリスト">凶徒</RUBY>だ。俺は曲がりなりにも警察だ。

　警察は司法の忠実な手足とならねばならない。
　一存で罪を計り裁きを下し殺害するなど、あっては
ならない事である。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆フラッシュバック。真改殺害、代官殺害、皇路卓殺害
	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 300, 1000, Axl2, true);

	CreateColorSP("絵色黒地", 18000, "#000000");
	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/3d真改_立ち_戦闘.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/3d真改_立ち_戦闘.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @-256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);


	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/3d八八式指揮官_立ち_抜刀.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/3d八八式指揮官_立ち_抜刀.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);

	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/st皇路_通常_私服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/st皇路_通常_私服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);

	Delete("絵演立絵*");
	Delete("絵色黒地*");

	FadeDelete("絵色白", 1600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　――断じて。
　許されない行為である。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0730a01">
《なら、どうするの!?》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0740a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　決め手は封じた上で。
　この怪物を仕留める。

　虫の良過ぎる問いかけに、脳内に居住する<RUBY text="カウンセラー">相談員</RUBY>が
手早く答えを返してくれるという事はありそうにない。
　そして、敵がそれまで待ってくれることもありそう
にない。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE01","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演上", 19100, -340, -730, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	CreateTextureSP("絵演", 19050, -340, -730, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	SetVertex("絵演*", 1070, 1000);
	Delete("絵暗転");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演上", 1500, 1250, 1250, Dxl2, false);
	Shake("絵演", 1000, 4, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵演上", 1000, false);

	WaitKey(1000);

//◆避ける
	CreateSE("SE02","se戦闘_動作_空突進02");
	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_00_1.png", true);

	CreateTextureSP("絵演背景", 18000, Center, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Delete("絵演*");

	MusicStart("SE02a",0,1000,0,1000,null,false);
	Move("絵演背景", 650, @0, @300, Dxl2, false);
	DrawDelete("絵色黒", 150, 1000, "slide_02_01_1", true);

//◆竜気砲
	CreateTextureEX("絵演", 18100, -310, InBottom, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	Move("絵演", 650, @0, -65, Dxl2, false);
	Fade("絵演", 600, 1000, null, true);

	CreateSE("SE03","se特殊_鎧_駆動音01");
	CreateSE("SE03b","se特殊_鎧_駆動音02");
	MusicStart("SE03",0,1000,0,800,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	Zoom("絵演荒上", 0, 1200, 1200, null, false);
	Zoom("絵演荒上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒上", 200, true);

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0750a00">
「――？」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0760a01">
《あれは…………
　なに？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　鎌首をもたげる蛇に似た動きで、こちらを指す砲門。
　それは――むしろ小さく細く。向けられた者を怯ま
せる威圧力に欠けていた。

　が――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆ぶおーん。
	CreateSEEX("SE01","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SE01",0,1000,0,100,null,true);
	SetFrequency("SE01", 10000, 1000, Dxl3);

	CreatePlainSPadd("絵板写", 18900);
	CreateTextureSPadd("絵演効果", 19000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	SetBlur("絵板写", true, 2, 500, 30, false);
	Zoom("絵板写", 0, 1500, 1500, null, true);
	Zoom("絵板写", 3000, 1000, 1000, null, false);
	DrawDelete("絵板写", 300, 100, "circle_01_00_0", false);

	Zoom("絵演効果", 300, 2000, 2000, AxlDxl, false);
	Fade("絵演効果", 300, 0, null, false);
	DrawDelete("絵演効果", 300, 100, "circle_01_00_1", false);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0770a01">
《え？
　これ――<RUBY text="きんちょうじょう">金打声</RUBY>――》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　<RUBY text="しか">而</RUBY>して。
　この、肌が粟立ち、身震いするまでの<RUBY text="・・">死気</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0780a00">
「――――退避ッ!!」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0790a01">
《!?》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆竜気砲発振
//◆メーザー砲みたいなもんか？
	CreateSE("SE01","se戦闘_荒覇吐_攻撃03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	SetBlur("絵演荒上", true, 2, 500, 30, false);
	Zoom("絵演荒上", 0, 1150, 1150, null, true);
	Zoom("絵演荒上", 300, 1000, 1000, null, false);
	Shake("絵演荒上", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("絵演荒上", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, true);

	Wait(300);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	OnBG(100,"bg046_江ノ島観測台_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	SetVolume("SE*", 5000, 0, null);
	DrawDelete("絵暗転", 300, 1000, "slide_01_01_1", true);

	SetFwC("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0800b02">
「……あれは、何かね」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0810b22">
「……」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0820b02">
「所長？
　君の記憶能力では覚えきれないようだから
改めて通告するが、君には私の質問に答える
義務が――」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0830b22">
「竜気砲だよ！
　発振砲って言やぁあんたらにもわかるか」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0840b02">
「<RUBY text="ヴァイブロカノン">発振砲</RUBY>……。
　確かにその兵器構想は耳にしたことがある」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0850b02">
「<RUBY text="クルス">劒冑</RUBY>の<RUBY text="メタルエコー">装甲通信</RUBY>を応用した兵器だとか？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0860b22">
「あぁ。
　武者の金打声を受けると、体表が小刻みに
振動するだろ？　その現象を攻撃に利用でき
ないかっつー愉快発想から研究が始まって」

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0870b22">
「その結果、極低度の金打声を集束して発振
すると標的を瞬間的に加熱、燃焼させること
が可能だって判明したわけさーねー。
　うちでそいつを実用化したのがあの竜気砲」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0880b02">
「<RUBY text="ドラゴンブレス">竜気</RUBY>か。なるほどな。
　しかし、大したものだ」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0890b22">
「ふン」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0900b02">
「あれは。我が軍では機動兵器の決定力たる
搭載武装として研究がなされたが、電力供給
と小型化の問題が解決せず頓挫したと聞く。
　砲台運用ではコスト的に見合わんしな」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0910b02">
「それを、機動兵器の方を大型化することで
解決するとは……素晴らしく大雑把な手法だ。
　島国の未開人なればこそだな。我々文明人
であれば冗談の種で済ませてしまうところだ」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0920b22">
「ぐぉアーーー!!」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0930b02">
「感激するのは良いが騒がしいのは困るな、
所長」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0940b22">
「そう見えんのかよ!?」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0950b02">
「蛮国の独特な風習に基づく感情表現などに
興味はない。
　ところで所長」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0960b22">
「もーおうち帰りてー……。
　部屋に籠もって殺害妄想に耽りてぇー……
あっ流れ星……神さまお願い、こいつ殺して
殺して殺して……届けボクの一途な願い……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0970b02">
「あのでかぶつは曲がりなりにも劔冑だろう。
だが一体、如何なる方法で鍛造したのだ？
　あそこまで巨大なものを……正直なところ、
まるで想像がつかない」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0980b22">
「……そいつは俺も知らねぇー。
　あれ、兵装を調えたのは俺らだが、<RUBY text="ベース">原型</RUBY>は
違うからな」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0990b02">
「ほう？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1000b22">
「この島の南西の端に岩屋がある。
　富士山の風穴に通じてるだの、<RUBY text="ゆぎょう">遊行</RUBY>し給う
神の道だの、色々と曰くのある洞穴なんだが」

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1010b22">
「あれはその奥で発見されたもんだ。
　八年前、民俗学の調査団にな……もっとも
現地人の間じゃ相当昔から語り伝えられてた
らしいけど」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1020b22">
「<RUBY text="・・・・・">おみうつし</RUBY>、とか言ってたかな。
　意味はわかんねえ。島の連中が言うことも
まちまちだ」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1030b02">
「……」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1040b22">
「で、そいつを調べてみたところ、数百年か、
下手すると千年以上前に造られた――<RUBY text="・・・">武者に</RUBY>
<RUBY text="・・・・・">着せる劔冑</RUBY>だってことが判明したわけよ。
　まあ、みんな驚いたわ」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1050b22">
「劔冑の上に劔冑を重ねる、なんつー発想は
前代未聞だったからな。
　ともかくそいつは六波羅の管轄に移って、
竜騎兵用強化外装の名で研究が始まってー」

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1060b22">
「けど結局、製造法はわからんかった。
　しゃーねえからこの一騎だけでも運用して
みるかってんで、そっちの研究をした結果、
あれが出来たと。まぁそーいうわけですよー」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1070b02">
「なるほど。
　おおよそ理解した」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1080b22">
「そらよーござんした」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1090b02">
「要するに『何もわからない』という事だな。
　内容の無い説明を感謝する。大変に無駄な
時間を過ごした気分だ」

{	FwC("cg/fw/fw所長_笑い.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1100b22">
「うわーい。
　なんか段々楽しくなってきたよ俺ー。人間
どこまで殺意を抱けるのか挑戦してる感じー」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぶおおーん
	CreateSE("SE01","se戦闘_荒覇吐_攻撃04_L");
	MusicStart("SE01",0,500,0,100,null,true);
	SetFrequency("SE01", 10000, 1000, Dxl3);

	WaitKey(300);

	SetFwC("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1110b02">
「……うむ？
　今度は何をやるのだ？　あれは」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1120b22">
「ん？
　あぁ……」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1130b22">
「拡散竜気砲だな」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆要は拡散粒子砲だ。
//◆ずびーっと。
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	DrawDelete("上背景", 150, 100, "slide_01_01_0", true);

	CreateTextureSP("絵演", 19000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");

	CreateSE("SE01","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演上", 18090, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演", 18090, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	CreateSE("SE01a","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演振砲一上", 18081, -900, -380, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");
	CreateTextureSP("絵演振砲一", 18080, -900, -380, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");

	CreateSE("SE01b","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演振砲二上", 18071, -460, -512, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");
	CreateTextureSP("絵演振砲二", 18070, -460, -512, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");

	CreateSE("SE01c","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演振砲三上", 18061, -68, -500, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");
	CreateTextureSP("絵演振砲三", 18060, -68, -500, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");

	CreateSE("SE01d","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演振砲四上", 18051, -10, -10, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");
	CreateTextureSP("絵演振砲四", 18050, -10, -10, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");

	CreateSE("SE01e","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演振砲五上", 18041, -397, -30, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");
	CreateTextureSP("絵演振砲五", 18040, -397, -30, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");

	CreateSE("SE01d","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演振砲六上", 18031, Center, Middle, "cg/ef/resize/ef047_発振砲集団射撃sex01.jpg");
	CreateTextureSP("絵演振砲六", 18030, Center, Middle, "cg/ef/resize/ef047_発振砲集団射撃sex01.jpg");
	SetVertex("絵演振砲*", 140, 470);
	SetBlur("絵演振砲六上", true, 2, 500, 50, false);


	DrawDelete("絵暗転", 150, 100, "slide_01_01_0", true);

	SetVolume("SE*", 100, 0, null);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演上", 200, 1400, 1400, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 300, true);

	Delete("絵演");

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Shake("絵演振砲一", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("絵演振砲一上", 200, 1250, 1250, null, false);
	FadeDelete("絵演振砲一上", 300, false);

	Wait(200);
	Delete("絵演振砲一");

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Shake("絵演振砲二", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("絵演振砲二上", 200, 1250, 1250, null, false);
	FadeDelete("絵演振砲二上", 300, false);

	Wait(200);
	Delete("絵演振砲二");

	MusicStart("SE01c",0,1000,0,1000,null,false);
	Shake("絵演振砲三", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("絵演振砲三上", 200, 1250, 1250, null, false);
	FadeDelete("絵演振砲三上", 300, false);

	Wait(200);
	Delete("絵演振砲三");

	MusicStart("SE01d",0,1000,0,1000,null,false);
	Shake("絵演振砲四", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("絵演振砲四上", 200, 1250, 1250, null, false);
	FadeDelete("絵演振砲四上", 300, false);

	Wait(200);
	Delete("絵演振砲四");

	MusicStart("SE01e",0,1000,0,1000,null,false);
	Shake("絵演振砲五", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("絵演振砲五上", 200, 1250, 1250, null, false);
	FadeDelete("絵演振砲五上", 300, false);

	Wait(300);
	Delete("絵演振砲五");

	MusicStart("SE01d",0,1000,0,1000,null,false);
	Shake("絵演振砲六", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("絵演振砲六上", 200, 2000, 2000, null, false);
	FadeDelete("絵演振砲六上", 300, true);

//◆ずがーん。
	CreateColorSP("絵白転", 20000, "#FFFFFF");
	CreateSE("SE02","se戦闘_攻撃_焼き鏝_弱");
	CreateSE("SE02a","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE02",0,1000,0,800,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);
	WaitKey(10);
	Delete("絵演*");
	CreateColorSPover("絵色赤熱", 20000, "#CC0000");
	DrawTransition("絵色赤熱", 0, 0, 150, 100, null, "cg/data/circle_01_00_1.png", true);

	OnBG(100,"bg002_空a_03.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 19000);
	SetBlur("絵板写", true, 2, 500, 50, false);
	$残時間=RemainTime("SE02a") / 3;
	FadeDelete("絵色赤熱", 150, false);
	FadeFR2("絵板写",0,500,$残時間,0,0,30,Dxl3, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1140a00">
「……つゥッ!!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1150a01">
《さっきのやつと同じね……
　損傷は軽微。けれどほぼ全身！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　皮膚という皮膚に<RUBY text="・・・・">ひりひり</RUBY>と焼け付く感覚を覚える。
　今の<RUBY text="・">波</RUBY>は避けようがなかった。

　しかし広範囲に散った分、威力は減殺されていたの
だろう。左腕を襲った先の一撃に比べればぬるま湯の
ようなものだった。
　そちらは既に炭化し、指一本とて動かせない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1160a00">
「……これはどういう兵器なのだ？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1170a01">
《私にわかるわけないでしょう。
　ただ、金打声を利用しているのは確かよ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　<RUBY text="メタルエコー">金打声</RUBY>を用いた射撃兵器。
　……想像が及ばない。

　遂に実らず捨て去られた<RUBY text="レールガン">電磁加速砲</RUBY>開発の他にも数
種目あったという、次世代火砲研究のひとつだろうか。
　その中に実用化まで漕ぎ着け得たものがあったのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1180a01">
《追い打ちが来る！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1190a00">
「――ち」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆回避機動
	CreateColorEX("絵色黒", 20000, "#000000");
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetBlur("@OnBG*", true, 2, 500, 60, false);
	Zoom("@OnBG*", 300, 1500, 1500, DxlAuto, false);
	Move("@OnBG*", 150, @0, @-100, null, true);
	Move("@OnBG*", 150, @0, @300, null, false);

	Wait(100);

	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

//◆バラララと銃火
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureEX("絵演上", 18010, -150, -30, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	CreateTextureSP("絵演", 18000, -150, -30, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	Fade("絵演上", 0, 500, null, true);
	Shake("絵演上", 216000, 0, 20, 0, 0, 1000, null, false);
	Shake("絵演", 216000, 0, 4, 0, 0, 1000, null, false);
	CreateSE("SE02","se戦闘_銃器_機関銃乱射02");
	Delete("上背景");
	Delete("絵暗転");
	MusicStart("SE02",0,1000,0,1000,null,false);

	MFlash(30, 10);

	WaitKey(1000);

	SetVolume("SE*", 5000, 0, null);
	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵演*");
	Delete("@MF*");

	CreateTextureSP("絵演背景", 17000, InLeft, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @0, @300, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	WaitAction("絵演背景", null);

	Move("絵演背景", 50000, -512, 0, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　痛む体を押して上空へ逃れる。
　……今の銃火は全て実体弾だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01L","se戦闘_動作_空走行01_L");
	MusicStart("SE01L",300,1000,0,1000,null,true);
	CreateTextureEX("絵演立絵", 17050, -2240, -200, "cg/st/3d村正標準_騎航_通常3b.png");
	Zoom("絵演立絵", 0, 1050, 1050, null, true);

	Shake("絵演立絵", 2160000, 2, 1, 0, 0, 1000, null, false);
	Zoom("絵演立絵", 300, 1000, 1000, null, false);
	Fade("絵演立絵", 300, 1000, null, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1200a00">
「流石に連射は利かないようだな……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1210a01">
《不幸中の幸いね。
　火焙りにされる罪人の顔へ巻く布かもしれ
ないけれど》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1220a00">
「それはどういう例えだ？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1230a01">
《聞かない方が賢明よ。意気が萎えるから。
　それより、どうするの》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1240a00">
「……甲鉄の脆弱な箇所を探して衝くつもり
だったが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSEEX("SE01aL","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SE01aL",0,200,0,100,null,true);
	SetFrequency("SE01", 10000, 1000, Dxl3);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　堅牢無比なる劔冑と<RUBY text="いえど">雖</RUBY>も、比較的脆弱な部分という
ものはある。
　人が着る鎧である以上なくすわけにはゆかぬ、関節
部がそれにあたる。

　動きの自由を確保するため、関節部の装甲は薄く、
隙間のあるものにならざるを得ない。
　この弱点を狙うのは<RUBY text="ふたわがかり">双輪懸</RUBY>――武者と武者の一騎打
における定石の一つだ。

　……あの怪物は劔冑の常識を相当に踏み外している
が。
　それでも何処かしら泣き所はあろう。

　しかし――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆竜気砲
	CreateSE("SE01","se戦闘_荒覇吐_攻撃03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	SetBlur("絵演荒上", true, 2, 500, 30, false);
	Zoom("絵演荒上", 0, 1150, 1150, null, true);
	Zoom("絵演荒上", 300, 1000, 1000, null, false);
	Shake("絵演荒上", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("絵演荒上", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, true);

	Wait(300);

	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1250a00">
「悠長に調べて回れる状勢ではないな。
　奴の向こう脛を見つけ出す前に、こちらが
<RUBY text="おと">撃墜</RUBY>される」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1260a01">
《不本意な予測ね。
　否定できないのはもっと不本意よ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_01_01_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　あの小さな砲は、ただの一撃で武者を散華せしめる
だけの力を秘めている。
　そんなもので狙われながらの弱点探しなど、できる
話ではない。

　速戦即決に如かず。
　――それはわかっている、が。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ぶおーん
	CreateSE("SE01","se戦闘_荒覇吐_攻撃03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	SetBlur("絵演荒上", true, 2, 500, 30, false);
	Zoom("絵演荒上", 0, 1150, 1150, null, true);
	Zoom("絵演荒上", 300, 1000, 1000, null, false);
	Shake("絵演荒上", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("絵演荒上", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, false);

	Wait(150);

//◆急回避ー。
	CreateSE("SE02","se戦闘_動作_空突進02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵演荒*");
	Delete("絵色白");

//◆ちょっとかする。
	CreateColorSP("絵白転", 20000, "#FFFFFF");
	CreateSE("SE03","se戦闘_攻撃_焼き鏝_弱");
	CreateSE("SE03a","se戦闘_破壊_爆発02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);
	WaitKey(10);
	Delete("絵演*");
	Delete("絵色黒");
	CreateColorSPover("絵色赤熱", 20000, "#CC0000");
	DrawTransition("絵色赤熱", 0, 0, 200, 100, null, "cg/data/circle_01_00_1.png", true);

	CreateTextureSP("絵演背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 19000);
	SetBlur("絵板写", true, 2, 500, 50, false);
	$残時間=RemainTime("SE03a") / 3;
	FadeDelete("絵色赤熱", 150, false);
	Shake("絵板写", $残時間, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1270a01">
《……右脚甲鉄に被弾！
　深刻な火傷。治癒を開始する――》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1280a00">
「後にしろ。
　今、<RUBY text="あし">速力</RUBY>を落とせばいい的だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　数百本の針を一度に突き刺されたかのような激痛を
噛み潰して、命ずる。
　武者が劔冑に供給する熱量は限りあるもの。それを
治癒に傾ければ当然、性能は低下するのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1290a00">
「……足には苦痛の感覚がある。
　何も感じない左腕に比べれば軽傷という事
だろう」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1300a01">
《御堂……
〝<RUBY text="おわり">蒐窮</RUBY>〟の執行を！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1310a00">
「却下」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　敵騎の仕手が死ぬかもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1320a01">
《なら、撤退すべきよ！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1330a00">
「却下」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　あの少年たちが死ぬかもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1340a01">
《貴方が死ぬ！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1350a00">
「お前が案ずる事ではない」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆旋回
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetBlur("絵演背景", true, 2, 500, 60, false);
	Zoom("絵演背景", 300, 1500, 1500, DxlAuto, false);
	Move("絵演背景", 150, @0, @-100, null, true);
	Rotate("絵演背景", 1000, @0, @0, @-30, null,false);
	Move("絵演背景", 150, @0, @300, null, false);

	Wait(100);

//◆突入
	CreateSE("SE02","se戦闘_動作_空突進02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 18010, Center, Middle, "cg/ev/resize/ev502_村正抜刀片手l.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/resize/ev502_村正抜刀片手l.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆剣撃。がしーん。
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateSE("SE03","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE03",0,1000,0,1500,null,false);
	SL_centerout2(20010,@0, @0,2000);
	SL_centeroutfade2(10);

	PrintGO("上背景", 30000);
	CreateSE("SE03a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE03b","se戦闘_攻撃_刀衝突01");
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreatePlainSPadd("絵板写", 19000);
	Delete("上背景");
	MusicStart("SE03*",0,1000,0,800,null,false);
	SetBlur("絵板写", true, 2, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵暗転", 600, false);
	WaitKey(200);
	FadeDelete("絵板写", 400, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　片手打ちに斬りつける。
　無論、両の腕に渾身の力を加えてさえろくろく傷も
つかなかった壁が、それで途端に割り裂けるという事
はない。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆銃撃
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureEXadd("絵演覆", 18010, -250, -250, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	CreateTextureSP("絵演", 18000, -250, -250, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	SetBlur("絵演覆", true, 3, 500, 200, false);
	SetVertex("絵演覆", left, 460);
	Fade("絵演覆", 0, 750, null, true);
	Fade("絵演覆", 400, 0, DxlAuto, false);
	Zoom("絵演覆", 400, 1250, 1250, DxlAuto, false);
	Shake("絵演", 2160000, 8, 0, 0, 0, 1000, Dxl2, false);
	CreateSE("SE02","se戦闘_銃器_機関銃乱射02");
	Delete("上背景");
	Delete("絵暗転");
	MusicStart("SE02",0,1000,0,1000,null,false);

	MFlash(30, 10);

	WaitKey(1000);

//◆回避
	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵演*");
	Delete("@MF*");

	CreateTextureSP("絵演背景", 17000, InLeft, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @0, @300, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	WaitAction("絵演背景", null);

//◆もう一撃。
	CreateSE("SE03","se戦闘_動作_空上昇01");
	MusicStart("SE03",0,1000,0,1700,null,false);
	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵演背景");

	CreateTextureSPadd("絵演上", 18010, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 18000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);


	CreateColorSP("絵色黒", 20000, "#000000");
	CreateSE("SE04","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE04",0,1000,0,1500,null,false);
	SL_leftdown2(20010,@0, @0,2000);
	SL_leftdownfade2(10);

	PrintGO("上背景", 30000);
	CreateSE("SE04a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE04b","se戦闘_攻撃_刀衝突01");
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreatePlainSPadd("絵板写", 19000);
	Delete("上背景");
	MusicStart("SE04*",0,1000,0,800,null,false);
	SetBlur("絵板写", true, 2, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵暗転", 600, false);
	WaitKey(200);
	FadeDelete("絵板写", 400, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1360a01">
《策があるの!?》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　応える間を惜しみ、更に一撃。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆がきーんと。
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_08_00_0.png", true);

	Delete("絵演背景");

	CreateSE("SE01a","se戦闘_攻撃_野太刀振る02");
	CreateTextureSPadd("絵演上", 18010, -260, -20, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	CreateTextureSP("絵演", 18000, -260, -20, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	Zoom("絵演上", 200, 1150, 1150, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawDelete("絵黒幕", 150, 100, "slide_08_00_1", true);
	FadeDelete("絵演上", 200, true);

	PrintGO("上背景", 30000);
	CreateSE("SE02a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE02b","se戦闘_攻撃_刀衝突01");
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev910_荒覇吐胸元アップ.jpg");
	CreatePlainSPadd("絵板写", 19000);
	Delete("上背景");
	MusicStart("SE02*",0,1000,0,800,null,false);
	SetBlur("絵板写", true, 2, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵暗転", 600, false);
	WaitKey(200);
	FadeDelete("絵板写", 400, true);

//◆退避
	CreateSE("SE03a","se戦闘_動作_空上昇01");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵演");
	Delete("@MF*");

	CreateTextureSP("絵演背景", 17000, InLeft, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @0, @300, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	WaitAction("絵演背景", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　単調に、虚しい攻勢を続行する。

　単調に――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆銃撃
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐_d.jpg");
	CreateSE("SE02","se戦闘_銃器_機関銃乱射02");
	Delete("上背景");
	Delete("絵暗転");
	MusicStart("SE02",0,1000,0,1000,null,false);

	MFlash(30, 10);

	WaitKey(1000);

//◆旋回して避けてがきーんと。
	CreateSE("SE03a","se戦闘_動作_空上昇01");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵演");
	Delete("@MF*");

	CreateTextureSP("絵演背景", 17000, InRight, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @300, @0, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

	WaitAction("絵演背景", null);
	Move("絵演背景", 4000, @300, @0, null, false);

	CreateTextureEX("絵演村正", 17100, 1024, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");

	SetBlur("絵演村正", true, 2, 500, 80, true);
	Shake("絵演村正", 216000, 0, 2, 0, 0, 1000, null, false);
	Move("絵演村正", 1200, @-900, @-10, DxlAuto, false);
	Fade("絵演村正", 300, 1000, null, true);

	Wait(900);

	CreateSE("SE04","se戦闘_動作_空上昇01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 0, 850, null, true);
	Wait(20);
	Fade("絵色白", 380, 0, null, false);
	DrawDelete("絵色白", 380, 0, "slide_05_00_1", false);

	Move("絵演村正", 300, @-1600, @-120, Dxl3, true);
	Wait(300);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵効果*");
	Delete("絵演村正*");

	Wait(300);

	CreateSE("SE05","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE05",0,1000,0,1200,null,false);
	SL_leftdown2(20010,@0, @0,2000);
	SL_leftdownfade2(10);

	CreateSE("SE05a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE05b","se戦闘_攻撃_刀衝突01");
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreatePlainSPadd("絵板写", 19000);
	Delete("上背景");
	MusicStart("SE05*",0,1000,0,800,null,false);
	SetBlur("絵板写", true, 2, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵暗転", 600, false);
	WaitKey(200);
	FadeDelete("絵板写", 400, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1370a01">
《……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　気づいたか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆旋回
	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("絵演*");

	CreateTextureSP("絵演背景", 17000, InLeft, InTop, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @0, @-300, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "slide_02_01_0", true);

	WaitAction("絵演背景", null);

//◆銃撃
	CreateSE("SE01","se戦闘_荒覇吐_攻撃05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 18100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演", 18050, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演", 0, 1100, 1100, null, false);
	Zoom("絵演上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演", 500, 30, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 2000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　……射撃が次第に散漫になる。
　敵手の苛立ちが、そこに見えた。

　その苛立ちを刺激するように、なお繰り返す。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆突入してがきーん。
	CreateSE("SE01a","se戦闘_動作_空突進02");
	CreatePlainSPadd("絵板写", 20000);
	CreateColorEX("絵色黒", 20000, "#000000");
	SetBlur("絵板写", true, 2, 500, 80, false);
	Zoom("絵板写", 400, 1500, 1500, null, false);
	Wait(200);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵色黒", 200, 1000, null, false);
	DrawTransition("絵色黒", 200, 0, 1000, 100, Axl2, "cg/data/circle_01_00_0.png", true);

	Delete("絵板写");

	CreateColorSP("絵色黒", 20000, "#000000");
	CreateSE("SE03","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE03",0,1000,0,1500,null,false);
	SL_leftup2(20010,@0, @0,2000);
	SL_leftupfade2(10);

	PrintGO("上背景", 30000);
	CreateSE("SE03a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE03b","se戦闘_攻撃_刀衝突01");
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreatePlainSPadd("絵板写", 19000);
	Delete("上背景");
	MusicStart("SE03*",0,1000,0,800,null,false);
	SetBlur("絵板写", true, 2, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵暗転", 600, false);
	WaitKey(200);
	FadeDelete("絵板写", 400, true);

//◆ぱららっと銃火
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureEXadd("絵演覆", 18010, -140, -90, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	CreateTextureSP("絵演", 18000, -140, -90, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	SetVertex("絵演覆", 850, 260);
	Fade("絵演覆", 0, 500, null, true);
	Zoom("絵演覆", 0, 1250, 1250, null, true);
	Shake("絵演覆", 2160000, 6, 0, 0, 0, 1000, null, false);
	CreateSE("SE04","se戦闘_銃器_機関銃乱射02");
	Delete("上背景");
	Delete("絵暗転");
	MusicStart("SE04",0,1000,0,1000,null,false);

	MFlash(30, 10);

	WaitKey(1000);
	FadeDelete("絵演覆", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　反撃はもはや狙撃とは呼べない。
　数任せの制圧射撃だ。

　金蝿よろしく飛び回るこちらを追うのに疲れてきて
いるのか。
　一弾一弾に、これにて仕留めんという集中力がない。

　それは圧倒的優勢ゆえのものでもあろう。
　己に傷を負わすことのできない蚊蜻蛉を相手にして、
必死の闘志が持続せぬのはまず道理。

　――頃や良し。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆機動
	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("絵演*");
	Delete("@MF*");

	CreateTextureSP("絵演背景", 17000, Center, InTop, "cg/bg/resize/bg002_空a_03l.jpg");
	Zoom("絵演背景", 0, 1500, 1500, null, true);
	Rotate("絵演背景", 0, @0, @0, @180, null,true);
	SetBlur("絵演背景", true, 2, 500, 80, false);

	Zoom("絵演背景", 650, 1000, 1000, null, false);
	Rotate("絵演背景", 650, @0, @0, @-180, null,false);
	Move("絵演背景", 1200, @0, @-300, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "slide_02_01_0", true);

	WaitAction("絵演背景", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　歪んだ<RUBY text="ねじ">螺子</RUBY>の軌道で空を駆け、銀の巨体の背後へと
回る。
　太刀を構えて進突。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆機動
	CreatePlainSP("絵板写", 20000);
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateTextureSP("絵演村正", 17100, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	CreateStencil("絵演村正型",17110,Center,Middle,128,"cg/st/3d村正標準_騎突_戦闘.png",false);
	CreateColorEX("絵演村正型/色", 17120, "#000000");
	Fade("絵演村正型/色", 0, 750, null, true);

	Zoom("絵演村正*", 0, 150, 150, null, true);
	Request("絵演村正*", Smoothing);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演村正*", 0, @-256, @-100, null, true);
	Move("絵演村正*", 300, @0, @-60, DxlAuto, false);
	FadeDelete("絵板写", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　敵騎に肉薄し――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆機動。前面へ
	CreateSE("SE01a","se戦闘_動作_空上昇01");
	CreateColorEX("絵色黒", 19990, "#000000");

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("絵演村正*", 200, @30, @-60, null, true);
	Move("絵演村正*", 400, @280, @100, null, false);
	Zoom("絵演村正*", 400, 1500, 1500, null, false);
	Wait(100);
	Fade("絵演村正型/色", 300, 0, null, false);
	Wait(300);
	Fade("絵色黒", 100, 1000, null, true);
	Fade("絵演村正*", 100, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
　――前面へ回る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Delete("上背景");
	DrawDelete("絵暗転", 150, 100, "slide_02_01_0", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1380a01">
《標的、至近！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1390a00">
「応――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 20000);
	SetBlur("絵板写", true, 2, 500, 80, false);
	CreateTextureSP("絵演", 18000, -514, -170, "cg/ev/resize/ev910_荒覇吐胸元アップm.jpg");
	Request("絵演", Smoothing);
	Rotate("絵演", 0, @0, @180, @0, null,true);
	Zoom("絵板写", 300, 1500, 1500, Dxl2, false);
	Fade("絵板写", 300, 0, Axl2, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
　戸惑ったように敵影を求めて彷徨う銃砲を尻目に、
まさしく正面へ躍り出る。
　そこにも一門の銃砲。

　――あの小さな、危険極まる砲門。

　敵は俺の意図を即座に察知しただろう。
　だがここに至っては既に遅い。

　その砲が、こちらの作戦意図を妨げるのなら――
　まず、その砲から沈黙させる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣撃。
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る02");
	CreateTextureSPadd("絵演上", 18010, -260, -20, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	CreateTextureSP("絵演", 18000, -260, -20, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	SetVertex("絵演*", 687, 687);
	Zoom("絵演上", 200, 1150, 1150, Dxl2, false);
	Shake("絵演", 1000, 0, 20, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MoveFFP1stop();
	DrawDelete("絵色白", 150, 100, "slide_08_00_1", true);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　斬る――――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

//◆ＡＩフィールド発動
//◆要はバリヤーで止めた。
	CreateSE("SE01","se戦闘_荒覇吐_防壁発動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 18100, Center, Middle, "cg/ev/ev911_荒覇吐ＡＩフィールド展開.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev911_荒覇吐ＡＩフィールド展開.jpg");
	Zoom("絵演上", 200, 1150, 1150, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	Wait(100);
	FadeDelete("絵演上", 200, true);

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1400a00">
「――何!?」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1410a01">
《そんな!?》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　止められた!?
　いや――

{	SoundPlay("@mbgm13",0,1000,true);}
　<RUBY text="・・・・">捕まった</RUBY>!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆見物席
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg046_江ノ島観測台_03.jpg");
	StL(1000, @0, @0,"cg/st/st所長_通常_私服.png");
	StR(1000, @0, @0,"cg/st/stガーゲット_通常_制服a.png");
	FadeStA(0,true);
	FadeBG(0,true);
	DrawDelete("上背景", 200, 100, "slide_01_01_1", true);
	DrawDelete("絵暗転", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1420b02">
「……」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1430b22">
「はいはい、聞かれる前に言うよー。
　あれは<RUBY text="ＡＩフィールド">封鉄力場</RUBY>」

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1440b22">
「電磁場の作用で敵騎の動きを止めるっつー、
防御兼攻撃補助用の武装ですだァー」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1450b02">
「聞いていない」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1460b22">
「あーそーかよぉぉーーー!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆現場
	PrintGO("上背景", 30000);
	CreateSE("SE01","se特殊_雰囲気_集中01_L");
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSPadd("絵演覆", 18010, -110, -100, "cg/ev/resize/ev911_荒覇吐ＡＩフィールド展開m.jpg");
	CreateTextureSP("絵演", 18000, -110, -100, "cg/ev/resize/ev911_荒覇吐ＡＩフィールド展開m.jpg");
	SetVertex("絵演*", 800, 300);
	Shake("絵演覆", 3000, 4, 0, 0, 0, 1000, AxlDxl, false);
	Zoom("絵演覆", 3000, 1200, 1200, null, false);
	FadeDelete("絵演覆", 2800, false);
	OnBG(17000,"bg002_空a_03.jpg");
	FadeBG(0,true);
	MusicStart("SE01",2000,1000,0,750,null,true);
	DrawDelete("上背景", 200, 100, "slide_01_01_0", true);
	DrawDelete("絵暗転", 200, 100, "slide_01_01_0", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1470a01">
《これは……磁気！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1480a00">
「そんなものまで――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
　<RUBY text="そんなもの">磁場発生装置</RUBY>まで装備していたのか！

　今、この鉄身を拘束するのは村正にとって親しい力
――まさに磁力。
　それも強度の電磁気だ。

　力任せでは逃れられそうにない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1490a01">
《――御堂!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1500a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぶおーん
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreatePlainEX("絵板写", 18010);
	CreateSE("SE01","se特殊_鎧_駆動音02");
	CreateSE("SE01b","se特殊_鎧_駆動音01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,750,null,false);
	Fade("絵板写", 0, 800, null, true);
	Shake("絵板写", 300, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

	CreateSEEX("SEL01a","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SEL01a",0,1000,0,100,null,true);
	SetFrequency("SEL01a", 10000, 1000, Dxl3);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 50, 750, null, true);
	FadeDelete("絵色白", 800, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
　正面の砲口がきな臭い唸りを上げる。
　――斬り砕く筈だった凶器が。

　敵の殺刃を狙い打つ企図が砕かれた今、この位置、
この距離は逆転への道から断頭台へ登る階段に意味を
変えている。
　即座に離脱しなければ死は必定。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演弐", 18100, -250, -490, "cg/ev/resize/ev911_荒覇吐ＡＩフィールド展開l.jpg");
	Move("絵演弐", 300, -300, -200, DxlAuto, false);
	Fade("絵演弐", 300, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0761]
　だが、身動きが取れない。
　磁波の網が四肢を縛る。

　磁波が――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1510a00">
「<RUBY text="エンチャント">磁気鍍装</RUBY>!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆磁波ｖｓ磁波。ジジっと。
	CreateSE("SE01","se戦闘_陰義_磁力弾く");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 20000, "#FFFFFF");
	CreateTextureSPadd("絵演上", 18210, -923, -113, "cg/ev/resize/ev903_村正磁気バリアー展開_al.jpg");
	CreateTextureSP("絵演", 18200, -923, -113, "cg/ev/resize/ev903_村正磁気バリアー展開_al.jpg");
	SetVertex("絵演*", 1700, 440);
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Wait(10);
	FadeDelete("絵色白", 200, true);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆離脱
	CreateSE("SE02","se戦闘_衝撃_攻撃交錯02");
	MusicStart("SE02",0,1000,0,1500,null,false);
	Move("絵演弐", 0, -256, -144, null, true);
	FadeDelete("絵演*", 300, false);
	SetBlur("絵演弐", true, 2, 500, 80, false);
	Zoom("絵演弐", 300, 750, 750, null, true);

//◆竜気砲発振
	SetVolume("SEL*", 100, 0, null);

	CreateSE("SE03","se戦闘_荒覇吐_攻撃03");
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	SetBlur("絵演荒上", true, 2, 500, 30, false);
	Zoom("絵演荒上", 0, 1150, 1150, null, true);
	Zoom("絵演荒上", 300, 1000, 1000, null, false);
	Shake("絵演荒上", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("絵演荒上", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("絵色白", 19990, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, false);
	DrawTransition("絵背景", 200, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", true);

	Wait(300);

	WaitAction("絵背景", null);
	PrintGO("上背景", 30000);
	CreateSE("SE06","se戦闘_動作_空突進02");
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵演背景", 17000, InRight, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	MusicStart("SE06",0,1000,0,1000,null,false);
	DrawDelete("上背景", 150, 100, "slide_01_01_1", true);
	Move("絵演背景", 650, 0, @0, Dxl2, false);
	DrawDelete("絵暗転", 150, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
　磁力の反発によって拘束を解除、砲門の前から退避
する。
　間髪の差だった。

　黄泉路を匂わす波動に脇腹を舐められながら、全速
をもって離脱――離脱。
　兎にも角にも距離を稼ぐ。

　敵にあのような備えまであったとは、完全に想定外
だった。
　ひとまず仕切り直す以外に道はない。

　勝算も立たないまま戦闘を続行するなど、自分だけ
手の内を晒してポーカーをするような<RUBY text="もの">行為</RUBY>。
　――言うまでもなく、相手にしてみればそれが最も
望ましい。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆追撃砲火。避けるよー。
	CreateSE("SE01","se戦闘_荒覇吐_攻撃05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 18100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演", 18050, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 250, true);

//◆ちょっと当てられたり。
	CreateColorSP("絵白転", 20000, "#FFFFFF");
	CreateSE("SE02","se戦闘_攻撃_焼き鏝_弱");
	CreateSE("SE02a","se戦闘_破壊_爆発02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);
	WaitKey(10);
	Delete("絵演*");
	CreateColorSPover("絵色赤熱", 20000, "#CC0000");
	DrawTransition("絵色赤熱", 0, 0, 150, 100, null, "cg/data/circle_01_00_1.png", true);

	CloudZoomSet(17110);
	CloudZoomFade(0,false);
	CloudZoomVertex(10000,@512,@-144,null,false);
	CloudZoomStart(400,800,800,300,400);

	CreateTextureSP("絵演背景", 17000, 0, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	SetShade("絵演背景", MEDIUM);
	Zoom("絵演背景", 0, 5000, 5000, null, true);
	FadeDelete("絵白転", 300, false);
	CreatePlainEX("絵板写", 19000);
	SetBlur("絵板写", true, 2, 500, 50, false);
	$残時間=RemainTime("SE02a") / 3;
	FadeDelete("絵色赤熱", 150, false);
	Zoom("絵板写", 0, 1150, 1150, null, true);
	FadeFR2("絵板写",0,500,$残時間,0,0,30,Dxl3, true);
	Delete("絵板写");

	CreateSE("SE03a","se戦闘_動作_空上昇01");
	CreateTextureEX("絵演立絵村正", 17100, -2300, -100, "cg/st/3d村正標準_騎航_通常3b.png");

	SetBlur("絵演立絵村正", true, 2, 500, 120, false);
	Shake("絵演立絵村正", 2160000, 1, 3, 0, 0, 1000, null, false);
	Move("絵演背景", 270000, @-1024, @576, null, false);

	MusicStart("SE03a",0,1000,0,1000,null,false);
	Fade("絵演立絵村正", 300, 1000, null, false);
	Move("絵演立絵村正", 2000, @30, @-120, DxlAuto, false);

	Wait(2000);

	CreateSE("SE04","se戦闘_動作_空走行02_L");
	MusicStart("SE04",2000,1000,0,1500,null,true);
	Move("絵演立絵村正", 20000, @30, @30, DxlAuto, false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1520a00">
「……ッッ。
　一度深入りすると、逃げる時が難儀だな！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1530a01">
《本当にね。
　しかも、稚拙な芸に一杯食わされた屈辱の
おまけまで付いてるし。最悪よ！》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1540a00">
「稚拙か」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1550a01">
《あの図体であの程度の磁気でしょう？
　話にもならない！》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1560a01">
《あんなもの造作なく斬り破ってみせる。
　物分かりの悪い仕手が、いらない手加減を
やめてくれたらね！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
　劔冑の皮肉が意味するところは誤解しようもない。
　が、それは禁じ手だ。殺すことはできない――銀星
号と関わりを持たぬならば。

　攻略の手は他に探す。
　あの砲とあの壁、二つの障害を乗り越える手立てを。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1570a00">
「あの磁場に捕まらない方法は無いか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1580a01">
《……それは難しいでしょうね。
　あの磁場の中で同極の磁気を発生させると、
外側に弾かれることはいま証明したわけだし
……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1590a01">
《速力での突破も見込みがない、となると。
　後は……磁場を発生させている力が尽きる
のを待つくらいじゃないかしら》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1600a00">
「磁場を発生させている……力？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1610a01">
《といっても、あれは陰義じゃないから。
　熱量は関係ないし……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1620a01">
《……熱量……？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演", 19000, Center, Middle, "cg/ev/ev911_荒覇吐ＡＩフィールド展開.jpg");
	Fade("絵演", 300, 750, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
　――力。
　あの磁場を発生させているもの。

　それは電力だろう。
　おそらく、あの奇砲の動力も。

{	FadeDelete("絵演", 600, false);}
　だが、その電力を何処から獲得しているのか。
　巨躯の中に電池を内蔵しているのか。

　あるいは何らかの方法で外部から供給を受けている
のかもしれないが……
　もし電池ならば、使ううちにやがて枯渇するはず。

　――持久戦術がこの際は有効か？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1630a01">
《……御堂》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
　俺と同様に、村正も何かの着想を得ていたらしい。
　こちらに合わせたかのような沈黙から抜け出して、
考え考えといった調子で切り出してくる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1640a01">
《気づいたのだけど……
　どうも、敵の戦い方はおかしくない？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1650a00">
「どういう事か」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1660a01">
《最初の、あの風を思い出して。
　あれは熱量を奪う陰義……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1670a01">
《さっきも言ったと思うけど、武者相手には
極めて有効な攻撃よ。
　……それをどうして、一度きりしか使わず
におくの？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1680a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
　言われてみれば、それは不思議。
　何も銃弾を<RUBY text="あめあられ">雨霰</RUBY>とばら撒くことは無いのだ。

　順序が違う。まずあの陰義を駆使してこちらの足を
止めればいい。
　熱量を失わせ、まともに飛べなくしてしまえば後は
鴨撃ちだ。

　何故、そうしないのか？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1690a00">
「陰義は多大な熱量を消耗するからか……
　いや、だがあの巨体を曲がりなりにも騎航
させるだけの熱量は保有しているのだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1700a01">
《ええ》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1710a00">
「……あの陰義は武者には効かぬという事か？
　甲鉄の護りを破るだけの威力を欠くと……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1720a01">
《そう。
　そう考えるでしょう？》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1730a01">
《それで、また疑問に突き当たるの。
　……そんな陰義が何の役に立つわけ？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1740a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
　まさか非装甲の人間を虐殺するためではないだろう。
　あれだけの大身を用意して想定敵が一般人というの
は、余りにも御粗末過ぎる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1750a01">
《どう思う？　御堂》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1760a00">
「…………。
　敵の、あの巨体――」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1770a00">
「単純に考えて、通常の劔冑より膨大な熱量
を必要とする筈だな？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1780a01">
《ええ。それはおそらく間違いない。
　よほどの名工の鍛造だとしても、桁違いの
熱量を仕手から奪ってゆく代物になってしま
っているはず……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1790a01">
《そこも、不思議なのだけど――》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1800a00">
「そこに陰義を当てはめる。
　……あれは足りぬ熱量を外部から補うため
の力なのではないか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1810a01">
《……！
　そういうこと》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1820a01">
《あの風は生物の熱を<RUBY text="・・・・">奪い取る</RUBY>……
　攻撃ではなく、補給のための陰義！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1830a00">
「……だとすれば方策は定まる。
　今、奴には補給源がない」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1840a00">
「手近に居るのは劔冑に守られた俺のみ。
　島の生命力はほぼ枯渇している」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1850a01">
《持久戦に持ち込めば、熱量欠乏は避けられ
ないということね……！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1860a00">
「あの砲と磁場も持久戦には適さない。
　おそらくは」

{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1870a01">
《なら――》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1880a00">
「ああ。
　――あの怪物を、引き摺り回す」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se戦闘_動作_空上昇01");
	Move("絵演立絵村正", 200, @30, @-20, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 300, 1000, null, false);
	DrawDelete("絵色白", 150, 100, "slide_08_00_0", false);
	Move("絵演立絵村正", 200, @2048, @576, null, true);

	WaitKey(600);

	CreateColorSP("絵暗転", 20000, "#000000");
	DrawTransition("絵暗転", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);
	CloudZoomDelete(0,false);

//◆見物席
//◆戦闘の遠響
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateSE("SEL01","se戦闘_特殊_空中戦風景対荒覇吐01_L");
	OnBG(100,"bg046_江ノ島観測台_03.jpg");
	FadeBG(0,true);
	MusicStart("SEL01",1000,750,0,1000,null,true);
	Delete("上背景");
	DrawDelete("絵暗転", 200, 100, "slide_01_01_0", true);

	SoundPlay("@mbgm08",0,1000,true);

	SetFwC("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1890b02">
「……戦い方を変えたな」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1900b02">
「闘牛から闘牛士になった。
　……力の勝負に見切りをつけたか。判断が
早いな。しかし妥当だ」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1910b02">
「もっとも、さっさと逃げ出す以上に妥当な
手は無いはずだが……いや、既に自分が罠に
はまり逃げ場を失ったと悟っているなら別か。
　鼻の利く猿め」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1920b02">
「雪車町が手を焼くのもわからんではないな。
　これほど場慣れした者を相手取るのは確か
に難業だろうよ。一個大隊などと吹いたのも、
あながち空言ではなかったか……」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1930b22">
「つーか結局なんなのさーアレー。
　この期に及んで俺ってば、何の説明も受け
てねぇんですけどぉ？」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1940b02">
「所長。質問がある」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1950b22">
「聞いてねぇ……聞いてねぇ顔だ……。
　こいつマジでひとのことサルかなんかだと
思ってますよ？」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1960b22">
「もしかしてアレほんとなんじゃねえかなー。
　白人の女は黄色人種なんて人間だと思って
ねーから、ペット同然だから、大和人の男が
いる所でも平気で着替えたりするっての……」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1970b22">
「うおー！
　見てえー！
　ペット扱いされてぇー！」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1980b02">
「敵は持久戦に方針を切り替えたようだ。
　これはあの兵器に対して有効か？」

{	SetVolume("SEL*", 5000, 0, null);
	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1990b22">
「…………はい？　持久戦？
　あ、そりゃヤベェわ」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2000b02">
「説明を」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2010b22">
「説明ったって、見ての通りだけどな。
　あれデカくて小回りが利かねえから、敵が
逃げにかかるとすぐ<RUBY text="カロリー">熱量</RUBY>がなくなっちまう」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2020b22">
「相手がザコならそうなる前に捕まえられる
だろーが……ありゃ無理だぁねぇ。
　お手上げですハイ」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2030b02">
「…………」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2040b02">
「想像を絶する欠陥兵器だな……」

{	FwC("cg/fw/fw所長_笑い.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2050b22">
「欠陥じゃねぇぇよ！
　<RUBY text="バッテリー">燃料缶</RUBY>交換してやりゃあ済むわ！」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2060b02">
「バッテリー？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2070b22">
「あのマッシブボデーを<RUBY text="と">騎航</RUBY>ばすための熱源
だよ。
　騎体を停止させてそいつを新しいのに入れ
替えりゃ、またしばらくは動ける」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2080b02">
「では、それを手配したまえ」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2090b22">
「ところが生憎と、あのバッテリーは調達が
難しくってーねー。
　在庫が少ねえの。そうそう景気良く使える
かってんだ」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2100b02">
「だが、有るのだな？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2110b22">
「……あのですねぇ少佐殿ぉー。
　ここの研究はまだ終わってねぇんですよぉ。
これからも続けなきゃいかんのですよぉー」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2120b22">
「簡単に補充の利かねぇバッテリーをこんな
ワケのわかんねー殴り合いなんぞで使い潰し
ていいわきゃねぇだろぉー？
　なぁオイ。わかれよこの程度の理屈」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2130b02">
「使え」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2140b22">
「……ああぁぁァ!?
　ざけろよテメェ大概にしろやカスこちとら
我慢に我慢を重ねて付き合ってきたけどなァ
俺の虚数空間的に寛大な心にだって限度があ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆チャキ。
	CreateSE("SE01","se戦闘_銃器_拳銃構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(200);

	SetFwC("cg/fw/fw所長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2150b22">
「――ッ」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2160b02">
「所長。
　試みに問うが……」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2170b02">
「英雄と聖人と愚者だけが己の不死を信じる
という。
　君はそのうちのどれなのだ？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2180b22">
「……へ。
　アホですか？　あんた」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2190b22">
「人生が終わらないなんて絶望、一度だって
信じたこたぁねぇよ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ずきゅーん。
	CreateSE("SE01","se戦闘_銃器_拳銃発砲01");
	CreateSE("SE01a","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(200);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FadeDelete("絵フラッシュ白", 300, true);

	SetNwC("cg/fw/nw研究員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/013vs2200e068">
「……しょっ」

//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/013vs2210e068">
「所長!!」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2220b02">
「……その役職は、今から君のものだ」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2230b02">
「新たな所長として、私の指示に従うように」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/013vs2240e068">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正ＶＳ荒覇吐
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev944_村正ＶＳ荒覇吐.jpg");
	DrawDelete("上背景", 150, 100, "slide_01_01_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_01_0", true);

//◆猛銃撃
	CreateSE("SE01","se戦闘_荒覇吐_攻撃01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 600, true);

	CreateSE("SE02","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MFlash(30, 5);

//◆回避機動
	CreateSE("SE03","se戦闘_動作_空突進02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);

//◆竜気砲ぶいーん
	CreateSEEX("SEL04","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SEL04",0,1000,0,100,null,true);
	SetFrequency("SEL04", 10000, 1000, Dxl3);
	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	SetBlur("絵演荒上", true, 2, 500, 30, false);
	Zoom("絵演荒上", 0, 1150, 1150, null, true);
	Zoom("絵演荒上", 300, 1000, 1000, null, false);
	Shake("絵演荒上", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("絵演荒上", 300, 100, "circle_01_00_1", true);

	SetVolume("SEL04", 100, 0, null);
	CreateSE("SE04a","se戦闘_荒覇吐_攻撃03");
	MusicStart("SE04a",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 19990, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, false);
	DrawTransition("絵色白", 200, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", true);
	WaitAction("絵色白", null);

//◆回避ずぎゃー
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵演", 3000, -615, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	SetBlur("絵演", true, 2, 500, 80, false);
	Shake("絵演", 2160000, 1, 1, 0, 0, 1000, null, false);

	DrawDelete("上背景", 150, 100, "slide_01_01_0", true);
	DrawDelete("絵色黒", 150, 100, "slide_01_01_0", true);

	CreateSE("SE05","se戦闘_動作_空突進01");
	CreateColorEXadd("絵色竜気砲", 19000, "#FFFFFF");
	DrawTransition("絵色竜気砲", 0, 0, 50, 1000, null, "cg/data/slide_01_04_0.png", true);

	Fade("絵色竜気砲", 2000, 1000, null, false);

	Wait(1500);

	MusicStart("SE05",0,1000,0,1000,null,false);
	Move("絵演", 150, @-216, @200, Dxl2, false);

	Wait(100);

	DrawTransition("絵色竜気砲", 200, 50, 1000, 1000, null, "cg/data/slide_01_03_0.png", true);

	PrintGO("上背景", 25000);
	CreateSE("SE06","se戦闘_動作_空上昇01");
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵演背景", 17000, InRight, InTop, "cg/bg/resize/bg002_空a_03l.jpg");
	SetBlur("絵演背景", true, 2, 500, 30, false);
	MusicStart("SE06",0,1000,0,1000,null,false);
	Move("絵演背景", 800, @200, @-500, Dxl2, false);
	DrawDelete("上背景", 150, 100, "slide_02_01_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_0", true);

	CreateTextureEX("絵演立絵村正", 17100, 400, -170, "cg/st/3d村正標準_騎航_陰義b.png");
	Zoom("絵演立絵村正", 0, 1500, 1500, null, true);
	Request("絵演立絵村正", Smoothing);
	SetBlur("絵演立絵村正", true, 2, 500, 100, true);
	Shake("絵演立絵村正", 2160000, 1, 2, 0, 0, 1000, null, false);
	Move("絵演背景", 27000, @200, @0, null, false);
	Move("絵演立絵村正", 2000, @-200, @0, DxlAuto, false);
	Fade("絵演立絵村正", 300, 1000, null, true);

	Wait(1700);

	CreateSE("SE06a","se戦闘_動作_空上昇01");
	MusicStart("SE06a",0,1000,0,1500,null,false);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 250, 0, null, false);
	DrawDelete("絵色白", 300, 100, "slide_08_00_1", false);
	Move("絵演立絵村正", 200, @-2000, @-200, Dxl2, false);

	Wait(500);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);
	Delete("絵色白");
	Delete("絵演立絵村正");
	CreateTextureSP("絵演背景", 17000, Center, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @200, @400, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_03_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
　<RUBY text="アップターン">上方旋回</RUBY>から右下方へ捻り込み、<RUBY text="ロール">横転</RUBY>しつつ大きく
回って距離を稼ぐ。<RUBY text="リバース">反転</RUBY>――敵騎の捕捉と入れ違いに
なるタイミングを計りつつ突破、銀に輝く威容の真横
を潜り抜けて背後へと出る――<RUBY text="ピッチアップ">上昇</RUBY>。

　耐久限度の間際に達する<RUBY text="Ｇ">荷重</RUBY>が骨格に軋み音を立て
させる。力加減、速力の調整をわずかに誤れば危うい
均衡は脆くも崩れ、益体もないカルシウムの塊はその
瞬間に粉砕されるとわかっていた。冷汗が背筋を這う。

　敵手の技量は凡庸の域ではない。
　尻尾を舐めさせていた筈の弾幕がふとした刹那、前
方に展開されている。即座に針路転換をすれば微塵の
ずれもなく更にその前へ――躱せば更に更にその前へ。

　その裏まで切り返してようやく虎口を脱した例が既
に数度。三途の川の渡し守をからかっているような、
そんな心地になっている。
　癇癪を起こした死神が今にも襟首を掴みに来そうだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2250a00">
「死線で踊る趣味は無いのだが……！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2260a01">
《まるで今時の刹那的な若者ね！
　歌でもうたってみたらどう!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆銃撃
	CreateSE("SE01","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MFlash(20, 20);
	CreateTextureSPadd("絵演上", 18100, Center, Middle, "cg/ev/ev909_荒覇吐_d.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐_d.jpg");
	Zoom("絵演上", 200, 1200, 1200, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆ぐるぐる避け
	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 19010, "#CC0000");
	CreateTextureSPmul("絵窓/絵演背景", 19020, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureSP("絵窓/絵演立絵村正", 19100, Center, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	CreateSE("SE02","se戦闘_動作_空上昇01");
	Request("絵窓/絵演立絵村正", Smoothing);
	Zoom("絵窓/絵演立絵村正", 0, 850, 850, null, true);
	Move("絵窓/絵演立絵村正", 0, @266, @0, null, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
	SetBlur("絵窓/絵演立絵村正", true, 2, 300, 100, true);
	Shake("絵窓/絵演立絵村正", 5000, 1, 2, 0, 0, 1000, null, false);
	Move("絵窓/絵演立絵村正", 1000, @-1500, @0, Axl2, false);

	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	Wait(500);

	Zoom("絵窓", 500, 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
　無数の火線は時と共に鋭さを増してゆく。
　いつしか、そこからは余裕じみたものが消え失せて
いた。むしろその逆の何かが見受けられる。

　焦り、か――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Delete("@MF*");
	CreateSE("SE01a","se戦闘_荒覇吐_移動01");
	MusicStart("SE01a",0,1000,0,750,null,false);
	CreateTextureEX("絵演背景", 18000, -480, InBottom, "cg/ev/resize/ev909_荒覇吐_cm.jpg");
	Move("絵演背景", 3000, @0, -220, DxlAuto, false);
	Fade("絵演背景", 600, 1000, null, false);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2270a00">
「こちらの狙いには気付いている様子だな」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2280a01">
《まあ、そうでしょうね。
　反撃はしないくせに付かず離れずまわりを
うろちょろしてるんだから》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
　人がましい頭脳があれば、それは気付くだろう。
　そして選んだ対応がこの猛攻か。

　厚い鎧の中で、怪物の仕手は歯噛みをしているのか。
　それとも的外れな戦法に出た敵を嘲笑しているのか。
　成か否か。未だ吉凶は占えない。

　されば今はただ力を尽くす迄の事。
　迷いこそが勝ち目を奪い去る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2290a00">
「――<RUBY text="リニア・アクセル">磁気加速</RUBY>！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2300a01">
《諒解！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラ", 20000, "#FFFFFF");
	CreateTextureSPadd("絵演陰義二", 19005, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	CreateTextureSP("絵演陰義三", 19000, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	Zoom("絵演陰義*", 0, 1300, 1300, null, true);
	SetBlur("絵演陰義二", true, 2, 500, 30, false);
	Zoom("絵演陰義*", 100, 1000, 1000, Dxl2, false);
	Fade("絵フラ", 100, 0, null, false);
	FadeDelete("絵演陰義二", 300, true);

//◆すげー弾幕
	CreateSE("SE02","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 20000, "#FFFFFF");
	Wait(20);
	Delete("絵演陰義*");
	FadeDelete("絵色白", 0, true);
	MFlash(20, 20);
	CreateTextureSPadd("絵演上", 18100, -700, Middle, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	CreateTextureSP("絵演", 18000, -700, Middle, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	Request("絵演*", Smoothing);
	Rotate("絵演*", 0, @0, @180, @0, null,true);
	Zoom("絵演上", 500, 1200, 1200, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Wait(500);

//◆すげー回避
	CreateSE("SE03","se特殊_陰義_磁力加速02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 18010, -1000, -480, "cg/ev/resize/ev904_村正マグネットコーティング_al.jpg");
	CreateTextureSP("絵演", 18000, -1000, -480, "cg/ev/resize/ev904_村正マグネットコーティング_al.jpg");
	SetVertex("絵演*", 1587, 634);
	Zoom("絵演上", 0, 1500, 1500, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Move("絵演*", 200, -680, -210, Dxl2, false);
	Shake("絵演", 200, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateSE("SE03a","se特殊_陰義_磁力加速01");
	MusicStart("SE03a",0,1000,0,1200,null,false);
	CreateTextureSPadd("絵演上", 18010, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_a.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_a.jpg");
	SetVertex("絵演*", 795, 315);
	Zoom("絵演上", 0, 1500, 1500, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Wait(300);

	CreateSE("SE03b","se戦闘_動作_空上昇01");
	MusicStart("SE03b",0,1000,0,1500,null,false);
	CreateTextureSPadd("絵演上", 18010, Center, -610, "cg/ev/ev944_村正ＶＳ荒覇吐.jpg");
	CreateTextureSP("絵演", 18000, Center, -610, "cg/ev/ev944_村正ＶＳ荒覇吐.jpg");
	Zoom("絵演上", 0, 1500, 1500, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
　投網のような、全方位を塞ぐ弾雨。
　加速機動でその網の、目から目へと潜り渡る。

　通常の騎航能力であれば捕捉されただろう。
　頭ではなく心臓を凍りつかせた直感に、要らぬ疑い
を挟まず従ったことが幸いした。

　しかしこれもいつまで続くか。
　限界は敵にのみあるわけではない。対手よりも先に
<RUBY text="フリーズ">熱量欠乏</RUBY>に陥る事態はまずなかろうとも、熱量の減衰
は騎体性能全般の低下を招く。

　村正の機動性能と敵騎の射撃能力とが右開きの不等
号で結ばれた瞬間、勝敗は決するのだ。
　当方にとって喜ばしからざる形で。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2310a01">
《敵の<RUBY text="あし">速力</RUBY>が鈍ってきている……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2320a00">
「確かか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2330a01">
《元々とんだ鈍亀だから、大した違いはない
けどね。
　衰えが見えてきたのは間違いない》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
　ようやくか。
　銃撃の激しさは今なお続いているが――あの巨躯は
弾倉で埋め尽くされているのか？――それとて土台が
ふらついているとあっては意味を失おう。

　後はこのまま、慎重に対応を続ければ――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("@MF*");
	PrintGO("上背景", 25000);
	CreateTextureSPadd("絵演背景覆", 18010, -120, -70, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	CreateTextureSP("絵演背景", 18000, -120, -70, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	CreateSE("SE01","se戦闘_荒覇吐_移動01");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("絵演背景*", 6000, -60, -70, DxlAuto, false);
	FadeDelete("上背景", 600, true);
	FadeDelete("絵演背景覆", 800, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2340a01">
《……？》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2350a01">
《なに？》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2360a00">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	CreateTextureEX("絵演荒砲弾", 18010, Center, Middle, "cg/ev/ev913_荒覇吐追尾弾.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
　何の前触れもなく。
　唐突に、銃弾の嵐が消えて失せた。

{	CreateSE("SE01","se戦闘_破壊_爆発02");
	MusicStart("SE01",0,1000,0,1250,null,false);
	Fade("絵演荒砲弾", 300, 850, null, false);}
　代わって撃ち出されて来る、
　――あれは、砲弾？

{	CreateSE("SE01a","se戦闘_破壊_爆発02");
	MusicStart("SE01a",0,1000,0,1150,null,false);}
　三、四発、続けざまに放たれる大型弾。
　その速度は鈍い。

　否、速い事は速い。
　だが銃砲の弾丸としては、話にもならぬ低速度だ。

　<RUBY text="・・・・・・・">見てから避ける</RUBY>だけの余裕がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1040]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2370a00">
「……回避」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2380a01">
《ええ……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se戦闘_動作_空突進02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵背景", 17000, Center, Middle, "cg/bg/bg002_空a_03.jpg");
	DrawDelete("上背景", 200, 100, "slide_01_01_1", true);
	DrawDelete("絵暗転", 200, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
　騎体を左へ倒し、旋回して弾道から己を外す。
　別段なにかの芸を見せることもなく、弾丸は虚しく
も過ぎ去っていった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2390a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2400a01">
《……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2410a00">
「妙な弾だった……
　あの怪物を縮小して、頭に槍をつけた様な」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2420a01">
《ええ……
　…………？》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2430a01">
《戻ってきた!?》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2440a00">
「何!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転する奇弾
	CreateSE("SE01","se戦闘_荒覇吐_ビット移動04");
	MusicStart("SE01",0,800,0,1200,null,false);
	SetVolume("SE01", 200, 600, null);
	CreateTextureSP("絵演荒砲弾", 18000, Center, Middle, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	Zoom("絵演荒砲弾", 0, 1000, 1000, null, false);
	Zoom("絵演荒砲弾", 200, 800, 800, Dxl2, false);
	Shake("絵演荒砲弾", 200, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾上", 200, true);

	Wait(200);

	CreateSE("SE01a","se戦闘_荒覇吐_ビット移動04");
	MusicStart("SE01a",0,600,0,800,null,false);
	SetVolume("SE01a", 200, 1000, null);
	CreateTextureSPadd("絵演荒砲弾二上", 18110, -358, -198, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	CreateTextureSP("絵演荒砲弾二", 18100, -358, -198, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	Zoom("絵演荒砲弾二*", 0, 800, 800, null, false);
	Request("絵演荒砲弾二*", Smoothing);
	SetBlur("絵演荒砲弾二", true, 2, 500, 30, false);
	DrawTransition("絵演荒砲弾二*", 150, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", false);

	Move("絵演荒砲弾二*", 200, -530, -310, Dxl2, false);
	Zoom("絵演荒砲弾二*", 200, 1200, 1200, Dxl2, false);
	Shake("絵演荒砲弾二", 200, 0, 0, 0, 10, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾二上", 400, true);

//◆ファンネル・ビット
	CreateSE("SE03","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒砲弾三上", 18310, -30, -30, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	CreateTextureSP("絵演荒砲弾三", 18300, -30, -30, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	SetVertex("絵演荒砲弾三*", 256, 144);
	Zoom("絵演荒砲弾三上", 0, 1500, 1500, null, false);
	Zoom("絵演荒砲弾三上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾三", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾三上", 200, true);

	CreateSE("SE04","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE04",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演荒砲弾四上", 18410, -30, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex02.jpg");
	CreateTextureSP("絵演荒砲弾四", 18400, -30, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex02.jpg");
	SetVertex("絵演荒砲弾四*", 256, 720);
	Zoom("絵演荒砲弾四上", 0, 1500, 1500, null, false);
	Zoom("絵演荒砲弾四上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾四", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾四上", 200, true);

	CreateSE("SE05","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE05",0,1000,0,700,null,false);
	CreateTextureSPadd("絵演荒砲弾五上", 18510, -410, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	CreateTextureSP("絵演荒砲弾五", 18500, -410, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	SetVertex("絵演荒砲弾五*", 1280, 720);
	Zoom("絵演荒砲弾五上", 0, 1500, 1500, null, false);
	Zoom("絵演荒砲弾五上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾五", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾五上", 200, true);

	CreateSE("SE06","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE06",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒砲弾六上", 18610, -410, -30, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	CreateTextureSP("絵演荒砲弾六", 18600, -410, -30, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	SetVertex("絵演荒砲弾六*", 1280, 144);
	Zoom("絵演荒砲弾六上", 0, 1500, 1500, null, false);
	Zoom("絵演荒砲弾六上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾六", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾六上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
　弾が、帰ってくる。
　折り返して――意思あるもののように――再び俺を
狙って。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1080]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2450a00">
「なっ――」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2460a00">
「何だ、それは!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2470a01">
《避けて――！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆回避
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	Delete("絵演荒砲弾*");
	CreateTextureSPadd("絵演上", 18010, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 18000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);
	FadeDelete("絵演上", 200, true);

//◆ひゅんひゅんと掠め過ぎてゆくビット
	CreateSE("SE03","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演三上", 18310, -90, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex02.jpg");
	CreateTextureSP("絵演三", 18300, -90, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex02.jpg");
	SetVertex("絵演三*", 256, 144);
	Zoom("絵演三上", 0, 1500, 1500, null, false);
	Zoom("絵演三上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演三", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演三上", 200, true);

	CreateSE("SE04","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE04",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演四上", 18410, -90, -80, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	CreateTextureSP("絵演四", 18400, -90, -80, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	SetVertex("絵演四*", 256, 720);
	Zoom("絵演四上", 0, 1500, 1500, null, false);
	Zoom("絵演四上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演四", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演四上", 200, true);

	CreateSE("SE05","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE05",0,1000,0,700,null,false);
	CreateTextureSPadd("絵演五上", 18510, -410, -80, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	CreateTextureSP("絵演五", 18500, -410, -80, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	SetVertex("絵演五*", 1280, 720);
	Zoom("絵演五上", 0, 1500, 1500, null, false);
	Zoom("絵演五上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演五", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演五上", 200, true);

	CreateSE("SE06","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE06",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演六上", 18610, -410, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	CreateTextureSP("絵演六", 18600, -410, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	SetVertex("絵演六*", 1280, 144);
	Zoom("絵演六上", 0, 1500, 1500, null, false);
	Zoom("絵演六上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演六", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演六上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1090]
　避ける。躱す。
　速度は全く変わりない。弾の大きさと形状を見るに
当てられれば被害は洒落にもならなかろうが、あれの
射線から身を外すのは別段労苦も要らぬ事。

　しかし――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 20000);
	CreateSE("SE01","se戦闘_荒覇吐_移動01");
	CreateTextureEXadd("絵演荒本体覆", 18010, InLeft, -50, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	CreateTextureSP("絵演荒本体", 18000, InLeft, -50, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("絵演荒本体*", 800, -100, @0, Dxl2, false);
	FadeDelete("上背景", 300, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2480a01">
《本体から――！》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2490a00">
「ッ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ズガガッと銃撃
	CreateSE("SE02","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	Fade("絵演荒本体覆", 0, 800, null, true);
	Zoom("絵演荒本体覆", 0, 1100, 1100, null, true);
	Shake("絵演荒本体覆", 216000, 4, 1, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵色白", 150, true);

	MFlash(30, 10);

	Wait(300);

//◆避ける。ちょっと被弾。
	CreateSE("SE03","se戦闘_動作_空突進02");
	MusicStart("SE03",0,1000,0,1250,null,false);
	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	Delete("絵演荒*");
	CreateColorSPover("絵色赤熱", 20000, "#CC0000");
	CreateTextureSP("絵演背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateSE("SE04","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE04a","se戦闘_破壊_爆発02");
	DrawTransition("絵色赤熱", 0, 0, 200, 100, null, "cg/data/circle_01_00_1.png", true);
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE04a",0,1000,0,1000,null,false);
	Delete("絵色黒");

	CreatePlainSP("絵板写", 19000);
	SetBlur("絵板写", true, 2, 500, 50, false);
	$残時間=RemainTime("SE04a") / 3;
	FadeDelete("絵色赤熱", 300, false);
	Shake("絵板写", $残時間, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
　やはり……
　これはこうするためのものか！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2500a01">
《腰部甲鉄に被弾！
　気をつけて、損傷が蓄積している！》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2510a00">
「ぬぅ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1130]
　劔冑の腰部は翼にあたる<RUBY text="ほろ">母衣</RUBY>を支える重要な部位。
　ここが手酷く破壊されたなら墜落は免れない。

　一度は遠退いたかに思えた<RUBY text="デッドライン">死線</RUBY>が再び間近にある。
　幾度も肩透かしを食わされた死神がいま俺を見て、
ほくそ笑みつつ手招きしていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1140]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2520a01">
《御堂！
　あの弾が更に二発――》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2530a00">
「まだ有るのか！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ビット
	CreateSE("SE03","se戦闘_荒覇吐_ビット移動01");
	CreateTextureSPadd("絵演荒砲弾三上", 18310, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	CreateTextureSP("絵演荒砲弾三", 18300, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	SetVertex("絵演荒砲弾三*", 256, 720);
	Zoom("絵演荒砲弾三上", 0, 1500, 1500, null, false);
	MusicStart("SE03",0,1000,0,900,null,false);
	Move("絵演荒砲弾三*", 200, -90, -30, Dxl2, false);
	Zoom("絵演荒砲弾三上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾三", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾三上", 200, true);

	CreateSE("SE04","se戦闘_荒覇吐_ビット移動01");
	CreateTextureSPadd("絵演荒砲弾四上", 18410, InLeft, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	CreateTextureSP("絵演荒砲弾四", 18400, InLeft, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	SetVertex("絵演荒砲弾四*", 1280, 720);
	Zoom("絵演荒砲弾四上", 0, 1500, 1500, null, false);
	MusicStart("SE04",0,1000,0,1100,null,false);
	Move("絵演荒砲弾四*", 200, -420, -80, Dxl2, false);
	Zoom("絵演荒砲弾四上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾四", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾四上", 200, true);

//◆避けー。
	CreateSE("SE05","se戦闘_動作_空突進01");
	MusicStart("SE05",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("絵演*");
	CreateTextureSP("絵演背景", 17000, Center, InTop, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @0, @-288, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_0", true);

	Wait(300);

//◆銃撃
	CreateSE("SE06","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE06",0,1000,0,1000,null,false);
	MFlash(30, 8);
	CreateTextureSPadd("絵演荒上", 18010, -250, -280, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	CreateTextureSP("絵演荒", 18000, -250, -280, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	Zoom("絵演荒上", 0, 1200, 1200, null, false);
	Zoom("絵演荒上", 300, 1000, 1000, Dxl2, false);
	Shake("絵演荒", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒上", 200, true);

	Wait(300);

//◆にーげーてー。
	CreateSE("SE07","se戦闘_動作_空上昇01");
	MusicStart("SE07",0,1000,0,1500,null,false);
	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("絵演*");
	CreateTextureSP("絵演背景", 17000, InRight, InTop, "cg/bg/bg204_横旋回背景b_03.jpg");
	CreateSE("SE07a","se戦闘_動作_空上昇01");
	CreateTextureEX("絵演立絵村正", 17100, -1450, 200, "cg/st/3d村正標準_騎航_通常4b.png");
	SetBlur("絵演立絵村正", true, 2, 500, 120, false);

	MusicStart("SE07a",0,1000,0,1000,null,false);
	Fade("絵演立絵村正", 300, 1000, null, false);
	BezierMove("絵演立絵村正", 950, (-1450,200){-1820,140}{-1770,-240}(-1660,-190), Dxl1, false);
	Move("絵演背景", 150000, -100, -30, DxlAuto, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);
	Shake("絵演立絵村正", 2160000, 1, 3, 0, 0, 1000, null, false);

	Wait(800);

	CreateSE("SE07b","se戦闘_動作_空走行02_L");
	MusicStart("SE07b",2000,1000,0,1500,null,true);

	Move("絵演立絵村正", 20000, -1630, -140, DxlAuto, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2540a01">
《へんてこな砲、私の猿真似みたいな磁場の
盾ときて、今度は勝手に追ってくる弾丸……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2550a01">
《なんなのよこのおもしろびっくり箱は！
　これ、誰かが冗談で造ったんじゃないの!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2560a00">
「俺もそんな気がしている！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1160]
　騎航路に枠をはめる自動追尾弾。
　そして狙い澄ました銃砲撃。

　窮地だった。
　あるいは既に、この場は三途か。

　――死の音が聞こえた。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆ぶおーん
	CreateSEEX("SEL01","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SEL01",0,1000,0,100,null,true);
	SetFrequency("SEL01", 10000, 1000, Dxl3);

	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreatePlainSPadd("絵板写", 18900);
	CreateTextureSPadd("絵演効果", 19000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Delete("絵演立絵村正*");
	Delete("絵演背景*");

	SetBlur("絵板写", true, 2, 500, 30, false);
	Zoom("絵板写", 0, 1150, 1150, null, true);
	Zoom("絵板写", 300, 1000, 1000, null, false);
	DrawDelete("絵板写", 300, 100, "circle_01_00_0", false);

	Zoom("絵演効果", 300, 2000, 2000, AxlDxl, false);
	Fade("絵演効果", 300, 0, null, false);
	DrawDelete("絵演効果", 300, 100, "circle_01_00_1", true);

//◆ビット六発
	CreateSE("SE03","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒砲弾三上", 18310, -30, -30, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	CreateTextureSP("絵演荒砲弾三", 18300, -30, -30, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	SetVertex("絵演荒砲弾三*", 256, 144);
	Zoom("絵演荒砲弾三上", 0, 1500, 1500, null, false);
	Zoom("絵演荒砲弾三上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾三", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾三上", 200, true);

	CreateSE("SE04","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE04",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演荒砲弾四上", 18410, -30, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex02.jpg");
	CreateTextureSP("絵演荒砲弾四", 18400, -30, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex02.jpg");
	SetVertex("絵演荒砲弾四*", 256, 720);
	Zoom("絵演荒砲弾四上", 0, 1500, 1500, null, false);
	Zoom("絵演荒砲弾四上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾四", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾四上", 200, true);

	CreateSE("SE05","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE05",0,1000,0,700,null,false);
	CreateTextureSPadd("絵演荒砲弾五上", 18510, -410, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	CreateTextureSP("絵演荒砲弾五", 18500, -410, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	SetVertex("絵演荒砲弾五*", 1280, 720);
	Zoom("絵演荒砲弾五上", 0, 1500, 1500, null, false);
	Zoom("絵演荒砲弾五上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾五", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾五上", 200, true);

	CreateSE("SE06","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE06",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒砲弾六上", 18610, -410, -30, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	CreateTextureSP("絵演荒砲弾六", 18600, -410, -30, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	SetVertex("絵演荒砲弾六*", 1280, 144);
	Zoom("絵演荒砲弾六上", 0, 1500, 1500, null, false);
	Zoom("絵演荒砲弾六上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾六", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾六上", 200, true);

//◆回避
	PrintGO("上背景", 30000);
	CreateSE("SE07","se戦闘_動作_空上昇01");
	MusicStart("SE07",0,1000,0,1000,null,false);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵演背景", 17000, InRight, Middle, "cg/bg/resize/bg001_空a_03.jpg");
	CreateTextureSP("絵演村正立絵", 17100, 1024, Middle, "cg/st/3d村正標準_騎航_陰義.png");
	Shake("絵演村正立絵", 216000, 0, 2, 0, 0, 1000, DxlAuto, false);
	SetBlur("絵演村正立絵", true, 2, 500, 30, true);
	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	Move("絵演背景", 5000, @576, @0, null, false);
	Move("絵演村正立絵", 300, @-1024, @0, Dxl2, false);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	Wait(150);

	Move("絵演村正立絵", 300, @-30, @0, null, true);

	Wait(200);

	CreateSE("SE07a","se戦闘_動作_空上昇01");
	MusicStart("SE07a",0,1000,0,1500,null,false);
	Move("絵演村正立絵", 300, @-2000, @-150, Axl2, true);

//◆竜気砲発振
	SetVolume("SEL*", 100, 0, null);
	CreateSE("SE08","se戦闘_荒覇吐_攻撃03");
	MusicStart("SE08",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	SetBlur("絵演荒上", true, 2, 500, 30, false);
	Zoom("絵演荒上", 0, 1150, 1150, null, true);
	Zoom("絵演荒上", 300, 1000, 1000, null, false);
	Shake("絵演荒上", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("絵演荒上", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, true);

	Wait(300);

//◆直撃
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateTextureSPadd("絵背景上", 17010, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateSE("SE10","se戦闘_攻撃_焼き鏝_強");
	MusicStart("SE10",0,1000,0,1000,null,false);
	Shake("絵背景", 3000, 0, 30, 0, 0, 500, null, false);
	FadeFR2("絵背景上",0,500,3000,@0,@0,100,Dxl2, false);
	Delete("上背景");
	FadeDelete("絵暗転", 3000, true);
	FadeDelete("絵背景上", 1000, true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1170]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2570a00">
「……ぁぁぁッッ!!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2580a01">
《――左脚甲鉄に被弾！　直撃！
　ほぼ炭化……現状では回復不可能……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1180]
　苦痛がない。
　その無感覚こそおぞましい。

　左腕と全く同じく、左脚は指の先まで一切が動かな
かった。闇に浸したかのような冷たさだけがある。
　村正の回復力をもってしても、治癒には幾日要する
か。

　この際は、そんな事を思い煩う日々へ辿り着けるか
どうかが問われているが。
　左腕右脚左脚と、積み重なった損傷は<RUBY text="おれ">村正</RUBY>の性能を
<RUBY text="ねぎ">葱</RUBY>のように切り詰めつつある。疑うべくもなく。

　……死地――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ビット三発
	CreateSE("SE01","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒砲弾一上", 18310, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	CreateTextureSP("絵演荒砲弾一", 18300, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	SetVertex("絵演荒砲弾一*", 256, 720);
	Zoom("絵演荒砲弾一上", 0, 1500, 1500, null, false);
	Move("絵演荒砲弾一*", 200, -90, -80, Dxl2, false);
	Zoom("絵演荒砲弾一上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾一", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾一上", 200, true);

	CreateSE("SE02","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演荒砲弾二上", 18410, InLeft, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	CreateTextureSP("絵演荒砲弾二", 18400, InLeft, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	SetVertex("絵演荒砲弾二*", 1280, 720);
	Zoom("絵演荒砲弾二上", 0, 1500, 1500, null, false);

	Move("絵演荒砲弾二*", 200, -410, -80, Dxl2, false);
	Zoom("絵演荒砲弾二上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾二", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾二上", 200, true);

	CreateSE("SE03","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE03",0,1000,0,700,null,false);
	CreateTextureSPadd("絵演荒砲弾三上", 18510, InLeft, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	CreateTextureSP("絵演荒砲弾三", 18500, InLeft, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	SetVertex("絵演荒砲弾三*", center, 144);
	Zoom("絵演荒砲弾三上", 0, 1500, 1500, null, false);

	Move("絵演荒砲弾三*", 200, -410, -205, Dxl2, false);
	Zoom("絵演荒砲弾三上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾三", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾三上", 200, true);

//◆避けるー。
	CreateSE("SE04","se戦闘_動作_空突進01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("絵演*");
	CreateTextureSP("絵演背景", 17000, Center, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @0, @288, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	WaitKey(500);

//◆銃撃
	CreateSE("SE06","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE06",0,1000,0,1000,null,false);
	MFlash(30, 8);
	CreateTextureSPadd("絵演荒上", 18010, -110, -20, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	CreateTextureSP("絵演荒", 18000, -110, -20, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	Zoom("絵演荒上", 0, 1200, 1200, null, false);
	Zoom("絵演荒上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒上", 200, true);

	Wait(300);

//◆避けるけどー。
	CreateSE("SE07","se戦闘_動作_空上昇01");
	MusicStart("SE07",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵演荒");

	CreateTextureSPadd("絵演村正上", 18010, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演村正", 18000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演村正上", 0, 1300, 1300, null, false);
	Zoom("絵演村正上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演村正", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演村正*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演村正上", 200, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1190]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2590a00">
「ちぃっ……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2600a01">
《まだよ！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ビット三発
//◆ビット三発
	CreateSE("SE01","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒砲弾一上", 18310, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	CreateTextureSP("絵演荒砲弾一", 18300, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	SetVertex("絵演荒砲弾一*", 256, 720);
	Zoom("絵演荒砲弾一上", 0, 1500, 1500, null, false);
	Move("絵演荒砲弾一*", 200, -90, -80, Dxl2, false);
	Zoom("絵演荒砲弾一上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾一", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾一上", 200, true);

	CreateSE("SE02","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演荒砲弾二上", 18410, InLeft, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	CreateTextureSP("絵演荒砲弾二", 18400, InLeft, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	SetVertex("絵演荒砲弾二*", 1280, 720);
	Zoom("絵演荒砲弾二上", 0, 1500, 1500, null, false);

	Move("絵演荒砲弾二*", 200, -410, -80, Dxl2, false);
	Zoom("絵演荒砲弾二上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾二", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾二上", 200, true);

	CreateSE("SE03","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE03",0,1000,0,700,null,false);
	CreateTextureSPadd("絵演荒砲弾三上", 18510, InLeft, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	CreateTextureSP("絵演荒砲弾三", 18500, InLeft, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	SetVertex("絵演荒砲弾三*", center, 144);
	Zoom("絵演荒砲弾三上", 0, 1500, 1500, null, false);

	Move("絵演荒砲弾三*", 200, -410, -205, Dxl2, false);
	Zoom("絵演荒砲弾三上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾三", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾三上", 200, true);

//◆避けるー。
	CreateSE("SE04","se戦闘_動作_空突進01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("絵演*");
	CreateTextureSP("絵演背景", 17000, InRight, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @216, @288, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	WaitKey(500);

//◆銃撃。
	CreateSE("SE06","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE06",0,1000,0,1000,null,false);
	MFlash(30, 8);
	CreateTextureSPadd("絵演荒上", 18010, -300, -240, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	CreateTextureSP("絵演荒", 18000, -300, -240, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	Zoom("絵演荒上", 0, 1200, 1200, null, false);
	Zoom("絵演荒上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒上", 200, true);

	Wait(300);

//◆食らいました。ズガッと。
	CreateSE("SE07","se戦闘_動作_空突進02");
	MusicStart("SE07",0,1000,0,1250,null,false);
	CreateColorEXadd("絵色白", 30000, "#FFFFFF");
	SetBlur("絵演荒", true, 3, 500, 30, false);
	Zoom("絵演荒", 150, 1500, 1500, Dxl2, false);
	Fade("絵色白", 150, 1000, Axl2, false);
	DrawTransition("絵色白", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);
	Delete("絵演荒*");
	Delete("@MF*");
	CreateColorSPover("絵色赤熱", 20000, "#CC0000");
	CreateTextureSP("絵演背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateSE("SE07a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE07b","se戦闘_攻撃_鎧攻撃命中03");
	DrawTransition("絵色赤熱", 0, 0, 200, 100, null, "cg/data/circle_01_00_1.png", true);
	MusicStart("SE07a",0,1000,0,1000,null,false);
	MusicStart("SE07b",0,1000,0,1000,null,false);
	Delete("絵色白");

	CreatePlainSP("絵板写", 19000);
	SetBlur("絵板写", true, 2, 500, 50, false);
	$残時間=RemainTime("SE07b")/2;
	FadeDelete("絵色赤熱", 300, false);
	Shake("絵板写", $残時間, 0, 60, 0, 0, 1000, Dxl3, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1200]
　機動力の限界点――
　弾雨の洗礼を浴びる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1210]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2610a00">
「……っぅ……！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2620a01">
《御堂……！
　このままだと押し負ける！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1220]
　言われるまでもない。
　この情勢は、もはや<RUBY text="・・・・・・">詰まれている</RUBY>。

　あらゆる逃げ場は封じられ、既に<RUBY text="ぎょく">玉</RUBY>は孤立無援。
　対局者はあと一手、決めの手を打てばそれで片付く。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ビット二発
	CreateSE("SE01","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒砲弾一上", 18310, InLeft, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	CreateTextureSP("絵演荒砲弾一", 18300, InLeft, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	SetVertex("絵演荒砲弾一*", 256, 720);
	Zoom("絵演荒砲弾一上", 0, 1500, 1500, null, false);
	Move("絵演荒砲弾一*", 200, -410, -230, Dxl2, false);
	Zoom("絵演荒砲弾一上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾一", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾一上", 200, true);

	CreateSE("SE02","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演荒砲弾二上", 18410, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	CreateTextureSP("絵演荒砲弾二", 18400, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	SetVertex("絵演荒砲弾二*", 1280, 720);
	Zoom("絵演荒砲弾二上", 0, 1500, 1500, null, false);

	Move("絵演荒砲弾二*", 200, -110, -90, Dxl2, false);
	Zoom("絵演荒砲弾二上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾二", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾二上", 200, true);

//◆避ける
	CreateSE("SE03","se戦闘_動作_空突進01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("絵演*");
	CreateTextureSP("絵演背景", 17000, InLeft, InTop, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @-512, @-288, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_03_01_0", true);

	WaitKey(500);

//◆ぶおーん。
	CreateSE("SE03","se特殊_鎧_駆動音01");
	CreateSE("SE03b","se特殊_鎧_駆動音02");
	MusicStart("SE03",0,1000,0,800,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	Zoom("絵演荒上", 0, 1200, 1200, null, false);
	Zoom("絵演荒上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒上", 200, true);

	CreateSEEX("SEL01","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SEL01",0,1000,0,100,null,true);
	SetFrequency("SEL01", 10000, 1000, Dxl3);

	CreatePlainSPadd("絵板写", 18900);
	CreateTextureSPadd("絵演効果", 19000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	SetBlur("絵板写", true, 2, 500, 30, false);
	Zoom("絵板写", 0, 1150, 1150, null, true);
	Zoom("絵板写", 3000, 1000, 1000, null, false);
	DrawDelete("絵板写", 3000, 100, "circle_01_00_0", false);

	Zoom("絵演効果", 3000, 2000, 2000, AxlDxl, false);
	Fade("絵演効果", 3000, 0, null, false);
	DrawDelete("絵演効果", 3000, 100, "circle_01_00_1", false);

	Wait(3000);

//◆竜気砲
	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	SetBlur("絵演荒上", true, 2, 500, 30, false);
	Zoom("絵演荒上", 0, 1150, 1150, null, true);
	Zoom("絵演荒上", 300, 1000, 1000, null, false);
	Shake("絵演荒上", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("絵演荒上", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, true);

	Wait(300);

	SetVolume("SE*", 5000, 0, null);
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateColorEXadd("絵演荒竜", 19000, "#FFFFFF");
	CreateTextureSP("絵演村正", 18000, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	DrawTransition("絵演荒竜", 0, 0, 100, 1000, null, "cg/data/slide_01_00_0.png", true);
	Fade("絵演荒竜", 5000, 750, null, false);
	DrawDelete("上背景", 150, 100, "slide_01_03_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_0", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1230]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2630a01">
《御堂ッ！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1240]
　退避――
　あの射線から外れる――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ビット飛来
	CreateSE("SE02","se戦闘_荒覇吐_ビット移動04");
	MusicStart("SE02",0,600,0,800,null,false);
	SetVolume("SE02", 200, 1000, null);
	CreateTextureSPadd("絵演荒砲弾一上", 19110, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾l.jpg");
	CreateTextureSP("絵演荒砲弾一", 19100, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾l.jpg");

	Delete("絵演村正*");
	Delete("絵演荒竜");
	Zoom("絵演荒砲弾一", 0, 800, 800, null, false);
	Request("絵演荒砲弾一*", Smoothing);
	SetBlur("絵演荒砲弾一上", true, 2, 500, 30, false);
	DrawTransition("絵演荒砲弾一*", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);

	Move("絵演荒砲弾一*", 200, 250, 70, Dxl2, false);
	Zoom("絵演荒砲弾一", 200, 1500, 1500, Dxl2, false);
	Zoom("絵演荒砲弾一上", 200, 2250, 2250, Dxl2, false);
	Shake("絵演荒砲弾一", 200, 0, 0, 0, 10, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾一上", 400, true);

//◆直撃
	CreateColorEXadd("絵色白", 30000, "#FFFFFF");
	SetBlur("絵演荒", true, 3, 500, 30, false);
	Zoom("絵演荒", 150, 1500, 1500, Dxl2, false);
	Fade("絵色白", 150, 1000, Axl2, false);
	DrawTransition("絵色白", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);
	Delete("絵演荒*");
	CreateColorSPover("絵色赤熱", 20000, "#CC0000");
	CreateTextureSP("絵演背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateSE("SE07a","se戦闘_衝撃_衝突01");
	CreateSE("SE07b","se戦闘_攻撃_鎧攻撃命中03");
	DrawTransition("絵色赤熱", 0, 0, 200, 100, null, "cg/data/circle_01_00_1.png", true);
	MusicStart("SE07a",0,1000,0,1000,null,false);
	MusicStart("SE07b",0,1000,0,1000,null,false);
	Delete("絵色白");

	CreatePlainSP("絵板写", 19000);
	SetBlur("絵板写", true, 2, 500, 50, false);
	$残時間=RemainTime("SE07b")/2;
	FadeDelete("絵色赤熱", 300, false);
	Shake("絵板写", $残時間, 0, 60, 0, 0, 1000, Dxl3, true);
	Delete("絵板写");

	CreatePlainSP("絵板写", 30000);
	CreateTextureSP("絵演村正立絵", 17100, Center, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	Move("絵演村正立絵", 0, @140, @0, null, true);
	Shake("絵演村正立絵", 800, 4, 2, 0, 0, 1000, Dxl2, false);
	Move("絵演村正立絵", 800, @90, @20, DxlAuto, false);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1250]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2640a00">
「がはァ!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2650a01">
《いけない――！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ビット残り三発
	CreateSE("SE01","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒砲弾一上", 18310, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾mex02.jpg");
	CreateTextureSP("絵演荒砲弾一", 18300, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾mex02.jpg");
	SetVertex("絵演荒砲弾一*", 256, 144);
	Zoom("絵演荒砲弾一上", 0, 1500, 1500, null, false);
	Move("絵演荒砲弾一*", 200, -90, -220, Dxl2, false);
	Zoom("絵演荒砲弾一上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾一", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾一上", 200, true);

	CreateSE("SE02","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演荒砲弾二上", 18410, InLeft, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	CreateTextureSP("絵演荒砲弾二", 18400, InLeft, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	SetVertex("絵演荒砲弾二*", 1280, 144);
	Zoom("絵演荒砲弾二上", 0, 1500, 1500, null, false);
	Move("絵演荒砲弾二*", 200, -420, -80, Dxl2, false);
	Zoom("絵演荒砲弾二上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾二", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾二上", 200, true);

	CreateSE("SE03","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE03",0,1000,0,700,null,false);
	CreateTextureSPadd("絵演荒砲弾三上", 18510, Center, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	CreateTextureSP("絵演荒砲弾三", 18500, Center, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	SetVertex("絵演荒砲弾三*", center, 720);
	Zoom("絵演荒砲弾三上", 0, 1500, 1500, null, false);
	Move("絵演荒砲弾三*", 200, -420, -220, Dxl2, false);
	Zoom("絵演荒砲弾三上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾三", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾三上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1260]
　退路――――
　無し。

　死砲の射線は貫通している。
　逃避すべき方角は追尾弾が封鎖する。

　<RUBY text="チェックメイト">詰み手</RUBY>。
　<RUBY text="ゲームセット">投了</RUBY>。

　最早、これ迄。
　俺は死す。

　ここで死ねる。
　――――――<RUBY text="・・・">死ねる</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜気砲
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	CreateTextureSP("絵演荒", 19000, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	Request("絵演荒", Smoothing);
	Delete("絵演荒覇砲弾*");
	Zoom("絵演荒", 10000, 1500, 1500, DxlAuto, false);
	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1270]
　…………だが。
　そんな事を、果たして許せようか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	SetVolume("SE*", 300, 0, null);
	SetVolume("@mbgm*", 300, 0, null);
	CreateColorEX("絵色黒", 19900, "#000000");
	Fade("絵色黒", 300, 1000, Dxl2, true);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1280]
//◆顔グラなし
//【光】
<voice name="光" class="光" src="voice/ma04/013vs2660a14">
「真逆。
　――だろう？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆村正
	PrintBG("上背景", 30000);
	CreateSE("SE01","se特殊_陰義_発動03");
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	OnBG(100,"bg002_空a_03.jpg");
	FadeBG(0,true);
	MusicStart("SE01",0,1000,0,1500,null,false);
	FadeDelete("上背景", 100, true);
	WaitKey(200);
	FadeDelete("絵暗転", 300, true);

	SoundPlay("@mbgm12",0,1000,true);

	CreateWindow("絵窓上", 15000, 0, 0,1024, 288, false);
	CreateWindow("絵窓下", 15000, 0, 288, 1024, 576, false);
	SetAlias("絵窓上","絵窓上");
	SetAlias("絵窓下","絵窓下");

	CreateColorSP("絵窓上/絵色100", 15000, "Black");
	CreateColorSP("絵窓下/絵色100", 15000, "Black");

	CreateWindow("絵窓縦", 15000, 512, 0,400, 576, false);
	SetAlias("絵窓縦","絵窓縦");
	CreateTextureEX("絵窓縦/絵EV100", 16000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_b.jpg");
	Request("絵窓縦/絵EV100", Smoothing);
	Zoom("絵窓縦/絵EV100", 0, 2000, 2000, null, true);
	Move("絵窓縦/絵EV100", 0, @-300, @0, null, false);

	CreateTextureEX("絵窓縦/絵EV200", 16000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	Request("絵窓縦/絵EV200", Smoothing);
	Zoom("絵窓縦/絵EV200", 0, 2000, 2000, null, true);
	Move("絵窓縦/絵EV200", 0, @-300, @0, null, false);

	Delete("黒幕１");

	CreateTextureSP("絵EV100", 14000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_a.jpg");
	CreateTextureEX("絵EV200", 14000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_b.jpg");
	Request("絵EV100", Smoothing);
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	Move("絵EV100", 0, @+400, @+288, null, false);
	Request("絵EV200", Smoothing);
	Zoom("絵EV200", 0, 2000, 2000, null, true);
	Move("絵EV200", 0, @0, @+288, null, false);

	Move("絵EV100", 500, @-400, @0, Dxl1, false);
	Move("絵窓上", 300, @0, @-200, null, false);
	Move("絵窓下", 300, @0, @+200, null, true);

	WaitAction("絵EV100", null);

	CreateColorEXadd("絵色100", 14001, "White");

	OnSE("se特殊_鎧_装着01",1000);

	Fade("絵EV200", 0, 1000, null, false);
	Fade("絵色100", 0, 1000, null, false);

	DrawTransition("絵色100", 200, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_1.png", true);
	Delete("絵EV100");
	FadeDelete("絵色100",1000,true);

	CreateColorEX("絵色100", 14005, "Black");
	Fade("絵色100", 0, 700, null, false);
	DrawTransition("絵色100", 300, 0, 1000, 100, Dxl1, "cg/data/slide_06_00_1.png", true);

	Fade("絵窓縦/絵EV100", 0, 1000, null, false);
	DrawTransition("絵窓縦/絵EV100", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_00_1.png", true);
//	CreateColorSP("絵色100", 10, "White");

	Wait(300);

	Fade("絵窓縦/絵EV200", 0, 1000, null, false);
	Shake("絵窓縦/絵EV200", 500000, 2, 1, 0, 0, 500, null, false);

	OnSE("se特殊_電撃_帯電01",700);

	CreateSE("SEL01","se特殊_電撃_帯電01");
	MusicStart("SEL01",0,700,0,1000,null,true);

	CreateColorEXadd("絵窓縦/絵200", 20000, #99CCFF);
	Fade("絵窓縦/絵200", 10, 600, null, true);
	Fade("絵窓縦/絵200", 100, 0, null, true);
	Fade("絵窓縦/絵200", 10, 500, null, true);
	Fade("絵窓縦/絵200", 100, 0, null, true);
	Fade("絵窓縦/絵200", 10, 700, null, true);
	Fade("絵窓縦/絵200", 100, 0, null, true);
	Fade("絵窓縦/絵200", 10, 500, null, true);
	Fade("絵窓縦/絵200", 100, 0, null, true);
	Fade("絵窓縦/絵200", 10, 800, null, true);
	Fade("絵窓縦/絵200", 100, 0, null, true);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1290]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2670a00">
「ああああァァ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1300]
　<RUBY text="・・・">ちから</RUBY>を回す。

　臍下丹田から五臓六腑を馳せ巡り、脊髄へ落とす。
　陽根へ達した所で再び丹田まで掬い上げる。

　回す。
　根源の力を回し、轟々たる荒乱を呼ぶ。

　　　　　　　天破崩稜落煉鬼属
　　　　　　　妙法八界死辰雷領

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1310]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2680a00">
「<RUBY text="エンチャント・エンディング">磁装・蒐窮</RUBY>！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2690a01">
《!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆全身に紫電がー。溜めポーズ
	SetVolume("OnSE*", 1000, 0, null);
	SetVolume("SEL01", 1000, 0, null);

	CreateSE("SE01","se特殊_電撃_放電02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 20010, "#FFFFFF");

	Delete("絵窓上/*");
	Delete("絵窓下/*");
	Delete("絵窓縦/*");

	Delete("絵窓上");
	Delete("絵窓下");
	Delete("絵窓縦");

	Delete("絵色100");
	Delete("絵EV100");
	Delete("絵EV200");

	CreateTextureSP("絵演", 4000, -440, -40, "cg/ev/resize/ev902_村正電磁抜刀レールガン_cm.jpg");

	Wait(50);

	FadeDelete("絵色白", 100, false);

	Move("絵演", 300, -380, @0, Dxl2, false);
	Fade("絵演", 300, 1000, null, true);
	CreateSE("SEL01","se特殊_電撃_帯電02");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateTextureEXadd("プロ絵上", 4020, -380, -40, "cg/ev/resize/ev902_村正電磁抜刀レールガン_dm.jpg");
	CreateTextureEXsub("プロ絵", 4010, -380, -40, "cg/ev/resize/ev902_村正電磁抜刀レールガン_dm.jpg");
	SetVertex("プロ絵", 1160, 470);

	DenziBladeCharge();

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1320]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2700a00">
「<RUBY text="レールガン">電磁抜刀</RUBY>――<RUBY text="マガツ">禍</RUBY>!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆撃ちました。
	CreateColorSPadd("絵色白", 30000, "#FFFFFF");

	Wait(10);

	SetVolume("SE*", 100, 0, null);
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateSE("SE01","se特殊_電撃_放電01");
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/resize/ef030_汎用電磁抜刀am.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/resize/ef030_汎用電磁抜刀am.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Delete("プロ*");
	Delete("Ｐ*");
	Delete("上背景");
	FadeDelete("絵色白", 100, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 700, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Wait(500);

//◆ビット三機をすべて斬墜
	CreateColorSPadd("絵色白", 30000, "#FFFFFF");

	Wait(10);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateSE("SE02","se戦闘_衝撃_鎧散華");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureEX("絵演荒砲弾", 3110, Center, Middle, "cg/ev/ev913_荒覇吐追尾弾.jpg");
	CreateTextureSPover("絵演上", 3100, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	SetVertex("絵演上", 580, 230);
	SetBlur("絵演上", true, 3, 300, 100, false);

	Delete("上背景");
	Delete("絵色白");
	Fade("絵演荒砲弾", 0, 750, null, true);
	FadeDelete("絵演荒砲弾", 500, false);
	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 1000, false);

	Wait(500);

//◆竜気砲発振
	CreateSE("SE08","se戦闘_荒覇吐_攻撃03");
	MusicStart("SE08",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	SetBlur("絵演荒上", true, 2, 500, 30, false);
	Zoom("絵演荒上", 0, 1150, 1150, null, true);
	Zoom("絵演荒上", 300, 1000, 1000, null, false);
	Shake("絵演荒上", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("絵演荒上", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, true);

	WaitKey(2000);

//◆すれすれで回避ー。
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 30000, "#000000");
	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("絵演*");
	Fade("絵色白", 0, 750, null, true);
	CreateTextureSP("絵演背景", 17000, Center, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	SetVolume("SE08", 3000, 0, null);
	FadeDelete("絵色白", 650, false);
	Move("絵演背景", 650, @0, @288, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1330]
　死線を、
　脱す――――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	WaitAction("絵演背景", null);

//◆一瞬、グレイアウト
	CreateSE("SE01","se人体_体_心臓の音02");
	CreatePlainSP("絵演失神一", 20000);
	CreatePlainSP("絵演失神二", 19990);
	SetShade("絵演失神一", HEAVY);
	SetShade("絵演失神二", SEMIHEAVY);
	SetTone("絵演失神*", Monochrome);
	SetBlur("絵演失神*", true, 1, 500, 30, false);
	SetVolume("@mbgm*", 300, 0, null);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演失神*", 300, 1150, 1150, Dxl2, false);
	Fade("絵演失神一", 100, 0, Dxl2, false);
	FadeDelete("絵演失神二", 200, true);
	Delete("絵演失神*");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1340]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2710a01">
《……くっ！
　熱量が……！》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2720a00">
「はぁ……ぁぁっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1350]
　全身を包もうとする寒気。
　振り払う――だが、払えるものではない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1360]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2730a00">
「やむ無し……
　着陸する」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2740a01">
《諒解……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆着陸
	CreateSE("SE01","se戦闘_動作_鎧_着地01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("絵演背景", 300, @0, @-288, null, false);
	Wait(250);

	CreateColorSP("絵暗転", 10000, "#000000");
	DrawDelete("上背景", 200, 100, "slide_02_01_0", true);

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);

	Delete("上背景");
	DrawDelete("絵暗転", 200, 100, "slide_02_01_0", true);

	CreateSE("SE01a","se戦闘_衝撃_鎧転倒01");
	CreatePlainEX("絵板写震", 5000);
	Fade("絵板写震", 0, 300, null, true);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Shake("絵板写震", 1000, 0, 60, 0, 0, 1000, Dxl1, true);
	Delete("絵板写震");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1370]
　地表に降りる。……転がる。
　両足をまともに動かせぬ<RUBY text="ざま">醜態</RUBY>では、惨めに這いつく
ばるほかになかった。

　今この機を狙い撃たれれば、もはや逃れる術はない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1380]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2750a00">
「村正！　敵情！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2760a01">
《…………<?>
{	Wait(500);}
停止！
　敵騎も着陸した模様！》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2770a01">
《あちらも熱量の限界に達したのね……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1390]
　紙一重、か。
　俺は深く……深く、息を吐いた。

　だが、のんびりと拾った命を味わっている暇はない。
　こうなった上は、回復力の勝負になる。

　敵手よりも先に態勢を立て直し、止めを刺す――
　さもなくば、次こそは三途の川の向こう岸へと追い
やられる始末になろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1400]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2780a00">
「村正……騎体状況を診査」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2790a01">
《諒解――
　あら？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1410]
　劔冑が頓狂な応答をする。
　それと前後して、背後の地面が鳴った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"ma04_014vs.nss"

.//プロセス用======================================================

..//電磁抜刀放電ループ
function DenziBladeCharge()
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
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 250, 0, null, true);
	Wait(50);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@プロ絵", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 200, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@プロ絵", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 150, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	}

}