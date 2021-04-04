//<continuation number="90">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_012.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_011.nss"


//◆ホワイトイン。西洋風古城の中。

//BGMなしはわざとです inc櫻井

	PrintBG("上背景", 30000);

	OnSE("se戦闘_動作_鉄壁吹っ飛ばす", 1000);
	CreateColorSP("上白幕", 30001, "WHITE");
	DrawTransition("上白幕", 100, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", true);

	Delete("上背景");

//	CreateColorSP("白", 5000, "WHITE");

	OnBG(100, "bg088_チェイテ城のホール_01b.jpg");
	FadeBG(0, true);

	CreateTextureEX("ワープ演出", 4500, @0, @0, "cg/bg/bg088_チェイテ城のホール_01b.jpg");
	Zoom("ワープ演出", 0, 1500, 1500, null, true);
	DrawEffect("ワープ演出", 50, "SuperWave", 0, 500, null);
	Fade("ワープ演出", 0, 500, null, true);

	FadeDelete("上白幕",1500,true);

	Fade("ワープ演出", 1000, 0, null, true);
	Delete("ワープ演出");

	Wait(1000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0120010a01">
《……ここ……？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……何処だ？

　富士山上空ではない。どう見ようが間違いなく。
　それどころか、どうも大和国内ですらなさそうだ。

　石造りの床、壁面、天井。
　純和風建築とは全く趣を異にしている。

　西洋式の、おそらくは城のような建物の中だ。
　だからといって勿論、ここが西洋の何処かだと決め
付けられるものではないが……。

　この建物には年月を経た風格がある。
　見れば見るほど、欧州の伝統的貴族階級が住まう城
以外の何物とも思えなくなってきた。

　…………場違いだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0120020a00">
「村正、いつまで待っていればいい？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0120030a01">
《慌てないで。すぐよ。
　私達をこの世界から引っ張り出そうとする
力はちゃんと働いてる》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0120040a01">
《幸い面倒な事は何もないみたいだし、この
まま静かに――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(300);

	SetNwH("cg/fw/nyその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆横書き
//◆顔グラなし
//【さよ】
<voice name="さよ" class="さよ" src="voice/md05/0120050a04">
「誰かそこにいるの？」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

	Wait(300);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0120060a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0120070a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　水を差すような呼吸で、その声は投げられてきた。
　通路の向こう、暗がりの奥からだ。

　女性の声――そして異国の言語。
　英語とは違う。しかし、英語と起源を共有する欧州
の言葉。

　意味は全くわからなかったが、この状況だ。
　大体の想像はつく。

//◆かつ、かつ。足音ループ

{	CreateSE("足音", "se人体_足音_歩く06");
	MusicStart("足音", 0, 1000, 0, 1500, null,true);}


　……本来は軽いに違いない足音は、石造建築の中で
幾重にも反響した。
　
　俺達のいる方へ、真っ直ぐ近付いてくる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0120080a01">
《御堂……どうする？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0120090a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　この世界の事象に関わってはならない。

　関わらないためには、何もしないのが最善だ。
　が……何もしないことで関わってしまう場合もある
……。

　今は？
　今はどうするべきだ？

　足音が一つ響く都度……
　俺の全身の体毛は逆立ち、ここは<RUBY text="・・・・・・・・">銃撃戦の真っ只中</RUBY>
だと訴えているが――――!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：待つ／逃げる

}

..//ジャンプ指定
//◆待つ　"md05_012a.nss"
//◆逃げる　"md05_012b.nss"



//★選択肢シーン
scene md05_012.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg088_チェイテ城のホール_01b.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("待つ","逃げる");
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
//◆待つ　"md05_012a.nss"
				$GameName = "md05_012a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆逃げる　"md05_012b.nss"
				$GameName = "md05_012b.nss";
		}
	}
}