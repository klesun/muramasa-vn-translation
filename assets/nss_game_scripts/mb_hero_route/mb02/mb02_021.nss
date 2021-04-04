//<continuation number="360">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_021.nss_MAIN
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
	#bg026_普陀楽山塞a_03=true;
	#bg064_普陀楽城内道_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_022.nss";

}

scene mb02_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_020.nss"

//◆夜
//◆普陀楽城
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg026_普陀楽山塞a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　午前四時。
　最も眠りの深い時刻を見計らい、行動を開始した。

　警邏隊と出くわさぬ道順は事前に調査済み。
　物見櫓のわずかな死角から死角をつき、夜陰の中を
潜行する。

　……正直、懸念はあった。
　考え過ぎであろうとは思う――が。

　あの能舞台。あの<RUBY text="・・・・">見せしめ</RUBY>には、果たしてどこまで
の意味があったのか。
　そしてあの奇態な男の視線……。

　思う都度、疑惑は増す。
　だがそれでも、延期は論外と考えざるを得なかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0210010a02">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　一条を制止するのはもはや、無理だ。
　俺が調査に時間を費やせば、その間に単独で行動を
起こすだろう。

　それでは見殺しになる。
　この直進しか知らぬ少女の意に任せて、事が成ると
は思えない。

　屍の山を築いた挙句、その頂点へ伏せるだろうか。
　意味もなく。

　そうはさせられなかった。
　無意味な死屍累々の結末など迎えさせぬために、俺
が同行しているのだ。

　行動の延期は諦めたが、一条が望んだ作戦変更――
遊佐童心の襲殺――はどうにか説き伏せて断念させた。
　成功の見込みが無いと<RUBY text="さと">諭</RUBY>して。

　……見込み云々とは関係なく、それは止めねばなら
ぬところであろうが。
　もし万一にも成功が望めたなら、俺もどこまで本気
で一条を制止したか。我ながら不明であった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg064_普陀楽城内道_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw岩田_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210020b20">
「お待ちしておりました」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210030a00">
「遅れましたか」


{	FwC("cg/fw/fw岩田_微笑.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210040b20">
「時間通りです。
　ところで、得物は？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210050a00">
「こちらに」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正蜘蛛＆正宗天牛虫
	StR(1000, @100, @200,"cg/st/3d村正蜘蛛_俯瞰.png");
	StL(1000, @-100, @350,"cg/st/3d正宗天牛虫_正面.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);

	CreateSE("SE01a","se人体_足音_鎧歩く03");
	CreateSE("SE01b","se戦闘_動作_鎧_踏み込み02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FadeStR(300,true);
	MusicStart("SE01b",0,1000,0,800,null,false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw岩田_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210060b20">
「ッ！」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210070b20">
「……失礼を。
　こんな近くにいたとは気付かず」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210080a00">
「潜伏させておいたので。
　こちらこそ失礼……不意に見せるべきでは
ありませんでした」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　隠形を得手とする村正は無論だが、正宗も闇と多少
の物陰さえあれば完全に姿を隠せる程度の潜伏性能は
どうやら有している。
　常人の視覚に捉えられないのは当然であった。

　ささやかながらもこれは大きな不覚であったろうか。
　もし岩田女史に大声でも上げられていたら、何もし
ないうちに逃走へ移らねばならないところだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210090a00">
（……良くないな）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　どうも<RUBY text="・・・">風向き</RUBY>が悪い気がする。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210100b20">
「この劒冑……真打ですか」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210110a00">
「ええ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　こちらが劒冑を持ち込んでいる事は、打ち合わせの
段階で彼女に伝えていた。しかし、それが稀有な古式
の品だとは考えてもみなかったようだ。
　信じ難いという面持ちで二領の劒冑を眺めている。

　この事を最初から教えず、土壇場まで伏せておいた
のは、つまり<RUBY text="・・・・">演出効果</RUBY>を狙ったからである。
　<RUBY text="こちら">親王陣営</RUBY>が持つ武力の程を印象付けておく――それ
は今川雷蝶との今後の関係において必ず影響しよう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210120b20">
「……では、参りましょう。
　私の次に綾弥様。湊斗様は最後尾をお願い
します」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210130a00">
「心得ました」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0210140a02">
「どうする気だ。
　あんたが手引してくれるとは聞いてるけど」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210150b20">
「奥女中が用いる裏口から本丸へ入ります。
　本来なら夜間は錠が下ろされているのです
が、今夜は開いたままになるよう手を打って
おきました」


//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210160b20">
「中に入ってしまえば後は難しくありません」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0210170a02">
「そうかよ。
　……湊斗さん。装甲はいつ？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210180a00">
「<RUBY text="・・">潜入</RUBY>行動から<RUBY text="・・">襲撃</RUBY>行動に移る直前だ。
　まだ早い……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210190a00">
「装甲した瞬間、少なくとも本丸の警備任務
に就いている武者は全騎がこちらの存在に気
付き、殺到してくるだろう。
　ぎりぎりの機を狙う必要がある」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0210200a02">
「諒解です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　地上、それも屋内では武者の<RUBY text="レーダー">通常探査能力</RUBY>など飾り
だが、<RUBY text="ヒートシーカー">熱源探査</RUBY>は有効である。
　その探知範囲は決して広くないものの、同じ建物の
中にいて<RUBY text="アンノウン">未確認騎</RUBY>出現を掴み損ねる事も真逆なかろう。

　現在稼働中の竜騎兵は即応して来る筈だ――場合に
よっては更に広範囲から。
　最新の<RUBY text="ウォーカードラグーン">陸戦用竜騎兵</RUBY>は旧来とは比較にならぬ強力な
熱源探査を備えると云う……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210210b20">
「この作戦は迅速さが命。
　目的を充分に達したと判断したら、すぐに
撤退してください」


//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210220b20">
「周辺空域を封鎖されてしまえば終わりです。
　何としてでもその前に城外へ脱出を」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210230a00">
「承知しております」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0210240a02">
「あんたはどうする？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210250b20">
「邦氏様を狙った襲撃が行われ、同時に政所
の新人が姿を消したとなれば事態は明白。
　その新人を紹介した私も追及は免れません
から――」


//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210260b20">
「あなたがたの案内が済みましたら、その足
で脱出します。
　ご心配なく」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0210270a02">
「別に心配はしてねえ。
　……てめぇの面倒まで見るのは御免だって
思っただけだ。六波羅」


{	FwC("cg/fw/fw岩田_微笑.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210280b20">
「……おや、そうですか」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210290a00">
（村正。周囲状況は）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0210300a01">
《異常なし。
　平穏無事ってわけではないけれどね、勿論》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0210310a01">
《警備体制はいつも通り厳重よ。
　まぁ、内部に詳しい人間の手引があるなら
掻い潜れるでしょう……》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0210320a01">
《そこの<RUBY text="かみきりむし">天牛虫</RUBY>が足を引っ張らなければ、だ
けど》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/0210330b40">
《好きに言え、蜘蛛が。
　うぬのような無道の輩と違い闇に潜むを不
得手とするは、吾にとって何の恥でもない》


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0210340a01">
《……<?>
{Wait(500);}
あら、そう。
　性能の欠陥に恥辱を覚えないなんて、それ
でも劒冑？　さすが天下一名物ともなると器
が違うのね》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/0210350b40">
《……》


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0210360a01">
《……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　……何やら気が滅入ってきた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"mb02_022.nss"