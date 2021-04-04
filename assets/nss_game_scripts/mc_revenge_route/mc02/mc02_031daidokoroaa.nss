
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031daidokoroaa.nss_MAIN
{

//$豚肉_Flag=true;$材料名前="豚肉";
//$牛肉_Flag=true;$材料名前="牛肉";
//$羊肉_Flag=true;$材料名前="羊肉";
//$鹿肉_Flag=true;$材料名前="鹿肉";
//$兎肉_Flag=true;$材料名前="兎肉";
//$馬肉_Flag=true;$材料名前="馬肉";
//$魚肉_Flag=true;$材料名前="魚肉";
//$カニ_Flag=true;$材料名前="カニ肉";
//$果物_Flag=true;$材料名前="果物";
//$野菜_Flag=true;$材料名前="野菜";
//$熊肉_Flag=true;$材料名前="熊肉";
//$二足羊肉_Flag=true;$材料名前="二足羊肉";
//$ウジ虫とダチョウ_Flag=true;$材料名前="ウジ虫とダチョウ肉";
//$ビヤーキー_Flag=true;$材料名前="ビヤーキー";

	$料理名前 = "　";
	$料理音声 = "　";

		if($豚肉_Flag==true){$料理名前 = "豚肉のソテー";$美味料理_Flag=true;$豚肉_Flag=false;$料理音声 = "031da0080a00";}
		else if($牛肉_Flag==true){$料理名前 = "ビーフステーキ";$美味料理_Flag=true;$牛肉_Flag=false;$料理音声 = "031da0090a00";}
		else if($羊肉_Flag==true){$料理名前 = "羊肉のピラフ";$美味料理_Flag=true;$羊肉_Flag=false;$料理音声 = "031da0100a00";}
		else if($鹿肉_Flag==true){$料理名前 = "鹿肉の焙り焼き";$美味料理_Flag=true;$鹿肉_Flag=false;$料理音声 = "031da0110a00";}
		else if($兎肉_Flag==true){$料理名前 = "兎のパエリア";$美味料理_Flag=true;$兎肉_Flag=false;$料理音声 = "031da0120a00";}
		else if($馬肉_Flag==true){$料理名前 = "桜鍋";$美味料理_Flag=true;$馬肉_Flag=false;$料理音声 = "031da0130a00";}
		else if($魚肉_Flag==true){$料理名前 = "魚肉ソーセージ";$美味料理_Flag=true;$魚肉_Flag=false;$料理音声 = "031da0140a00";}
		else if($カニ_Flag==true){$料理名前 = "カニチャーハン";$美味料理_Flag=true;$カニ_Flag=false;$料理音声 = "031da0150a00";}
		else if($果物_Flag==true){$料理名前 = "パリ・ブレスト";$美味料理_Flag=true;$果物_Flag=false;$料理音声 = "031da0160a00";}
		else if($野菜_Flag==true){$料理名前 = "コールスロー";$美味料理_Flag=true;$野菜_Flag=false;$料理音声 = "031da0170a00";}
		else if($熊肉_Flag==true){$料理名前 = "熊肉のスペアリブ";$熊料理_Flag=true;$熊肉_Flag=false;$料理音声 = "031da0180a00";}
		else if($二足羊肉_Flag==true){$料理名前 = "不思議な果物";$二足羊料理_Flag=true;$二足羊肉_Flag=false;$料理音声 = "031da0190a00";}
		else if($ウジ虫とダチョウ_Flag==true){$料理名前 = "ダチョウのカルパッチョ";$ダチョウ料理_Flag=true;$ウジ虫とダチョウ_Flag=false;$料理音声 = "031da0200a00";}
		else if($ビヤーキー_Flag==true){$料理名前 = "ビヤーキーの活け作り";$ビヤーキー料理_Flag=true;$ビヤーキー_Flag=false;$料理音声 = "031da0210a00";}

	$料理音声2 = "voice/mc02/" + $料理音声;
	$料理音声 = "mc02/" + $料理音声;


		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

//▼フラグ
//嶋：フラグ初期化
	$美味料理_Flag = false;
	$熊料理_Flag = false;
	$二足羊料理_Flag = false;
	$ダチョウ料理_Flag = false;
	$ビヤーキー料理_Flag = false;

	//▼ルートフラグ、選択肢、次のGameName
	$mc02_TimeCount = $mc02_TimeCount+30;

	$PreGameName = $GameName;

	$GameName = "mc02_031daidokoroz.nss";

}

scene mc02_031daidokoroaa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc02_031daidokoroa.nss"


//●料理する
//◆冷蔵庫の中身に対応したテキストを以下から選択


//◆料理っぽいＳＥ

//嶋：音声に合わせて修正【09/03/30】
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	Delete("上背景");

	OnSE("se擬音_コミカル_料理音02",1000);
	$残時間=RemainTime("@OnSE*");
	WaitKey($残時間);

	SetVolume("@OnSE*", 300, 0, null);

	StR(1000, @60, @0,"cg/st/3d村正標準_立ち_通常.png");
	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-60, @0, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");
	CreateVOICE("景明",$料理音声);

		if($料理名前 == "豚肉のソテー"){SetBacklog("「出来ました。豚肉のソテーです」", $料理音声2, 景明);}
		else if($料理名前 == "ビーフステーキ"){SetBacklog("「出来ました。ビーフステーキです」", $料理音声2, 景明);}
		else if($料理名前 == "羊肉のピラフ"){SetBacklog("「出来ました。羊肉のピラフです」", $料理音声2, 景明);}
		else if($料理名前 == "鹿肉の焙り焼き"){SetBacklog("「出来ました。鹿肉の焙り焼きです」", $料理音声2, 景明);}
		else if($料理名前 == "兎のパエリア"){SetBacklog("「出来ました。兎のパエリアです」", $料理音声2, 景明);}
		else if($料理名前 == "桜鍋"){SetBacklog("「出来ました。桜鍋です」", $料理音声2, 景明);}
		else if($料理名前 == "魚肉ソーセージ"){SetBacklog("「出来ました。魚肉ソーセージです」", $料理音声2, 景明);}
		else if($料理名前 == "カニチャーハン"){SetBacklog("「出来ました。カニチャーハンです」", $料理音声2, 景明);}
		else if($料理名前 == "パリ・ブレスト"){SetBacklog("「出来ました。パリ・ブレストです」", $料理音声2, 景明);}
		else if($料理名前 == "コールスロー"){SetBacklog("「出来ました。コールスローです」", $料理音声2, 景明);}
		else if($料理名前 == "熊肉のスペアリブ"){SetBacklog("「出来ました。熊肉のスペアリブです」", $料理音声2, 景明);}
		else if($料理名前 == "不思議な果物"){SetBacklog("「出来ました。不思議な果物です」", $料理音声2, 景明);}
		else if($料理名前 == "ダチョウのカルパッチョ"){SetBacklog("「出来ました。ダチョウのカルパッチョです」", $料理音声2, 景明);}
		else if($料理名前 == "ビヤーキーの活け作り"){SetBacklog("「出来ました。ビヤーキーの活け作りです」", $料理音声2, 景明);}

//	SetBacklog("「出来ました。$料理名前です」", $料理音声, 景明);
	MusicStart("景明",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆豚肉_Flag == true;
//◆美味料理_Flag
//【景明】
//<voice name="景明" class="景明" src = $料理音声>
「出来ました。
　<VALUE name=$料理名前>です」

</PRE>
	SetTextEXC();
	Request("@text0010",NoLog);
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@景明", 0, 0, null);


	DeleteStR(300,true);

//◆※豚肉〜野菜
//◆美味料理_Flag == true;
//◆選んだ食材が上記の場合は以下のテキスト

if($美味料理_Flag == true){

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0220a03">
「わぁ、おいしそう」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0230a04">
「なかなかのお手並み……。
　感服仕りました、湊斗さま」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0240a00">
「恐縮です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

}else if($熊料理_Flag == true){

//◆※熊
//◆熊料理_Flag == ture;
//◆選んだ食材が上記の場合は以下のテキスト

	SetFwC("cg/fw/fw香奈枝_含羞.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0250a03">
「そんな餌でこのわたくしがモグモグモグ」


{	FwC("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0260a04">
「がっつり釣られておりますよ、お嬢さま」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



}else if($二足羊料理_Flag==true){


//◆※二足羊
//◆二足羊肉料理_Flag == ture;
//◆選んだ食材が上記の場合は以下のテキスト

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0270a03">
「あら、不思議な食感」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0280a04">
「桃や洋梨のような歯触りで、柔らかく弾力
がありますな。
　良く噛むとシャリシャリ潰れて、強い香り
が……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


}else if($ダチョウ料理_Flag==true){

//◆※蛆虫ダチョウ
//◆ダチョウ料理_Flag == ture;
//◆選んだ食材が上記の場合は以下のテキスト

	SetFwC("cg/fw/fwさよ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0290a04">
「ほう、赤身のはずのダチョウ肉に霜降りが」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0300a03">
「なんて素晴らしいお肉！
　景明さま、この脂肪はいったい……？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0310a00">
「食べ終わってからお教えします」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


}else if($ビヤーキー料理_Flag==true){

//◆※ビヤーキー
//◆ビヤーキー料理_Flag == ture;
//◆選んだ食材が上記の場合は以下のテキスト

//◆シャギャー。


	OnSE("se擬音_ギャグ_ビヤーキ鳴き声01",1000);
	WaitKey(1000);

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0320a03">
「きゃわーーーーー!!」


{	FwC("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0330a04">
「みみっみっ湊斗さまー！　石の笛、石の笛
はいずこにっ!?」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0340a00">
「ありません」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どすんばたん。シャギャー。
	OnSE("se戦闘_攻撃_乱戦02",1000);
	WaitKey(1000);
	OnSE("se擬音_ギャグ_ビヤーキ鳴き声01",1000);
	WaitKey(1000);

}


//◆合流
//◆上記分岐を全てこなしてここに合流
//◆全ての料理フラグを解除する？　使用した食材だけフラグ復帰しない？

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　俺達は和やかに食卓を囲んだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0350a04">
「――ところで。
　今、黄金よりも貴重な筈の時間が生活排水
よろしく無駄に流れ去っているという事実を
いかがいたしましょうや」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0360a03">
「どうしようもありませんね」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0370a00">
「…………」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0380a00">
「こうなる前に止めて下さい！」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0390a03">
「……本当にやるとは思わなくて」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0400a04">
「……なんか突っ込んだら負けのような気が
いたしまして」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　…………。
　
　
　痛恨の不覚であった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆五分経過

//◆→●移動

..//ジャンプ指定
//次ファイル　"mc02_031daidokoroz.nss"

}



//嶋：一次退避
/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆豚肉_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0080a00">
「出来ました。
　豚肉のソテーです」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆牛肉_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0090a00">
「出来ました。
　ビーフステーキです」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆羊肉_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0100a00">
「出来ました。
　羊肉のピラフです」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆鹿肉_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0110a00">
「出来ました。
　鹿肉の焙り焼きです」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆兎肉_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0120a00">
「出来ました。
　兎のパエリアです」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆馬肉_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0130a00">
「出来ました。
　桜鍋です」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆魚肉_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0140a00">
「出来ました。
　魚肉ソーセージです」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆カニ_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0150a00">
「出来ました。
　カニチャーハンです」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆果物_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0160a00">
「出来ました。
　パリ・ブレストです」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//◆野菜_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0170a00">
「出来ました。
　コールスローです」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//◆熊肉_Flag == true;
//◆熊料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0180a00">
「出来ました。
　熊肉のスペアリブです」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆二足羊肉_Flag == true;
//◆二足羊肉料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0190a00">
「出来ました。
　不思議な果物です」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆蛆虫とダチョウ_Flag == true;
//◆ダチョウ料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0200a00">
「出来ました。
　ダチョウのカルパッチョです」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆ビヤーキー_Flag == true;
//◆ビヤーキー料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0210a00">
「出来ました。
　ビヤーキーの活け作りです」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


*/


