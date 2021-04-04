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

scene md05_013.nss_MAIN
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
	#bg058_曇空b_01=true;
	#bg108_荒れ狂う海b_00=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_012b.nss"


//◆暴風雨。bg058b
//意図的にBGMなしにしています。 inc櫻井

	PrintBG("上背景", 30000);
	CreateColorSP("白", 25000, "WHITE");

	OnBG(100, "bg058_曇空c_01.jpg");
	FadeBG(0, true);

	CreateSE("暴風", "se自然_風_暴風");
	MusicStart("暴風", 0, 1000, 0, 1000, null,true);

	CreateTextureEX("ワープ演出", 4500, @0, @0, "cg/bg/bg058_曇空c_01.jpg");
	Zoom("ワープ演出", 0, 1500, 1500, null, true);
	DrawEffect("ワープ演出", 50, "SuperWave", 0, 500, null);
	Fade("ワープ演出", 0, 500, null, true);

	Delete("上背景");

	FadeDelete("白",1500,true);

	Fade("ワープ演出", 1000, 0, null, true);
	Delete("ワープ演出");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　風が吹き<RUBY text="すさ">荒</RUBY>ぶ。
　密集して襲う雨の圧力は、砂嵐も同然だ。

　鉄の<RUBY text="からだ">騎体</RUBY>が木の葉のように、右へ左へ、見えざる手
の命ずるまま激しく危うく踊り狂う。
　背景を彩るつもりか、轟く雷鳴――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0130010a00">
「今度は暴風雨の真ん中か！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0130020a01">
《一応断っておくけど、私が行先を選んでる
わけじゃないからねーっ！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　言っても詮無い苦情と、言うまでもない弁明を応酬
する俺と村正。
　無論のこと心理的余裕の表れではなく、どちらかと
いえばその反対であった。

　……もう少しましな時空間へ飛ばしてくれ。
　それが無理なら、せめてさっさと次の時空間へ連れ
出して欲しい。

　届け先のない要望を胸中で弄り回す以外、何もする
事がなかった。
　戦場の王たる武者も、自然現象にはまるで無力だ。

　早く修正力が働いてくれないものか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0130030a01">
《御堂！
　ねえ、あれ見て！》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0130040a00">
「下？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//あきゅん「演出：アイデアメモ、大き目の背景で最初は海を見せる、テキスト進めながらＰａｎして大きめに船を表示、しばらくしたら通常サイズで全体を表示」

//■resize背景待ち inc櫻井
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	CreateTextureSP("船", 15000, @0, @0, "cg/bg/resize/bg108_荒れ狂う海b_00l.jpg");


	OnBG(100, "bg108_荒れ狂う海b_00.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");
	Move("船", 10000, @-400, @-150, null, false);

	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　目をやる。
　そうして初めて気付いたが、下にあるのは陸地では
なく海だった。


　空に負けず荒れ狂っている海面を、さほど大きくも
ない船が漂っている。<k>
　
　船…………<k>{FadeDelete("船", 1000, false);}船？

　船には違いない。
　だが、あのような形状の船は見たことがない。

　俺の知るどんな船舶より、洗練された――先進的な
構造をしている。
　
　……ここは、未来か!?

　先刻の古城は現在ないし過去と思えたが。
　あの船から推し量るに、この時空間は俺の時代より
やや――数年か数十年か――時間の進んでいる世界と
思しい。

　真実そうなら、何よりの事だ。
　人類世界が〝神〟に滅ぼされなかったという証左に
なる――<k>が、本当に未来なのかは知れたものではない
し、<RUBY text="・・・・・・・">有り得ない未来</RUBY>に飛ぶ事もあるかもしれない。

　現状は既に俺の理解を脱しているのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0130050a01">
《あの船……沈みそうね？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0130060a00">
「そうだな……今にも」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　優れた船なのだろうが、今は笹船と変わらない。
　波の暴虐にただ弄ばれている。

　助ける、という選択は脳内から排除した。
　それは確実に、この世界への深い関与となるだろう。

　手を出すべきではない。
　この時空間の事はこの時空間の人間の預かりだと、
思い捨てるしかない……。

　だが、別の観点からの考えもあった。

　暴風雨の中に留まること自体、この世界との関わり
だと言えばそうだ。
　待っている間に姿勢制御を失い、墜落する可能性も
ある。

　あの船の中に入れば、ひとまず雨風は凌げるだろう。
　あるいはそれが、最もこの時空間の事象と関わりを
持たなくて済む方法か……？

　さて、どうする。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("暴風", 2000, 0, null);

//◆選択：ここに留まる／船上に降りる

}

..//ジャンプ指定
//◆ここに留まる　"md05_013a.nss"
//◆船上に降りる　"md05_013b.nss"



//★選択肢シーン
scene md05_013.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg108_荒れ狂う海b_00.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("ここに留まる","船上に降りる");
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
//◆ここに留まる　"md05_013a.nss"
				$GameName = "md05_013a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆船上に降りる　"md05_013b.nss"
				$GameName = "md05_013b.nss";
		}
	}
}