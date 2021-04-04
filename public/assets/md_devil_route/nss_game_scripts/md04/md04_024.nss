//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_024.nss_MAIN
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
	#bg103_普陀楽城外郭藤沢方面_02=true;
	#ev912_荒覇吐竜気砲アップ_a=true;
	#ev806_戦争絵シリーズその４_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_025.nss";

}

scene md04_024.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_023vs.nss"


//◆藤沢口・夕

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg103_普陀楽城外郭藤沢方面_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm34", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　<RUBY text="・・・">空模様</RUBY>が劇的な変化を遂げつつあった。

　攻城軍の強勢を留め得ず、もはや城内へ突入される
かと思えた時、北東の空に一隻の飛行艦が現れ……
　迎撃に出た進駐軍の竜騎兵隊をほとんど一瞬にして
薙ぎ払い、普陀楽上空へ進出する。

　その異様な圧力に、進駐軍側の飛行艦団は押され、
後退してゆく。
　<RUBY text="ガレーキープ">要塞級</RUBY>さえ反攻しようとはしない。ひとまず様子を
見るつもりか、竜騎兵に守られながら艦首を返した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240010a07">
「は……ははっ。
　来やがった、<RUBY text="あいつ">獅子吼</RUBY>」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240020a07">
「飛行艦一隻で。
　無茶しやがるぜ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0240030a00">
「あの船は……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240040a07">
「<RUBY text="まてんこう">摩天蛟</RUBY>。
　篠川で開発された、六波羅が所有する唯一
の大型飛行艦だよ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240050a07">
「ガレーキープにだって引けは取らねえ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　確かに見事な船だ。
　遠目にも、ただ単に巨大なだけではないその設計の
秀抜さが知れる。

　おそらく現世界最強の飛行艦の一つだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0240060a00">
（だが、それ以上に――）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　艦載騎の戦闘力が異常極まっていた。

　先程の空戦。
　……上空のことであるから詳細はわからない。だが
あれは、<RUBY text="・・">狙撃</RUBY>だった。

　摩天蛟の艦載騎は遠距離からの射撃によって敵騎を
撃墜していた。
　あの搭載火器は――次世代<RUBY text="ＡＤＳＡ">対武者用射撃兵器</RUBY>として
最も有望と一般に認知されている<RUBY text="ＨＶＡＰ">高速徹甲弾</RUBY>ではない。

　それにしては精度と威力が高過ぎる。
　もっと別のものだ。もっと新しい、もっと恐るべき
もの……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0240070a00">
（あれは）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
//◆江ノ島の荒覇吐

	EfRecoIn1(18000,600);

	CreateTextureEX("絵回想900", 2001, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	Fade("絵回想900", 0, 1000, null, true);

	
	EfRecoIn2(300);
	
	WaitKey(1500);
	
//◆発振砲
//◆戻り

	EfRecoOut1(300);
	
	Delete("絵回想*");

	CreateTextureSP("砲", 15000, @0, @0, "cg/ev/ev806_戦争絵シリーズその４_a.jpg");


	EfRecoOut2(600,true);

	Wait(500);

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240080a07">
「<RUBY text="ヴァイブロカノン">発振砲</RUBY>。
　騎体は零零式竜騎兵」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　俺の内心を読み取ってか、茶々丸が説明を足した。
　そしてもう一言。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240090a07">
「英雄の時代に終わりを告げるもの」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0240100a00">
「終わりを？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240110a07">
「そう」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240120a07">
「戦場は、英雄たちの聖域だった。
　敵騎と剣を交え、鎬を削り、力と技の粋を
ぶつけあった末に相手を打ち倒す勇者だけが、
勝利をつかみ取れた」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240130a07">
「でも、これからは違う……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　茶々丸の指が天空を差す。
　そこでは再び戦闘が繰り広げられていた。

　いや、果たして戦闘と呼んで良いものか。
　進駐軍の<RUBY text="しんがり">殿軍</RUBY>に残った竜騎兵隊に食いつく篠川軍の
零零式は、敵騎をまるで寄せ付けず、はるか遠方から
ただただ一方的に撃ち、墜としてゆく。

　戦闘というより、あれでは狩猟だ。
　更に正確さを期すなら、遊猟だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240140a07">
「力も技も勇気もいらない。
　敵の顔も見えないような遠くから、狙って
撃つだけでいい」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240150a07">
「……英雄の出番は無くなった。
　これからの戦場に英雄がのこのこ出てきて
も、雑兵の<RUBY text="えさ">好餌</RUBY>になるだけだ」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240160a07">
「零零式が――
　<RUBY text="リアル">真打</RUBY>を凌駕する<RUBY text="ダミー">数打</RUBY>が、とうとう生まれて
しまったから」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("砲",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　無惨な光景であった。

　剣を抜き、槍を構え、勇壮にも突進する大英帝国の
騎士たちは――わずか一太刀を報いる事さえ叶わない。
　嘲笑じみた狙撃を浴び、いとも容易く打ち倒され、
虚しくも死に絶えてゆく。

　その一瞬、俺は窮地を救ってくれた友軍ではなく、
敵である彼らの側に同調した。
　時の流れに置き捨てられた者の悲哀を共有した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0240170a00">
「時代が変わるのか」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240180a07">
「連盟軍でも高速徹甲弾の改良が進んでる。
　もうじき実戦配備されるよ」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240190a07">
「遠く離れてぱかぱか撃ち合うだけが戦争の
全てになるんだ。
　戦場から<RUBY text="ブレイドアーツ">剣戟舞踏</RUBY>は消えてゆく」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0240200a00">
「…………」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240210a07">
「そんな時代には神話なんて成立しない」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240220a07">
「英雄がいなけりゃ魔王もいないさ。
　神様だってきっと這い出してくる隙がない」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240230a07">
「だから今のうちにやるんだ、お兄さん」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0240240a00">
「神を呼ぶ……か」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240250a07">
「古き時代の終わりに。
　<RUBY text="・・・・・">最後の神話</RUBY>を創り出す」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240260a07">
「まっ、駆け込みセーフってとこかな……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　城の外でも、進駐軍が撤退を開始していた。

　彼らのこれまでの攻勢は航空優越、つまり空爆支援
に支えられていた部分が大きい。
　それが失われた今、作戦を再考するのは当然だろう。

　どうやら、時間を稼げそうだった。
　俺達が必要とする、<RUBY text="ひかる">銀星号</RUBY>が目覚めるまでの時間を。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"md04_025.nss"