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

scene ma03_011c.nss_MAIN
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
	#bg036_競技場通路_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	if($ma03_011c_routeFlag==true){$ma03_011c_routeFlag=false;}
	else{$Kanae_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_012.nss";

}

scene ma03_011c.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_011.nss"

//●香奈枝の様子を見に行く

	SetVolume("@mbgm*", 2000, 0, null);

	PrintBG("上背景", 25000);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("上背景");

	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……？
　子供の泣き声が、何処からか聞こえてくる。

　反響して位置をつかみ辛いが……。
　こちらか？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　いた。
　泣きじゃくる子供と――大鳥大尉？

　子供は六、七歳と見える。
　腰を落として視線の高さを合わせ、大尉は彼に問い
かけていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm23",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0010a03">
「もしもし、あなた。
　いったいどうなさったの？」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0020e279">
「えぅ……うー。
　ひぐっ……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0030a03">
「どうなさったの？」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0040e279">
「ひぅ……うぅー。おかーさん……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0050a03">
「お母さまが？」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0060e279">
「へくっ……
　えぅ……どこぉ……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0070a03">
「お母さまが、いないの？」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0080e279">
「……えぅー……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　対話が成立していない。
　香奈枝嬢はしきりに声をかけているが、子供は泣く
のに夢中だ。

　大尉の袖口をきっちりと掴んで離さずにいるから、
存在を認識しているのは確かだが。
　さよ侍従は背後に控え、口を挟まずにいる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0090a03">
「お母さまが何処にいるかわからないのね？」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0100e279">
「うー……ぅぐぅ。ぐす……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0110a03">
「…………。
　あなたのお名前は？」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0120e279">
「ひぐ……えぅ。
　さがしてよぉ……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0130a03">
「…………。
　お名前は？」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0140e279">
「……びぃー！」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0150a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
　数秒、沈黙の後。
　大尉の行動はあっさりしたものだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_拾う01",1000);


	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060b]
　子供の手を振り払って、立ち上がる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0160a03">
「行きましょう、さよ」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/011c0170a04">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCI();//――――――――――――――――――――――――

	DeleteStL(300,false);

	SetNwC("cg/fw/nw迷子.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0180e279">
「……？
　えぅぅーー!!」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0190a03">
「……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/011c0200a04">
「……」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0210e279">
「まってー……
　おかーさん……さがして……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　立ち去ろうとする大尉の後を追い、子供がスカート
の裾をつかもうとする。
　だが、触れられない。大尉は軽く身を翻し、小さな
手を躱していた。

　つんのめって、子供が転びかける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw迷子.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0220e279">
「……あぅー……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0230a03">
「おなまえ、は？
　お母さまがあなたに付けて下さったお名前。
ちゃんとあるでしょう？」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0240e279">
「……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0250a03">
「……」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0260e279">
「……ひらた……かずき……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0270a03">
「承りました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　美しくターンを切って、大尉が子供のもとへ戻る。
　両手を差し伸べて、抱き上げた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0280a03">
「お母さまと、はぐれてしまったのね」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0290e279">
「うん……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0300a03">
「わかりました。探して差し上げます。
　さよ、あなたは大会本部の方に。わたくし
は客席を見てまいります」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/011c0310a04">
「かしこまりました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　短い言葉で分担を決め、きびきびと動き始める二人。
　たちまち姿が見えなくなる。

　あの分ならきっと、すぐに母親を見つけ出すだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011c0320a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　……出てゆくタイミングがつかめなかったが。
　むしろそれで良かったのか。俺がいても、あのよう
には振舞えなかったに違いない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆香奈枝好感度＋１
//$Kanae_Flag = $Kanae_Flag++;
	$ma03_011c_routeFlag = true;
	$Kanae_Flag++;

	judgment_of_count();

	Wait(500);

	ClearWaitAll(1000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_012.nss"