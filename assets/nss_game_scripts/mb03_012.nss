//<continuation number="130">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_012.nss_MAIN
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
	#bg056_建長寺三門前_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_013.nss";

}

scene mb03_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_011.nss"

//◆建朝寺・門前。夜
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg056_建長寺三門前_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

	Wait(500);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【義清】
<voice name="義清" class="義清" src="voice/mb03/0120010b21">
「すみません」


{	NwC("cg/fw/nw寺僧.png");}
//【ｅｔｃ／建朝寺の僧】
<voice name="ｅｔｃ／建朝寺の僧" class="その他男声" src="voice/mb03/0120020e067">
「はい？」


{	NwC("cg/fw/nwその他.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb03/0120030b21">
「……このお寺に、改というご夫婦はおられ
ませんか？」


{	NwC("cg/fw/nw寺僧.png");}
//【ｅｔｃ／建朝寺の僧】
<voice name="ｅｔｃ／建朝寺の僧" class="その他男声" src="voice/mb03/0120040e067">
「夫婦……？
　ははは、ここにいるのは仏様にお仕えして
いる人たちばかりですよ」


{	NwC("cg/fw/nwその他.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb03/0120050b21">
「あ……そうですね。
　夫婦では、ないかも」


{	NwC("cg/fw/nw寺僧.png");}
//【ｅｔｃ／建朝寺の僧】
<voice name="ｅｔｃ／建朝寺の僧" class="その他男声" src="voice/mb03/0120060e067">
「ふぅむ。
　改……あらた……」


{	NwC("cg/fw/nw寺僧.png");}
//【ｅｔｃ／建朝寺の僧】
<voice name="ｅｔｃ／建朝寺の僧" class="その他男声" src="voice/mb03/0120070e067">
「覚えがないですねぇ……」


{	NwC("cg/fw/nwその他.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb03/0120080b21">
「……そうですか。
　すみません。さっきここへ入っていった人
に、見覚えがあるような気がしたので」


{	NwC("cg/fw/nw寺僧.png");}
//【ｅｔｃ／建朝寺の僧】
<voice name="ｅｔｃ／建朝寺の僧" class="その他男声" src="voice/mb03/0120090e067">
「一般参拝の人かな。
　そんな時間でもないけど……」


//【ｅｔｃ／建朝寺の僧】
<voice name="ｅｔｃ／建朝寺の僧" class="その他男声" src="voice/mb03/0120100e067">
「ああ、貴方もこんな時間に出歩いていては
いけませんよ。物騒なご時勢なんですから。
　おうちはどこです？」


{	NwC("cg/fw/nwその他.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb03/0120110b21">
「あ……大丈夫です。すぐ近くなので。
　もう帰ります。ありがとうございました」


{	NwC("cg/fw/nw寺僧.png");}
//【ｅｔｃ／建朝寺の僧】
<voice name="ｅｔｃ／建朝寺の僧" class="その他男声" src="voice/mb03/0120120e067">
「いえいえ。
　お気をつけて」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(1000);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【義清】
<voice name="義清" class="義清" src="voice/mb03/0120130b21">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_013.nss"