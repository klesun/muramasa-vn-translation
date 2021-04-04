//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_012a.nss_MAIN
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
	#bg088_チェイテ城のホール_01b=true;
	#ev188_血浴の貴婦人_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene md05_012a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_012.nss"


//●待つ
//◆足音、止まる

	PrintBG("上背景", 30000);
	OnBG(100, "bg088_チェイテ城のホール_01b.jpg");
	FadeBG(0, true);
	Delete("上背景");


	SetNwH("cg/fw/nyその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆横書き
//◆顔グラなし
//【さよ】
<voice name="さよ" class="さよ" src="voice/md05/012a0010a04">
「……あら。
　これは良いお客様」

//◆横書き
//◆顔グラなし
//【さよ】
<voice name="さよ" class="さよ" src="voice/md05/012a0020a04">
「教皇庁は本当に根気があるのね。
　討伐に差し向けた騎士は皆ことごとく帰ら
なかったというのに――また新たな騎士を」

//◆横書き
//◆顔グラなし
//【さよ】
<voice name="さよ" class="さよ" src="voice/md05/012a0030a04">
「見たところ、今度は東洋の御方かしら？
　……ふふ。愉しませて頂けそうね……」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md05/012a0040a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm34", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……実を言えば。
　この時点で俺はもう気付いていた。

　間違えた、
　失敗したのだ、と。

　沈黙する村正に、<RUBY text="ただ">質</RUBY>す必要もない。
　俺を本来の正しい時空間へ引き戻す力は、既に断ち
切られた……。

　声の主が俺を認めた時に。

　その、人ならぬ<RUBY text="バジリコク">魔獣</RUBY>の眼差しが、
　獲物として、俺を見定めた瞬間に。

　……俺と村正はこれから、想像を絶する艱難辛苦に
身を浸さなくてはなるまい。
　時間移動の方法を解明し、正しい時空間へ戻る――
どれ程の探究が求められるのか、思うだけで目が眩む。

　そして。
　その果てしない苦難の道へ踏み出すためには。
　
　まず――生き延びなくてはならない。

　死闘を。

　優美な肢体。優雅な風貌。甲鉄で装った武者を前に
して恐れ気なく舌を舐めずる――この名も知れぬ鮮血
の匂いに満ちた妖しき貴婦人の魔手から逃れなければ、
　絶望すら始まらないのだ！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：ヤングさよ。服装は貴婦人モード。

	CreateTextureEX("やんぐさよ", 5000, @0, @0, "cg/ev/ev188_血浴の貴婦人_b.jpg");
	Fade("やんぐさよ", 1000, 1000, null, true);

	Wait(500);

	SetFwH("cg/fw/fwさよ吸血正装_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆横書き
//【さよ】
<voice name="さよ" class="さよ" src="voice/md05/012a0050a04">
「さぁ開演しましょう、東方の騎士様。
　チェイテ城の長い夜を！」

//◆横書き
//【さよ】
<voice name="さよ" class="さよ" src="voice/md05/012a0060a04">
「夜明けのない永遠の夜を！
　狂おしくあでやかに過ごしましょう……！」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆アイアンメイデン・発動
//◆ゲームオーバー処理


	OnSE("se特殊_鎧_バートリィ発動", 1000);

	CreateTextureSP("バートリィ", 5100, @0, @0, "cg/ef/ef032_バートリィb.jpg");
	DrawTransition("バートリィ", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitKey(1000);

	SetVolume("SE*", 3000, 0, null);
	SetVolume("OnSE*", 3000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);

	ClearWaitAll(3000, 1500);
	

/*
	CreateColorEX("黒2", 15000, "BLACK");
	Fade("黒2", 2000, 1000, null, true);

	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev009_ゲームオーバー.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

	WaitKey();

	ClearWaitAll(1500, 1500);
*/
}

..//ジャンプ指定
//次ファイル