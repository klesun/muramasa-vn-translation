//<continuation number="120">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_027.nss_MAIN
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
	#bg068_普陀楽城内部屋_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_028vs.nss";

}

scene mb02_027.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_026vs.nss"

//◆地上。桜子の部屋
//◆ＳＥ：ガヤ＋どたばた
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg068_普陀楽城内部屋_03.jpg");
	CreateSE("SEL01","se背景_ガヤ_戦場の風景01_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);

	CreateVOICEEX("ｅｔｃ／幕府兵士Ａ","mb02/0270040gousei","その他男声");
	MusicStart("ｅｔｃ／幕府兵士Ａ",2000,500,0,1000,null,false);

	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1500, true);

	Wait(3000);

	SetFwC("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0270010b28">
「……あれは……」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0270020b28">
「…………」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0270030b28">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆以下のボイスは↑にかぶせてＳＥ扱いで処理。
//◆テキスト出さない。

//あきゅん「音声：以下の音声は一つにまとめて欲しい、上記のCreateVOICEで使用」

/*
	SetNwC("cg/fw/nw兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／幕府兵士Ａ】
<voice name="ｅｔｃ／幕府兵士Ａ" class="その他男声" src="voice/mb02/0270040e266">
「何があった!?
　おい、どうしたんだ！」


{	NwC("cg/fw/nw兵士Ｂ.png");}
//【ｅｔｃ／幕府兵士Ｂ】
<voice name="ｅｔｃ／幕府兵士Ｂ" class="その他男声" src="voice/mb02/0270050e267">
「出会え！　夜襲だ！
　者ども出会え！」


{	NwC("cg/fw/nw兵士Ｃ.png");}
//【ｅｔｃ／幕府兵士Ｃ】
<voice name="ｅｔｃ／幕府兵士Ｃ" class="その他男声" src="voice/mb02/0270060e268">
「古河中将様はいずこにおわす!?」


{	NwC("cg/fw/nw兵士Ｄ.png");}
//【ｅｔｃ／幕府兵士Ｄ】
<voice name="ｅｔｃ／幕府兵士Ｄ" class="その他男声" src="voice/mb02/0270070e269">
「謀叛じゃ！
　四郎様をお守りせよ！」


{	NwC("cg/fw/nw兵士Ａ.png");}
//【ｅｔｃ／幕府兵士Ａ】
<voice name="ｅｔｃ／幕府兵士Ａ" class="その他男声" src="voice/mb02/0270080e266">
「何ぃ!?」


{	NwC("cg/fw/nw兵士Ｂ.png");}
//【ｅｔｃ／幕府兵士Ｂ】
<voice name="ｅｔｃ／幕府兵士Ｂ" class="その他男声" src="voice/mb02/0270090e267">
「違う、西の丸だ！
　倒幕派どもが夜討ちを仕掛けて来よった！」


{	NwC("cg/fw/nw兵士Ｃ.png");}
//【ｅｔｃ／幕府兵士Ｃ】
<voice name="ｅｔｃ／幕府兵士Ｃ" class="その他男声" src="voice/mb02/0270100e268">
「童心様！
　童心様はいずこ！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/

//◆↑ここまで。
//◆ざっ。登場ＳＥ

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb02/0270110b26">
「……義姉上。
　お迎えにあがりましたぞ」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0270120b28">
「えっ？」


</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


	SetVolume("SE*", 1000, 0, null);
	SetVolume("ｅｔｃ／幕府兵士Ａ", 1000, 0, null);
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_028vs.nss"