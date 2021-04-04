//<continuation number="160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_052.nss_MAIN
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
	#ev209_木に背を預けて座る香奈枝=true;
	#bg058_曇空a_01=true;
	#bg058_曇空b_01=true;

	//▼ルートフラグ、選択肢、次のGameName

	#復讐編終了 = true;

	$PreGameName = $GameName;

	$GameCircle=0;
}

scene mc04_052.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_051vs.nss"

//◆空
//◆雪が降り出す。
//◆森
//◆ざ、ざ、ざ。ゆっくり歩く音
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg058_曇空a_01.jpg");
	CreateTextureSP("絵背景11", 9, Center, Middle, "cg/bg/bg058_曇空b_01.jpg");
	FadeDelete("上背景", 3000, true);
	WaitKey(1500);
	FadeDelete("絵背景10", 2500, true);
	WaitKey(1500);
	CreateColorSPadd("白", 28000, "WHITE");
	DrawTransition("白", 2500, 0, 1000, 1000, null, "cg/data/effect_01_00_0.png", true);
	Delete("絵背景11");

//	SoundPlay("@mbgm33",0,1000,true);

	//$SYSTEM_effect_drop_image = "cg/ef/ゆっくり_S.png";
	$SYSTEM_effect_drop_image = "cg/ef/efDro_雪001.png";
	$SYSTEM_effect_drop_dencity = 30;
	$SYSTEM_effect_drop_speed = 7;
	$SYSTEM_effect_drop_swing = 128;
	//$SYSTEM_effect_drop_rotate_z = 360;
	CreateEffect("絵効果雪", 4100, Center, Middle, 1030, 580, "Drop");
	SetAlias("絵効果雪","絵効果雪");
	Fade("絵効果雪", 0, 1000, null, true);

	CreateTextureSP("絵背景12", 10, Center, Middle, "cg/bg/bg092_森の道b_01.jpg");
	FadeDelete("白", 2500, true);
	CreateSE("アルイテマス", "se人体_足音_歩く_負傷_L");
	MusicStart("アルイテマス",0,1000,0,700,Dxl3,true);

	Wait(2500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　森の道を歩く。

　身体はとてもとても重い。
　あれやこれや欠けてしまったのに、どうしてか普段
より重かった。

　それでも歩く。
　歩かなくてはいけないのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0520010a01">
《……御堂……》


{	SetVolume("アルイテマス", 1500, 0, null);
	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520020a00">
「村正……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0520030a01">
《ごめんなさい。
　私は……ここまで、みたい……》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520040a00">
「ああ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　忠実でいてくれた<RUBY text="とも">相棒</RUBY>は、先にゆくようだ。

　そちらへ首を傾けて、見送ってやる余力すらない。
　一息を搾り出して、最後に伝えるべき事を伝えるの
が精一杯だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520050a00">
「ありがとう」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0520060a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆崩れ去る音
	Wait(1000);
//	SetVolume("@mbgm*", 1500, 0, null);
	OnSE("se戦闘_衝撃_鎧転倒03", 1000);
	Wait(2500);
	CreateColorEX("黒幕１", 15000, "BLACK");
	Fade("黒幕１",2500,1000,AxlAuto,true);
	Wait(500);
	CreateSE("アルイテマス", "se人体_足音_歩く_負傷_L");
	MusicStart("アルイテマス",0,1000,0,500,Dxl3,true);
	Wait(1000);
	Fade("黒幕１",1500,0,AxlAuto,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　独りきり。
　森の道を歩く。

　辛かった。
　身体は重く、意識は薄く、辺りはいつしか酷く寒い。

　苦しい。
　命が尽きかけているからだ。

　止まりそうな心臓を無理に動かして、生き続けよう
としているから苦しいのだ。
　馬鹿なことをやめれば、きっと苦痛はすぐに終わる。

　けれどまだ、俺は死んではならないのだ。
　彼女のもとへ帰りつくまでは。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざ、ざ、ざ。
//◆ばたり。倒れた。

	CreateColorEX("siro", 15000, "WHITE");
	Fade("siro", 300, 1000, null, true);
	CreateTextureSP("絵背景11", 11, Center, Middle, "cg/bg/bg092_森の道b_01.jpg");

	SetShade("絵背景12", SEMIHEAVY);
	Zoom("絵背景12", 0, 2000, 2000, null, true);

	FadeDelete("siro",300,true);
	Fade("絵効果雪", 1000, 0, null, false);
	FadeDelete("絵背景11", 1000, true);
	SetVolume("アルイテマス", 0, 0, null);
	Wait(1000);
	Move("絵背景12", 300, @0, @-400, AxlAuto, false);
	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, AxlAuto, "cg/data/slide_02_01_1.png", false);
	OnSE("se人体_衝撃_転倒03",1000);
	Wait(1000);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……気付くと、倒れ伏していた。
　脚の力が尽きたらしい。

　もう動かない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520070a00">
（駄目だ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　立ち上がらなくては。

　まだ死んではならない。

　まだ、ここでは、死にたくない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520080a00">
（きっと……誰もが）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　そう思ったのだ。
　俺が殺してきた人々は。俺に殺されるその瞬間。

　死にたくない。
　まだ死にたくないと、叫んだのだ。

　俺はその悲痛な願いを踏みにじった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520090a00">
（だから）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　<RUBY text="・・・">だから</RUBY>。
　俺は、ここで死んではならないのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：景明ラス。見上げる森の光景。ぼやけている
//◆起き上がったような演出で

//inc久保田　動作確認のためべつCG　ev208_最期の光景_a
//あきゅん「演出：素材縮小されたので仮打ち」

	CreateColorEX("siro", 15000, "WHITE");
	Fade("siro", 300, 1000, null, true);


	CreateTextureSP("絵ＥＦ", 4000, Center, Middle, "cg/bg/bg058_曇空b_01.jpg");

	CreateTextureSP("絵ＥＦa", 6000, Center, Middle, "cg/bg/bg058_曇空b_01.jpg");
	CreateTextureSP("絵ＥＦb", 5500, Center, Middle, "cg/bg/bg058_曇空b_01.jpg");
	CreateTextureSP("絵ＥＦc", 5000, Center, Middle, "cg/bg/bg058_曇空b_01.jpg");

	SetShade("絵ＥＦa", NOMORE);
	SetShade("絵ＥＦb", SEMIHEAVY);
	SetShade("絵ＥＦc", EXTRAHEAVY);

	Fade("黒幕１",600,0,null,true);
	FadeDelete("siro",300,true);

	FadeDelete("絵ＥＦa", 1500, true);
	Fade("黒幕１",500,200,DxlAuto,true);
	FadeDelete("絵ＥＦb", 500, true);
	Fade("黒幕１",1500,0,AxlAuto,true);
	FadeDelete("絵ＥＦc", 1500, true);
	FadeDelete("絵背景12", 0, true);
	Fade("黒幕１",600,0,AxlAuto,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　無い力を奮って、身体を起こす。
　歯を食い縛って、隻腕を立てる。

　立たねば。
　生きねば。

　あと少し。
　彼女のもとにゆくまで。

　大鳥香奈枝のもとへ。

　彼女は復讐者。
　湊斗景明の罪を裁くもの。

　湊斗景明に正しい死を与えてくれる人。

　俺の命は彼女の刃に捧げられなくてはならない。
　彼女は、俺に殺された人の無念にかけて、俺の命を
奪うのだから。

　悪に対する善の怒りを示してくれるから。

　この世に正義はある。
　悪に対する報いは、必ずある。

　そう信じる。
　信じたい。

　だからこの命は彼女の手で。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆差分：香奈枝。重傷だがぼやけてるので良くわからない
	CreateSE("アルイテマス", "se人体_足音_歩く_負傷_L");
	MusicStart("アルイテマス",0,1000,0,1000,Dxl3,true);

	Wait(2000);
	CreateTextureEX("さぶん", 4000, Center, Middle, "cg/bg/bg092_森の道b_01.jpg");


	SoundPlay("@mbgm18",0,1000,true);
	Fade("絵効果雪", 2000, 1000, null, false);
	Fade("さぶん",2000,1000,DxlAuto,true);
	FadeDelete("絵ＥＦ", 0, true);

	SetVolume("アルイテマス", 0, 0, null);

	Wait(1000);

//	SoundPlay("@msong02_full",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520100a00">
（……あぁ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　いる。
　そこに、いる。

　来てくれた。

　大鳥香奈枝。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520110a00">
（大尉）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　希望を伝える。
　――裁きを。断罪を。

　声が出たかどうか、わからない。
　だが不安は抱かなかった。

　彼女は純正の復讐執行者。
　だから、大丈夫。

　信じている。

　大鳥香奈枝という人の、おそらく複雑であったのだ
ろう人格について、俺の理解は必ずしも深くなかった。
　きっと知らないことは数多ある。

　もしかしたら彼女は、人倫に全く反するおぞましき
性質の所有者であったのかもしれない。
　人面獣心の<RUBY text="けしょう">化生</RUBY>であったのかもしれない。

　そう思わせる片鱗は、顧みれば確かにあった。
　
　
　……だが、そんなことはどうでも構わなかったのだ。

　どうでも構わなかったから、気にも留めなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。景明と香奈枝の誓約
	EfRecoIn1(18000,600);
	CreateTextureSP("ひざまずく", 4100, Center, Middle, "cg/ev/ev171_香奈枝に跪く景明.jpg");
	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　彼女は湊斗景明の罪に復讐を約束してくれた。

　固く。
　無慈悲に。
　決して、<RUBY text="ゆる">赦</RUBY>しはしないと。

　それが全てだった。

　俺にはそれだけで良かった。

　だから云える。

　人の世界に迷い込んだ悪魔であったのかもしれない
この<RUBY text="ひと">女性</RUBY>は、
　湊斗景明にとって、天の使いと何一つ違うところが
なかったと。

　大鳥香奈枝。
　貴方に感謝を。

　全身全霊の感謝を。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);
	FadeDelete("ひざまずく", 0, true);

	Delete("絵効果雪");


//◆小ウェイト、ホワイトアウト
	Wait(1500);
	FadeDelete("さぶん", 0, true);

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　温かい何かが、首に触れる。
　
　これが……刃か――――

　生命の最後の片鱗が、溶けて消えた。
　求める死は遂に、俺に与えられた。

　断罪の死。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520120a00">
（……なのに）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　最後に一つ。
　俺の魂は、小さな不満を残した。

　苦しくない。
　痛くもない。

　ただ柔らかくて、優しかった。

　だからそれが、不服だった。
　
　……湊斗景明に与えられる死は、もっと苛酷なもの
でなくてはならないのに。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト置いて、フェードアウトか。
	Wait(1000);
	CreateColorEX("黒幕１", 25000, "BLACK");
	Fade("黒幕１",2500,1000,null,true);

	Delete("絵効果雪");

	Fade("ほわいとあうと",0,0,null,true);
//◆ＥＶ：樹の根元に座る瀕死の香奈枝、死んだ景明
	Wait(1500);
	CreateTextureSP("絵回想01", 5000, Center, Middle, "cg/ev/ev209_木に背を預けて座る香奈枝.jpg");
	Fade("黒幕１",2500,0,null,true);

	Wait(1500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　息絶えた彼の顔を見下ろす。
　……満足そうで。けれど少しだけ、不満そうだった。

　どこか子供っぽい寝顔。
　彼らしくない表情に、笑いがこぼれる。

　声を立てることは、もうできなかったけれど。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0520130a03">
（ばかなひと）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　とうとう最後まで、自分自身を<RUBY text="かば">庇</RUBY>わなかった。

　逃げれば良かったのだ。
　俺はこんなところで死ななくても良いのだと、そう
気付くべきだったのだ。

　なのに彼は踏み留まって、戦った。
　おそらくは、香奈枝を守ろうという想いもあって。

　彼は自分を殺すと誓った女のために戦った。
　他でもない、守ろうとしたその女と。

　そして死んだ。

　まったく愚かしい。
　救いようもなく、どうしようもなく愚かしい。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――



	SetFwL("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0520140a03">
（けれど）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　より愚かしいのは、どちらだったのだろう。

　香奈枝を守ろうとして香奈枝と戦った彼と。
　真実を隠し、彼をしてそうさせ、我が身を殺させた
香奈枝と。

　まぁ。
　……同じようなものか。

　救えぬ愚か者同士が殺し合った。
　そしてめでたく、どちらも死んだ。

　これはきっと、それだけのことだ。

　死にゆくことに、怖れはなかった。
　不平もなかった。

　生きるとは、死ぬということ。
　死ぬとは、生きるということ。

　意味は同じ。
　言葉が違うだけ。

　人生をゼロから発したものと見るか、ゼロへ向かう
ものと見るか、ただそれだけの違い。
　だから死を求めることと、生を求めることとの間に、
本質の差は何も無いのだ。

　そんな言葉遊び程度の違いに拘泥しても仕方ない。
　<RUBY text="おのれ">自己</RUBY>として正しく生きて、正しく死ぬなら、それで
良い。

　そしてこの最期は間違いなく、大鳥香奈枝にとって
正しい帰結。
　湊斗景明の最期もそう。

　<RUBY text="ひたむき">直向</RUBY>に生きた。
　直向に死んだ。

　大鳥香奈枝として。
　湊斗景明として。

　そう思う。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0520150a03">
（ねぇ）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　もう応えない彼に、語りかける。

　わたくしたち、愚かだったけれど。
　本当に、愚かだったけれど。

　こうするしかなかったものね。

　ほかの道は選べなかったものね。

　ふたり出会って、一緒に死んで――
　こうして出来た、道化芝居。

　こんなにも愚劣で、こんなにも滑稽なのに、観客は
誰もいない。
　わたくしたちはふたりきり。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0520160a03">
（だから、ね）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　この物語はわたくしとあなただけのもの。

　ふたりきりで笑いましょう。
　道化たちを指差して。その愚かしい生き様を。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆復讐編・完
/*
//inc　久保田　超仮
	PrintGO("上背景", 25000);
	CreateColorSP("絵黒地", 10, "#000000");
	CreateTextureSP("絵テロ２", 100, Center, Middle, "cg/sys/Telop/lg_復讐編.png");
	Wait(4000);
	FadeDelete("上背景", 2000, true);

	Wait(1000);

	PrintGO("上背景", 25000);
	CreateColorSP("絵黒地", 10, "#000000");
	CreateTextureSP("絵テロ６", 500, 200, 200, "cg/sys/Telop/lg_エンド.png");
	CreateTextureSP("絵テロ３", 100, Center, Middle, "cg/sys/Telop/lg_復讐編.png");
	FadeDelete("上背景", 1000, true);
*/

	SetVolume("@mbgm*", 6000, 0, null);
	ClearWaitAll(5000, 3000);


//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル