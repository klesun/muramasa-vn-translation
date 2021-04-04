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

scene mc02_031sennshitsu.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

//嶋：デバッグフラグ
//	$船室一回目_Flag = true;

	//▼ルートフラグ、選択肢、次のGameName
	if($船室一回目_Flag == true){
		call_scene @->mc02_031sennshitsu_s.nss;
		$sennshitsu_s=true;//船室フラグあり
		$sennshitsu_No=false;//船室フラグなし
	}else{
		call_scene @->mc02_031sennshitsu_No.nss;
		$sennshitsu_s=false;//船室フラグあり
		$sennshitsu_No=true;//船室フラグなし
	}

//次シーン
	if($sennshitsu_No==true){
		$GameName = "mc02_031rouka1.nss";
	//嶋：フラグ初期化
		$船室一回目_Flag = true;
		$sennshitsu_s=false;//船室フラグあり
		$sennshitsu_No=false;//船室フラグなし
//嶋：カウント調整
//		$Next_GameName = $GameName;
//		$GameName = "mc02_031time.nss";
	}else if($sennshitsu_s==true){
		$GameName = "mc02_031gameover.nss";
	//嶋：フラグ初期化
		$sennshitsu_s=false;//船室フラグあり
		$sennshitsu_No=false;//船室フラグなし
	}

}

scene mc02_031sennshitsu.nss
{

..//ジャンプ指定
//前ファイル　"mc02_031rouka1.nss"

}

scene mc02_031sennshitsu_No.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//●船室
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg082_飛行船廊下_01a.jpg");
	FadeDelete("上背景", 500, true);

//――――――――――――――――――――――――――――――

.//◆※一回目

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　力を込め、扉を開けようとし――
　危ういところで、俺は思い留まった。

　扉の向こうに、<RUBY text="ひといきれ">人熱</RUBY>を感じ取る。
　脳裏に船体構造を思い描く――<k>この先にあるのは、
おそらく<RUBY text="キャビン">船室</RUBY>！

　俺が突入したのは、どうやら船体の後部ブロックの
ようだ。
　操縦室や航海室といった枢要部は、推測するに船室
を挟んだ向こう岸――船体前部にある。

　つまりこの船室を突破せねば重要拠点は押さえられ
ない。
　だが無謀だ。一騎ならぬ武者との対決を覚悟せねば
ならない。

　必要とあればそれも止むを得ないが、まずは後部の
捜索を完遂するべきだろう。
　俺は足音を殺して扉から離れた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆フラグ調整
//◆$船室一回目_Flag = true;


//◆→●廊下１

..//ジャンプ指定
//次ファイル　"mc02_031rouka1.nss"


}

//――――――――――――――――――――――――――――――
.//◆※二回目
scene mc02_031sennshitsu_s.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//◆扉開ける。がちゃ。
//◆船室一回目_Flagがある場合
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg082_飛行船廊下_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	CreateSE("SE01","se日常_建物_扉開く01");
	MusicStart("SE01",0,500,0,1000,null,false);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　――――しまった。
　
　致命的失策に気付き、<RUBY text="ほぞ">臍</RUBY>を噛んだ時には、もう何も
かも手遅れだった。

　扉の向こうは――兵員が待機する船室。
　
　彼らが俺を友軍兵士と思い、笑顔で迎える可能性は
あるだろうか？

　一秒後には答えがわかる。
　そして俺の命運も定まる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆小分岐

if($香奈枝合流_Flag==false){

//◆香奈枝いない――――――――――――――――――――
//◆香奈枝合流_Flagがない場合

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……もはや俺に成し得る事は一つしかない。
　この運命において最善を尽くし、大鳥大尉に望みを
託す、それだけだ。

　敵意に満ちた数多の眼光と相対しながら。
　俺は最後の覚悟を固めた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}else if($香奈枝合流_Flag==true){

//◆香奈枝いる――――――――――――――――――――
//◆香奈枝合流_Flagがある場合

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031se0010a04">
「……物好きなお方で」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031se0020a03">
「ヘラクレスの選択というものでしょ？
　景明さまらしいと言えばらしいやり方だし、
いいじゃない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　大鳥家の主従はいともあっさり、覚悟を決めたよう
だった。
　
　……責められない事が、酷く辛い。

　この上は、せめてこの二人を逃がし、後事を任せる
しかないだろう。
　俺はここに死ぬまで踏み留まり、彼女らが目的達成
に必要とする時間を稼ぎ出すのだ。

　最早そうするほかなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

}//if End

//◆合流――――――――――――――――――――

	ClearWaitAll(3000, 2000);


//◆→●ゲームオーバー
..//ジャンプ指定
//次ファイル　"mc02_031gameover.nss"


}

