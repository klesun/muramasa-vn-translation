//<continuation number="710">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_014vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mc04_014vs.nss","RandomMeimetsu_mc04_014vs",true);
	Conquest("nss/mc04_014vs.nss","RandomMeimetsuSet_mc04_014vs",true);
	

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
	#bg090_大鳥邸通路b_01=true;
	#bg090_大鳥邸通路d_01=true;

	#ev954_獅子吼装甲_a=true;
	#ev954_獅子吼装甲_b=true;
	#ev186_村正ＶＳ銘伏_a=true;
	#ev186_村正ＶＳ銘伏_b=true;
	#ev186_村正ＶＳ銘伏_c=true;
	#ev186_村正ＶＳ銘伏_d=true;
	#ev187_銘伏の妖剣_a=true;
	#ev187_銘伏の妖剣_b=true;
	#ev187_銘伏の妖剣_c=true;
	#ev187_銘伏の妖剣_d=true;
	#ev187_銘伏の妖剣_e=true;
	#ev187_銘伏の妖剣_f=true;
	#ev187_銘伏の妖剣_i=true;


	//▼ルートフラグ、選択肢、次のGameName
	#av_銘伏=true;

	$PreGameName = $GameName;
	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc04_014vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_013vs.nss"


//◆景明サイド
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");
	CreateTextureSP("Ｃ/絵背景", 100, Center, Middle, "cg/bg/bg088_大鳥邸ホール_01a.jpg");

	Request("Ｃ/*", Smoothing);
	SoundPlay("@mbgm13", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",2000,true);

	CreateSE("走る", "se人体_足音_鎧歩く04");
	MusicStart("走る", 0, 1000, 0, 1000, null,false);

	StR(1100, @0, @0, "cg/st/3d村正標準_立ち_通常.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/014vs0010a01">
《御堂、この辺り！
　この――下！》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0020a00">
「そうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　その場に停止する。
　しかし、足元にあるのは床だけだ。

　都合良く地下への入口が備えられていたりはしない。
　周囲にも見当たらなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0030a00">
「<RUBY text="けはい">香気</RUBY>の様子は」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/014vs0040a01">
《とにかく異常よ。相変わらず。ほかに言い
ようが見つからない。
　……<RUBY text="かかさま">銀星号</RUBY>は一体、何をしてるのかしら》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0050a00">
「やはり強行突破は危険か。
　そうなると――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　急がば回るべしの<RUBY text="しんげん">箴言</RUBY>に従うしかないのだが。
　望むらくは無駄を最小限にしたい。

　大鳥大尉に館の構造の詳細を訊いておけば良かった
のだが、これは後の祭りというものだ。
　さて、手当たり次第に探し回る以外に、何か方法は
あるだろうか。もう少しましな手立ては――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆兵士
	CreateTextureEX("Ｃ/絵立絵兵士", 300, Center, Middle, "cg/st/resize/st六波羅兵士_通常_制服m.png");
	Request("Ｃ/絵立絵兵士", Smoothing);
	Zoom("Ｃ/絵立絵兵士", 0, 500, 500, null, true);

	Move("Ｃ/絵立絵兵士", 0, @-250, @0, null, true);

	Move("Ｃ/絵立絵兵士", 300, @60, @0, Dxl2, false);
	Fade("Ｃ/絵立絵兵士", 300, 1000, null, true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｓ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／大鳥兵士Ｓ】
<voice name="ｅｔｃ／大鳥兵士Ｓ" class="その他男声" src="voice/mc04/014vs0060e189">
「うおっ!?」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0070a00">
「――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_跳躍02", 1000);
	Move("Ｃ/絵背景", 200, @0, @-60, Dxl2, false);
	MoveCamera("Ｃ", 200, @-100, @0, @500, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　脇の廊下から飛び出してきた兵士が、俺を認めるや
ぎょっとして立ち<RUBY text="すく">竦</RUBY>む。
　刹那、俺は考えるより先に動いていた。

　兵士に飛び掛かり、押さえ付ける。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆倒して捕まえ
	OnSE("se人体_衝撃_転倒03", 1000);

	CreatePlainEX("絵板写", 10000);
	FadeFR2("絵板写",0,500,300,@0,@0,40,Dxl2, true);
	Delete("絵板写");

	FadeDelete("Ｃ/絵立絵兵士", 300, true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｓ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／大鳥兵士Ｓ】
<voice name="ｅｔｃ／大鳥兵士Ｓ" class="その他男声" src="voice/mc04/014vs0080e189">
「――ひ――」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0090a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　顔を見れば、まだ若い。
　瞳の揺れに恐怖を察して、俺はその時初めて、自分
の行動が何を目的とするのか<RUBY text="・・・・・">考えついた</RUBY>。

　己の安直な発想にうんざりとしながら、仕方もなく
続ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0100a00">
「当方には貴方を殺害する用意がある」


{	NwC("cg/fw/nw大鳥軍兵士Ｓ.png");}
//【ｅｔｃ／大鳥兵士Ｓ】

<voice name="ｅｔｃ／大鳥兵士Ｓ" class="その他男声" src="voice/mc04/014vs0110e189">
「……ッ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0120a00">
「しかし、解放する用意もある。
　貴方が当方の要求に沿うならば、後者の側
を実行に移すであろう」


{	NwC("cg/fw/nw大鳥軍兵士Ｓ.png");}
//【ｅｔｃ／大鳥兵士Ｓ】

<voice name="ｅｔｃ／大鳥兵士Ｓ" class="その他男声" src="voice/mc04/014vs0130e189">
「…………」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0140a00">
「この館に地下室は存在するか？」


{	NwC("cg/fw/nw大鳥軍兵士Ｓ.png");}
//【ｅｔｃ／大鳥兵士Ｓ】
<voice name="ｅｔｃ／大鳥兵士Ｓ" class="その他男声" src="voice/mc04/014vs0150e189">
「あ……ある」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0160a00">
「そこへ行く方法は？」


{	NwC("cg/fw/nw大鳥軍兵士Ｓ.png");}
//【ｅｔｃ／大鳥兵士Ｓ】
<voice name="ｅｔｃ／大鳥兵士Ｓ" class="その他男声" src="voice/mc04/014vs0170e189">
「……そこの角を曲がって……
　突き当たりのＴ字路を左に折れれば、階段
が――」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0180a00">
「感謝する」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	OnSE("se人体_動作_締める01", 1000);
	Wait(1500);

//◆村正立つ
	PrintGO("上背景", 5000);
	Wait(10);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg088_大鳥邸ホール_01a.jpg");

	Delete("Ｃ");
	FadeDelete("上背景", 500, true);

	CreateSE("SE01","se人体_足音_鎧歩く04");
	StR(1000, @0, @0, "cg/st/3d村正標準_立ち_通常.png");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeStR(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　頚動脈を約十秒間圧迫し、彼の意識を失わせてから
立ち上がる。
　通路の真ん中に転がしておいては踏まれるかもしれ
ないので、壁際へ寄せておいた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/014vs0190a01">
《なかなかの暴漢ぶりね》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0200a00">
「放っておけ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/014vs0210a01">
《そこの角を曲がって真っ直ぐ？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0220a00">
「そして左折。
　行くぞ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆だっ。走り出し
//◆突き当たりにＴ字路がある廊下
	OnSE("se戦闘_動作_空突進01", 1000);
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	DeleteStR(0,true);

	OnBG(100, "bg090_大鳥邸通路d_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　少なくとも兵士の話が完全な<RUBY text="でたらめ">出鱈目</RUBY>でない事はすぐ
に確認できた。
　角を曲がった奥には確かにＴ字路が見える。

　が。
　その前に一つ、問題があった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	CreatePlainSP("絵板写", 10000);

	StL(1100, @-60, @0,"cg/st/3d九四式指揮官_立ち_通常.png");
	StC(1000, @-80,@0,"cg/st/st邦氏_通常_私服.png");
	StCR(900, @-120, @0,"cg/st/3d九四式竜騎兵_立ち_通常b.png");
	StR(1200, @160, @0,"cg/st/3d九〇式指揮官_立ち_通常.png");
	FadeStA(0,true);

	FadeDelete("絵板写", 300, true);

	Wait(1400);

	CreatePlainSP("絵板写", 10000);
	DeleteStA(0,true);
	FadeDelete("絵板写", 300, true);

//◆獅子吼
	StL(1100, @0, @0, "cg/st/st獅子吼_通常_制服.png");
	FadeStL(300, true);

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0230a06">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0240a00">
「…………」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0250a00">
「貴方に用はないのだが……」


{//頬を歪めて、とあるので inc櫻井
	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0260a06">
「俺の言う事だ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　頬を歪めて吐き捨てる。
　その男――大鳥獅子吼。

　真っ向からぶつかる形の再会であった。
　
　彼の後ろには武者が三騎。そして、一見して貴種と
知れる少年。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw近習Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ｅｔｃ／近習Ａ】
<voice name="ｅｔｃ／近習Ａ" class="その他男声" src="voice/mc04/014vs0270e055">
「中将閣下、ここは我らにお任せを」


{	NwC("cg/fw/nw近習Ｂ.png");}
//【ｅｔｃ／近習Ｂ】
<voice name="ｅｔｃ／近習Ｂ" class="その他男声" src="voice/mc04/014vs0280e056">
「殿下の御身を、どうか――」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0290a06">
「<RUBY text="ざれぐち">戯口</RUBY>を叩くな。逆だ。
　貴様ら近習が殿下の御側を離れてどうする」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0300a06">
「行け。
　脱出の手筈は既に整えさせてある」


{	NwC("cg/fw/nw近習Ａ.png");}
//【ｅｔｃ／近習Ａ】
<voice name="ｅｔｃ／近習Ａ" class="その他男声" src="voice/mc04/014vs0310e055">
「しかし――」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0320a06">
「繰り返させるな！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_足音_鎧_複数駆け去る01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　一喝に、少年とその護衛らしき武者三騎は文字通り
飛び上がった。
　声の圧力に押し流されてか、泡を食いつつ俺の脇を
駆け抜けてゆく。

　その間、俺は身動きが取れなかった。
　彼らを止める必要がそも俺に無かったのは無論だが、
仮にあったとしても、正面から放たれる殺気の束縛を
振り切って動く事は不可能であったろう。

{	SetVolume("SE01", 3000, 0, null);}
　四人の足音が後方かなたに消える。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0330a00">
「……〝殿下〟……
　では、あれが足利四郎邦氏」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0340a06">
「いま初めて知ったような口を利くのだな。
　本当にそうなら、間抜けな<RUBY text="テロリスト">凶徒</RUBY>もいたもの
だ」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0350a00">
「…………。
　当方には暴力行為によって達すべき政治的
主張など無い」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0360a06">
「香奈枝に雇われただけの傭兵という事か？
　だからどうした。それで俺が貴様に手心を
加えるとでも思うか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　若い将帥は鼻で嗤った。
　……どうも対話は無益のようだ。

　彼にしてみれば<RUBY text="こちら">襲撃者</RUBY>の言う事など何一つまともに
取り合うに値すまい。
　彼にも四郎邦氏にも無関心だと告げても信じないだ
ろう。――腹を<RUBY text="くく">括</RUBY>るしかないのか？　しかし――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0370a06">
「生憎だが、捕虜を取っている暇などない。
　その首を刎ねて仕舞だ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銘伏出現。じわーっと。
	OnSE("se特殊_鎧_銘伏出現01", 1000);

	CreateStencil("絵演型",1000,center,middle,128,"cg/st/3d銘伏七節_正面.png",false);
	SetAlias("絵演型","絵演型");
	Move("絵演型", 0, -361, -553, null, true);

	CreatePlainEX("絵演型/絵板写", 990);
	SetShade("絵演型/絵板写", HEAVY);
	Fade("絵演型/絵板写", 1600, 1000, null, true);

	Wait(300);

	CreatePlainSP("絵板写", 5000);
	Delete("絵演型");
	CreateTextureSP("絵七節", 1000, Center, Middle, "cg/st/3d銘伏七節_正面.png");
	Move("絵七節", 0, -361, -553, null, true);

	FadeDelete("絵板写", 1000, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/014vs0380a01">
《……!?
　劒冑――いつの間に！》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0390a00">
「……篠川公方大鳥獅子吼中将！
　この道を通して頂けるなら、当方はあえて
争いを望むものではない！」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0400a06">
「それは逃げ口上のつもりか？　馬鹿め！
　押し込んできた者を無傷で帰して何の公方
か！」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0410a06">
「先刻は丸腰だったから譲ったまで。
　二度は許さん。貴様の目的が殿下であろう
と花枝様であろうと果たさせん。俺の前から
去りたくば、<RUBY text="かばね">屍</RUBY>になって黄泉路をゆけ！」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0420a00">
「……ッッ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/014vs0430a01">
《御堂……》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0440a00">
（止むを得ん）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　こうなっては問答を続けるだけ時間の無駄。
　俺は心胆を据え直し、武者として勝負に応ずるべく
構えた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ちゃきーん。抜刀
//◆抜刀村正と獅子吼。対峙
	CreatePlainSP("絵板写", 6000);
	CreateWindow("絵窓", 5000, 631, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateTextureSP("絵窓/絵演背景", 5020, Center, Middle, "cg/bg/bg090_大鳥邸通路a_01.jpg");
	Move("絵窓/絵演背景", 0, @300, @0, null, true);

	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, InBottom, "cg/st/3d村正標準_立ち_抜刀.png");
	Move("絵窓/絵演立絵装甲", 0, @600, @0, null, true);
	Fade("絵窓/*", 0, 0, null, true);
	Delete("絵板写");

	Move("絵窓/絵演背景", 6000, @-100, @0, null, false);
	Move("絵窓/絵演立絵装甲", 6000, 201, @0, DxlAuto, false);

	OnSE("se擬音_雰囲気_抜刀01", 1000);
	Fade("絵窓/*", 0, 1000, null, true);
	DrawTransition("絵窓/*", 300, 0, 1000, 10, Dxl2, "cg/data/slide_02_01_1.png", true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0450a00">
「篠川中将ともあろう者が、己を一介の武者
となし<RUBY text="たちうち">太刀打</RUBY>される存念とは。
　匹夫の勇と申し上げたいが致し方なし」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0460a00">
「一身上の都合により不法侵入させて頂いた
湊斗景明、不本意ながらお相手仕る。
　当方の劒冑は右衛門尉村正――」

{	SetVolume("@mbgm*", 1000, 0, null);}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0470a00">
「貴騎の<RUBY text="な">銘</RUBY>や如何に!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼中央に。装甲ポーズ。
	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");

	Fade("絵フラ", 300, 1000, null, true);

	DeleteStA(0,true);
	Delete("なぶせ");
	Delete("絵窓");

	CreateTextureSP("装甲", 5000, @0, @0, "cg/ev/ev954_獅子吼装甲_a.jpg");
	Fade("絵フラ", 1000, 0, null, true);

	SoundPlay("@mbgm08", 0, 1000, true);

	SetFwR("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0480a06">
「<RUBY text="まがきもの">兇器</RUBY>に<RUBY text="な">銘</RUBY>など無用!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//以下、CGの詳細が来なければ完成できないため一旦保留 inc櫻井

//◆ガキーン。武者・銘伏
	#av_銘伏=true;

//◆戦闘ＢＧＭ。両騎対峙
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	DeleteStA(0,true);

	CreateTextureSP("装甲", 4000, @0, @0, "cg/ev/ev954_獅子吼装甲_b.jpg");
	FadeDelete("絵フラ", 1000,false);

	WaitKey(2000);

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵演背景", 1, Center, Middle, "cg/bg/bg090_大鳥邸通路d_01.jpg");
	CreateTextureSP("Ｃ/絵演立", 250, Center, Middle, "cg/st/3d銘伏_立ち_抜刀.png");
	Zoom("Ｃ/絵演立", 0, 750, 750, null, true);
	Zoom("Ｃ/絵演背景", 0, 1500, 1500, null, true);
	SetShade("Ｃ/絵演背景", HEAVY);

	Request("Ｃ/*", Smoothing);

	MoveCamera("Ｃ", 4000, @-200, @0, @0, AxlDxl, false);

	FadeDelete("装甲", 1500, true);

	Wait(2000);

	CreateTextureEX("絵背景02", 4000, -778, -60, "cg/ev/resize/ev186_村正ＶＳ銘伏_al.jpg");
	Fade("絵背景02", 1000, 1000, null, false);
	Move("絵背景02", 3000, @0, -460, DxlAuto, true);

	CreateSE("SE02","se戦闘_動作_刀構え01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(1000);

	CreateTextureEX("絵背景00", 4100, -286, -400, "cg/ev/resize/ev186_村正ＶＳ銘伏_al.jpg");
	Fade("絵背景00", 1000, 1000, null, false);
	Move("絵背景00", 3000, @0, -130, DxlAuto, true);

	CreateSE("SE01","se戦闘_動作_刀構え02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1000);

	CreateTextureSP("絵背景01", 3000, Center, Middle, "cg/ev/ev186_村正ＶＳ銘伏_a.jpg");
	Delete("絵背景02");
	FadeDelete("絵背景00", 1000, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　<RUBY text="あい">相</RUBY>上段の図となった。
　互いに、斬り下ろしの圏内へ敵影を置く。

　大鳥獅子吼の上段はやや刃先が高い。
　太刀を寝かせ気味のこちらに比して、刃尺を明らか
にする不利を負う一方、斬撃の到達時間は短縮される。

　斯様な構を使うからには、獰猛にすぐさま打ち込ん
で来る肚かと思いきや、
　
　――来ない。

　沈静である。
　野原にぽつり、孤独に佇む枯れ木の風情をもって、
大鳥獅子吼は<RUBY text="し">止</RUBY>している。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0490a00">
（激情と鋭気のみの男に思われたが）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　俺は対手への評価を修正する必要に迫られた。
　敵を呑んで掛かる意気に満ちて剛剣を扱う、戦場の
<RUBY text="バンガード">猛将</RUBY>ではなく――むしろ<RUBY text="ソードマスター">剣術使い</RUBY>の心技を備えている
と見られる。

　それが彼本来の<RUBY text="スタイル">剣質</RUBY>なのかどうかは置き、今この場
の争闘において適性である事は認めねばならなかった。
　地上、しかも<RUBY text="きょうあい">狭隘</RUBY>な屋内である。

　天空を翔ける翼はおろか、金剛力も充分には発揮し
難い。力と速度を<RUBY text="たの">恃</RUBY>む武者刀法が特に苦手とする局面
であった。
　このような場では精妙な術技こそが物を言う。

　敵騎がそれを甲鉄の下に蓄えて俺を待っているなら
ば、間違っても迂闊な進退はできなかった。
　無思慮に斬り込みなどした途端、切り返しの一太刀
を食って血反吐を吐く。

　<RUBY text="こちら">我方</RUBY>の打つ出端を制するか――打ち込ませておいて
受け流し、体勢の崩れたところを存分に斬り下げるか。
　いずれにせよ、勝負はその一合で終わるだろう。

　こちらも術を仕込んで臨まねばならない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0500a00">
（――うむ）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵背景02", 3100, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_b.jpg");
	Fade("絵背景02", 1000, 1000, null, true);
	Delete("絵背景01");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　胸中に、意を決す。
　俺は重心を前へ進めた。

　膝頭が数センチ、相手へ近寄る。
　
　攻勢が高まる。意気が刃に乗る。

　打つ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0510a00">
「……ィッ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	Wait(800);

	SetFwC("cg/fw/fw銘伏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0520a06">
「――――」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0530a00">
（乗らぬか……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　敵手は不動であった。
　俺の放った攻気を、柳に風と流し去っている。

　つまりは<RUBY text="・・・・・・・">騙されなかった</RUBY>という事。
　今、敵騎が俺の露骨な攻勢を勝機と取り、先んじて
打ち倒してくれようと襲い来たならば、満を持しての
<RUBY text="カウンター">返しの技</RUBY>で一刀のもとに敵の戦闘力を剥奪できた。

　また、こちらに打ち込ませてから切り返す腹積もり
であったとしても、案に相違して待てど暮らせど打ち
掛かって来ないこちらの様子に、動揺を生じせしめる
事ができた筈だった。

　<RUBY text="さ">然</RUBY>りながら敵騎は全くの無反応。
　姿勢は揺らがず、剣気も粛然と保たれている。

　<RUBY text="フェイント">誘いの術</RUBY>を完全に看破されたのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0540a00">
（不味いな）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　技の失敗のみではなく、それが敵に与えた影響まで
慮って、俺は密やかな舌打ちを禁じ得なかった。
　今ので、敵は察した筈だ……こちらにも術を用いる
用意があるという事実を。

　益々慎重になり、技は深く巧妙なるを期すだろう。
　難敵が余計に難敵と化す。

　下手に仕掛けず、<RUBY text="じつ">凝</RUBY>と構え続け、敵手の焦燥を待つ
べきだったか……？
　
　そう思っても、今となっては詮ない。

　挫けている場合ではなかった。
　敵は慎重に動くであろうが、それは時間を掛けると
いう事と必ずしも<RUBY text="イコール">同義</RUBY>ではないのだ。

　策を決すれば、この刹那にも仕掛けて来る。
　心気を迷妄させていては対応できない。小さな失敗
などさっさと忘れるべきだった。

　敵は来る――――
　来るだろう。

　今の音なき攻防で勝負の天秤がやや己の側に傾いた
と見たなら、その機を捨て去る筈はない。
　天秤が再び平衡に戻るまで――俺が心身を立て直し
再び術策を講ずるまで、待ってやる義理などないのだ。

　敵は来る。
　が、それが如何なる形を取るか……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("絵板写", 10000);

//◆獅子吼の剣尖が動く。ゆらーり。
	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵背景03b", 2, -2000, -760, "cg/ev/resize/ev186_村正ＶＳ銘伏_clm.jpg");
	CreateTextureSP("Ｃ/絵背景03a", 3, -2000, -760, "cg/ev/resize/ev186_村正ＶＳ銘伏_alm.jpg");

	Fade("Ｃ/絵背景03a", 6000, 0, null, false);
	MoveCamera("Ｃ", 4000, @-200, @0, @0, DxlAuto, false);
	FadeDelete("絵板写", 1000, true);

	Wait(6000);

	CreateTextureSP("絵背景03c", 1, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_c.jpg");
	CreateTextureSP("絵背景03d", 1, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_b.jpg");

	Fade("Ｃ/絵背景03b", 1000, 0, null, true);

	MoveFFP1stop();
	MoveFFP2stop();

	FadeDelete("絵背景03d", 1000, true);
	Delete("Ｃ");

	CreateTextureSP("絵背景03", 3000, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_c.jpg");
	Delete("絵背景03c");

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0550a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　獅子吼の剣が揺れ、動いた。
　反射的に迎え撃ち――<k>飛び出し――<k>そうになる五体
を、危ういところで繋ぎ止める。

　敵のこの挙措には、殺意が乗っていない。
　誘いだ。俺が仕掛けたのと同じ。

　釣られれば、斬られる。
　自制――自制。重ねての自制。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);

	CreateTextureSP("絵窓/絵背景03b", 10000, -1900, -680, "cg/ev/resize/ev186_村正ＶＳ銘伏_clm.jpg");
	MoveFFP1("@絵窓/絵背景03b",30000);
	Zoom("絵窓/絵背景03b", 0, 1500, 1500, null, true);
	Request("絵窓/絵背景03b", Smoothing);

	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0353]
　体勢の崩壊を、俺は辛くも防いだ。
　構を保って、敵刃の動向を見守る。

　……<RUBY text="けたい">怪態</RUBY>にも、敵は誘いの手を見破られながら動き
を止めなかった。
　ゆぅるりと、刃先を流してゆく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0560a00">
（これは誘い……<RUBY text="・・">のみ</RUBY>ではない？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Zoom("絵窓", 300, 1000, 0, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　刃が流れ――
　<RUBY text="・・">寝る</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	MoveFFP1stop();
	Delete("絵窓");

//◆獅子吼・眩惑剣。丸橋の構に近い
	CreatePlainSP("絵板写", 10000);

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵背景04a", 3, -1530, -300, "cg/ev/resize/ev186_村正ＶＳ銘伏_clm.jpg");
	CreateTextureSP("Ｃ/絵背景04b", 2, -1530, -300, "cg/ev/resize/ev186_村正ＶＳ銘伏_dlm.jpg");
	MoveFFP1("@Ｃ/絵背景04b",25000);
	MoveFFP2("@Ｃ/絵背景04a",20000);

	MoveCamera("Ｃ", 6000, @0, @200, @0, DxlAuto, false);

	Delete("絵背景*");
	FadeDelete("絵板写", 1000, true);

	FadeDelete("Ｃ/絵背景04a", 6000, true);

	CreateTextureSP("絵背景04", 1, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_d.jpg");
	FadeDelete("Ｃ/絵背景04b", 1000, true);
	Delete("絵背景03");
	Delete("Ｃ");

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0570a00">
（う――ぬぅ！）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	MoveFFP1stop();
	MoveFFP2stop();

	CreatePlainEX("絵板写", 4990);
	SetShade("絵板写", HEAVY);

	CreateWindow("絵窓", 5000, 342, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);

	CreateTextureSP("絵窓/絵演", 5100, Center, Middle, "cg/ev/ev187_銘伏の妖剣_a.jpg");
	Zoom("絵窓/絵演", 0, 1100, 1100, null, true);
	Request("絵窓/絵演", Smoothing);

	Fade("絵板写", 2000, 1000, Dxl3, false);
	Zoom("絵窓", 2000, 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　その一瞬、俺は動揺に震えぬため、意志力の総動員
を必要とした。

　獅子吼がした事は、上段の太刀を前へ倒す――単に
それだけである。
　尖端が対手、つまり俺へ向くよう。

　敵騎の太刀の鍔元、尖端、そして俺の目が、<RUBY text="・・・">一直線</RUBY>
で結ばれる。
　
　――この現実が、俺に何をもたらしているか。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	Zoom("絵窓", 2000, 3400, 3400, Dxl2, true);

//◆レイヤ重ね：ef017
//◆ＥＶ差分：ぼやけ
	CreatePlainSP("絵板写", 20000);

	Wait(10);

	Delete("絵窓");
	Delete("絵背景*");

	CreateTextureSP("絵背景04", 3300, Center, Middle, "cg/ev/ev187_銘伏の妖剣_a.jpg");
	Zoom("絵背景04", 0, 1100, 1100, null, true);

	CreateTextureSP("絵背景05", 3400, Center, Middle, "cg/ev/ev187_銘伏の妖剣_b.jpg");
	Zoom("絵背景05", 0, 1100, 1100, null, true);

	CreateTextureEX("絵背景05EX", 10010, @-750, @-500, "cg/ef/ef017_汎用正面軌道.jpg");
	Fade("絵背景05EX", 0, 300, null, false);

	CreateTextureEX("絵背景06", 3500, Center, Middle, "cg/ev/ev187_銘伏の妖剣_c.jpg");
	Zoom("絵背景06", 0, 1100, 1100, null, true);

	Request("絵背景0*", Smoothing);

	MoveFFP1("@絵背景04",25000);
	MoveFFP2("@絵背景05",25000);
	MoveFRP1("@絵背景06",25000,30,30);

	FadeDelete("絵板写", 1000, false);

	Wait(1000);

//◆レイヤ重ね：ef017
//◆ＥＶ差分：影
	Fade("絵背景06", 1000, 1000, null, true);

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0580a00">
（く……！）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	RandomMeimetsu_mc04_014vs();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　目が<RUBY text="くら">眩</RUBY>む。
　距離感というものが、恐ろしいほど曖昧になる。

　世界が……いま突き付けられている、剣先の一点を
残して消失してしまったように感じる。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0590a00">
（おのれ）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　大鳥獅子吼――妖剣を使うか!?

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆明確差分
//◆影差分
//あきゅん「演出：マクロでループさせてるのでカット、ウェイトは後半の複線」
	FadeDelete("絵背景05EX", 1200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　如何ともし難い。
　<RUBY text="・・">尖端</RUBY>を見て平静を失うのは動物の本能だ。

　ましてこのように、<RUBY text="タチアイ">立合</RUBY>の最中――全身の神経感覚
を過敏にしている時であれば、その圧迫感たるや途轍
もない。
　舌の表裏が<RUBY text="たちま">忽</RUBY>ち干上がり、唇が<RUBY text="わなな">戦慄</RUBY>いた。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ぼやけ差分
//あきゅん「演出：マクロでループさせてるのでカット、ウェイトは後半の複線」
	Wait(1400);

	SetFwL("cg/fw/fw銘伏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0600a06">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　敵手の冷えた双眸が、俺の動静を窺っている。
　待っているのだ――俺の自壊を。

　このまま心身を消耗し、足腰を萎えさせるか。
　あるいは破れかぶれに攻め掛かるか。
　
　どちらに陥るにせよ、俺の勝ち目はない。

　この状態で、あくまでも平常心を保てるだけの精神
力が、俺にあるのなら別だ、が――

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆明確差分
//◆ぼやけ差分
//◆闇差分
//あきゅん「演出：マクロでループさせてるのでカット、ウェイトは後半の複線」

	Wait(1600);

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0610a00">
「……ッ……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　どうしようもなく注視する。
　感覚が一点に集中する。

　その他の全てが消える。
　敵の姿が見えなくなる。

　……駄目だッ！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ぼやけ差分
	CreateTextureEX("絵演壱", 9100, Center, Middle, "cg/ev/ev187_銘伏の妖剣_b.jpg");
	Zoom("絵演壱", 0, 1100, 1100, null, true);
	MoveFRP2("@絵演壱",25000,30,30);
	Request("絵演壱", Smoothing);

	Fade("絵演壱", 1800, 1000, null, true);

	CreateTextureSP("絵背景04", 3300, Center, Middle, "cg/ev/ev187_銘伏の妖剣_d.jpg");
	Zoom("絵背景04", 0, 1100, 1100, null, true);

	CreateTextureSP("絵背景05", 3400, Center, Middle, "cg/ev/ev187_銘伏の妖剣_e.jpg");
	Zoom("絵背景05", 0, 1100, 1100, null, true);

	CreateTextureEX("絵背景06", 3500, Center, Middle, "cg/ev/ev187_銘伏の妖剣_f.jpg");
	Zoom("絵背景06", 0, 1100, 1100, null, true);

	Request("絵背景0*", Smoothing);

	MoveFFP1("@絵背景04",25000);
	MoveFFP2("@絵背景05",25000);
	MoveFRP1("@絵背景06",25000,30,30);

	SetFwL("cg/fw/fw銘伏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0620a06">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//◆ぼやけ差分ｂ：獅子吼の右手が太刀から離れる
//◆ＳＥ：チャキ。脇差の鯉口を切る音
//◆↑この２演出は↓のテキスト流しつつにしたいが。
	Fade("絵演壱", 2000, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　己の心を支え切れない。
　崩壊への傾斜を徐々に滑り落ちているのがわかる。

　あといくらも持たないだろう。
　十秒……数秒か。自ら崩れ、敵の刃を受けるまで。

{	CreateSE("SE01","se戦闘_動作_刀構え03");
	MusicStart("SE01",0,500,0,1000,null,false);}
　…………決するべきか？

　あくまで待つのか。
　一か八か、打って出るか。
　それとも、退避の道を探るか。

　決断を――<k>下すべきか――――

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆闇差分ｂ：切先が迫る
	CreateTextureEX("絵背景08EX", 9120, @0, @0, "cg/ev/ev187_銘伏の妖剣_i.jpg");
	Zoom("絵背景08EX", 0, 1100, 1100, null, true);
	Request("絵背景08EX", Smoothing);
	Fade("絵背景08EX", 2000, 1000, null, true);

	MoveFFP1stop();
	MoveFFP2stop();
	MoveFRP1stop();
	MoveFRP2stop();
	MoveFRP3stop();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　来る!?

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆選択：打つ／待つ／逃れる

}

..//ジャンプ指定
//◆打つ　"mc04_014vsa.nss"
//◆待つ　"mc04_014vsb.nss"
//◆逃れる　"mc04_014vsc.nss"

//★選択肢シーン
scene mc04_014vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("絵背景09EX", 4101, @0, @0, "cg/ev/ev187_銘伏の妖剣_i.jpg");
	Request("絵背景09EX", Smoothing);
	Zoom("絵背景09EX", 0, 1100, 1100, null, true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice03("打つ","待つ","逃れる");
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
			ChoiceA03();
//◆打つ　"mc04_014vsa.nss"
				$GameName = "mc04_014vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
//◆待つ　"mc04_014vsb.nss"
				$GameName = "mc04_014vsb.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
//◆逃れる　"mc04_014vsc.nss"
				$GameName = "mc04_014vsc.nss";
		}
	}
}

.//プロセス用======================================================

..ランダム明滅
function RandomMeimetsu_mc04_014vs()
{
	CreateProcess("Ｐランダム明滅", 5000, 0, 0, "RandomMeimetsuSet_mc04_014vs");
	SetAlias("Ｐランダム明滅","Ｐランダム明滅");
	Request("Ｐランダム明滅", Start);
}

function RandomMeimetsuSet_mc04_014vs()
{
	begin:
	while(1)
	{
	$RFadeTimeSet = Random(3) + 2;
	$RFTS = ($RFadeTimeSet * 1000);
	Fade("@絵背景06", $RFTS, 0, null, true);

	$RWaitSet = Random(10) + 10;
	$RWS = ($RWaitSet * 10) +600;

	Wait($RWS);


	$RFadeTimeSet2 = Random(3) + 1;
	$RFTS2 = ($RFadeTimeSet2 * 1000);
	Fade("@絵背景05", $RFTS2, 0, null, true);

	$RWaitSet2 = Random(10) + 10;
	$RWS2 = ($RWaitSet2 * 10) +600;

	Wait($RWS2);


	$RFadeTimeSet3 = Random(3) + 1;
	$RFTS3 = ($RFadeTimeSet3 * 1000);
	Fade("@絵背景05", $RFTS3, 1000, null, true);

	$RWaitSet3 = Random(10) + 10;
	$RWS3 = ($RWaitSet3 * 10) +600;

	Wait($RWS3);

	$RFadeTimeSet4 = Random(3) + 2;
	$RFTS4 = ($RFadeTimeSet4 * 1000);
	Fade("@絵背景06", $RFTS4, 1000, null, true);

	$RWaitSet4 = Random(10) + 10;
	$RWS4 = ($RWaitSet4 * 10) +1000;

	Wait($RWS4);

	}

}