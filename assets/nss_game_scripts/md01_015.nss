//<continuation number="630">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_015.nss_MAIN
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
	#ev211_大仏の上に立つ銀星号_a=true;
	#bg095_高徳院の境内_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_016vs.nss";

}

scene md01_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_014.nss"

//◆高徳院・夕
//◆ＥＶ：特に意味もなく大仏の上に立っている銀星号
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureEX("絵ＥＶ", 4000, Center, InBottom, "cg/ev/ev211_大仏の上に立つ銀星号_a.jpg");
	OnBG(100,"bg095_高徳院の境内_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	Wait(1000);

	Fade("絵ＥＶ", 1000, 1000, null, true);
	Move("絵ＥＶ", 3000, @0, 0, DxlAuto, true);

	SetFwL("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md01/0150010a14">
「…………」

//【光】
<voice name="光" class="光" src="voice/md01/0150020a14">
「……おお。
　早いなっ！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ずごーん。騎航音
	CreateSE("SE01","se戦闘_動作_鎧_着地01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 100, 1000, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, true);

	SetFwL("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150030a01">
《――――》

{	FwL("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150040a14">
「呼び立てたようですまない、景明。
　いや、事実呼んだのだが」

//【光】
<voice name="光" class="光" src="voice/md01/0150050a14">
「どうしたわけか、今日という日は起き抜け
からおまえの顔が見たくて、矢も盾もたまら
なくなってしまってな。
　まったく乙女心というのはままならぬ」

//【光】
<voice name="光" class="光" src="voice/md01/0150060a14">
「おまえも罪なやつ。
　しかし、こうして早速招きに応じてくれた
のは有難い――」


</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	Wait(300);

	SetFwL("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//◆表情変化
//【光】
<voice name="光" class="光" src="voice/md01/0150070a14">
「――――」

{	FwL("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150080a15">
《……………………》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm34",0,1000,true);

	StR(1100, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);

	CreateWindow("絵窓", 500, Center, 36, 1030, 288, false);
	SetAlias("絵窓","絵窓");
	CreateTextureSP("絵窓/絵演", 610, -630, -360, "cg/ev/resize/ev211_大仏の上に立つ銀星号_alex.jpg");
	Request("絵窓/絵演", Smoothing);
	Zoom("絵窓/絵演", 0, 700, 700, null, true);

	FadeDelete("絵ＥＶ", 1000, true);

	Wait(500);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【光】
<voice name="光" class="光" src="voice/md01/0150090a14">
「誰だ、貴様」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150100a01">
《……あら。
　騙し通せなかった？》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150110a14">
「見縊るでない。
　外面に変わりがなかろうと、景明とほかの
誰かを取り違えるようなおれか！」

//【光】
<voice name="光" class="光" src="voice/md01/0150120a14">
「音が違う！」

//【光】
<voice name="光" class="光" src="voice/md01/0150130a14">
「匂いが違う！」

//【光】
<voice name="光" class="光" src="voice/md01/0150140a14">
「何となく風情が違う！」

//【光】
<voice name="光" class="光" src="voice/md01/0150150a14">
「そして、<RUBY text="へそ">臍</RUBY>の下にぐっとくるものがない！」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150160a15">
《ぐっ？》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150170a14">
「蜘蛛、そやつは何処の馬の骨だ!?
　どういう了見で景明を置いてきた!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150180a01">
《答える義理はないと思うけれど》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150190a14">
「……まさか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150200a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/md01/0150210a14">
「景明は風邪でも引いたのか!?
　それで代理か!?」

//【光】
<voice name="光" class="光" src="voice/md01/0150220a14">
「なら看病に行くぞ!!」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150230a15">
《行くのか!?
　……いや待て、落ち着け御堂》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150240a15">
《あれはどうも、<RUBY text="から">空</RUBY>のようだ》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150250a14">
「む？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150260a01">
《――――》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150270a14">
「……何だ、あれは……。
　中身は<RUBY text="・・・・">すかすか</RUBY>なのか」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150280a15">
《装甲されたように見せかけているだけだな。
　さて……何の<RUBY text="つもり">意図</RUBY>やら》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150290a14">
「伝言に来ただけなら、蜘蛛の<RUBY text="なり">形</RUBY>で良かろう
しな。ふむ……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150300a01">
《……詮索は結構よ》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150310a14">
「なら<RUBY text="じか">直</RUBY>に訊くが。
　おまえは結局、何しに来た？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150320a01">
《戦うために決まっているでしょう……！》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150330a14">
「……景明は？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150340a01">
《仕手なんて、いなくてもいい。
　私の力で、貴方を――<RUBY text="かかさま">二世</RUBY>を討つ！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――

//◆ちゃきん。抜刀
	CreateSE("SE01","se戦闘_動作_刀構え03");
	StR(1100, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");

	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/md01/0150350a14">
「…………」

//【光】
<voice name="光" class="光" src="voice/md01/0150360a14">
「……村正……」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150370a15">
《誠に遺憾だが、あれはどうも本気らしい》

{//◆嘆息
	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150380a14">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150390a01">
《何よ……》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150400a14">
「何、ではないわ。
　呆れるほかにどうしろと云う」

//【光】
<voice name="光" class="光" src="voice/md01/0150410a14">
「そんな<RUBY text="ざま">態</RUBY>でおれの相手をするだと？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150420a01">
《自惚れた言い草ね》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150430a14">
「鏡を見て言うがいい」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150440a01">
《……》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150450a14">
「村正よ。
　おまえの娘はとんだ駄作だな」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150460a15">
《返す言葉がないのは残念だ》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150470a01">
《何ですって……!?》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150480a14">
「どうしてやろうか」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150490a15">
《馬鹿者の相手で御堂を煩わせとうはない。
　<RUBY text="あれ">冑</RUBY>に任せて貰えぬか》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150500a14">
「許す。
　ゆけ」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150510a15">
《応》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ばりーん。解甲
//◆高徳院＋女王蟻村正
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);

	Delete("絵窓");
	StL(1000, @0, -212,"cg/st/3d二世女王蟻_煽り.png");
	Request("@StL*", Smoothing);
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	FadeStL(0,true);
	FadeDelete("絵フラ", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150520a01">
《甘く見て！》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150530a15">
《それはこの母に言わせておけ。
　……そんな<RUBY text="・・・・">ごまかし</RUBY>で、如何にせば冑らに
勝てると思うのだ》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150540a01">
《やってみなければわからない》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150550a15">
《明々白々。
　その擬装がどれほど無様なものか、ひと目
見れば窺い知れる……》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150560a15">
《どうせ人型を取るなら、<RUBY text="・・・・">ここまで</RUBY>やらねば
何の意味とてあるまいに》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150570a01">
《……え？》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150580a15">
《辰気収斂》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆女王蟻エネルギー帯び
//◆変形
//◆二世村正（生前）
	SetVolume("@mbgm*", 2000, 0, null);
	CreateSE("SE02","se特殊_その他_村正人間変化01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StC(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	FadeStA(0,true);

	WaitKey(1000);

	FadeDelete("絵フラ", 2000, true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150590a01">
《……なッ――》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150600a01">
《に……<RUBY text="・・・・">肉体変成</RUBY>!?
　そんな、どうやって！》

{	FwR("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150610a15">
「<RUBY text="・・">そこ</RUBY>から一歩進めれば成せる事なのだがな。
　その一歩さえ届かないとは、我が娘ながら
救いが無い」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150620a15">
「ここで砕いてやるのが情けというものか？」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150630a01">
《くっ……！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"md01_016vs.nss"