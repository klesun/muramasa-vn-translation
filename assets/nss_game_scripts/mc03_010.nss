//<continuation number="400">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_010.nss_MAIN
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
	#bg050_普陀楽城宿舎前_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_011.nss";

}

scene mc03_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_009.nss"

//◆朝。空？
	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 10000, "#000000");
	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg001_空b_01.jpg");

	Delete("上背景");
	FadeDelete("絵色黒",1500,true);

	SoundPlay("@mbgm32", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　出立の朝。
　
　これが最後の旅になるという、予感があった。

　この旅で大鳥大尉が企図を遂げ、俺が銀星号の件に
決着をつけたならば、その後、すべき事はただ一つと
なる。
　彼女が誓った<RUBY text="せいぎ">復讐</RUBY>の遂行、それだけだ。

　湊斗景明の恐怖。
　湊斗景明の待望。
　
　湊斗景明の正しい終結。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0100010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　肩には途方もない疲労を、胸には深い安堵を覚える。
　長かった――そう思う。だが兎も角も終わるのだ。
あと一息で。やっと。

　<RUBY text="おのれ">罪人</RUBY>は報いを受けて、正しく<RUBY text="おわる">果つ</RUBY>事が叶う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100020a03">
「……景明さま？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0100030a00">
「いえ。
　ふと、感慨を新たにしておりました」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0100040a00">
「貴方に出会えて良かったと」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100050a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆永倉邸前。bg050流用
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	
	Delete("絵背景*");
	OnBG(100, "bg050_普陀楽城宿舎前_01.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	StR(1000, @0, @0, "cg/st/st永倉翁_通常_私服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw永倉翁_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100060b17">
「お忘れ物などはございませんな」

{	StL(1000, @80, @0, "cg/st/st香奈枝_通常_私服b.png");
	StCL(1000, @-60, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);
	FadeStCL(300, false);}


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100070a03">
「はい。
　では行って参ります」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100080b17">
「どうぞお気をつけて。
　さよ、香奈枝様のことを頼むぞ」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0100090a04">
「お任せくださいませ。お兄ちゃん」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw永倉翁_苦味.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆大フォント
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100100b17">
<FONT size="50">「ヤメロ」</FONT>

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0100110a00">
「翁。造作をお掛け致しました」


{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100120b17">
「何程のことはしておりませぬよ。
　御客人も、壮健であられい」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100130b17">
「来年、また柿を食いに来られたらよろしか
ろう」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0100140a00">
「……はっ」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100150a03">
「永倉のお爺さま」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100160b17">
「はい？」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100170a03">
「わたくしはきっと、大鳥の家を滅ぼすこと
になるでしょう」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100180b17">
「お心のままに、滅ぼされませい」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100190a03">
「……」


{	FwC("cg/fw/fw永倉翁_苦味.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100200b17">
「古き良き大鳥……美しき<RUBY text="ながれ">家風</RUBY>は既に断たれ
ました」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100210b17">
「まことに畏れながら、その端緒は御先代様
……香奈枝様のお父君がつけられたのでござ
います」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100220a03">
「ええ……」


{	FwC("cg/fw/fw永倉翁_苦味.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100230b17">
「お志はともかく、手段を誤られた。
　ために大鳥の翼は乱れ、獅子吼の如き者の
台頭を許し、ご自身その手に掛かられ――」

//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100240b17">
「そして獅子吼めに握られた今の大鳥家中は、
もはや嘗ての面影もなし……。
　<RUBY text="ちから">権力</RUBY>に隷従する走狗の群れ、単なる軍閥で
ございます」

//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100250b17">
「大鳥、地に墜ちて餓畜となりぬ。
　今や世に百害こそあれ一利を報いず」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100260a03">
「……」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100270b17">
「滅ぼしてしまわれませい。
　家を継ぎ守り伝えるが裔子の務めなら、家
が堕落し果てた時に引導を渡すのもまた裔子
の務め」


//嶋：修正【091006】
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100280b17">
「香奈枝様。あなたは何かを傷つけ、害し、
ぶち壊す以外に何の才腕も持たぬ御方。
　そんな御方が当代にお生まれになったこと
には、やはり意味があったのでございます」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100290b17">
「どうか<RUBY text="ほしいまま">欲儘</RUBY>に振舞われませ。
　腐り果てた大鳥が倒れた後には、花枝様が
新たな大鳥を築かれましょう」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100300a03">
「…………」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100310a03">
「はい」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100320b17">
「ご武運をお祈りしておりますぞ」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100330a03">
「お爺さまもお達者でね」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0100340a04">
「ではお嬢さま、そろそろ参りましょうか」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100350a03">
「ええ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0100360a00">
「して、篠川へは如何なる方法で？
　現状を鑑みるに、一工夫必要と思われます
が」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0100370a04">
「いろいろ考えてはみたのですけれどもねぇ。
　考えに考えて考えあぐねた挙句、一周して
スタート地点に戻りまして」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0100380a04">
「結局、一番芸の無い方法に落ち着きました」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0100390a00">
「と云われますと」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0100400a04">
「鉄道でございます」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc03_011.nss"