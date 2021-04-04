//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031time.nss_MAIN
{

	if($Next_GameName == "mc02_031rouka2.nss"){
			$飛行船背景 = "bg082_飛行船廊下_01a.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031daidokoro.nss"){
			$飛行船背景 = "bg080_飛行船船室Ac_01a.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031innsyoku.nss"){
			$飛行船背景 = "bg080_飛行船船室Ab_01a.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031innsyokuz.nss"){
			$飛行船背景 = "bg080_飛行船船室Ab_01a.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031rouka1.nss"){
			$飛行船背景 = "bg082_飛行船廊下_01a.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031rouka3.nss"){
			$飛行船背景 = "bg082_飛行船廊下_01a.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031sennshitsu.nss"){
			$飛行船背景 = "bg082_飛行船廊下_01a.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031shikann.nss"){
			$飛行船背景 = "bg080_飛行船船室Aa_01a.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031souko1.nss"){
			$飛行船背景 = "bg081_飛行船船室Bc_01.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031souko2.nss"){
			$飛行船背景 = "bg081_飛行船船室Bb_01b.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031souko2aa.nss"){
			$飛行船背景 = "bg081_飛行船船室Bb_01b.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031souko2ab.nss"){
			$飛行船背景 = "bg081_飛行船船室Bb_01b.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031souko2b.nss"){
			$飛行船背景 = "bg081_飛行船船室Bb_01b.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031souko2c.nss"){
			$飛行船背景 = "bg081_飛行船船室Bb_01b.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031syokuryou.nss"){
			$飛行船背景 = "bg081_飛行船船室Ba_01b.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031tennbou.nss"){
			$飛行船背景 = "bg083_飛行船後部展望室_01.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else{
			$飛行船背景 = "ev119_一条と香奈枝海水浴_a.jpg";
			$飛行船背景 = "cg/ev/" + $飛行船背景;
	}
	mc02_SearchTime();
	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

//◆七時五五分になった→●挿入イベント
//◆八時二分になった→●タイムアップ

	if($mc02_TimeCount==18){$GameName = $Next_GameName;}
	else if($mc02_TimeCount>=60){$GameName = "mc02_031gameover.nss";}
	else{$GameName = $Next_GameName;}

}

scene mc02_031time.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　

	PrintBG("上背景", 30000);

//嶋：デバッグ用
//	CreateTextureSP("絵背景100", 100, Center, Middle, $飛行船背景);

	CreateColorSP("絵色100", 1500, "Black");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――
//●時間管理
//◆移動一回につき３０秒が経過する
//◆移動する毎に時間表示を行う

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
　　　　　　<VALUE name=$mc02_時間>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
　　　　　　　　　午前？時？？分？？秒

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	DrawDelete("上背景", 500, 1000, "blind_01_00_1", true);

*/

//◆七時五五分になった→●挿入イベント
//◆八時二分になった→●タイムアップ


//――――――――――――――――――――――――――――――
.//●挿入イベント
//◆艦橋
//◆横書き


if($mc02_TimeCount==18){

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateColorSP("絵色100", 10000, "Black");
	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg084_飛行船艦橋_01.jpg");

	Fade("@boxC*", 0, 0, null, true);
	Fade("@boxR*", 0, 0, null, true);
	Fade("@boxL*", 0, 0, null, true);

	Delete("上背景");
	FadeDelete("絵色100", 1000, true);

	SetNwH("cg/fw/ny副官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／船副官】
<voice name="ｅｔｃ／船副官" class="その他男声" src="voice/mc02/031ti0010e142">
「キャノン中佐！」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0020b03">
「どうだった？」

{	NwH("cg/fw/ny副官.png");}
//【ｅｔｃ／船副官】
<voice name="ｅｔｃ／船副官" class="その他男声" src="voice/mc02/031ti0030e142">
「後部ブロックの倉庫です。
　敵騎はそこから壁を破り、船内に侵入した
模様！」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0040b03">
「やっぱ侵入されてたか。
　……どこのどなた様だい？　あと一歩って
ところで」

{	NwH("cg/fw/ny副官.png");}
//【ｅｔｃ／船副官】
<voice name="ｅｔｃ／船副官" class="その他男声" src="voice/mc02/031ti0050e142">
「やはり、六波羅の者では」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0060b03">
「一騎だけでか？
　……絶対に有り得ない話じゃあないが」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0070b03">
（それより、可能性があるとすれば、
　――<RUBY text="・・・">あっち</RUBY>かねぇ……？）

{	NwH("cg/fw/ny副官.png");}
//【ｅｔｃ／船副官】
<voice name="ｅｔｃ／船副官" class="その他男声" src="voice/mc02/031ti0080e142">
「中佐、ご指示を！」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0090b03">
「……」

{	NwH("cg/fw/ny副官.png");}
//【ｅｔｃ／船副官】
<voice name="ｅｔｃ／船副官" class="その他男声" src="voice/mc02/031ti0100e142">
「後部ブロックに増援を回しますか？」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0110b03">
「――いや」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0120b03">
「今は投下準備を急げ。
　艦内兵力はその防衛に集中」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0130b03">
「侵入者の制圧はそっちのカタがついてから
でいい。
　俺が直接向かう」

{	NwH("cg/fw/ny副官.png");}
//【ｅｔｃ／船副官】
<voice name="ｅｔｃ／船副官" class="その他男声" src="voice/mc02/031ti0140e142">
「了解！」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);


}else if($mc02_TimeCount>=60){


//――――――――――――――――――――――――――――――
.//●タイムアップ

//◆遠い爆音。わずかに揺れ
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se戦闘_破壊_爆発03");
	MusicStart("SE01",0,300,0,1000,null,false);

	CreateTextureSP("絵背景100", 100, Center, Middle, $飛行船背景);

	CreatePlainEX("絵板写", 5000);

	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 1000, 0, 4, 0, 0, 1000, Dxl2, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031ti0150a00">
「……今のは……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　遠い――しかし、<RUBY text="・・">深い</RUBY>爆鳴。
　おそらくは、途轍もなく大規模の。

　……まさか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031ti0160a00">
「真逆」

{//嶋：声だけなので、一時的にその他で退避
	NwC("cg/fw/nwその他.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0170b03">
「ああ。そのまさか、だ。
　――村正君」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆なんか針とか刺された。
//◆ホワイトアウト。倒れた音？
//◆フェードアウト

	CreatePlainEX("絵板写", 5000);
	OnSE("se戦闘_攻撃_刀刺さる04",1000);
	FadeFR2("絵板写",0,500,300,@0,@0,30,Dxl2, true);

	WaitKey(1000);

	OnSE("se人体_衝撃_転倒03",1000);
	Shake("絵板写", 300, 0, 10, 0, 0, 1000, Dxl2, false);

	CreateColorEX("絵色白", 10000, "#FFFFFF");
	Fade("絵色白", 3000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……愕然と忘我していた俺は、
　
　我が身を襲う一瞬の変転に対して、何の抵抗も為し
得なかった。

　首筋へ潜り込む鋭利な――鋭利に過ぎる何か。
　眩む視界。

　<RUBY text="・・・・・・・・・・">気付けば殺されていた</RUBY>。
　消え沈みゆく意識の中、覚えのある声を遠く聴く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0180b03">
「やっちまってからこんなこと言うのはただ
の偽善だってわかってるんだがな……。
　まぁ、今さら偽善者であることを否定した
って仕方ない。言わせてもらおう」

{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0190b03">
「すまない、大和人。
　……そしてさようなら、湊斗景明。せめて
安らかな夢をな」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(3000, 2000);


//◆→●ゲームオーバー

..//ジャンプ指定
//次ファイル　"mc02_032gameover.nss"

}


//――――――――――――――――――――――――――――――
.//◆合流



}


