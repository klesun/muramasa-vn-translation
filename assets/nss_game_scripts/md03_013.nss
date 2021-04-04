//<continuation number="520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_013.nss_MAIN
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
	#bg027_普陀楽評議の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_014.nss";

}

scene md03_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_012.nss"


//◆評議の間

//■景明のみ立っていると想定し、公方達は立たせていません。 inc櫻井

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100, "bg027_普陀楽評議の間_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm20", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一通りの処置を済ませた後、俺は幕閣首脳に事態を
伝えた。
　古河公方遊佐童心、小弓公方今川雷蝶、そして一時
帰城中であった篠川公方大鳥獅子吼が俺の報告を聞く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_遠想.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130010a06">
「ふん……そうか。
　事情はわかった」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130020a06">
「うまく処理したではないか」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130030a09">
「うむ……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130040a00">
「はっ。
　有難うございます」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130050a08">
「……そう？
　資材が消えて、別の所では横流しの報告が
あったからって、二つを結びつけるのは短絡
的過ぎない？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130060a06">
「貴様の口から短絡的などという言葉が出る
と、何やら曰く言い難い違和感があるな……」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130070a08">
「どうしてよッ!?」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130080a09">
「横流しの報告とやらはでっち上げであろう」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130090a08">
「え？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130100a09">
「違うかな、湊斗中佐」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130110a00">
「御賢察の通りであります」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130120a08">
「……どういうこと？」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130130a06">
「中佐、説明してやれ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130140a00">
「はっ。
　事件の真相は、おそらく反幕府勢力による
妨害工作であると思われます」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130150a00">
「会場設営の必需品を奪取するにより、工事
を――延いては式典を遅らせようという意図
でしょう。
　小細工ですが、効果は有ります」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130160a00">
「奪われた資材は、既に城内で処分されたと
みるのが妥当かと……。
　換金目的の窃盗でないなら、危険を冒して
外へ持ち出す意味がありませんから」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130170a08">
「……？
　じゃあ何？　横領の容疑で逮捕された倉庫
の管理担当は完全な冤罪で、」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130180a08">
「あんたは最初からそれを承知で牢屋送りに
したっていうの？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130190a00">
「はい」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130200a08">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130210a08">
「ああ……なるほど！
　そういうことなのね」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130220a06">
「ようやく理解したか。
　そうだ、真相を真相のまま発表してしまう
のは容易い」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130230a06">
「だが倒幕派が城内に潜み工作を行っている
などという事実が知られれば……八幡宮事件
の余韻も醒めやらぬ今、将兵を決定的に動揺
させるきっかけとなりかねん」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130240a09">
「横領事件ということにしておけばその心配
はない。
　むしろ厳正な処分を下すことで綱紀の引き
締めを図れる……と」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130250a09">
「いや、咄嗟によく考えたものだのう。
　おぬし、腹芸も達者ではないか」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130260a00">
「恐れ入ります」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130270a08">
「フフン、まあまあね。
　あんたみたいな男が茶々丸の下についてる
ってのも、何だか不思議な気がするけど」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130280a06">
「全くだな。
　詮索はせんが、一体どんな出会いをしたの
やら……」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130290a00">
「…………」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130300a09">
「して、湊斗中佐。
　この後の処理はどうするつもりかの？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130310a00">
「逮捕した倉庫管理担当は、因果を含めた上
で城外の適当な部署へ配転。
　表向きは、処刑と発表しておくのが宜しい
でしょう」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130320a09">
「うむ……」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130330a00">
「そして無論、工作員の洗い出しも極秘裏に
かつ迅速に行うべきです」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130340a09">
「だのぉ」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130350a08">
「そちらは麿が引き受けましょう」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130360a06">
「資材の補填は？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130370a00">
「既に業者と連絡をつけてあります。
　多少の無理は生じますが、工期は遅らせず
に済むものと」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130380a06">
「結構。
　大いに結構だ、湊斗中佐」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130390a06">
「貴様はどうも、俺を失望させないな」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130400a00">
「過分なお言葉です」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130410a09">
「いやいや、わしも同じ気持ちよ。
　これは何か褒美を取らせねばなるまいのう」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130420a00">
「褒美？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130430a09">
「義清！」

{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/md03/0130440b21">
「はい！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆義清

	StR(1000, @0, @0, "cg/st/st義清_通常_私服.png");
	FadeStR(300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　古河公方が呼び入れたのは、ほぼ常時その側に控え
ている小姓だった。
　忠実な小犬のように素早く現れ、主の脇に畏まる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130450a00">
「……？」

{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/md03/0130460b21">
「御用でしょうか」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130470a09">
「うむ。
　この御仁を労わってやってくれい」

{	FwC("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/md03/0130480b21">
「はっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　一礼して、彼がこちらに向き直る。
　そして、言った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


	SetFwC("cg/fw/fw義清_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆微妙に赤顔
//【義清】
<voice name="義清" class="義清" src="voice/md03/0130490b21">
「中佐殿。
　入れるのと入れられるのと、どっちがいい
ですか？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130500a00">
「…………………………………………………
……………………………………………………
……………………………………………………
……………………………………………結構だ」

{	FwC("cg/fw/fw義清_照れ.png");}
//【義清】
<voice name="義清" class="義清" src="voice/md03/0130510b21">
「手とか口とか、足とかでも」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Delete("@text0070*");

/*
//見様見真似 inc櫻井
	SetFont("@ＭＳ 明朝", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	CreateText("voice01",30411,Center,inherit,auto,auto,"「結構だ」");
	Request("voice01",NoLog);
	Request("voice01",PushText);
	Rotate("voice01", 0, @0, @0, 90, null, false);
	Move("voice01", 0, @10, @10, null, false);

	SetBacklog("「結構だ」", "voice/md03/0130520a00", 景明);
	CreateTextureEX("顔01", 30400, 451, 4, "cg/fw/fw景明_怒りa.png");


	Fade("顔01", 150, 1000, null, false);
	Fade("@boxCT", 0, 1000, null, true);

	WaitKey();

	Delete("voice01");
	FadeDelete("顔01", 150, false);
	Fade("@boxCT", 150, 0, null, true);

*/

/*
	CreateVOICE("景明","md03/0130520a00");
	SetFont("@ＭＳ 明朝", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	MusicStart("景明",0,1000,0,1000,null,false);
	CreateText("voice01",30411,Center,inherit,auto,auto,"「結構だ」");
	Request("voice01",NoLog);
	Request("voice01",PushText);
	Rotate("voice01", 0, @0, @0, 90, null, false);
	Move("voice01", 0, @0, @10, null, false);

	SetBacklog("「結構だ」", "voice/md03/0130520a00", 景明);
	CreateTextureEX("顔01", 30400, 451, 4, "cg/fw/fw景明_疲労.png");


	Move("絵st200", 0, @0, @0, AxlDxl, false);

	Shake("絵st200", 500, 10, 5, 0, 0, 750, Dxl1, false);
	Shake("絵背景100", 500, 10, 5, 0, 0, 750, Dxl1, false);

	Fade("顔01", 0, 1000, null, false);
	Fade("@boxCT", 0, 1000, null, true);

	WaitKey();

	Delete("voice01");
	FadeDelete("顔01", 150, false);
	Fade("@boxCT", 150, 0, null, true);
*/

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆大フォント
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130520a00">
<FONT size=40>「結構だ」</FONT>

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md03_014.nss"