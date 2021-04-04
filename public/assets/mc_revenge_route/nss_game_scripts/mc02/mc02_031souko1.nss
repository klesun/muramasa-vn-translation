//<continuation number="320">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031souko1.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

//嶋：デバッグフラグ
//	$香奈枝合流_Flag=true;
//	$廊下移動=true;
//	$倉庫２移動=true;

//香奈枝がいる場合
	if($香奈枝合流_Flag==true){
		call_scene @->mc02_031souko1_k.nss;
		$souko1_k=true;//香奈枝合流ルート
		$souko1_No=false;//フラグなし
	}else{
		call_scene @->mc02_031souko1_No.nss;
		$souko1_k=false;//香奈枝合流ルート
		$souko1_No=true;//フラグなし
	}

//次ポイント確認用
	if($souko1_k){
		if($廊下移動){$GameName = "mc02_031rouka3.nss";$廊下移動=false;$倉庫２移動=false;}
		else if($倉庫２移動){$GameName = "mc02_031souko2.nss";$廊下移動=false;$倉庫２移動=false;}
//嶋：カウント調整
//		$Next_GameName = $GameName;
//		$GameName = "mc02_031time.nss"
	}else if($souko1_No){
		$GameName = "mc02_031gameover.nss";
		$廊下移動=false;
		$倉庫２移動=false;
	}

}

scene mc02_031souko1.nss
{

..//ジャンプ指定
//前ファイル　"mc02_031rouka3.nss"
//前ファイル　"mc02_031souko2.nss"
//●倉庫１
//◆香奈枝の有無により分岐


}


//――――――――――――――――――――――――――――――
.//◆※香奈枝いる
//◆香奈枝合流_Flagがある場合
..//mc02_031souko1_k.nss
scene mc02_031souko1_k.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

//嶋：ここにたどり着くルートが２種のため
	if($廊下移動){
		CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg082_飛行船廊下_01a.jpg");
	}else if($倉庫２移動){
		CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg081_飛行船船室Bb_01b.jpg");
	}

	DrawDelete("上背景", 500, 1000, "blind_01_00_1", true);

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0020a04">
「はて？
　……この扉の向こうは空気の流れが何やら
妙でございますな」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031so0030a00">
「それはおそらく、自分が突入する際に斬り
開けた穴のためでしょう」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031so0040a03">
「ここから景明さまが？
　でしたら、こんな所でうろうろしていては
危険なのではありませんこと？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031so0050a00">
「……全くもってその通りです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　あの二騎の護衛が戻ってきていても不思議ではない
のだ。艦内の者もここを破られたことは知っていよう。
　
　何をしているのか。こんな時に寝惚けてどうする。

　俺は扉を開くのをやめ、引き返した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//嶋：原文残し【09/03/19】
//　俺は扉を開くのをやめ、通路に戻った。

//◆→●廊下３
..//ジャンプ指定
//嶋：廊下から移動
//次ファイル　"mc02_031rouka3.nss"
//嶋：倉庫２から移動
//次ファイル　"mc02_031souko2.nss"


}

//――――――――――――――――――――――――――――――
.//◆※香奈枝いない
//◆香奈枝合流_Flagが無い場合
..//mc02_031souko1_No.nss
scene mc02_031souko1_No.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se日常_建物_扉開く01", 1000);
	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg081_飛行船船室Bc_01.jpg");

	DrawDelete("上背景", 500, 1000, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　ここは俺が飛び込んだ倉庫だ。
　
　
　……戻ってきてしまった。

　不味い。
　こんな所にいては、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どかーん
//◆護衛二騎出現

	CreateSE("SE01","se特殊_鎧_駆動音02");
	CreateSE("SE02","se特殊_鎧_駆動音02");

	StL(1200, @-30, @0,"cg/st/3dユーウォーキー_立ち_抜刀.png");
	StR(1300, @60, @0,"cg/st/3dユーウォーキー_立ち_抜刀.png");

	MusicStart("SE01",0,1000,0,800,null,false);
	FadeStR(300,false);

	Wait(100);

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeStL(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　…………こうなるのだ。

　背後にも足音。
　数は多く、そして徐々に大きくなっている。

　つまり逃げ道も塞がれた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031so0010a00">
「……これ迄……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　観念した。
　ここで圧倒的な敵兵と切り結び、そして果てる。

　それをせめてもの援護とし、後は間違っても俺ほど
の迂闊者ではないだろう香奈枝嬢に望みを掛けるしか
ない。
　……もう少しは役に立ちたかったが。

　もはや言うまい。
　俺は無念を呑み、太刀を抜き放った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorEX("絵色100", 15000, "White");

	CreateSE("SE01","se戦闘_攻撃_乱戦02");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Fade("絵色100", 200, 1000, null, true);

	Wait(1500);

	ClearWaitAll(3000, 2000);


//◆→●ゲームオーバー

..//ジャンプ指定
//次ファイル　"mc02_031gameover.nss"

}


