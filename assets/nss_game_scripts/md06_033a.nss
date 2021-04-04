//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_033a.nss_MAIN
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
	#bg003_荒れ野_02=true;
	#ev139_統を殺害_a=true;
	#ev265_景明解放ＥＤ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameCircle=0;

	//★ＥＤロール超速対応
	PreSetRoll(5);
	TheEND(5);
}

scene md06_033a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_033.nss"


//●殺す

//BGMなしはわざとです inc櫻井
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 3000, "BLACK");

	OnSE("se戦闘_攻撃_野太刀振る01", 1000);
	Delete("上背景");
	SetVolume("@mbgm*", 100, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　打ち下ろした。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆グシャ。
	OnSE("se擬音_粘着質_ゲル潰れる04", 1000);

	CreateColorEX("フラッシュ", 15000, "#990000");
	Fade("フラッシュ",100,1000,null,true);

	CreateTextureSP("絵EF", 4000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade("絵EF", 0, 1000, null, true);

	Delete("黒");
	FadeDelete("フラッシュ", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　硬いものが砕けて、
　柔らかいものが潰れる音。

　血と、それ以外の何かが噴き出す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/fw雪車町_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/033a0010a12">
「ひけっ……ケケ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　雪車町は尚、笑っている。
　だが――明らか。

　その頭蓋は割れ、生命の器は壊れた。

　俺はこの男を殺害した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnBG(100, "bg003_荒れ野_02.jpg");
	FadeBG(0, true);

	FadeDelete("絵EF",1500,true);

	SetNwC("cg/fw/nw雪車町.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/033a0020a12">
「ヒ……ヒヒ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("ずるずる", "se人体_足音_歩く04_L");
	MusicStart("ずるずる", 0, 1000, 0, 400, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　致命傷を負いながら。
　雪車町一蔵は俺の下から這い出し、進む。

　自分が腰掛けていた岩へ。

　――その、裏へ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("ずるずる", 1000, 0, null);

	SetNwC("cg/fw/nw雪車町.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/033a0030a12">
「……ヒッ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　何かを、引き出す。

　箱。

　大きな箱だ。

　例えば、
　劒冑が収まる程度の。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw雪車町.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/033a0040a12">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_箱を開ける01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　瀕死者の指が留め金を外し、蓋を開ける。
　そこで力尽きたようだった。

　最後に俺を見て。
　祝福するように、嘲笑を寄越して。

　雪車町一蔵は息絶えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0050a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　死骸から目を離す。

　箱を見る。
　
　――<RUBY text="アイソレーションボックス">通信遮断装置</RUBY>？

　箱の中。
　……赤い、鉄が。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm05", 0, 1000, true);

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0060a00">
「……あぁ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　歓喜が突き上げる。

　その鉄。蜘蛛は。
　俺の見詰める中、姿を変えた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正
	CreateSE("SE01b","se特殊_その他_村正人間変化01");
	MusicStart("SE01b",0,1000,0,700,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	DeleteStL(0,true);
	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(0,true);
	WaitKey(500);
	FadeDelete("絵フラ", 1000, true);
	SetVolume("SE*", 1000, 0, null);

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0070a00">
「村正!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　安堵する余り、俺はへたり込んだ。

　嘘だったのだ。
　雪車町は村正を殺していなかった。

　通信が途絶していたのは遮断装置のため。

　良かった。
　喜びに満たされながら、<k>俺は杖を拾う。筋者が得物
としていた仕込み杖を。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0080a00">
「……村正？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0090a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　おかしい。

　村正はどうして、そんな目で俺を見るのだ？
　そんな――別れを告げるような目で。

　そして、俺は何をしている？

{	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　何故、仕込みを抜く？
　白刃を構えて、どうしようというのだ？

　わけのわからない事が起きている。

　わけのわからぬものが、俺の手足を操っている。

　――これは、あの時と同じ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：養母殺害
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 15000, @0, @0, "cg/ev/ev139_統を殺害_a.jpg");

	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　憎悪による殺害の末路。
　愛情による殺害の代価。

　善悪相殺の掟。

　雪車町一蔵を殺した俺は、
　村正をも殺す。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	EfRecoOut1(300);

	Delete("絵回想*");

	StC(1000, @0,@0,"cg/st/st村正_通常_私服.png");
	FadeStA(0,true);

	EfRecoOut2(600,true);

	SetFwR("cg/fw/fw景明_苦痛.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0100a00">
「なッ……あァァ!?」

{	FwR("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0110a01">
「……」

{	FwR("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0120a00">
「村正……逃げろっ!!」

{	FwR("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0130a01">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　必死の叫びに、応えたのは首の動き。
　左右に、小さく。

　村正はその場を動かない。

{	CreateSE("SE01","se自然_草木_探る02");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　俺は歩み寄る。

　仕込み刀を手に、一歩一歩。

　――嫌だ。
　――やめろ。

　俺の肉体は俺の拒絶を黙殺する。
　一つの戒律に服従する。

　近寄る。

{	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　両腕が、白刃を夕陽に<RUBY text="かざ">翳</RUBY>す。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0140a00">
「むら、まさ……！」

{	FwR("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0150a01">
「いいの」

{	FwR("cg/fw/fw村正_笑顔.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0160a01">
「これで……いいのよ」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 100, 0, null);

//◆ぐさ。血。
//◆ＥＶ：解放ＥＤ
	OnSE("se特殊_ヒロイン_惨殺01", 1000);

	CreateColorEX("フラッシュ", 15000, "#990000");
	Fade("フラッシュ",500,1000,null,true);
	CreateTextureSP("絵EF", 4000, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	DeleteStA(0,true);

	FadeDelete("フラッシュ", 1500, true);

//見せるためわざとKeyつけてません inc櫻井
	Wait(1000);

	CreateTextureSP("絵イベ", 3900, Center, Middle, "cg/ev/ev265_景明解放ＥＤ.jpg");
	FadeDelete("絵EF",1500,true);

	OnSE("se人体_血_たれる01", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　殺す。

　憎悪に対する、愛情の生贄を支払う。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm15", 0, 1000, true);

//雰囲気的に表情出さないほうが良いと思い、nwで表示しています。inc櫻井

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0170a00">
「何故」

//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0180a00">
「何故だァ!!」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0190a01">
「……御堂……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0200a01">
「最後に、お願い……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0210a01">
「これで……自分を許して」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0220a01">
「貴方はこれで全部、失ったんだから……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0230a01">
「最後に残っていた、大切なものまで。
　……ね。そのくらいの自負は私に持たせて
くれるでしょう……？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0240a00">
「…………」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0250a01">
「だから」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0260a01">
「もう……自分を責めないで」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0270a01">
「許してあげて」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/033a0280a01">
「……お願い……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/033a0290a00">
「村正」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　繋ぎ止めようと、体を抱える。

　その唇がもう一度。
　声にならない声で。

　――お願い、と。

　そうして。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆散華
	SetVolume("@m*", 100, 0, null);
	OnSE("se特殊_雰囲気_崩壊音", 1000);

	CreateColorEXadd("散華", 15000, "WHITE");

	Fade("散華", 1000, 1000, null, true);
	Delete("絵イベ");

//◆空き地・夕

	FadeDelete("散華",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　腕の中で、砕けて散った。
　夕日を浴びて煌き、それもすぐに消える。

　独り、俺は立ち尽くす。

　解放されていた。
　自由があった。

　もう俺には何も無かった。

　俺を縛る全てが無かった。

　使命も。<k>
　<RUBY text="のろい">呪戒</RUBY>も。<k>
　憎悪も。<k>
　愛も。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＤロール（汎用）
	ClearWaitAll(3000, 1000);

}

..//ジャンプ指定
//次ファイル