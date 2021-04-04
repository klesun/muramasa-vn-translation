//<continuation number="1640">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_003_4.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{

		//$銀星号香奈枝殺害 = true;

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg033_署長宅景明私室_01=true;
	#bg032_八幡宮奥舞殿内b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
//	$PreGameName = $GameName;

//	◆フラグ分岐：デバッグのため選択肢にしてあります
//	◆香奈枝が生存していた場合　"mb01_003a.nss"
//	◆香奈枝が死亡していた場合　"mb01_003b.nss"
//	$GameName = "mb01_003b.nss";
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;


	if($銀星号香奈枝殺害 == true){
		$PreGameName = $GameName;
		$GameName = "mb01_003a.nss";
	}else{
		$PreGameName = $GameName;
		$GameName = "mb01_003b.nss";
	}


}

scene mb01_003_4.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_002.nss"
//前ファイル　"mb01_002a.nss"

	PrintBG("上背景", 30000);
//	SoundPlay("@mbgm20",1000,1000,true);
	CreateColorSP("絵色黒", 100, "#000000");

	Delete("上背景");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　俺が今、最も――<RUBY text="よ">善</RUBY>し、と思う者。
　その存在を肯定する者。

　それは、
　誰か。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条
//◆イメージ。斬殺

/*
	OnSE("se擬音_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateColorSP("絵黒地", 3000, "#000000");
	StC(3100, @0,@0,"cg/st/st一条_通常_制服.png");
	FadeStC(0,true);

	Fade("絵白転", 300, 200, null, true);

	WaitKey(300);

	CreateColorSP("絵演赤", 4000, "#CC0000");
	CreateTextureSP("絵演血", 3200, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Wait(100);
	DeleteStA(100,false);
	FadeDelete("絵演赤", 500, true);

	WaitKey(500);

	Fade("絵白転", 400, 1000, null, true);

	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);

	Delete("絵黒地*");
	Delete("絵演*");
	DeleteStA(0,true);
	FadeDelete("絵白転", 600, true);

*/

//おがみ：香奈枝ルートと合わせました
	StC(500, @0, @0, "cg/st/st一条_通常_制服.png");
	FadeStC(300,true);

	WaitKey(1000);

//◆イメージ。斬殺
	CreateTextureSPadd("絵背景500", 10000, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	OnSE("se戦闘_攻撃_刀振る02",1000);

	CreateTextureSPmul("絵演効果血", 510, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Wait(200);

	DeleteStC(100,true);
	FadeDelete("絵背景500", 500, true);

	OnSE("se人体_血_血しぶき01",1000);
	CreateColorSP("絵色血", 5000, "#CC0000");
	Wait(12);

	Delete("絵演効果血");
	FadeDelete("絵色血", 3000, false);

	CreateTextureEX("絵ＥＦ15", 150, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	CreateTextureSPmul("絵ＥＦ追加", 4000, @0, @0, "cg/data/circle_09_00_0.png");
	Fade("絵ＥＦ15", 50, 1000, null, true);

	WaitAction("絵色血", null);


	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	Wait(1000);

	SoundPlay("@mbgm30",2000,1000,true);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031500a00">
「……ッッ」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031510a11">
「景明……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031520a00">
「お許しを」

{	SetVolume("@mbgm*", 3500, 1000, null);
	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031530a00">
「どうか……
　この儀ばかりは！」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031540a11">
「……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031550a10">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想終わり
//◆景明部屋
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg033_署長宅景明私室_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1500, true);

	WaitKey(1000);
	FadeDelete("絵暗転", 1500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　結局、俺は引き受けることができなかった。
　銀星号に<RUBY text="まつ">纏</RUBY>わる殺戮だけで限界だった。

　大和の未来の為に戦い殺すなど、俺の器量を超えて
いた。
　恩ある親王の期待に背くのは心苦しい。だが仕様も
ない。

　幸い、親王も署長も強いて命じようとはしなかった。
　念を押して口止めするようなこともなく――そんな
のは当たり前だ――無言で頷いたきり、俺が退出する
に任せてくれた。

　だから、俺の仕業ではない。断じて。わざわざ記憶
を反芻して確認するまでもない事だが。
　足利護氏を死に至らしめた者は別にいる。

　自然死ではなく、刺客の手が存在したなら……
　
　やはりその奥に、舞殿宮の影を疑わずにはおれない。

　しかし、誰が俺に代わって刃の役を務め上げたのか。
　誰か……いただろうか？　親王の側に、足利護氏を
仕留め得るような者が。

　心当たりはないが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031560a00">
「…………」

</PRE>
	SetTextEXC();
	if($銀星号香奈枝殺害 == true){
	TypeBeginCI();//―――――――――――――――――――――――――――――
	}else{
	TypeBeginCIO();//―――――――――――――――――――――――――――――
	}

//◆ルート分岐まで香奈枝が生存していた場合のみ↓の台詞
..//嶋：ルート分岐後、香奈枝死亡

if($銀星号香奈枝殺害 == true){

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031570a00">
（真逆……？）

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

}else{}


	ClearWaitAll(2000, 1000);

//◆建朝寺
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内b_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031580a10">
「ああ……やっと落ち着いたえ。
　ほんと、肩凝ったわ」


{	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(300,false);
	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031590a11">
「お疲れ様で御座いました」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031600a10">
「おまさんもな。
　しゃあけど建朝寺か……ここも足利の膝元
って意味じゃあんまり変わらんねえ」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031610a11">
「普陀楽城内にいつまでも留め置かれるより
は、まだしも……でしょう」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031620a10">
「そらね……。
　まぁ、そんなこたええわ」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031630a10">
「早速本題やけど。
　……どう思う？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031640a11">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

..//ジャンプ指定

}


//◆フラグ分岐
//◆香奈枝が生存していた場合　"mb01_003a.nss"
//◆香奈枝が死亡していた場合　"mb01_003b.nss"


//★選択肢シーン
scene mb01_003_4.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg006_雄飛の部屋_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("香奈枝生存","香奈枝死亡");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆香奈枝が生存していた場合　"mb01_003a.nss"
				$GameName = "mb01_003a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆香奈枝が死亡していた場合　"mb01_003b.nss"
				$GameName = "mb01_003b.nss";
		}
	}
}