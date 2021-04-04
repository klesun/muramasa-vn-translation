//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_039.nss_MAIN
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
	#ev204_微笑する幼い香奈枝_h=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_040vs.nss";

}

scene mc04_039.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_038.nss"


//◆戻り
	PrintBG("上背景", 30000);
/*
	CreateColorSPadd("絵色100", 18000, "WHITE");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Move("絵背景50", 0, @0, @2000, null, true);
	SetBlur("絵背景50", true, 3, 800, 200, false);
	Request("絵背景50", Smoothing);

	CreateTextureEX("絵狸", 1590, center, middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 50, 50, null, true);
	Move("絵狸", 0, @0, @-100, null, true);
	SetBlur("絵狸", true, 3, 200, 100, false);
	Fade("絵狸", 0, 1000, null, true);

	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(100,"off",false);
	CP_EnemyFade(300,10,420,300);
*/

	CreateTextureEX("絵背景02", 19000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_g.jpg");
	Fade("絵背景02", 500, 1000, null, true);
	CreateColorSP("くろい", 500, "#000000");
//	CP_AllDelete();
//	Delete("絵狸");

	FadeDelete("上背景", 500, true);
	SoundPlay("@mbgm14",0,1000,true);
	FadeDelete("絵色100", 2000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　あの少年の未来を、湊斗景明は破壊した。
　憎い。憎い。理が有ろうと無かろうと、彼が苦しん
でいようといまいと、その罪は憎い。

　罪を清算させずにはいられない。

　…………清算。

　清算？

　復讐を遂げれば――
　少年が<RUBY text="かえ">還</RUBY>ってくる、とでも？

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ev204g。ガラガラドシャン。崩壊
//◆黒
	CreateColorSP("フラッシュ白", 15000, "WHITE");

	OnSE("se特殊_鎧_ひび割れ01",1000);
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("絵背景03", 6000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_h.jpg");
	Delete("絵背景02");
	Wait(50);
	Fade("フラッシュ白",0,0,null,true);
	Delete("フラッシュ白");
	Wait(2000);
	OnSE("se特殊_雰囲気_崩壊音",1000);
	DrawEffect("絵背景03", 1500, "Split", 0, 1000, null);
	FadeDelete("絵背景03", 1500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……大鳥香奈枝が生まれて初めて得た、自己否定と
いう地獄。
　崩壊は、一度始まれば止め<RUBY text="ど">処</RUBY>なかった。

　なぜ復讐するのか？
　なぜ復讐せねばならないのか？

　自分は本当に復讐がしたいのか？
　本当にそうか？

　
　　『おまえは憎しみが強いだけなのだろうか。
　　　それとも、余りに愛情が深いのだろうか』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　遠い日の言葉が甦る。
　娘を海外へ送り出す最後、父が呟いた一言。

　思えば、あれが永訣の辞だった。

　……香奈枝はずっと、父は自分を理解し得なかった
のだと思っていた。
　だが、果たして本当にそうか。

　ある面においては、香奈枝自身よりも深く、香奈枝
の本質に迫っていたのではないか。
　
　まさか。まさか。まさかまさかまさか。

　いや――――
　
　
　あるいは。

　自分は、
　魂を<RUBY text="や">病</RUBY>んでいたのではなく、
　ただ、
　途方もなく、

　<RUBY text="・・・・">遅かった</RUBY>だけなのか。
　
　復讐は虚しい、何も生み出さない、単に不毛で無益
な行為なのだという単純な真実に気付くのが――――

　オレステイア。
　
　父の仇討のために母を殺したオレステスは、苦悶の
すえ精神を廃らせる。

　モンテ・クリスト伯。
　
　復讐を成就して得られたものは、復讐の名のもとに
重ねた罪科への懊悩。

　ハムレット。
　
　王子の復讐は自分と仇敵のみならず、関わった者を
悉く犠牲とし、後に何も残さなかった。

　……過去、幾人もの人心に通じた<RUBY text="オーサー">創作者</RUBY>が、復讐の
虚無性を物語に託して謳い上げた。
　彼らは<RUBY text="えいてつ">叡哲</RUBY>であり、正しかった――<k>そうなのか。

　そんなことはない。
　復讐とは……<k>
　　　　　　　　　　　　　そうなのだ。
　　　　　　　　　　　　　復讐とは……

　復讐とは。
　復讐とは。
　復讐とは。

　
　　　　　　　……復讐とは、何なのか？

　<RUBY text="せめ">鬩</RUBY>ぎ合う肯定と否定が、同一の疑問に行き着く。
　いま価値を問われる復讐なるモノ、その真相は如何。

　意義を知るには意味を知らねば始まらない。

　復讐とは何か。
　
　
　――――知らねばならない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明
	StR(1000, @0, @0, "cg/st/st景明_通常_私服.png");
	FadeStR(500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　湊斗景明を殺すべきなのか。<k>
　
　　　　　　　　　　　　　　　（殺したくない）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(500, false);

	Wait(200);
//◆雄飛

	StL(1000, @0, @0, "cg/st/st雄飛_通常_制服.png");
	FadeStL(500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　新田雄飛の死への報復を果たすべきなのか。<k>
　
　　　　　　　　　　　　　　　　（果たしたい）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(500, false);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　どうすることが正しいのか……
　どうすることが<RUBY text="・・・・・・・・・">大鳥香奈枝の正しさ</RUBY>なのか。

　その答えを得るために。
　――復讐の意味を、理解せねばならない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆大鳥家襲撃。獅子吼
	CreateColorSP("くろいです", 15000, "#000000");
	CreateTextureSP("絵背景05", 600, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");

	CreateTextureSP("絵背立絵", 1000, Center, InBottom, "cg/st/st獅子吼_通常_制服.png");
	Move("絵背立絵", 0, @-256, @0, null, true);

	FadeDelete("くろいです", 1500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　香奈枝にはもう一つ、自分自身の復讐があった。
　父を殺害した大鳥獅子吼への復讐。

　大鳥本邸を襲い、獅子吼を討つ決断を下したのは、
彼の存在が大和の害になると判断されたからである。
　それは嘘ではない……が、順序の前後を云うなら、
その判断は<RUBY text="・">後</RUBY>だった。

　香奈枝はまず自分の都合で獅子吼への復讐を望んだ
のだ。
　しかし彼は国家の命運に関わる人物であり、生死は
一国の浮沈に直結する。

　香奈枝が父親から受け継いだ帝王学は、個人的欲求
のみで国家を揺るがすなど決して認めない。
　ために香奈枝は獅子吼を殺す<RUBY text="・・・・">大義名分</RUBY>を探し、情勢
緊迫の折柄、難なくそれを得たのだった。

　個人的欲求――
　復讐の真実を知りたいという欲への許しを。

　父の仇を討てば、真実が得られるはず。
　香奈枝はそう思い、獅子吼への復讐を実行した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆獅子吼殺害。

//inc久保田　該当場所がVSファイルで未演出なので仮です。
	OnSE("se戦闘_攻撃_刀刺さる05",1000);

	CreateColorSP("絵色血", 19000, "#990000");

	CreateStencil("絵演型",1000,center,InBottom,128,"cg/st/st獅子吼_通常_制服.png",false);
	SetAlias("絵演型","絵演型");

	CreateTextureSPover("絵演型/絵演血", 1100, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorSP("絵演型/色", 1050, "#990000");

	Fade("絵演型/絵演血", 0, 750, null, true);
	Fade("絵演型/色", 0, 950, null, true);
	DrawTransition("絵演型/色", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演型", 0, @-256, @0, null, true);

	Wait(100);
	FadeDelete("絵色血", 300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　そして――――――――
　
　彼女は知った。

　望み通りのものを得た。
　完全に、正しく、理解した。

　復讐とは何か。
　
　
　…………真実を、知った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆香奈枝と獅子吼の過去ＣＧ
//◆ホワイトアウト

//おがみ：EVが見つからなかったので回避
//	CreateTextureEX("絵回想01", 5000, 0, Middle, "cg/ev/???.jpg");
//	Fade("絵回想01",1000,1000,null,true);

	WaitKey(1500);

	CreateColorEXadd("しろ", 25000, "WHITE");
	Fade("しろ",2500,1000,null,true);

//	ClearFadeAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc04_040vs.nss"