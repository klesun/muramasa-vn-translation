//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_031.nss_MAIN
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
	#ev200_香奈枝最初の殺戮=true;
	#ev201_香奈枝血の涙=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_032.nss";

}

scene mc04_031.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc04_030.nss"


//◆山荘

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵背景30", 10, Center, Middle, "cg/bg/bg091_山荘の一室_01.jpg");
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	OnSE("se人体_動作_布絞る", 1000);
	WaitKey(2000);
	StL(1000,@0,@ 0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,true);
	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0310010a04">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　永倉さよは、清掃の手をふと休めた。

　床に、小さな黒ずみがある。
　古い血痕のような。

　あの事件の後、汚れた床板は全て剥がされ、新しい
ものに張り替えられたはずだった。
　
　なのに――見落としがあったのだろうか。

　事件はもう、二十年近くも昔の事である。
　全く無関係なただの汚れと考える方が自然だ。

　しかし、老侍従には連想されてならなかった。
　その痕跡から――――あの日の光景が。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
//◆死屍累々。中央に背を向けた少女。手に長銃

	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想01", 5000, Center, Middle, "cg/ev/ev200_香奈枝最初の殺戮.jpg");
	SoundPlay("@mbgm18",0,1000,true);

	EfRecoIn2(300);
	DeleteStA(0,true);

	WaitKey(1000);

	SetNwR("cg/fw/nw香奈枝.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0310020a03">
『おばあさま……ふしぎなの。
　とてもふしぎなのよ』

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0310030a03">
『このひとたち、銃の弾をよけなかったの』

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0310040a03">
『あんなの、<RUBY text="・・・・・・・">ちゃんと見れば</RUBY>かんたんによけ
られるのにね……』

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0310050a03">
『そうでしょう？』

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0310060a03">
『ねえ、おばあさま――』

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆振り向いた少女。眼より下のみ。血の涙が幾筋も？
	CreateTextureEX("絵回想02", 6000, Center, Middle, "cg/ev/ev201_香奈枝血の涙.jpg");
	Fade("絵回想02",1000,1000,null,true);
	WaitKey(1000);

	SetNwR("cg/fw/nw香奈枝.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0310070a03">
『どうしてこのひとたちは……
　わたくしみたいに、時間を止めてしまわな
かったのかしら？』

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);
	SetVolume("@mbgm*", 500, 0, null);


	Delete("絵回想*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　肌が泡立つ。
　指先は震え、雑巾を取り落とした。

　あの記憶。
　この恐怖は、いつ掘り返しても鮮烈なままであった。

　いっかな磨耗しなかった。
　おそらく――永倉さよがいつか生涯を閉じる時まで、
色褪せないのであろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0310080a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　急速に灰色で塗り込められてゆく外の風景を見て。
　そこで開かれる戦闘の幕が、主人の敗北という形で
閉じられる事は決して無いのだと、侍従は心中深くに
確信していた。

　――――もし、そんな結末が有り得るとするなら。
　
　それはさよの主人が自らの意思で敗北を選ぶ時のみ
であろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);
}

..//ジャンプ指定
//次ファイル　"mc04_032.nss"