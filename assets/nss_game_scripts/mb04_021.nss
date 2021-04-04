//<continuation number="850">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_021.nss_MAIN
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
	#bg003_荒れ野_02=true;
	#ev269_義清と姉_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_022.nss";

}

scene mb04_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_020.nss"

//◆現実復帰
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg003_荒れ野_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	SoundPlay("@mbgm32",2000,1000,true);
	FadeDelete("絵暗転", 2000, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　憎悪の声が響いていた。
　怨念の声が轟いていた。

　それは父様が聞いたものと同じ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	StR(1000, @0, @0,"cg/st/st義清姉付_通常_私服b.png");
//	FadeStR(300,true);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev269_義清と姉_b.jpg");
	Fade("絵背景100", 500, 1000, null, true);


	SetFwC("cg/fw/fw義清_狂笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210010b21">
「私が、貴方たちの知らない入道様を知って
いるだろうって……？
　ああ、知っている！　知っているよ！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210020b21">
「優しい御方だった！
　両親を失くして、後を追うばかりだった私
と姉さんを助けて下さったのは入道様だ！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210030b21">
「両親が昔、些細な事件で、入道様を助けた
ことがあったのを覚えていて下されたから！
　たったそれだけのことで、入道様は危険も
顧みずに私たちの身柄を引き取ってくれた」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210040b21">
「育ててくれた。
　士分に取り立ててさえ下さった」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210050b21">
「いくら感謝したってし足りない。
　だのに入道様は、いつも笑って仰るだけだ
った……わしは婆娑羅者、おのれのやりたい
ことをやっただけよ、と」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210060b21">
「――優しい御方だった!!
　さあ、どうだ!?　満足か？　聞きたかった
んだろう？」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210070b21">
「入道様がどんなお人か、知りたかったんだ
ろう!!」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210080b40">
《…………》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210090b40">
《……だ……だが……。
　あの男は……》


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210100b21">
「ああ、そうだね。
　入道様は悪いことも色々なされた。ご自分
の欲にのみ忠実な御方だったから」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210110b21">
「けれどだからって、私にとっての入道様が
変わるわけじゃない」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210120b40">
《…………》


{	FwC("cg/fw/fw義清_狂笑.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210130b21">
「ふふ……あはははは！
　仕方ない！　今更、こんなこと言ったって
仕方ないよ！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210140b21">
「もう死んでしまったんだ。
　入道様は……」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210150b21">
「姉さんも」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210160b21">
「生まれるはずだった赤子も！」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210170b40">
《う……うぅ……》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210180b40">
《赤子……
　……赤子だと…………》


{	FwC("cg/fw/fw義清_狂笑.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210190b21">
「殺した。
　貴方が殺したんだ」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210200b21">
「<RUBY text="・・">それ</RUBY>は貴方が殺したんだよ？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210210b40">
《ち、違う……》


{	FwC("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210220b21">
「違わないさ。
　どうして否定なんかするんだい……？」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210230b21">
「さっきまであんなに、堂々としていたじゃ
ないか。
　ちゃんと胸を張ってよ」


{	FwC("cg/fw/fw義清_狂笑.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210240b21">
「入道様が悪人だったから！
　妊婦の姉さんと胎児ごと、まとめて殺して
しまったんだって、言えばいいだろう！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210250b21">
「それで私も殺してくれれば言う事はない！」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210260b40">
《妊婦……
　……馬鹿な……》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210270b40">
《それは……蒙古の所業……！
　吾は……あのような惨劇を二度と起こさぬ
ために……》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210280b40">
《……ア……》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210290b40">
《アガッ……》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	FadeDelete("絵背景100", 1000, false);

//◆びきびき。ヒビが入る音
//◆正宗が小刻みに振動する
	CreateSE("SE01","se特殊_鎧_アベンジ_ひび割れ");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw義清_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210300b21">
「どうしたの、劒冑？
　立派な甲鉄にひびが入っているよ……？」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210310b21">
「今にも砕けてしまいそうだ」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210320b40">
《ギッ――ガッ、ゲげゲがが》


{	FwC("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210330b21">
「何をしているのさ。
　どうして貴方が恥じなくてはならない」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210340b21">
「貴方は正義をしただけなんでしょう？」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210350b21">
「刃には一点の曇りもないのでしょう？」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210360b21">
「そう、その通り！
　貴方の藍色の甲鉄はとても美しいね……」


{	FwC("cg/fw/fw義清_狂笑.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210370b21">
「貴方が殺した胎児の血と相俟って、まるで
とりどりの朝顔が咲く花畑のようだ！
　とても綺麗だよ！」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210380b40">
《ゴァァァァアアアアアアアアアアアッッ!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ばきばきばき。
//◆ホワイトアウト
//◆ぴきっ。最後の致命的な一割れっぽく。
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	CreateSE("SE02","se特殊_鎧_アベンジ_ひび割れ");//ダミー注意
	MusicStart("SE02",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE02");
	Fade("絵色白", $残時間, 1000, Axl2, true);

	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210390a02">
「うろたえるな、正宗!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆がしっ。力強くつかむ音
	CreateSE("SE03","se人体_動作_掴む01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210400b40">
《……ミ……》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210410b40">
《……御堂……!?》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　正宗の頭を右手で掴む。
　同時に、歯と歯を食い締めた。

　そこにある肉片を噛む。
　腐敗を味わう。

　それはあたし自身の、穢れの味だ。
　あたし自身の、腐り果てた臓物だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210420a02">
「わかってなきゃいけなかった。
　こういうものだって」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210430a02">
「正義は心地良くなんかなくて。
　腐敗と汚濁に満ちている」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210440a02">
「この道に光は差さなくて。
　ただ暗く澱んだ沼が広がっている」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210450a02">
「……そうなんだ。
　それを知らなきゃ、いけなかった」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　体を起こす。
　膝に力を入れて、立ち上がる。

　途方もなく重い。
　
　魂に掛かる<RUBY text="おもに">罪科</RUBY>があった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆義清
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg003_荒れ野_02.jpg");
//	StR(1000, @0, @0,"cg/st/st義清姉付_通常_私服b.png");
//	FadeStR(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw義清_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210460b21">
「ははっ。
　そうじゃなきゃね」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210470b21">
「貴方は立派な立派な正義の人だ。
　私のような悪人の仲間の前で倒れていては
いけない」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210480b21">
「さあ、どうぞ。
　私のことも、殺すといい」


{	FwC("cg/fw/fw義清_狂笑.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210490b21">
「その劒冑で！
　惨めな死骸に変えてくれ！」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210500a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回れ右。
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,750,null,false);
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);
	DeleteStA(0,true);
	DrawDelete("黒幕１", 500, 100, "slide_01_00_1", true);

	SetFwC("cg/fw/fw義清_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210510b21">
「……？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210520b40">
《御堂……》


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210530a02">
「行こう、正宗」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　非道な暴力に晒されている町が眼下にある。
　生命財産を理不尽に奪われつつある人々がいる。

　<RUBY text="あたし">正宗</RUBY>には彼らを守って戦う力がある。
　だから、行こう。

　急がねばならない――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざっ。一歩歩いて。
//◆銃声ずがーん。
//◆衝撃。膝を突く
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1250,null,false);

	WaitKey(200);

	CreateSE("SE01b","se戦闘_銃器_拳銃発砲01");
	CreateSE("SE01c","se人体_衝撃_転倒05");
	$残時間２=RemainTime("SE01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateEffect("絵演震", 3000, 0, 0, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);
	Shake("絵演震", 300, 6, 0, 0, 0, 1000, Dxl2, true);
	Delete("絵演震");

	CreateTextureEX("絵演背景", 2000, -275, -516, "cg/bg/resize/bg003_荒れ野_02.jpg");//ダミー注意
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Move("絵演背景", $残時間２, @0, @-60, AxlDxl, false);
	Fade("絵演背景", $残時間２, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210540a02">
「ぐっ……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210550b40">
《御堂！》


{	FwC("cg/fw/fw義清_怒り.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210560b21">
「酷いな。
　せっかく会いに来たのに、相手もしてくれ
ないって？」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210570a02">
「……悪い。
　急いでるんだ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆立って
//◆歩いて
//◆また発砲。
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("絵演背景", 300, @0, @60, null, false);
	FadeDelete("絵演背景", 300, true);

	CreateSE("SE01b","se人体_動作_後ずさり01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	WaitPlay("SE*", null);

	CreateSE("SE01c","se戦闘_銃器_拳銃発砲01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);
	Shake("絵演震", 300, 0, 6, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210580a02">
「づぐ……」


{	FwC("cg/fw/fw義清_狂怒.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210590b21">
「……ふざけるなよ。
　今更……私だけ見逃そうっていうのか？」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210600b21">
「だったら！
　何故！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210610b21">
「入道様を殺したあッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆発砲
	CreateSE("SE02","se戦闘_銃器_拳銃発砲01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);
	Shake("絵演震", 300, 0, 6, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw義清_狂怒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210620b21">
「姉さんを！
　入道様と姉さんの子を！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210630b21">
「殺したんだぁぁぁぁぁああああああッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ずがーんずがーん
//◆弾切れ。かちかち。空打ち音。
	CreateSE("SE03","se戦闘_銃器_拳銃撃鉄01");
	CreateSE("SE06","se戦闘_銃器_拳銃撃鉄01");
	CreateSE("SE04","se戦闘_銃器_拳銃発砲01");
	CreateSE("SE05","se戦闘_銃器_拳銃発砲01");

	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);

	MusicStart("SE04",0,1000,0,1000,null,false);
	Shake("絵演震", 300, 0, 6, 0, 0, 1000, Dxl2, false);
	Wait(400);

	MusicStart("SE05",0,1000,0,1000,null,false);
	Shake("絵演震", 300, 0, 6, 0, 0, 1000, Dxl2, false);
	Wait(600);

	MusicStart("SE03",0,1000,0,1000,null,false);

	Wait(400);

	MusicStart("SE06",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE06");
	WaitKey($残時間);
	SetVolume("SE*", 100, 0, null);

	Wait(300);

	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210640a02">
「……ッ……」


{	FwC("cg/fw/fw義清_狂怒.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210650b21">
「くっ……くそっ……」

{	FwC("cg/fw/fw義清_不安.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210660b21">
「くそぉ…………」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210670a02">
「……」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210680a02">
「ごめん……」


{	FwC("cg/fw/fw義清_不安.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210690b21">
「…………」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210700a02">
「おまえがあたしを憎むのは当然だと思う。
　あたしは……許されないことをしたんだと
思う」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210710a02">
「でも。
　あたしは、それでも」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　それでも。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210720a02">
「自分で自分を許せなくても。
　戦うって、決めたから……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//◆一歩二歩と歩く
	CreateSE("SEL01","se人体_足音_歩く01_L");
	MusicStart("SEL01",0,1000,0,750,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　あたしの背を、嗚咽の音が叩いていた。
　それはやがて、滝のような慟哭に変わった。

　一滴一滴があたしの罪を唄っていた。
　肌を突き刺す罰の針だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210730a02">
「正宗。
　正義の行く先は、ここなんだ」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210740b40">
《…………》


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210750a02">
「誰にも認められない。
　誰にも喜ばれない」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210760a02">
「誰かを嘆かせて。
　誰かに憎まれる」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210770a02">
「……当たりまえ。
　だって、あたしのしていることは、正しく
なんかないんだから」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　あたしは――
　自分一人の<RUBY text="ゆめ">理想</RUBY>を追っているに過ぎないのだから。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210780b40">
《……では……御堂…………》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210790b40">
《我が<RUBY text="あるじ">御堂</RUBY>よ！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210800b40">
《どうか教えてくれ。
　<RUBY text="われ">正宗</RUBY>の理念は虚構であったのか……？》


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210810a02">
「……」


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210820b40">
《……正義は……》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210830b40">
《<RUBY text="・・・・・・・・・・・">この世に正義は無いのか</RUBY>？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざっ。
//◆ＥＶＣＧ？　一条
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//あきゅん「演出：ここで絵出していいか整合性は要確認」
	CreateTextureEX("絵演", 4000, -542, -530, "cg/ev/resize/ev268_ヤクザと対峙する一条.jpg");
	Move("絵演", 2000, @0, -275, AxlDxl, false);
	Fade("絵演", 2000, 1000, null, true);

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210840a02">
「いいや」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210850a02">
「<RUBY text="・・・・・・・・・">それでも正義はある</RUBY>!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_022.nss"