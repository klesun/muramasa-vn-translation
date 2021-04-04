//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_020.nss_MAIN
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
	#bg049_景明故郷住宅地a_03=true;
	#bg112_川沿いの道b_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_021.nss";

}

scene md06_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_019.nss"

//◆bg049
	PrintBG("上背景", 30000);

	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100, "bg049_景明故郷住宅地a_03.jpg");
	FadeBG(0, true);

	Delete("上背景");
	DrawDelete("黒", 300, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm34", 0, 1000, true);


	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200010a00">
「人数はわかるか？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0200020a01">
《四人よ》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200030a00">
「そのくらいなら抑えられるな……。
　良し、そこにある半鐘を鳴らせ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0200040a01">
《いいの？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200050a00">
「ああ。
　真相を皆に知らしめる必要がある」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0200060a01">
《諒解》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆かんかんかんかん。

	CreateSE("SE01", "se背景_ガヤ_緊急鐘の音_L");
	MusicStart("SE01", 0, 1000, 0, 1000, null,true);


	WaitKey(1500);

	SetNwC("cg/fw/nw大柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200070e227">
「なんだぁ!?　火事か!?」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0200080e109">
「げっ、冗談じゃねえ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざわざわ
//◆どやどや

//◆川沿い、bg112a_夜

	CreateColorSP("黒幕", 25000, "#000000");
	DrawTransition("黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolume("SE01", 1000, 0, null);

	CreateSE("SE02", "se背景_ガヤ_ざわめき01_L");
	MusicStart("SE02", 0, 1000, 0, 1000, null,true);


	OnBG(100, "bg112_川沿いの道b_03.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　突然の火事ほど恐ろしいものはない。
　半鐘の警報が響くや付近一帯の眠りは<RUBY text="たちま">忽</RUBY>ち覚まされ、
人々は往来へ飛び出した。

　――そして、当然。
　それを目の当たりにする結果となった。

　完成が見えてきた出来かけの橋……
　その周囲に蠢く四人の男。

　彼らの手にある道具。
　鋸、鉈、手斧……。

　逃げ場を失い、呆然とする顔。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetVolume("SE02", 1000, 500, null);


	SetNwC("cg/fw/nw馬面の男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200090e110">
「あんたら……」

{	NwC("cg/fw/nwその他.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/md06/0200100b54">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200110a00">
「この地域の治安維持に雇われたがっていた、
<RUBY text="・">筋</RUBY>の方々ですか？」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200120e110">
「そ、そうだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　これで決まった。
　真相は、<RUBY text="・・・・・">良くある事</RUBY>だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200130a00">
「倫理的に問題のある<RUBY text="セールス">売り込み</RUBY>です」

{	NwC("cg/fw/nwその他.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/md06/0200140b54">
「…………」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200150a00">
「治安回復を必要とさせるために、まず治安
を悪化させる。
　合理的発想と、言えなくはありませんが」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200160e110">
「どういうことだよ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200170a00">
「橋を壊したのはこの方々です。
　今もまた、同じ事を……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200180a00">
「旧来の住民と難民との間を裂くために」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200190e110">
「な……何だと!?」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ざわざわ

	SetVolume("SE02", 1000, 1000, null);


	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/md06/0200200b54">
「……ッ……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200210a00">
「全てはこの地域の住民を資金源として取り
込むためだったのでしょうが……こうなって
はもはや叶わぬ事です。
　お諦め下さい」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200220a00">
「何も言わず、そのままお帰りを。
　そうして今後一切の手出しを控えて頂ける
なら、住民の方々も難民の方々もあえて貴方
がたの責任を問おうとはなさらぬでしょう」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200230a00">
「そのように自分からも説得します」

{	FwC("cg/fw/fw野木山組_怒り.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/md06/0200240b54">
「要らん世話じゃァ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆第一話のヤクザ
	SetVolume("SE02", 1000, 0, null);

	StL(1000, @0, @0, "cg/st/st野木山組_通常_私服.png");
	FadeStL(300, true);

	SetFwC("cg/fw/fw野木山組_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/md06/0200250b54">
「六波羅御雇の看板で食えた時代じゃねえ。
　稼ぎ場所を作らんことにゃあ、首も回らん
でのォ」

{	FwC("cg/fw/fw野木山組_怒り.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/md06/0200260b54">
「引けって言われて引けるかい！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200270a00">
「無意味な意地です」

{	FwC("cg/fw/fw野木山組_通常.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/md06/0200280b54">
「やっかぁしいわ！
　余計な邪魔しくさって――」

{	FwC("cg/fw/fw野木山組_怒り.png");}
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/md06/0200290b54">
「こうなりゃ力ずくで<RUBY text="シマ">縄張り</RUBY>にしたらァ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆しゅらっ。



	DeleteStL(300,true);

	OnSE("se擬音_雰囲気_抜刀01", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　四人の頭株と思われる男は佩刀の白鞘を払った。
　その両脇で、鋸を手にしていた男は短刀に持ち替え、
鉈と手斧の男はその刃先をこちらへ向ける。

　周囲で悲鳴が上がり、人の輪が一歩後退した。
　
　……荒事は何としても避けたかったが――この状況、
言っている場合ではないか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200300a00">
「村正、虎徹を寄越せ！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0200310a01">
《諒解！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　場慣れした筋者四人を相手に丸腰では少々分が悪い。
　といって劒冑は大袈裟、太刀一本が適当なところだ。

//◆しゃきーん。
{	OnSE("se戦闘_動作_刀構え01", 1000);}

　流石と言うべきか、四人は俺の手の中に突如太刀が
現れるのを見て、仰天したとしてもそれで隙を作りは
しなかった。
　二人が前に出て、残り二人は左右に回る。

　四対一の形勢。
　ひとまず距離を取り、囲まれるのを防ぐ――それが
正手であろう。

　しかし今回、時間を掛けるべきではなかった。
　彼らが周囲の人々に刃を向ける事になっては大事だ。

　住民も難民も、絶対に傷付けさせてはならない。

　従って退かぬ。
　前へ出る。

　正面右、鉈を持った男へ――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	OnSE("se人体_動作_一歩", 1000);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200320a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　行く、<k>と見せて瞬時、向きを変え。
　右脇から食い付こうと飛び出しかけていた手斧男を
迎え撃つ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃。ぼく。

	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	CreateTextureSPadd("絵背景500", 10000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	OnSE("se戦闘_攻撃_殴る03", 1000);

	DrawDelete("絵背景500", 100, 100, "slide_01_00_1", true);

	CreateTextureSP("絵背景501SP", 9000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	CreateTextureEXadd("絵背景501", 9010, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Fade("絵背景501", 0, 500, null, true);
	Zoom("絵背景501", 0, 1200, 1200, null, false);

	Zoom("絵背景501", 200, 1000, 1000, Dxl2, false);
	Shake("絵背景501", 500, 50, 0, 0, 0, 1000, Dxl3, false);

	FadeDelete("絵背景*", 500, true);
	Delete("黒幕１");

	CreateSE("SE01","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]

　峰打ちの一刀は<RUBY text="あやま">過</RUBY>たず、男の鎖骨を陥没させた。
　悲鳴の代わりに多量の空気を吐き出して、まず一人
が地面に倒れる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw野木山組_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/md06/0200330b54">
「……ガキァ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_攻撃_刀振る02", 1000);

	CreateTextureSP("縦", 15000, @0, @0, "cg/ef/ef008_汎用上下軌道.jpg");
	DrawTransition("縦", 100, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　激昂の声。
　そちらに視線を向けた刹那、額の中央に危機を知ら
せる電流が走った。

　凄まじい一撃が襲い来る。
　確実に俺の肉体を二つ割りにできる程の――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆がきーん
	OnSE("se戦闘_攻撃_刀衝突01", 1000);

	CreateTextureSPadd("かきーん光", 16010, @0, @0, "cg/ef/ef040_汎用衝突.jpg");
	CreateTextureSP("かきーん", 16000, @0, @0, "cg/ef/ef040_汎用衝突.jpg");
	FadeDelete("かきーん光", 300, false);
	DrawTransition("かきーん*", 50, 0, 1000, 100, null, "cg/data/circle_04_00_0.png", true);
	Delete("縦");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
　危うく、防ぎの太刀は間に合った。
　真っ向から受け止めては押し負ける。斜めに逸らし、
受け流す。

　殺刃が耳の横を滑ってゆく。
　髪が数本巻き込まれ、引き千切られた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200340a00">
「……ッ！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("かきーん",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　手首を返す。
　頭上で太刀を旋回させ――男の腋下を下方から抉る
ように。

　一撃。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずごっ。
	OnSE("se戦闘_攻撃_殴る03", 1000);
	CreateTextureSPadd("斜め", 15000, @0, @0, "cg/ef/ef010_汎用斜め軌道.jpg");
	DrawTransition("斜め", 50, 0, 1000, 100, null, "cg/data/beam_02_00_1.png", true);

	DrawDelete("斜め", 50, 100, "beam_02_00_0", true);

	CreateTextureSP("絵背景501SP", 9000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	CreateTextureEXadd("絵背景501", 9000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Zoom("絵背景501", 0, 1200, 1200, null, false);
	Fade("絵背景501", 0, 500, null, true);

	FadeDelete("絵背景501", 500, false);
	Zoom("絵背景501", 200, 1000, 1000, Dxl2, false);
	Shake("絵背景501", 500, 50, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵背景501SP", 750, true);

	SetFwC("cg/fw/fw野木山組_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【野木山組】
<voice name="野木山組" class="その他男声" src="voice/md06/0200350b54">
「げほァ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景501",1000,true);

	OnSE("se人体_衝撃_転倒05", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　重傷を負わせぬよう加減はした。
　それでも急所を打ち抜く痛撃である。殴り殴られが
日常茶飯の筋者であろうと耐えられる道理はない。

　のたうち回る男は泡を吹いていた。
　もはや戦う力はあるまい。

　これで首領格も脱落。

　残るは、二人――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	ClearWaitAll(1500, 1000);

//◆フェードイン
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg112_川沿いの道b_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　吐息し、汗を拭う。
　短いが激しい戦闘は、俺の体力精神力を大きく消耗
させた。

　辛うじて、怪我はない。
　四人の筋者は全て地に伏しているが、こちらも命に
関わるような傷は誰も負っていない。

　……まぁ、上々の結果だろう。
　戦わずに済めばそれに越した事はなかったのだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200360a00">
「村正……他に仲間はいないな？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0200370a01">
《大丈夫よ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　返答を受けて、体の力を抜く。
　兎も角もこれで一件落着だ。

　すぐにすぐ住民と難民が肩を組んで笑い合えるとは
思わないが、少なくとも関係の好転には繋がるだろう。
　対立の根が一つ、取り除かれたのだから。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200380a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　ふと、奇妙な静寂に気付いた。
　俺を見守る、周囲の――

　何とも言いようがない、そんな気配。
　
　……そうか。刃物など、用が済んでもひけらかして
おくものではない。

　軍人でも犯罪者でもない正常の市民にとって、刀剣
の光は脅威的だろう。
　俺は村正に命じ、虎徹を回収させた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆しゅいん。
	CreateSE("SE01","se特殊_雰囲気_発光03");
	MusicStart("SE01",0,750,0,1300,null,false);

	WaitKey(500);

	SetNwC("cg/fw/nw太った男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0200390e109">
「消えた……!?」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200400e110">
「お、おい。
　まさか――あの話……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　……しまった。

　焦ってやり方を間違えた。
　今のは常人の視覚だと、太刀が消失したようにしか
見えない。

　わざわざ混乱を煽ってどうする。
　誤魔化さねば――何とか適当に、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw馬面の男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200410e110">
「……あんた……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　しかし。
　意を決した一人が口を開くのは、俺が弁明法を思い
つくより早かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw馬面の男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200420e110">
「あんた」

//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200430e110">
「今までに何人も殺してきた、殺人鬼の武者
だって聞いたんだけど……
　ほ――ほっ、本当なのか!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(800);


	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200440a00">
「……え？」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200450e110">
「誰でも構わず……
　女でも子供でも殺してきたって」

//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200460e110">
「聞いたん……だけど……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200470a00">
「――――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm15", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　誰が。

　誰が、教えたのだ。

　その――――真実を。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw小柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0200480e228">
「な……何を言い出すんだよ、いきなり！」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200490e110">
「い、いや。
　俺だって信じちゃいなかったけど」

//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200500e110">
「今の見たろ！
　ヤクザをあっさり片付けるし、刀は出たり
消えたりするし！」

//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200510e110">
「あんな真似、武者にしかできねえよ！」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0200520e228">
「それは……そうだが……」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200530e227">
「まっ、待てって！
　このお巡りさんがもし、武者だとしてもだ
……まさか殺人鬼ってことはないだろう！」

//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200540e227">
「なぁっ!?」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200550a00">
「…………」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200560e227">
「…………」

//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200570e227">
「お、おい。
　なんで黙ってるんだよ」

//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200580e227">
「なんか言ってくれよ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200590a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　言う？
　何を……言えるのだろう。

　自分は殺人鬼ではない、と？

　そんな……嘘を？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200600a00">
「…………」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200610e227">
「あんた……まさか」

//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200620e227">
「まさか、本当に」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200630a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01", "se背景_ガヤ_ざわめき01_L");
	MusicStart("SE01", 0, 1000, 0, 1000, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　――瞬間。
　
　空気が沸騰した。

　筋者が刃物を抜いた時の比ではなく。
　ひぃ――と掠れ声の呻きを口々に洩らしつつ、火の
上から飛び退くように、人々は俺を遠巻きにした。

　少しでも俺から離れようとし、後ろが<RUBY text="つか">閊</RUBY>えてそれが
果たせないと、互いに邪魔にし合って罵り合う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw太った男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0200640e109">
「どっ、どけよてめぇ！」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200650e227">
「うるせえ、押すな！」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0200660e109">
「何だと!?
　そもそもてめぇらがあの変な男を引っ張り
込んだんだろうが！」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200670e227">
「知らねえよっ！」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200680e110">
「俺達相手にけしかけるつもりだったのか!?」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200690e227">
「知らねえってんだろ！
　お前らこそ、俺達を殺させるつもりで――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　争っている。
　折角まとまるかと思えた人々が。

　争っている。
　俺が原因で。

　争っている……。
　押し合い、掻き毟り合い、殴り合って――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック・銀星号事件

	EfRecoIn1(18000,600);
	CreateTextureSP("イベ絵10", 10000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	EfRecoIn2(300);

	WaitKey(500);
	EfRecoOut1(300);
	Delete("イベ絵*");
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200700a00">
「止めろ」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200710a00">
「止めろぉっっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆シーン。
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE01", 1000, 0, null);

	WaitKey(1500);


	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200720a00">
「……あ……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　人々が凝固する。
　一様に、俺を見詰めて。

　どの瞳にも恐怖がある。
　限りない恐れの念。

　血塗れの殺人鬼に対する、当然の感情。

　恐怖。
　恐怖。
　恐怖。
　恐怖。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200730a00">
「うっ……」

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200740a00">
「うぁぁぁぁアアアアアアアアア!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆だっ。逃げる
//◆フェードアウト
	OnSE("se人体_足音_走る03", 1000);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	SetVolume("OnSE*", 1000, 0, null);
	WaitKey(1000);

	Fade("絵色黒", 1500, 0, null, true);

//◆小光
	StR(1000, @0, @0, "cg/st/st小光_通常_私服.png");
	FadeStR(300, true);

	WaitKey(800);

	SetFwC("cg/fw/fw小光_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0200750b34">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_021.nss"