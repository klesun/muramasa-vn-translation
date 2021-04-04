//<continuation number="820">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_019.nss_MAIN
{


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
	#ev122_擱坐した荒覇吐 = true;
	#ev123_大剣を持つガーゲット少佐 = true;
	#ev912_荒覇吐竜気砲アップ_a = true;
	#ev912_荒覇吐竜気砲アップ_b = true;


	//▼ルートフラグ、選択肢、次のGameName
	#av_アスカロンⅦ=true;
	#av_ST05ワーウルフ=true;
	#av_GR03ガルム=true;

	$PreGameName = $GameName;

	$GameName = "ma04_020vs.nss";

}

scene ma04_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_018vs.nss"

//◆小分岐。
//◆ヒロイン全員生存ルートの場合は以下シーン。
//◆それ以外の場合は飛ばして次へ。

..//if_start
if(!$Ichizyou_Dead && !$Kanae_Dead){
//◆一条
//◆ピピッ。無線操作中
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg046_江ノ島灯台_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	CreateSE("SE01","se日常_機械_無線通信02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0190010a02">
「湊斗さん！
　……湊斗さんっ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピー、ガガー。電波状態最悪。
//◆ピピッ。無線操作中

	CreateSE("SE01a","se日常_機械_無線通信06");//ダミー注意
	MusicStart("SE01a",0,1000,0,1000,null,false);


	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0190020a02">
「おい、大鳥のお嬢！
　聞こえねぇのか!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピー、ガガー。電波状態最悪。
	CreateSE("SE01a","se日常_機械_無線通信03");//ダミー注意
	MusicStart("SE01a",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0190030a02">
「なんだよこれ……
　まさか妨害電波ってやつか!?」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0190040a02">
「くそぉ……
　届けよ！」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0190050a02">
「<RUBY text="・・・">来てる</RUBY>！
　<RUBY text="・・・・・・・">来やがったんだ</RUBY>！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピー、ガガー。電波状態最悪。
	CreateSE("SE01a","se日常_機械_無線通信03");//ダミー注意
	MusicStart("SE01a",0,1000,0,1000,null,true);

	ClearWaitAll(2000, 1000);

}
..//if_end

//◆荒覇吐、擱坐
	PrintBG("上背景", 25000);
	Delete("@クリア黒");
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateTextureSP("絵ＥＶ500", 500, Center, -240, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	Delete("上背景");
	CreateSE("SEL01","se自然_火_火災倒壊");
	MusicStart("SEL01",2000,1000,0,750,null,true);
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　鉄巨兵は沈黙していた。
　一文字形の深い亀裂を晒し、月光の下に輝く屑鉄の
山となり果てている。

　自由の利かぬ足を酷使して山によじ登り、亀裂から
こぼれたような格好で項垂れる六波羅制式の竜騎兵を
引き摺り出す。
　巨兵の乗り手であった男は、失神していた。

　それは無造作に地面へ放り捨てておいて、俺は亀裂
の中を覗き込んだ。
　幾重にも交差した橋梁の向こう、檻に閉じ込められ
て――<RUBY text="うずくま">蹲</RUBY>る<RUBY text="・・">彼ら</RUBY>の姿を視認する。

　誰一人、身動きしない。
　身を寄せ合い、固まったまま。

　胸骨に沿って、体内を氷塊が滑り落ちた。
　声が出ない――彼らの名を呼び、生死を確認すると
いう単純な作業が、恐怖によって阻止されている。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	FadeDelete("絵ＥＶ*", 1000, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190060a00">
「……村正。
　確認しろ」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190070a00">
「熱源探査。
　彼らの……状態は」

{	CreateSE("SE01","se特殊_コックピット_探索01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190080a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190090a01">
《……無事よ。
　衰弱が酷いけれど……生きている。すぐに
治療を受けさせれば助かるでしょう》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆くらっときた感じ。めまい。
//◆落ちた。どさっ。
	PrintGO("絵ＥＦ100", 5100);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Zoom("絵ＥＦ100", 0, 1200, 1200, null, true);
	SetTone("絵ＥＦ100", NegaPosi);
	FadeFR2("絵ＥＦ100",0,800,300,0,0,20,DxlAuto, false);
	FadeDelete("絵ＥＦ100", 600, true);
	CreateSE("SE01","se戦闘_衝撃_鎧転倒01");
	PrintGO("絵ＥＦ100", 5200);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵ＥＦ100", 300, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("絵ＥＦ100");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190100a01">
《御堂！》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190110a00">
「済まん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070a]
　忘却していた疲労、苦痛が<RUBY text="いちどき">一刻</RUBY>に押し寄せた。
　脳が揺れる。目が眩む。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,800,null,false);
	StR(1000, @-30, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	Move("@StR*", 300, @30, @0, DxlAuto, false);
	FadeStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070b]
　無様な転落の衝撃はそこへ更に拍車をかけた。
　どうにかこうにか、振り払って立ち上がる。

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190120a01">
《……本当に限界ね。
　今の私達なら、この間の<RUBY text="れーさーくるす">競技用劔冑</RUBY>とやら
と殴り合いしても負けられるかも》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190130a00">
「お前がそんな弱音を吐くなら余程だな。
　まだ、研究所の方が片付いていないが……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190140a01">
《まさか？》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190150a00">
「今回はここまでとしておく。
　本件は銀星号事件と無関係である事がほぼ
確定した。である以上、現状で解決を強行す
べき必然性は欠く」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190160a00">
「といってこの島を放置して良いということ
にはならないが。
　今は、彼ら……芳養一家の保護が優先だ」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190170a00">
「彼らの身柄を確保し、仲間と合流、対岸へ
帰還する」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190180a01">
《諒解。
　驚かさないで》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　改めて、鉄屑によじ登ろうと手を掛ける。
　あの裂傷から子供達を救助できればいいのだが……
難しいようなら手立てを考えなくてはならない。

　あるいは俺はこの場を確保して待ち、救援を呼びに
やらせるという手も――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆竜騎兵の機銃射撃
//◆被弾。転がる
	CreateSE("SE01a","se戦闘_銃器_機関銃乱射01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("絵フラ", 5500, "#FFFFFF");
	CreateTextureEX("絵演効果銃", 5510, -130, -200, "cg/ev/resize/ev302_94式射撃_l.jpg");
	Fade("絵演効果銃", 0, 500, null, true);
	WaitKey(10);

	FadeDelete("絵演効果銃", 100, false);
	FadeDelete("絵フラ", 300, true);

	CreateSE("SE01b","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreatePlainSP("絵振",1100);
	Shake("絵振", 300, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("絵振");
	SetVolume("SE01a", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　……!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190190a01">
《な……何よ！
　今度は……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190200a01">
《まだ何かあるっていうの!?》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190210a00">
「…………そのようだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　疲れ切った頭が銃弾に鞭打たれて、僅かながら活性
化する。
　
　……そうだ。今回の一件は<RUBY text="・">罠</RUBY>。

　俺の存在を厭うた<RUBY text="・・">彼ら</RUBY>による罠。
　何事もなく終わってくれる筈が、ない。

　彼らが今回画策した、<RUBY text="・">敵</RUBY>と<RUBY text="・">敵</RUBY>の潰し合いはほぼ理想
的な結末を迎えた。六波羅の怪物は倒され、俺は半死
半生の態である。
　ならば、後は――生き残りに止めを刺すばかり。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＴ−０５＆ＧＲ−０３
	#av_ST05ワーウルフ=true;
	#av_GR03ガルム=true;


	SetVolume("SEL*", 1000, 0, null);

	PrintGO("上背景", 10000);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("上背景");
	CreateTextureEX("絵背景100", 100, -4000, 0, "cg/bg/bg204_横旋回背景_03.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	CreateTextureEX("絵背景200", 100, -4000, 0, "cg/bg/bg204_横旋回背景_03.jpg");
	Fade("絵背景200", 0, 1000, null, true);

	CreateSCR1("@絵背景100","@絵背景200",5000,0,-250);

	CreateTextureSP("絵立1000", 1000, Center, Middle, "cg/st/3dワーウルフ_騎航_通常.png");
	Move("絵立1000", 0, -148, -376, null, true);
	Request("絵立1000", Smoothing);
	Zoom("絵立1000", 0, 300, 300, null, true);

	CreateTextureSP("絵立1001", 1001, Center, Middle, "cg/st/3dワーウルフ_騎航_戦闘.png");
	Move("絵立1001", 0, -306, -121, null, true);
	Request("絵立1001", Smoothing);
	Zoom("絵立1001", 0, 600, 600, null, true);

	CreateTextureSP("絵立1002", 1003, Center, Middle, "cg/st/3dワーウルフ_騎航_戦闘.png");
	Move("絵立1002", 0, 276, -141, null, true);

	Move("絵立1000", 0, @+300, @0, null, true);
	Move("絵立1001", 0, @+400, @0, null, true);
	Move("絵立1002", 0, @+500, @0, null, true);


	CreateSE("SE01","se戦闘_動作_空突進08");
	CreateSE("SE02","se戦闘_動作_空突進08");
	CreateSE("SE03","se戦闘_動作_空突進08");

	Move("絵立1000", 400, @-300, @0, Dxl1, false);
	Move("絵立1001", 400, @-400, @0, DxlAuto, false);
	Move("絵立1002", 400, @-500, @0, Dxl3, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(50);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Wait(50);
	MusicStart("SE03",0,1000,0,1000,null,false);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


	WaitKey(1000);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	SCR1stop();
	Delete("絵背景*");
	Delete("絵立*");

	CreateTextureEX("絵背景100", 100, -500, 0, "cg/bg/resize/bg203_旋回演出背景海a_03.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	CreateTextureSP("絵立1000", 1010, Center, Middle, "cg/st/3dガルム_騎航_戦闘.png");
	Move("絵立1000", 0, 99, -152, null, true);

	CreateTextureSP("絵立1001", 1001, Center, Middle, "cg/st/3dガルム_騎航_戦闘.png");
	Move("絵立1001", 0, -76, -321, null, true);
	Request("絵立1001", Smoothing);
	Zoom("絵立1001", 0, 600, 600, null, true);

	CreateTextureSP("絵立1002", 1000, Center, Middle, "cg/st/3dガルム_騎航_通常.png");
	Move("絵立1002", 0, -431, -209, null, true);
	Request("絵立1002", Smoothing);
	Zoom("絵立1002", 0, 500, 500, null, true);

	Move("絵立1000", 0, @+1500, @0, Dxl1, true);
	Move("絵立1001", 0, @+700, @-400, null, true);
	Move("絵立1002", 0, @+500, @-400, null, true);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


	OnSE("se戦闘_動作_空突進04",1000);
	Move("絵立1001", 800, @-700, @+500, Dxl1, false);
	Move("絵立1002", 800, @-500, @+500, Dxl1, false);
	Move("絵背景100", 700, 0, -700, Dxl2, true);

	Shake("絵背景100", 2000, 2, 1, 0, 0, 500, null, false);
	OnSE("se戦闘_動作_空突進03",1000);
	Move("絵立1001", 500, @-2000, @0, Dxl1, false);
	Move("絵立1002", 500, @-2000, @0, Dxl1, false);
	Move("絵立1000", 500, @-1500, @0, Dxl1, true);

	SetBlur("絵立1000", true, 3, 500, 200, false);
	BGMoveAuto("@絵立1000",1);

	Wait(1000);

	SetBlur("絵立1000", false, 3, 500, 200, false);
	BGMoveDelete();
	OnSE("se戦闘_動作_空突進01",1000);
	Move("絵立1000", 500, @-2500, @0, Dxl1, true);

	PrintGO("上背景", 30000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　上空をゆっくりと旋回する騎影、三。
　低空から<RUBY text="こちら">地上</RUBY>を<RUBY text="ね">睨</RUBY>め下ろす騎影、同じく三。

　制空戦用<RUBY text="ストライカー">打撃竜騎兵</RUBY>／ＳＴ-〇五ワーウルフ。
　制陸戦用<RUBY text="グラップラー">重装竜騎兵</RUBY>／ＧＲ-〇三ガルム。

　……国際連盟軍の制式竜騎兵！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戦車隊＆歩兵部隊がズガガーっと
	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEX("黒幕１", 1000, "BLACK");
	CreateColorEXadd("絵色100", 1500, #FFFFFF);

	Fade("黒幕１", 100, 1000, null, true);
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 300, 0, 1000, 100, Dxl1, "cg/data/zzex_Slide_01_04_00.png", true);

	Delete("黒幕１");
	CreateTextureSP("絵背景100", 1000, 0, 0, "cg/ev/ev123_大剣を持つガーゲット少佐.jpg");
	CreateTextureSPadd("絵背景200", 100, 0, 0, "cg/ev/ev123_大剣を持つガーゲット少佐.jpg");
	Zoom("絵背景200", 0, 1200, 1200, null, true);

	CreateSE("SE02","se乗物_戦車_走行音");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("絵背景200", 1000, 1000, 1000, null, false);
	FadeDelete("絵背景200", 1000, false);
	FadeDelete("絵色100", 500, true);

	Wait(500);
	SetVolume("SE02", 2000, 0, null);

	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureEX("絵背景210", 1010, -1270, -680, "cg/ev/resize/ev123_大剣を持つガーゲット少佐lm.jpg");

	Fade("絵背景210", 2000, 1000, null, false);
	Move("絵背景210", 6000, @0, -140, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　空に竜騎兵。地に戦車と機械化歩兵。
　……完全包囲下に置かれたというわけだ。

　先頭の戦車の装甲上には、屹立する人影が見える。
　軍服を内から押し上げるほど筋肉の発達した長身。

　だが<RUBY text="かお">貌</RUBY>は白く端麗で、体と不釣合いな繊細さがある。
　金髪碧眼、見るからに純血の白色人種。携える黄金
造りの大剣とも相俟って、半神的なまでの英姿を完成
させている。

　彼が指揮官であることは誤解のしようもなかった。
　夜目を凝らして階級章を確認するまでもなく。<k>――
少佐か。その階級は大隊長、あるいは軍内の一部局で
要職を務めるクラスの将校を意味している。

　感慨というほどのものは視線に込めず、彼は俺を見
下ろしてきた。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190220a00">
「……貴官は<RUBY text="どなた">何方</RUBY>か」

{	FwL("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190230b02">
「礼節として応えよう、蛮族の戦士。
　断っておくが答礼は要らない」

{	FwL("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190240b02">
「私はジョージ・ガーゲット少佐である。
　ＧＨＱ資料管理課に所属する」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景210", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　答礼は無用とのことであったので、俺は軽く頷いた
のみで名乗りは避けた。
　先方がこちらの個人情報に全く無関心そうな事でも
ある。

　疑問点のみを口にした。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190250a00">
「……資料管理課」

{	FwL("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190260b02">
「そうだ。
　私は資料を管理しに来たのだよ」

{	FwL("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190270b02">
「その作業には、<RUBY text="・・">資料</RUBY>の<RUBY text="・・">廃棄</RUBY>も含まれる」

{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190280a00">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　――そういう事か。
　資料管理課という、一聞する限り左遷用部局としか
思えないそれの実質を、俺は概ね察した。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190290a00">
「つまりは貴官が雪車町らを使い、大和支配
の為の謀略を巡らしていた人物。
　そう解釈して誤りないだろうか。特殊工作
班の班長殿」

{	FwL("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190300b02">
「答える必要を認めない」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　傲然と言い捨てる将校。
　その即答こそが完全な肯定を意味するものに他なら
なかった。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190310a00">
「では事実と仮定して問いを重ねさせて頂く。
　戦争に善悪を問う不毛は承知の上。しかし
政治には良非があろうと存ずる」

{	FwL("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190320a00">
「貴軍が大和を制圧するは軍略の正道と認め
られても、卑劣な策謀によって民心を得よう
とするは恥ずべき非道とのみ思われまいか。
　この点、如何に」

{	FwL("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190330b02">
「答える必要を認めない」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　臆面もなく、ガーゲット少佐は繰り返した。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190340b02">
「……だが、一般的見解として述べるなら。
　正道と云い非道と云おうと、それは絶対的
な基準を持つものではなく、<RUBY text="ケースバイケース">状況次第</RUBY>」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190350b02">
「その策謀とやらを非道ととるか否かは見解
の相違があるだろう」

{	FwL("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190360a00">
「最低限の人倫さえ、絶対的な基準ではない、
と？」

{	FwL("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190370b02">
「いいや？」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　――一種の驚嘆を禁じ得なかったことに。
　少佐はあくまで平然とかぶりを振り、そして続けた。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190380b02">
「人たる道――天に<RUBY text="ま">坐</RUBY>す我らが父の教えは、
絶対的に尊重すべきものである。
　しかしそれは、<RUBY text="・・">君ら</RUBY>と何の関係もないこと
ではないか？」

{	FwL("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190390b02">
「言葉を発する珍しい猿よ……」

{	FwL("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190400a00">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　良くわかった。
　良く理解した。

　こういう人物なのだ。
　それが彼の正義なのだ。

　全世界を制覇したと言っても良いアングロサクソン
族の偉業を、単に政戦略や技術力の問題とはとらえず、
<RUBY text="マニフェスト・ディスティニー">神に選ばれた特別な民族ゆえの運命</RUBY>であると信ずる人。
　決して珍しくはなく、また難解な信仰でもない。

　だが彼と大和人の価値観を隣接させるには、互いに
五百光年ほど歩み寄る必要があるだろう。
　残念ながら、それだけのゆとりはなかった。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190410a00">
「……<RUBY text="こちら">当方</RUBY>も礼節として、確認をさせて頂く」

{	FwL("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190420a00">
「貴官には自分に対する戦闘行動を回避する
意思は全く、一切合財、完膚なく皆無か。
　ジョージ・ガーゲット少佐」

{	FwL("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190430b02">
「戦闘などは行わない。
　言った筈だ。我々は資料の管理を行う」

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――
.//◆香奈枝生存の場合
..//if_start
if(!$Kanae_Dead){

	SetFwL("cg/fw/fwガーゲット_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190440b02">
「ムラマサ。君と……
　猿の身で何故か我々の軍服を纏う、滑稽で
不愉快な道化と」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　…………大鳥大尉のことか。

　成程、この少佐の下では彼女は歓迎されるまい。
　何も知らされずに俺への釣針として用いられた後、
釣魚ごと始末されるのが、今回の彼女の役割だったと
いうわけだ。

　……俺に言わせれば、随分と甘く見た話だが。
　たとえ彼らがここで俺の殲滅に成功したとしても、
彼女を捕殺するには至らないだろう。

　彼女はＧＨＱの自分に対する愛情を盲信してなどい
ない。事かくあるも予期していた。
　別段動じる事もなく、応変して脱出を果たすに違い
ない。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190450b02">
「この、両資料を……
　我々は廃棄する。それだけだ」

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

}else{
..//else_start

//――――――――――――――――――――――――――――――

.//◆香奈枝死亡の場合は以下

	SetFwL("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190460b02">
「ムラマサ。
　君という資料を、我々は廃棄するだけだ」

</PRE>
	SetTextEXL();
	TypeBeginTimeLI(0);//―――――――――――――――――――――――――――――

}
..//if_end

//――――――――――――――――――――――――――――――
.//◆合流

	SetFwL("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190470a00">
「……」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0,150);//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　体調は、確認する気も起こらない。
　戦う以前に、一歩を踏み出す事が可能かどうか。

　怪物の奇砲を浴びた左側の手足は付いているだけと
いった様子。右の手足とて大差はない。
　身体各所に、無傷の箇所はほぼ絶無。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190480a00">
「村正……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190490a01">
《一応訊くだけ訊くけど、土下座して命乞い
をするって選択は無いのね？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190500a00">
「それが通るなら幸いだったが。
　彼は人種差別主義者だ。そもそもこちらを
交渉に値する相手と<RUBY text="みな">看做</RUBY>していない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　……中世大和人には理解が難しいかもしれない。
　そうも思ったが、杞憂に過ぎなかった。

　村正のいらえは即答で、明確だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190510a01">
《<RUBY text="あなた">人間</RUBY>達の一部が、<RUBY text="わたし">蝦夷</RUBY>たちに対して持って
いるような感覚で、あいつは今こっちを見て
いるってことね。
　なら、話すだけ無駄でしょう》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190520a01">
《避け合うか、殺し合うか。
　道は二つに一つよ》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190530a00">
「……そうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　経験者の言葉だった。
　頷く以外にない。元より、反対意見は持たなかった
が。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190540a00">
「突破する。
　行けるか、村正」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190550a01">
《裸で真冬の富士に登れるものなら、きっと》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190560a00">
「そうか。
　その程度か」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190570a01">
《その程度よ。
　気楽に行きましょう、御堂！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　決して果たすべき<RUBY text="めい">命</RUBY>がある。
　――<RUBY text="おれたち">村正</RUBY>には。

　ここで斃れる事は許されなかった。
　悲愴な最期の予感に酔う間を惜しみ、見苦しく生き
延びる道を探らねばならない。

　包囲隊形に視線を<RUBY text="や">遣</RUBY>る。
　……水も洩らさぬ見事な布陣。蟻の這い出る隙間も
ない。

　特に空からの脱出は絶望的だ。
　既に制空されている以上、離陸の瞬間に撃ち落とさ
れずに済む可能性は何をどう模索しても見出しかねる。

　活路は地上にしかない。
　戦車と歩兵が俺を足止めし、その隙を低高度戦闘に
特化された<RUBY text="グラップラー">重装竜騎兵</RUBY>が頭上から襲う――敵方は当然、
そう手を踏んで来るだろう。それを頓挫させ得るか。

　交戦しつつ戦場を移動、機を計って離脱、この場へ
戻り芳養少年一家の身柄を確保、そして仲間と合流し、
脱出を果たす。
　こちらが踏むべき手順はそのようになる。

　……真冬に裸の富士登頂より、もういくらか難しい
ようにも思えた。

　俺の挙措とその意味に気付いたのだろう。
　金髪の偉丈夫が動いた。

　――両手持ちの大剣を、十字形に振るい。
　高らかに吠える。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 100, 0, 0, "cg/bg/bg043_江ノ島山林_03.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", HEAVY);
	CreateTextureEX("絵st200", 200, -50, -464, "cg/st/resize/stガーゲット_通常_制服a_l.png");

	Move("絵背景100", 500, -300, @0, null, false);

	Fade("絵背景100", 300, 1000, null, true);

	Move("絵st200", 500, 0, @0, DxlAuto, false);
	Fade("絵st200", 300, 1000, null, true);

	SetFwH("cg/fw/fwガーゲット_侮蔑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190580b02">
「<RUBY text="セイクロサンクト">神聖にして侵すべからず</RUBY>！」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆装甲・アスカロンⅦ
	#av_アスカロンⅦ=true;

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	Delete("絵背景100");
	Delete("絵st200");

	StC(1000, @0, @0,"cg/st/3dアスカロン_立ち_抜刀.png");
	FadeStC(0,true);
	FadeDelete("絵フラ", 1000, true);

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190590a01">
《劔冑！》

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190600a00">
「やはりか……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　ただの剣ではあるまいと思っていたが。
　黄金の鞘が砕けて舞い、甲鉄と化して将校を覆った。

　劔冑である。おそらくは<RUBY text="ブラッド">真打</RUBY>の。
　誓言からして銘は竜殺しの剣〝<RUBY text="アスカロン">聖性守護</RUBY>〟――その
<RUBY text="コピー">写し</RUBY>か。まさか<RUBY text="オリジナル">真物</RUBY>ということはないだろう。

　甲鉄の質感を見るに英国王室製、第七代か第八代。
　まず、業物と呼ぶべき出来と思えた。

　豪奢な劔冑で身をよろい、将校が前へ進み出る。
　配下に指示を下す様子はない。

　……まさか、一騎打ちをしようというのか？
　
　その俺の内心を、聞きつけたわけでもなかろうが。

　彼が淡々と呟く。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwアスカロン_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190610b02">
「害虫駆除は危険を伴い……
　しかも不毛な作業だ」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190620b02">
「このような事に、優秀なる我が兵士、我が
同胞の命を費やしたくはない。
　彼らの力は、ふさわしい戦いにのみ用いら
れるべきなのだ」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　全くの本気の声で、ＧＨＱ少佐はそんな事を言った。
　周りを囲む兵の間に声なきどよめきが走る。

　感激しているようだ。
　……どうやらこれは、<RUBY text="・・・">いい話</RUBY>らしい。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190630a01">
《……拍手でもする？》

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190640a00">
「やめておこう」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　太刀を納めねばならないのが面倒だ。

　ガーゲット少佐は、部下の反応に気を払う素振りも
見せない。
　堂々たる足取りで進み――止まる。

　俺と立ち合うつもりであれば、まだ距離は遠い。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190650a00">
「……？」

{	FwL("cg/fw/fwアスカロン_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190660b02">
「で、あるならばだ。
　最も望ましい結末は、同胞の手を煩わせず、
害虫が勝手に死んでくれる事」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190670b02">
「害虫同士で食い合ってくれる事だ。
　そうではないかね？」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　何故か俺に向かって、少佐は訊いた。

　ＧＨＱの意図は既に承知している。
　江ノ島の罠はその意図に基づいて仕組まれたもの。
そしてそれは成功し、今のこの結果がある。

　……だから何だ。何を今更。
　事実を確かめ、勝ち誇りたいとでも言うのだろうか。<k>
　
　そうではなかった。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwアスカロン_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190680b02">
「だから。
　<RUBY text="・・・・">最後まで</RUBY>、食い合ってくれねば困るのだよ」

{	SoundPlay("@mbgm13",0,1000,true);
	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190690a00">
「――!!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,750,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　彼の真意を直感する。
　そして即座、飛び出そうとする。

　だが両足は俺の意思を裏切った。
　傷つき疲れ切った足は、砂利の上で無意味に滑った
だけで、一歩も進みはしなかった。

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵暗転", 15000, "#000000");
	DrawTransition("絵暗転", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	CreateTextureSP("絵ＥＦ100", 3100, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	DeleteStA(0,true);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0501a]
　俺の無様をあげつらうかのような華麗さで、ＧＨＱ
の将校が飛躍する。
　こちらへ向かって――では、ない。

</PRE>
	SetTextEXL();
	TypeBeginTimeLI(0);//――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶ1000", 1000, Center, -240, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	FadeDelete("絵ＥＦ100", 300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0501b]
　<RUBY text="・・・・・">怪物の上へ</RUBY>！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateWindow("窓右", 5500, 0, 0, 276, 576, true);
	SetAlias("窓右", "窓右");
	Fade("窓右", 0, 0, null, true);
	Move("窓右", 0, @658, @0, null, true);
	CreateTextureSP("窓右/下地", 5500, @-572, 0, "cg/bg/bg043_江ノ島山林_03.jpg");
	Fade("窓右", 0, 1000, null, true);
	CreateTextureSP("窓右/絵右ＳＴ", 5510, @-378, -170, "cg/st/3d村正標準_立ち_抜刀.png");
	Move("窓右/絵右ＳＴ", 600, @0, -200, DxlAuto, false);
	DrawTransition("窓右", 300, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", true);

	SetFwL("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510a]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190700a00">
「……ガーゲット少佐ッッ!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateWindow("窓左", 4500, 0, 60, 1024, 276, true);
	SetAlias("窓左", "窓左");
	CreateTextureEX("窓左/下地", 4500, @0, @0, "cg/bg/bg002_空a_03.jpg");
	CreateTextureEX("窓左/絵左ＳＴ", 4510, -45, -105, "cg/st/3dアスカロン_立ち_抜刀.png");

	Fade("窓左/下地", 0, 1000, null, false);
	Fade("窓左/絵左ＳＴ", 0, 1000, null, false);
	DrawTransition("窓左", 300, 0, 1000, 100, null, "cg/data/slide_01_00_1.png", false);
	Move("窓左/絵左ＳＴ", 600, -75, @0, DxlAuto, true);

	SetFwL("cg/fw/fwアスカロン_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510b]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190710b02">
「このがらくたは良く出来ている」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　巨鉄騎の頭部に降り立って、<RUBY text="クルセイダー">騎士</RUBY>は冷然と呟いた。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwアスカロン_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190720b02">
「素晴らしい。全く素晴らしい。
　君ら劣等の手になる創造物の内、これこそ
は最上の一品に違いない」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190730b02">
「<RUBY text="・・・・・・・・・・・・・・・">屑を食い潰しながら屑を駆逐する</RUBY>。
　これほど効率の良い清掃道具が他にあろう
か？」

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190740a00">
「そこから降りろ、ガーゲット少佐！
　貴官は――騎士ではないのか!!」

{	FwL("cg/fw/fwアスカロン_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190750b02">
「無論の事。
　私は騎士だ」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　あくまで――
　あくまで、表情を波立たせることなく。

　アングロサクソン族の誇りある武人。
　ジョージ・ガーゲット少佐は、言い切った。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwアスカロン_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190760b02">
「この光栄ある<RUBY text="クルス">聖骸</RUBY>にかけて私は戦う。
　神と、祖国と、同胞のために」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190770b02">
「黄色い猿のためではない。
　……それが、そんなにも不思議か？」

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190780a00">
「……ッ」

{	FwL("cg/fw/fwアスカロン_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0190790b02">
「庇護を求めるなら、騎士ではなく動物愛護
団体をあたるがいい。
　さらばだムラマサ。君は猛々しく、狡猾で、
見るも不快な獣であった」

{	FwL("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190800a00">
「やめろ――！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560a]
　俺の叫びはただ、虚しかった。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_駆動音01");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("窓左/絵左ＳＴ", 300, @-20, @60, DxlAuto, false);
	FadeDelete("窓左/絵左ＳＴ", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560b]
　騎士の姿が巨騎の中へ沈む。
　――死せる怪物が蘇る。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆荒覇吐再起動
	CreateSE("SE01","se特殊_陰義_荒覇吐01");
	MusicStart("SE01",0,1000,0,500,null,false);
	SetFrequency("SE01", 3000, 1000, AxlAuto);

	CreateColorEXadd("絵フラ", 25000, "#FFFFFF");
	Move("窓左", 300, @0, @-600, Axl1, false);
	Move("窓右", 300, @600, @0, Axl1, false);
	Wait(300);
	Fade("絵フラ", 600, 1000, null, false);
	Wait(600);
	PrintGO("上背景", 35000);
	CreateColorSPadd("絵フラ", 3500, "#FFFFFF");
	CreateTextureEX("絵ＥＦ2100", 2100, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	SetBlur("絵ＥＦ2100", true, 3, 500, 200, false);
	CreateTextureSP("絵ＥＶ1100", 1100, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Delete("窓*");
	Delete("上背景");
	OnSE("se特殊_鎧_装着06",1000);

	FadeDelete("絵フラ", 600, false);
	Fade("絵ＥＦ2100", 0, 800, null, true);
	Zoom("絵ＥＦ2100", 300, 1200, 1200, DxlAuto, false);
	Wait(300);
	FadeDelete("絵ＥＦ2100", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　轟吼。
　鋼の巨躯が起き上がり、凄まじい軋みが夜を揺らす。

　そこへ後方から接近した大型車両が、ほとんど一瞬
にして簡単な作業を終えた。
　……<RUBY text="・・・・・・">電源ケーブル</RUBY>の交換だ。

　今や巨獣は命と牙を共に取り戻している。
　完全な姿で再起する。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0190810a01">
《――――》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　漂白された思念が、全く同じことになっている俺の
意識野に重なる。
　何をすべきかわからない。何を思うべきかすらも。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆竜気砲
	CreateSE("SE01","se特殊_鎧_駆動音01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵ＥＶ1200", 1200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	Fade("絵ＥＶ1200", 600, 1000, null, true);
	Delete("絵ＥＶ1100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　――顎が開く。

　どうすればいい。
　どうすれば、いい。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	CreateSEEX("SE01","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SE01",0,500,0,1000,null,true);
	CreateTextureSP("絵ＥＶ1100", 1100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	FadeDelete("絵ＥＶ1200", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0602]
　戦うのだ。
　……そう。戦うのだ。

　だが。
　もう一度、この怪物と戦えば。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆回想イメージ芳養一家
	SetVolume("SE*", 300, 1, null);
	OnSE("se擬音_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 25000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	StC(3000, @0,@0,"cg/st/st芳養_通常_私服.png");
	FadeStC(0,true);
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 500, null, true);

	WaitKey(500);

	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");
	DeleteStA(0,true);
	SetVolume("SE*", 600, 600, null);
	FadeDelete("絵白転", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　彼らは、
　もはや、

　もはや――

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0190820a00">
「――――」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　思考は、ただ白いまま。
　何の知恵も産み落とさない。

　唸りを上げる魔砲――
　俺のための葬送曲を、立ち尽くして聴く。

　何もできず。
　案山子のように、棒立ちで。

　俺は無意味な最期を待つ。
　凍った心は、その無意味さを悲しむ事さえできない。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 2000, 1000, null);
	CreateColorEXadd("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 2000, 1000, DxlAuto, true);

	WaitKey(1000);
	SetVolume("SE01", 1000, 0, null);
	ClearWaitAll(1000, 1000);


}

..//ジャンプ指定
//次ファイル　"ma04_020vs.nss"