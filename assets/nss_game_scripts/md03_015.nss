//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_015.nss_MAIN
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
	#bg033_普陀楽城宿舎_01=true;
	#ev128_病床の光_g01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_016.nss";

}

scene md03_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md03_014.nss"


//◆奥座敷。bg033b_昼


	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm31", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒",2000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　普陀楽城内、堀越公方居住区の奥。
　この一室はそこにある。

　ただ一人の人間ために用意された一間だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0150010a00">
「……光……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆病床の光。覚醒中

	CreateTextureEX("光", 15000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");
	Fade("光", 1500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　部屋の主は両眼を開き、俺を見ている。
　しかしその瞳は虚ろで――意思の輝きが無い。

　光はもはや、深い眠りに落ちた時しか、心身の自由
を取り戻せないのだ。
　
　夢の中でしか生きられないのだ。

　そしてその寿命すら、もう長くはない。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0150020a00">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　堀越からここへ運び込まれたのは、茶々丸が篠川へ
向かう前日だった。
　以来俺は必ず、日に一度はこの室を訪れている。

　無条件で信じられる価値。
　
　それは今、ここにある。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0150030a00">
「光」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　誓うように、もう一度呟く。

　守るべき価値。
　俺の全て。

　愛するもの。

　最後に残った、一人きりの家族。

　――そうだ。
　このためだけに、俺は戦う。

　どんな事でも成し遂げてみせる。

　地の底の神とやらを引きずり出し、光に与える事が
必要ならば――――<k>俺はそうする。

　しなくてはならない。
　それがどれほどの災厄をもたらそうとも!!

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md03_016.nss"