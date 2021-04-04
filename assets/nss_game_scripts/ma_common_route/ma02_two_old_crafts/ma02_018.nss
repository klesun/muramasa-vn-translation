//<continuation number="350">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_018.nss_MAIN
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
	#bg025_坑道山脈と森a_01=true;
	#bg025_坑道山脈と森a_02=true;
	#bg025_坑道山脈と森a_03=true;
	#bg020_山脈坑道_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma02_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_017.nss"

//◆お山遠望・昼
//◆お山遠望・夕

	PrintBG("上背景", 30000);
	OnBG(100,"bg025_坑道山脈と森a_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);

	Wait(500);

	OnBG(100,"bg025_坑道山脈と森a_02.jpg");
	FadeBG(1000,true);

	Wait(500);

//◆爆音。どーん。
	CreateSE("SE01","se戦闘_破壊_建物01");
	MusicStart("SE01",0,1000,0,750,null,false);

	CreateColorEXadd("絵フラ", 5100, "#FFFFFF");

	CreateTextureSP("絵ＥＦ50", 5000, Center, Middle, "cg/bg/bg025_坑道山脈と森a_02.jpg");
	SetBlur("絵ＥＦ50", true, 4, 500, 100, false);

	Fade("絵フラ", 0, 400, null, true);
	Fade("絵フラ", 700, 0, null, false);

	FadeFR2("絵ＥＦ50",0,1000,400,0,0,20,Dxl1, true);

	Wait(1300);



//◆お山遠望・夜

	PrintGO("上背景", 1000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg025_坑道山脈と森a_03.jpg");
	FadeDelete("上背景", 1000, true);

	Wait(500);

//◆爆音。どーん。
//◆爆音。どーん。

	CreateColorEXadd("絵フラ", 5100, "#FFFFFF");

	CreateTextureSP("絵ＥＦ50", 5000, Center, Middle, "cg/bg/bg025_坑道山脈と森a_03.jpg");
	SetBlur("絵ＥＦ50", true, 4, 500, 100, false);

	CreateSE("SE02a","se戦闘_破壊_建物01");
	CreateSE("SE02b","se戦闘_破壊_建物01");
	MusicStart("SE02a",0,1000,0,1250,null,false);

	Fade("絵フラ", 0, 400, null, true);
	Fade("絵フラ", 700, 0, null, false);

	FadeFR2("絵ＥＦ50",0,1000,400,0,0,40,Dxl1, false);

	Wait(100);

	MusicStart("SE02b",0,1000,0,750,null,false);

	WaitAction("絵ＥＦ50", null);
	Wait(1300);



//◆お山遠望・朝

	PrintGO("上背景", 1000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg025_坑道山脈と森a_01.jpg");
	FadeDelete("上背景", 1000, true);

	Wait(500);

//◆爆音。どーん。

	CreateColorEXadd("絵フラ", 5100, "#FFFFFF");
	CreateTextureSP("絵ＥＦ50", 5000, Center, Middle, "cg/bg/bg025_坑道山脈と森a_01.jpg");
	SetBlur("絵ＥＦ50", true, 4, 500, 100, false);

	CreateSE("SE03","se戦闘_破壊_建物01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Fade("絵フラ", 0, 400, null, true);
	Fade("絵フラ", 700, 0, null, false);

	FadeFR2("絵ＥＦ50",0,1000,400,0,0,20,Dxl1, true);

	Wait(3300);

//◆坑道前
	SetVolume("SE*", 300, 0, null);
	SetVolume("OnSE*", 300, 0, null);

	PrintGO("上背景", 1000);

	OnBG(100,"bg020_山脈坑道_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　翌朝。
　村の若者二〇人余りを動員して、坑道埋め戻し作業
――のふり――は順調に進んでいた。
　細い支道のいくつかは実際に潰してしまっている。

　代官らは既に気付いているだろう。
　気付かないわけがない。

　もうじき、何らかの反応を見せる筈だ……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st香奈枝_通常_制服b.png");
	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");

	FadeStR(300,true);
	FadeStL(300,true);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0180010a03">
「それでは、景明さま」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180020a00">
「はい。
　大変お世話になりました、大鳥中尉」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　帰り支度を済ませた香奈枝主従と挨拶を交わす。

　彼女らはこれから、可能な限り時間を掛けて、回り
道をしながら進駐軍司令部へ戻ることになっている。
　それがこの巡察官の最後の支援だ。

　俺の応答に、大鳥香奈枝はくすりと笑った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0180030a03">
「何を仰いますやら。
　お世話になったのはわたくしです。危急を
救われ、お仕事も手伝って頂いて……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180040a00">
「それはこちらとて同じこと。
　中尉殿がおられなければ、この村ではさぞ
難儀を重ねたことでしょう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　社交辞令のつもりはなく、言う。
　実際、この点は疑いがなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0180050a04">
「お嬢さま、湊斗さま。
　どうか湿っぽい別れの口上はお止めなさい
ませ。さよが思いますに、また近いうち再会
することがございますよ」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0180060a03">
「あら、ばあやもそう思うの？
　実はわたくしもそう。なぜか景明さまとは
これっきりの縁という気がいたしませんの」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180070a00">
「は。
　そのようにお思い頂けるのは光栄です」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0180080a03">
「ですから、景明さま。
　――また、お会いしましょうね」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180090a00">
「……はい。
　ご縁がありましたら、また」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0180100a04">
「湊斗さま。どうかご武運を」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180110a00">
「有難うございます。
　侍従殿もご壮健であられますよう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆二人の立ち絵消去
	CreateSE("SE01a","se人体_足音_歩く01_L");
	MusicStart("SE01a",0,800,0,800,null,true);
	DeleteStR(300,true);

	SetVolume("SE01a", 5000, 0, null);
	CreateSE("SE01b","se人体_足音_歩く01_L");
	MusicStart("SE01b",0,800,0,650,null,true);
	DeleteStL(300,true);

	SetVolume("SE01b", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059]
　……二人が去っていく。
　見ていて胸が空くほどに、颯爽とした足取りだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01*", 1000, 0, null);
	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0180120b55">
「行ったか」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180130a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　入れ違いの格好で、弥源太老人。
　小さくなってゆく主従を見下ろしながら呟く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0180140b55">
「さて、後は天運次第。
　新たな巡察官が来るのが先か、代官の忍耐
が切れるのが先か……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180150a00">
「如何にも。
　長坂代官の気の短さが勝負の鍵となります」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0180160b55">
「ならば分は悪くないな。
　あやつめの気はせいぜいが兎の尻尾ほどの
長さよ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180170a00">
「加えて大鳥中尉の上官の気が蛇の体長ほど
もあり、中尉の帰還を辛抱強く待ってくれて
いれば、成功はまず確約されていると言える
のですが」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0180180b55">
「そこまでは期待できんかな。
　しかし何にしろ、今日中には必ず何らかの
動きがあろうよ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180190a00">
「は」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0180200b05">
「じっちゃまー。
　お武家さまー」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　不意に、遠くから名を呼ばわれる。
　山裏側の細道を、小さな姿が小走りに近付いてきて
いた。その隣にはもう一回り小さな影もある。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @-60, @0,"cg/st/stふき_通常_私服.png");
	StCR(1010, @60, @0,"cg/st/stふな_通常_私服.png");

	FadeStR(300,true);
	FadeStCR(300,true);

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0180210b55">
「どうした。
　ここにはあまり近付くなと言うておいたに」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0180220b05">
「う……ごめんなさい。
　でも二人とも、昨日からここに詰めっきり
でしょ？　朝御飯、食べてないんじゃないか
と思って」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0180230b06">
「つくった！
　もってきた！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　下の娘、ふなが抱えてきた包みを誇らしげに掲げる。
　……それで、わざわざ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0180240b05">
「お武家様……その、ご迷惑でしたか？」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180250a00">
「有難うございます。
　丁度、空腹を覚えていました」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0180260b55">
「……そうだな。
　腹が減っては戦もできんわ。頂いておくと
しようか」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0180270b06">
「くえ！」


{	FwC("cg/fw/fwふき_衝撃.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0180280b05">
「こら、ふなっ！
　……じゃあ、どうぞ。おにぎりしかありま
せんけど。あ、こっちはお茶です」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180290a00">
「これは、行き届いたこと。
　ふきさんは良い花嫁になられます」


{	FwC("cg/fw/fwふき_照れ.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0180300b05">
「……え、……」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0180310b55">
「あまりおだてるなよ、御堂。
　なら貰ってくれなどと言い出しかねんぞ」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0180320b05">
「じ、じっちゃまー！」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0180330b55">
「ふっふ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　頬を赤くする娘に、弥源太老人は快さげに笑う。
　……この団欒。ふと、今の状況を忘れてしまいそう
になる。

　赤面したまま俯いて、上の娘は包みを広げた。
　
　……？

　内容に、随分と差がある。
　半分は小さめの、綺麗な形をした握り飯だが、もう
半分は格段に大雑把、かつ豪快な姿。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0180340b05">
「……」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0180350b06">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　そして何故か頬に感じる、妙に熱い視線。
　さて……

　どちらから手をつけよう？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

}


//◆選択：綺麗な方／豪快な方

..//ジャンプ指定

//◆綺麗な方　"ma02_018a.nss"
//◆豪快な方　"ma02_018b.nss"

//★選択肢シーン
scene ma02_018.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	SoundPlay("@mbgm30",0,1000,true);
	PrintGO("背景０", 30000);
	OnBG(100,"bg020_山脈坑道_01.jpg");
	FadeBG(0,true);
	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice02("綺麗な方","豪快な方");
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
//綺麗な方　"ma02_018a.nss"
				$GameName = "ma02_018a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//豪快な方　"ma02_018b.nss"
				$GameName = "ma02_018b.nss";
		}
	}
}