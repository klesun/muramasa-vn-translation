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

scene md02_038.nss_MAIN
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
	#ev220_茶々丸の世界=true;
	#bg097_堀越御所内景明の部屋_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_039.nss";

}

scene md02_038.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md02_037.nss"


//◆茶々丸の世界
//◆ＳＥ：最初にガヤ
//◆数秒後にトーンダウンして、代わりに以下台詞。
//◆テキストなしボイスのみ。

/*
	PrintBG("上背景", 30000);
	CreateColorEX("ホワイトイン", 5000, "WHITE");
	Fade("ホワイトイン", 0, 1000, null, true);
	CreateTextureEX("ちゃちゃまる", 4000, @0, @0, "cg/ev/ev220_茶々丸の世界.jpg");
	Fade("ちゃちゃまる", 0, 1000, null, true);
	CreateSE("がや", "se背景_ガヤ_サーキット04_L");
	MusicStart("がた", 0, 1000, 0, 1000, null,false);
	Delete("上背景");
	FadeDelete("ホワイトイン",1500,true);

	WaitKey(1000);
	SetVolume("がや", 1000, 0, null);
*/

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 20000, "BLACK");
	CreateTextureSP("茶々丸の世界", 15000, @0, @0, "cg/ev/ev220_茶々丸の世界.jpg");
	Zoom("茶々丸の世界", 0, 1500, 1500, null, true);
	CreateTextureEX("茶々丸の世界２", 15000, @0, @0, "cg/ev/ev220_茶々丸の世界.jpg");
	Zoom("茶々丸の世界２", 0, 1500, 1500, null, true);
	DrawEffect("茶々丸の世界", 50, "LowWave ", 0, 100, null);
	DrawEffect("茶々丸の世界２", 50, "SuperWave", 0, 500, null);
	SetFont("ＭＳ 明朝", 22, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	CreateText("絵我が", 16000, 50, 20, 700, 500, "〝我は力〟");
	SetAlias("絵我が","絵我が");
	Move("絵我が", 0, 450, 230, null, true);
	Fade("絵我が", 0, 0, null, true);
	Request("絵我が", NoLog);


	Delete("上背景");

	OnBG(100, "bg097_堀越御所内景明の部屋_01.jpg");
	FadeBG(0, true);

	CreateSE("ぼえー", "se特殊_その他_神の声01");
	CreateSE("ノイズ１", "se日常_機械_ノイズ03");
	CreateSE("ノイズ２", "se日常_機械_ノイズ02");
	CreateSE("ノイズ３", "se日常_機械_ノイズ03");
	CreateSE("ノイズ４", "se日常_機械_ノイズ03");
	MusicStart("ぼえー",2000,1000,0,500,null,false);

	FadeDelete("黒幕１",2000,true);


	Wait(2000);

	MusicStart("ノイズ１",0,1000,0,1000,null,false);
	Fade("絵我が", 300, 1000, null, false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(100);
	Fade("絵我が", 0, 0, null, false);
	Fade("茶々丸の世界２", 0, 0, null, true);
	SetVolume("ノイズ１", 0, 0, null);

	Wait(2000);

	MusicStart("ノイズ２",0,1000,0,1000,null,false);
	Fade("絵我が", 300, 1000, null, false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(100);
	Fade("絵我が", 0, 0, null, false);
	Fade("茶々丸の世界２", 0, 0, null, true);
	SetVolume("ノイズ２", 0, 0, null);

	Wait(50);
	MusicStart("ノイズ３",0,1000,0,1000,null,false);
	Fade("絵我が", 300, 1000, null, false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(150);
	Fade("絵我が", 0, 0, null, false);
	Fade("茶々丸の世界２", 0, 0, null, true);
	SetVolume("ノイズ３", 0, 0, null);

	Wait(2000);

	Fade("絵我が", 300, 1000, null, false);
	MusicStart("ノイズ４",0,1000,0,1000,null,true);
	Wait(100);
	Fade("茶々丸の世界２", 0, 500, null, true);
//	Fade("茶々丸の世界２", 0, 0, null, true);

//◆音に合わせて　〝我は力〟　ＣＧ表示。小さく。
//■↑演出保留中　inc櫻井

	Fade("絵我が", 300, 0, null, false);
	SetVolume("ノイズ４", 3000, 100, null);

	Wait(500);

//あきゅん「監修：以下のサンプルの用に繋げておいて下さい」
	CreateVOICE("ｅｔｃ／流星団Ａ","md02/0380010e287");
	MusicStart("ｅｔｃ／流星団Ａ",0,1000,0,1000,null,false);
	$残時間=RemainTime("ｅｔｃ／流星団Ａ");
	WaitKey($残時間);
	SetVolume("ｅｔｃ／*", 100, 0, null);

	SetVolume("ノイズ４", 0, 500, null);
	Wait(100);
	SetVolume("ノイズ４", 200, 100, null);

	CreateVOICE("ｅｔｃ／流星団Ｂ","md02/0380020e288");
	MusicStart("ｅｔｃ／流星団Ｂ",0,1000,0,1000,null,false);
	$残時間=RemainTime("ｅｔｃ／流星団Ｂ");
	WaitKey($残時間);
	SetVolume("ｅｔｃ／*", 100, 0, null);


	CreateVOICE("ｅｔｃ／流星団Ａ","md02/0380030e287");
	MusicStart("ｅｔｃ／流星団Ａ",0,1000,0,1000,null,false);
	$残時間=RemainTime("ｅｔｃ／流星団Ａ");
	WaitKey($残時間);
	SetVolume("ｅｔｃ／*", 100, 0, null);


	CreateVOICE("ｅｔｃ／流星団Ｃ","md02/0380040e289");
	MusicStart("ｅｔｃ／流星団Ｃ",0,1000,0,1000,null,false);
	$残時間=RemainTime("ｅｔｃ／流星団Ｃ");
	WaitKey($残時間);
	SetVolume("ｅｔｃ／*", 100, 0, null);


	CreateVOICE("ｅｔｃ／流星団Ｂ","md02/0380050e288");
	MusicStart("ｅｔｃ／流星団Ｂ",0,1000,0,1000,null,false);
	$残時間=RemainTime("ｅｔｃ／流星団Ｂ");
	WaitKey($残時間);
	SetVolume("ｅｔｃ／*", 100, 0, null);


	CreateVOICE("ｅｔｃ／流星団Ｃ","md02/0380060e289");
	MusicStart("ｅｔｃ／流星団Ｃ",0,1000,0,1000,null,false);
	$残時間=RemainTime("ｅｔｃ／流星団Ｃ");
	WaitKey($残時間);
	SetVolume("ｅｔｃ／*", 100, 0, null);


	CreateVOICE("ｅｔｃ／流星団Ｂ","md02/0380070e288");
	MusicStart("ｅｔｃ／流星団Ｂ",0,1000,0,1000,null,false);
	$残時間=RemainTime("ｅｔｃ／流星団Ｂ");
	WaitKey($残時間);
	SetVolume("ｅｔｃ／*", 100, 0, null);


	CreateVOICE("ｅｔｃ／流星団Ａ","md02/0380080e287");
	MusicStart("ｅｔｃ／流星団Ａ",0,1000,0,1000,null,false);
	$残時間=RemainTime("ｅｔｃ／流星団Ａ");
	WaitKey($残時間);
	SetVolume("ｅｔｃ／*", 100, 0, null);


	CreateVOICE("ｅｔｃ／流星団Ｃ","md02/0380090e289");
	MusicStart("ｅｔｃ／流星団Ｃ",0,1000,0,1000,null,false);
	$残時間=RemainTime("ｅｔｃ／流星団Ｃ");
	WaitKey($残時間);
	SetVolume("ｅｔｃ／*", 100, 0, null);

	SetVolume("ノイズ４", 0, 500, null);
	Wait(100);
	SetVolume("ノイズ４", 500, 100, null);

	CreateVOICE("ｅｔｃ／流星団Ａ","md02/0380100e287");
	MusicStart("ｅｔｃ／流星団Ａ",0,1000,0,1000,null,false);
	$残時間=RemainTime("ｅｔｃ／流星団Ａ");
	WaitKey($残時間);
	SetVolume("ｅｔｃ／*", 100, 0, null);


	CreateVOICE("ｅｔｃ／流星団Ｃ","md02/0380110e289");
	MusicStart("ｅｔｃ／流星団Ｃ",0,1000,0,1000,null,false);
	$残時間=RemainTime("ｅｔｃ／流星団Ｃ");
	WaitKey($残時間);
	SetVolume("ｅｔｃ／*", 100, 0, null);

	SetVolume("ノイズ４", 100, 600, null);
	Wait(100);
	SetVolume("ノイズ４", 600, 100, null);

	CreateVOICE("ｅｔｃ／流星団Ａ","md02/0380120e287");
	MusicStart("ｅｔｃ／流星団Ａ",0,1000,0,1000,null,false);
	$残時間=RemainTime("ｅｔｃ／流星団Ａ");
	WaitKey($残時間);
	SetVolume("ｅｔｃ／*", 100, 0, null);

	SetVolume("ノイズ４", 1500, 1000, null);
	Fade("茶々丸の世界２", 2000, 1000, null, true);

/*

//	SetNwC("cg/fw/nw男Ａ.png");

//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0010]
//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0380010e287">
//「お前も見たか？」

//【ｅｔｃ／流星団Ｂ】
//<voice name="ｅｔｃ／流星団Ｂ" class="その他男声" src="voice/md02/0380020e288">
//「ああ、間違いないな。
//　堀越公方、足利茶々丸だ！」

//【ｅｔｃ／流星団Ａ】
//<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0380030e287">
//「護衛は少ない。
//　男と女が一人ずつ」

//【ｅｔｃ／流星団Ｃ】
<voice name="ｅｔｃ／流星団Ｃ" class="その他男声" src="voice/md02/0380040e289">
//「……やるか？」

//【ｅｔｃ／流星団Ｂ】
//<voice name="ｅｔｃ／流星団Ｂ" class="その他男声" src="voice/md02/0380050e288">
//「当たり前だ！
//　こんなチャンスを逃してどうする！」

//【ｅｔｃ／流星団Ｃ】
<voice name="ｅｔｃ／流星団Ｃ" class="その他男声" src="voice/md02/0380060e289">
//「しかし、今から道具を調達していて間に合
//うか？」

//【ｅｔｃ／流星団Ｂ】
<voice name="ｅｔｃ／流星団Ｂ" class="その他男声" src="voice/md02/0380070e288">
//「奴らは武装していない。
//　ナイフ一本で充分やれる」

//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0380080e287">
//「待て、それは無謀だ。
//　相手が六波羅だということを忘れるな」

//【ｅｔｃ／流星団Ｃ】
<voice name="ｅｔｃ／流星団Ｃ" class="その他男声" src="voice/md02/0380090e289">
//「ならどうする」

//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0380100e287">
//「矢沢が戻ってから仕掛ける」

//【ｅｔｃ／流星団Ｃ】
<voice name="ｅｔｃ／流星団Ｃ" class="その他男声" src="voice/md02/0380110e289">
//「矢沢？
//　あいつ、道具を取りに行ってるのか？」

//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0380120e287">
//「大丈夫、アジトまで行かせたわけじゃない。
//　すぐに戻ってくる……」

//</PRE>
//	SetTextEXC();
//	TypeBeginCIO();//―――――――――――――――――――――――――――――

*/

//◆戻り

	CreateColorEX("ホワイトアウト１", 25000, "WHITE");
	SetVolume("ノイズ４", 2000, 0, null);
	SetVolume("SE*", 2000, 0, null);
	Fade("ホワイトアウト１",2000, 1000, null, true);

//	ClearWaitAll(1500,1500);

}

..//ジャンプ指定
//次ファイル　"md02_039.nss"