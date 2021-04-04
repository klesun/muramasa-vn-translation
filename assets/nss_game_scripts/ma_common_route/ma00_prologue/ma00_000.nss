//<continuation number="1710">



chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma00_000.nss_MAIN
{
	$TITLE_NOW=" ――――　プロローグ　―――― ";

	//★個別マクロ超速対応
	Conquest("nss/ma00_000.nss","ma00_fire",true);
	Conquest("nss/ma00_000.nss","ma00_fireDelete",true);
	Conquest("nss/ma00_000.nss","ma00_fireProcess",true);
	Conquest("nss/ma00_000.nss","ma00_FireMoveAuto",true);
	Conquest("nss/ma00_000.nss","ma00_FireMoveAutoProcess",true);
	Conquest("nss/ma00_000.nss","ma00_FireMoveAutoDelete",true);

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg001_空a_02=true;
	#bg001_空a_03=true;
	#bg002_空a_03=true;
	#bg003_荒れ野_02=true;
	#bg004_鄙びた村a_02=true;
	#bg002_空a_02=true;
	#bg002_空b_03=true;
	#bg004_鄙びた村b_03=true;

	#ev001_銀星号事件イメージ１=true;
	#ev002_銀星号事件イメージ２=true;
	#ev101_プロローグ_a=true;
	#ev101_プロローグ_b=true;
	#ev101_プロローグ_c=true;
	#ev301_銀星号クラッシュ=true;
	#ev302_94式射撃=true;
	#ev505_六波羅進軍=true;
	#ev952_銀星号登場=true;
//嶋：extra：下記ムービー挿入につき、使用していません【09/08/18】
	#ev901_銀星号天座失墜小彗星_a=true;
	#ev901_銀星号天座失墜小彗星_b=true;
	#ev901_銀星号天座失墜小彗星_c=true;
	#ev901_銀星号天座失墜小彗星_d=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_銀星号=true;
	#voice_on_その他男声=true;
	#voice_on_その他女声=true;

	#av_九〇式指揮官騎=true;
	#av_九四式竜騎兵=true;
	#av_九四式指揮官騎=true;
	#av_銀星号=true;

//嶋：体験版では下記削除
	if(#復讐編終了 == true && #英雄編終了 == true){
		#魔王編解放 = true;
		$魔王編解放 = true;
	}

	if(#復讐編終了 == true){$復讐編終了 = true;}

	$PreGameName = $GameName;

	$GameName = "ma01_001.nss";

}

scene ma00_000.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	#voice_on_その他男声=true;
	#voice_on_その他女声=true;

	CreateColor("黒幕１", 15000, 0, 0, 1024, 576, "Black");

	Fade("@冒頭ホワイト", 1000, 0, null, true);
	Request("@冒頭ホワイト", UnLock);
	Delete("@冒頭ホワイト");

	CreateTextureEX("絵背景10", 5000, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	Fade("絵背景10", 0, 1000, null, true);


	Fade("黒幕１", 1000, 0, null, true);



//◆夕空

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　この日の舞台は、計四幕。

　第一幕は、決闘であった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(500);

//◆荒れ野・夕
	CreateTextureSP("背景20", 3000, -1024, Middle, "cg/bg/resize/bg003_荒れ野_02.jpg");
	Request("背景20", Smoothing);

	CreateTextureSP("背景30", 2500, 0, 0, "cg/bg/bg003_荒れ野_02.jpg");

	CreateSE("SE01","se自然_風_野原01_L");
	MusicStart("SE01",1000,1000,0,1000,null,true);

	Move("背景20", 60000, 0, -200, null, false);
	FadeDelete("絵背景10", 3000, false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　小さな村の手前の原。

　揃いの軍装を<RUBY text="まと">纏</RUBY>い、銃と軍刀で武装した兵が数十人、
隊列を成している。
　戦気を漲らせながらも不気味に静寂を守るその様は、
赤い夕日に照らされて、尚一層凶々しい。

　陣頭には見るも<RUBY text="いかめ">厳</RUBY>しい、厚い鎧姿の武士達が立つ。
　分厚い鉄甲、長大な太刀――彼らの<RUBY text="かも">醸</RUBY>し出す威圧感
は、一騎のみでも背後の兵全てに優る戦力たり得ると
いう事実を、何より雄弁に物語っている。

　今、村に向かって<RUBY text="おんじょう">音声</RUBY>を響かせるのは、<RUBY text="かいし">鎧士</RUBY>らの中
でも筆頭らしき一人であった。
　物言いの<RUBY text="おご">傲</RUBY>りからも、彼がこの軍部隊を率いる長で
あることが知れる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Fade("背景20", 1000, 0, null, true);
	Delete("背景20");

	SetNwC("cg/fw/nw部隊長.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000010e237">
《この村が<RUBY text="くらかけ">倉掛</RUBY>の反乱に<RUBY text="くみ">与</RUBY>した奸賊を匿って
いるのはわかっている。
　おとなしく身柄を差し出せば良し――》

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000020e237">
《<RUBY text="しか">然</RUBY>らずば、村ごと踏み潰すまで！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 5000, "Black");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　それを聴くのは、村の入口で垣根を作る群集だ。
　住民であろう。

　布告の意味を理解できない者はいなかったし、それ
が単なる脅しではないことを悟れない者もいなかった。
　にも拘わらず、恐慌をきたす者は少なかった。

　人垣の中で膨れ上がったのは怒りであった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE10","se背景_ガヤ_ざわめく01_L");
	MusicStart("SE10",2000,700,0,1000,null,true);

	Fade("絵色100", 100, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
　
　――山犬野郎。
　――腐肉漁り。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵色100", 100, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
　大声で叫ぶまでの勇気はない。
　だが憎悪を込めて囁き交わす。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵色100", 100, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
　
　――六波羅。
　――六波羅。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 100, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
　噛み潰すように、その名を呟く。

　<RUBY text="ロクハラ">六波羅</RUBY>。
　そう呼ばれた軍兵集団の長は、同じ通告を繰り返す。

　村人らは応えず、敵意と憎しみを囁き合う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　通告が、もう一度。<k>
{	SetVolume("SE01", 200, 0, null);
	SetVolume("SE10", 200, 0, null);
	StL(2600,@0,@0,"cg/st/st六波羅兵士_通常_制服.png");
	FadeStL(300,false);
	OnSE("se戦闘_銃器_構える01",1000);}
　同時に、兵卒達が村へ銃口を向けた。

　囁きが止まり、恐怖の波が広がる。
　それでも、村人らの敵意は消えない。

　無言の殺意。
　無言の敵意。

{	DeleteStL(300,false);}
　その均衡が、不意に崩れる。
　崩したのは、部隊長の発砲命令ではなく、その直前
に生じた別の変化であった。

　村人の壁が、どよめきながら割れる。
　後方から、誰かが進み出ようとしているのだった。

　――いけない。
　――戻って、お武家さん。
　――駄目だよ、殺される。
　――お武家さん！

　口々に上がる、制止の声。
　それらへ、その人物は一言だけを返した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetNwC("cg/fw/nw落人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000030e286">
「世話になった」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


	CreateSE("SE10","se人体_足音_鎧歩く02_L");
	MusicStart("SE10",500,800,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　彼は進み、軍部隊の前へ姿を現した。

　<RUBY text="かいし">鎧士</RUBY>であった。
　村を威迫する者と、同様の。

　違いがあるとすれば、鎧の状態。
　入念な整備を施され、万全な機能を誇っているか。
それとも損傷をそのまま、性能が劣化するままに放置
されているか。

　その違いだけある。
　軍に属する正規兵と<RUBY text="おちうど">落人</RUBY>の差だ。

{	SetVolume("SE10", 200, 0, null);}
　落人は、更に進もうとした。
　その手を、別の小さな手が<RUBY text="つか">掴</RUBY>んだ。

　童女だった。
　何も言わず、手を握り、放さない。

　落人も黙って、娘を見た。
　片手を伸ばして、その頭をそっと撫でた。

　それから、引き止める手を放させた。

　童女の瞳が潤む。
　振り切るようにして、落人は前へ進む。

　軍部隊から幾人かが、捕らえようというのだろう、
武器を構えて飛び出そうとした。
　それを片手の一振りで遮り、部隊の長がただ一人、
落人を迎えて進み出る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景100", 500, InRight, -330, "cg/bg/resize/bg003_荒れ野_02.jpg");

//◆九四式指揮官騎と九〇式指揮官騎

	CreateSE("SE01","se自然_風_野原01_L");
	MusicStart("SE01",1000,1000,0,1000,null,true);

	CreateTextureSP("絵STC600", 600, 182, InBottom, "cg/st/3d九四式指揮官_立ち_通常.png");

	Move("絵背景100", 5000, @+150, @0, DxlAuto, false);
	Move("絵STC600", 5000, @-100, @0, DxlAuto, false);

	Fade("背景30", 500, 0, null, true);

	Wait(1500);

	PrintGO("上背景", 15000);
	CreateTextureSP("絵背景200", 300, InLeft, -405, "cg/bg/resize/bg003_荒れ野_02.jpg");

	CreateTextureSP("絵STC400", 400, 242, InBottom, "cg/st/3d九〇式指揮官_立ち_通常.png");

	Move("絵STC400", 5000, @+100, @0, DxlAuto, false);
	Move("絵背景200", 5000, @-150, @0, DxlAuto, false);

	FadeDelete("上背景", 500, true);

	Wait(1500);

	PrintGO("上背景", 15000);
	CreateTextureSP("背景30", 100, Center, 0, "cg/bg/bg003_荒れ野_02.jpg");

	StL(500,@0,@0,"cg/st/3d九四式指揮官_立ち_通常.png");
	StR(600,@0,@0,"cg/st/3d九〇式指揮官_立ち_通常.png");
	FadeStA(0,false);


	FadeDelete("上背景", 500, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　村と軍の中間で、二人は向き合った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw落人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000040e286">
「……何のつもりだ？　<RUBY text="さぎぬま">鷺沼</RUBY>」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000050e237">
「昔の上官に敬意を示しただけですよ。
　<RUBY text="かけい">垣見</RUBY>少佐――<RUBY text="・">元</RUBY>少佐」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000060e286">
「…………。
　村を見逃すとの言に偽りはなかろうな」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000070e237">
「貴方の身柄を差し出すなら、村の罪は問わ
ない。
　言った通りです」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000080e286">
「ならば良い。
　で……？　貴様、よもや本気で俺と仕合う
気か」

//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000090e286">
「後ろの味方を<RUBY text="たの">恃</RUBY>んだ方が良いのではないか」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000100e237">
「何故、そんな必要があります？」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000110e286">
「……」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000120e237">
「貴方は一騎打で敗北を知らないことが自慢
でしたな。
　生憎、そのような名誉を抱えたまま地獄へ
行かせてはやれません」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000130e237">
「<RUBY text="ここ">現世</RUBY>へ置いていって頂く。
　六波羅に叛いた者の最期には、一片の名誉
とて相応しくない」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000140e286">
「……ほう……」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000150e237">
「見れば、<RUBY text="ふたわがかり">双輪懸</RUBY>も叶わぬほど<RUBY text="つばさ">母衣</RUBY>が傷んで
おる様子。
　地上にて、<RUBY text="たちうち">太刀打</RUBY>仕ろう」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000160e286">
「見上げた大言壮語だ、鷺沼。
　あの青二才が、吹くようになったものよ」

//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000170e286">
「有難く馳走に<RUBY text="あずか">与</RUBY>ろうか。
　冥途の土産にその<RUBY text="しるし">首級</RUBY>、頂いておく」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000180e237">
「……貰うのはこちらだ、垣見。
　その<RUBY text="しわくび">皺首</RUBY>を肴に旨い酒を飲める今宵が、今
から楽しみでならぬ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


	SoundPlay("@mbgm09",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　鷺沼と呼ばれた部隊長と、垣見と呼ばれた落ち武者。
　旧縁持つ二人はそれで対話を切り、共に太刀を抜き
放った。

　村人と軍兵がそれぞれ、息を詰める。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);
	CreateTextureSP("絵背景100", 100, InLeft, -405, "cg/bg/resize/bg003_荒れ野_02.jpg");

	StC(500,@-150,@0,"cg/st/3d九四式指揮官_立ち_通常.png");
	FadeStC(0,true);

	FadeDelete("上背景", 300, true);

//◆九四式、中段
	StC(1000,@-150,@ 0,"cg/st/3d九四式指揮官_立ち_戦闘b.png");

	Wait(200);

	OnSE("se戦闘_動作_刀構え01",1000);
	FadeStC(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　大鎧の武人――鷺沼は、切先を前方へ向けて構えた。
　一撃必殺、敵を突き殺す正眼の剣形である。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵鷺沼側", 1200);

	Delete("絵背景*");

	CreateTextureSP("絵背景100", 100, InRight, -330, "cg/bg/resize/bg003_荒れ野_02.jpg");
	StC(500,@+150,@0,"cg/st/3d九〇式指揮官_立ち_通常.png");
	FadeStC(0,true);

	Fade("絵鷺沼側", 300, 0, null, true);

//◆九〇式、上段
	StC(1000,@150,@0,"cg/st/3d九〇式指揮官_立ち_戦闘a.png");

	Wait(200);

	OnSE("se戦闘_動作_刀構え01",1000);
	FadeStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　大鎧の武人――垣見は、剣を肩へ担ぐように構えた。
　一刀両断、敵を斬り伏せる雷刀の剣形である。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵垣見側", 1200);
	Delete("絵背景*");

/*
	CreateTextureSP("背景30", 10, Center, 0, "cg/bg/bg003_荒れ野_02.jpg");
	StL(50,@-50,@0,"cg/st/3d九四式指揮官_立ち_戦闘b.png");
	StR(60,@+50,@0,"cg/st/3d九〇式指揮官_立ち_戦闘a.png");
	FadeStA(0,true);
*/

	CreateWindow("windowup", 1500, 0, 0, 1024, 288, false);
	SetAlias("windowup","windowup");
	CreateTextureSP("windowup/絵BG100", 1500, 0, Middle, "cg/bg/resize/bg003_荒れ野_02.jpg");
	SetShade("windowup/絵BG100", MEDIUM);
	CreateTextureEX("windowup/絵st100", 1500, 0, 0, "cg/st/3d九四式指揮官_立ち_戦闘b.png");
	Request("windowup/絵st100", Smoothing);
	Zoom("windowup/絵st100", 0, 1200, 1200, null, true);



	CreateWindow("windowdown", 1500, 0, 288, 1024, 288, false);
	SetAlias("windowdown","windowdown");
	CreateTextureSP("windowdown/絵BG200", 1500, -1024, 188, "cg/bg/resize/bg003_荒れ野_02.jpg");
	SetShade("windowdown/絵BG200", MEDIUM);
	CreateTextureEX("windowdown/絵st200", 1500, 441, 242, "cg/st/3d九〇式指揮官_立ち_戦闘a.png");
	Request("windowdown/絵st200", Smoothing);
	Zoom("windowdown/絵st200", 0, 1200, 1200, null, true);

	Move("windowup/絵st100", 0, @-100, @0, null, true);
	Move("windowdown/絵st200", 0, @+100, @0, null, true);

	Move("windowup/絵st100", 500, @+100, @0, Dxl1, false);
	Move("windowdown/絵st200", 500, @-100, @0, Dxl1, false);
	Fade("windowup/絵st100",300,1000,null,false);
	Fade("windowdown/絵st200",300,1000,null,false);

	Fade("絵垣見側", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　そうして相対し。
　両者は、凝固した。

　時が<RUBY text="いたずら">徒</RUBY>に流れ過ぎゆく。

　村人達は、手に汗を握るばかりであった。
　軍部隊の大半も、前触れ無しの決闘を唖然と見守る
だけであった。

　しかしそのうち一握りの者は、静止の意味を正しく
洞察し、勝負の行末を思って固唾を呑んだ。

　両者いずれも、意図するところは明らかである。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateEffect("絵相対", 5000, 0, 0, 1024, 576, "Plain");
	SetAlias("絵相対","絵相対");
	Request("絵相対",Passive);

	Delete("絵背景*");
	Delete("windowup/*");
	Delete("windowdown/*");
	Delete("windowup*");
	Delete("windowdown");

	DeleteStA(0,true);


	Fade("絵鷺沼側", 0, 1000, null, true);
	Fade("絵相対", 300, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
　中段に構える鷺沼は、刺突にて対手の喉を狙う。
　この構より斬撃せんとすれば、剣を振りかぶる余計
の動作が入用となり、敵に遅れを取るため、まず突く
以外の選択は無いと言って良い。

　そして、厚い鎧で身を守る者の泣き所は、どうにも
覆いようのない関節部。その最も致命的たるが喉周り
の隙。
　これを突くに如かず。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("絵垣見側", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
　対する垣見は、担ぎ上段より相手の首元を狙う。
　そこもまた鎧の守り切れぬ隙であり、垣見の構から
やや太刀を寝かせ気味に斬り込めば、兜と肩甲の狭間
を潜ってその部分へ刃先を打ち入れる事が叶う。

　他の箇所を狙おうとすれば、やはり予備動作が必要
となり、敵に対しての遅れとなるであろう。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	Fade("絵相対", 300, 1000, null, true);

/*
	CreatePlainSP("仮上背景", 15000);
	CreateTextureSP("仮背景100", 1000, Center, Middle, "cg/bg/bg003_荒れ野_02.jpg");

	StL(1500,@-100,@0,"cg/st/3d九四式指揮官_立ち_戦闘b.png");
	StR(1600,@+100,@0,"cg/st/3d九〇式指揮官_立ち_戦闘a.png");
	FadeStA(0,true);

	Fade("絵相対", 0, 0, null, true);
	FadeDelete("仮上背景", 300, true);
*/


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0133]
　斯様に両者とも、攻め手は決している。
　しかし両者とも、不動にて時を送る。

　それは両者とも、攻め手に併せて受け手を用意して
おり、そしてどちらも、対敵にその備えがあることを
疑っていなかったからである。

　六波羅の将、鷺沼が突き出せば――
　垣見は僅かに身を捻るのみでその鋭鋒を<RUBY text="かわ">躱</RUBY>し、鷺沼
が姿勢を立て直す前に斬り下ろして、勝負を決するで
あろう。

　落人、垣見が先に斬り掛かれば――
　鷺沼は一歩退いて剣撃を外し、すぐさま跳ね戻って
宿敵を刺し殺すであろう。

　攻め手が必殺なら受け手もまた必殺。
　互いに対敵の手の内を読み切り、<RUBY text="ゆえ">故</RUBY>に動けず、戦況
は膠着する。

　かかる情勢、勝負は<RUBY text="すなわ">即</RUBY>ち、体力気力の削り合い。

　垣見と鷺沼、対峙する二者は今、敵を一足一刀にて
仕留め得る体勢と敵の微細な変化をも見逃さぬ集中力、
その二つを維持しながら向き合っている。
　なればこその膠着。

　これが両者の心身に多大な負担を掛ける事は論ずる
までもない。
　渓谷を綱渡りするにも等しい過酷さである。

　やがては一方が力尽き、構を崩す。
　その時もう一方が余力を残していたならば、即座に
その崩れを狙って攻め掛かり、勝利者となるであろう。

　軍将、鷺沼。
　落人、垣見。
　
　いずれがいずれの役を負うか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	CreatePlainSP("仮上背景", 15000);

	DeleteStA(0,true);
	Delete("仮背景*");

	Fade("絵鷺沼側", 0, 1000, null, true);
	Fade("絵垣見側", 0, 0, null, true);

	Fade("絵相対", 300, 0, null, true);


	SetNwR("cg/fw/nw部隊長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000190e237">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("絵垣見側", 300, 1000, null, true);
	Fade("絵鷺沼側", 0, 0, null, true);

	SetNwL("cg/fw/nw落人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000200e286">
「…………」


</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	Fade("絵鷺沼側", 0, 1000, null, true);
	Fade("絵垣見側", 300, 0, null, true);

	SetNwR("cg/fw/nw部隊長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000210e237">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);

	CreateTextureSP("絵背景100", 100, InRight, -330, "cg/bg/resize/bg003_荒れ野_02.jpg");

	StC(1000,@+150,@0,"cg/st/3d九〇式指揮官_立ち_戦闘a.png");
	FadeStC(0,true);

	FadeDelete("上背景", 300, true);

	Move("@StC*", 300, @+10, @+5, null, false);

	SetNwL("cg/fw/nw落人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0143]
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000220e286">
「……っ……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――



	PrintGO("上背景", 15000);

	CreateTextureSP("背景30", 100, Center, 0, "cg/bg/bg003_荒れ野_02.jpg");

	CreateWindow("windowleft", 1500, 0, 0, 700, 1000, false);
	SetAlias("windowleft","windowleft");
	Rotate("windowleft", 0, @0, @0, @-10, null,true);
	Move("windowleft", 0, @-170, @-200, null, true);
	CreateTextureSP("windowleft/絵BG100", 1500, 0, Middle, "cg/bg/resize/bg003_荒れ野_02.jpg");
	CreateTextureSP("windowleft/絵st100", 1500, -30, InBottom, "cg/st/3d九四式指揮官_立ち_戦闘b.png");
	CreateTextureSP("絵win背景100", 1200, -824, -200, "cg/bg/resize/bg003_荒れ野_02.jpg");
	CreateTextureSP("絵winst100", 1200, 460, InBottom, "cg/st/3d九〇式指揮官_立ち_戦闘a.png");
	Move("絵winst100", 0, @0, @+30, null, true);


	FadeDelete("上背景", 300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　<RUBY text="よわい">齢</RUBY>の格差が現れようとしていた。

　鷺沼が壮年の頃であるのに対して、垣見はそれより
やや年嵩、老境の迫りを肌に感じる年齢である。
　体力差は、大きくはないが、確かに存在する。

　鷺沼が優勢であった。
　膠着は若さを残す者に利する。

　垣見はやがて崩れ、敵刃に首を委ねるであろう。
　その運命を望まぬなら、乾坤一擲、自ら攻め出して
鷺沼を討ち取るよりほかにない。

　無論の事、それとて分の良からぬ賭けである。
　麾下の兵を顧みず単騎で決闘に臨んだ猛者は、微塵
の油断もなく、昔の上官であり今の叛徒である対手を
見据えているのだ。

　破れかぶれの猪突など容易く防ぎ、完璧な返し技で
勝ってのけるだろう。

　落人垣見の進退は窮まった。

　進めば、死。
　進まずとも、死。

　傍目には、湖面のように移ろわぬ情景。
　されど水面の下、勝利と敗北、栄誉と破滅の天秤は
傾きを定めつつある。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateEffect("絵相対", 5000, 0, 0, 1024, 576, "Plain");
	SetAlias("絵相対","絵相対");
	Request("絵相対",Passive);
	Delete("windowleft/*");
	Delete("windowleft");
	Delete("絵win背景100");
	Delete("絵winst100");


	FadeDelete("絵相対", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　時がまた流れ。
　戦いは静粛なまま、閉幕へ向かう。

　相手よりほんの少し老いに近い者が、徐々に呼吸を
乱す。
　次第次第に、膝頭の震えが大きくなる。

　明らかになり始めた状況の変化を見て、一部の軍兵
が笑いの形に唇を歪めた。
　幸福にも、村人達は何も気付かなかった――今は、
まだ。

　それでも、不穏な気配は感じ取ったのか。
　誰かが励ますように、お武家さん、と声を投じた。

　あるいはその一声が背を押したのかもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景1000", 15000, Center, 0, "cg/bg/bg003_荒れ野_02.jpg");
	Delete("背景30");

	CreateWindow("windowleft", 1500, 0, 0, 700, 1000, false);
	SetAlias("windowleft","windowleft");
	Rotate("windowleft", 0, @0, @0, @-10, null,true);
	Move("windowleft", 0, @-170, @-200, null, true);
	CreateTextureSP("windowleft/絵BG100", 1500, 0, Middle, "cg/bg/resize/bg003_荒れ野_02.jpg");
	CreateTextureSP("windowleft/絵st100", 1500, 0, InBottom, "cg/st/3d九四式指揮官_立ち_戦闘b.png");
	CreateTextureSP("絵win背景100", 1200, -824, -200, "cg/bg/resize/bg003_荒れ野_02.jpg");
	CreateTextureSP("絵winst100", 1200, 460, InBottom, "cg/st/3d九〇式指揮官_立ち_戦闘a.png");

	FadeDelete("背景1000",300,true);

	Move("絵win背景100", 1000, @-200, @0, Dxl1, false);
	OnSE("se人体_動作_後ずさり01",1000);
	Move("絵winst100", 1000, @-250, @0, Dxl1, false);
	Move("windowleft", 500, @-1000, @0, null, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
　落人垣見は、勝負に出た。
　強い息吹を吐き出しつつ、己の体を前方へ撃ち出す。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Delete("windowleft/*");
	Delete("windowleft");
	Delete("絵win背景100");
	Delete("絵winst100");

	CreateTextureSP("絵背景100", 100, InLeft, -405, "cg/bg/resize/bg003_荒れ野_02.jpg");

	StC(1000,@-150,@0,"cg/st/3d九四式指揮官_立ち_戦闘b.png");
	FadeStC(0,true);

	Move("絵背景100", 200, @-100, @0, null, false);
	Move("@StC*", 300, @+100, @0, Dxl1, false);

	OnSE("se人体_動作_後ずさり01",1000);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_0.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0162]
　さてこそ、と。
　一瞬の遅れもなく、六波羅の鷺沼は反応して動いた。

　……勝負は、この時点で決着。

　鷺沼が垣見の攻勢を見落とす、万に一つの可能性も
実らなかった以上、もはや順当な結果が顕れるのみだ。
　先手の斬撃は躱され、ただ虚空に弧を描いて終わり、
後手の刺突が標的を抉るだろう。

　そのようになる。
　ここまで状況が定まっては、そうなる以外に無い。

　前提が違っていれば、話はまた別だが。

　例えば――
　斬り掛かったと見えた垣見の挙動が、<RUBY text="フェイク">欺瞞</RUBY>であった
とか。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	CreateTextureSP("絵背景100", 100, InRight, -330, "cg/bg/resize/bg003_荒れ野_02.jpg");


	StC(1000,@+50,@0,"cg/st/3d九〇式指揮官_立ち_戦闘a.png");
	FadeStC(0,true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");

	OnSE("se戦闘_動作_刀構え02",1000);

//◆九〇式、左脇構え
	StC(1000,@+50,@0,"cg/st/3d九〇式指揮官_立ち_戦闘b.png");
	FadeStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　前方へ振り下ろされる筈だった太刀は、軌道を転じ。
　使い手の左脇へ、新たに構えられる。

　斬り上げの剣形。

　斬り下ろしの幻で敵を退かせ、
　その隙を追い、本命の一刀を繰り出す。
　
　――<RUBY text="・・・・">呼吸外し</RUBY>の術。

　斬り上げにて狙うは腋下、あるいは股間――鎧甲の
守りが薄い箇所。
　対手が失敗を悟って跳ね戻るよりも先に、その死命
を制し得るであろう。

　意表を突かれた者と、想定通りの者。
　どちらが早く動けるかは自明の理である。

　……この詐術を最初から仕掛けていれば、手練れの
武人たる鷺沼は難なく見破ったに違いない。
　追い詰められた老兵垣見の、真に追い詰められた末
からであればこその釣り込み技。

　瞬間の閃きであった。
　滅びの結末は避けられなくとも、この一戦にだけは
負けられぬとの念が閃きを生んだ。

　刹那の間に状況は激変を遂げる。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	SetVolume("SE*", 500, 0, null);


	OnSE("se人体_動作_跳躍01",1000);
	Move("@StC*", 100, @-200, @0, Dxl1, false);
	DeleteStC(200, false);
	Wait(100);

	Fade("絵背景200", 100, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　今度こそ本当に、垣見は前方へ攻め出る。
　斬り上げの太刀を繰り出す。

　勝敗が決する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ずぶしゅ。
	CreateColor("黒幕１", 3000, 0, 0, 1024, 576, "Black");
	Fade("黒幕１", 0, 0, null, true);
	Fade("黒幕１", 200, 1000, null, true);
	Delete("絵背景200");

	CreateColor("黒幕２", 10000, 0, 0, 1024, 576, "Black");
	Fade("黒幕２", 0, 0, null, true);

	CreateColor("白幕１", 5000, 0, 0, 1024, 576, "White");
	Request("白幕１", AddRender);
	Fade("白幕１", 0, 0, null, true);

	SL_centerin(@0,@-100,1500);

	OnSE("se戦闘_攻撃_刀振る02",1000);
	SL_centerinfade2(10);

//	Wait(500);


	Fade("白幕１", 100, 1000, null, true);
	OnSE("se戦闘_攻撃_刀刺さる01",1000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg003_荒れ野_02.jpg");

	Fade("白幕１", 500, 0, null, false);

	Fade("黒幕２", 1500, 1000, null, false);
	Wait(1200);

//	SL_Delete();

	DeleteStR(0,true);
	DeleteStL(0,true);
	Delete("黒幕１");
	Delete("白幕１");
	FadeDelete("黒幕２", 1000,true);
	SetNwC("cg/fw/nw落人.png");

	SetVolume("@mbgm09", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000230e286">
「…………」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000240e237">
「…………」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000250e286">
「……鷺沼……」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000260e237">
「ふ、ふふ……ふふふ」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000270e286">
「…………」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000280e237">
「既に先の無い身だ。
　相討ちで良かろうに」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000290e237">
「無用の欲をかきおって」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000300e286">
「ぐぶっ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SL_centerdam(@0,@0,1600);

//◆血
	OnSE("se人体_血_たれる01",1000);
	SL_centerdamfade2(100);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　落人、垣見の口から、赤い濁流が溢れ返る。
　村人の間で、絶叫が上がった。

　垣見の太刀が、斬り上げの技を示すことはなく……
　鷺沼の一刀は、垣見の喉を見事に刺し貫いている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw部隊長.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000310e237">
「俺は相討ちでも良いと、腹を据えていたぞ」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000320e237">
「だから貴様が何をしようと構わなかった。
　貴様が動いた時、喉笛を射抜いてやること
だけ考えていた」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000330e286">
「…………」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000340e237">
「貴様は違ったな……。
　冥途の土産に勝ちを欲しがって、小細工を
弄した」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000350e237">
「ために惨めな最期を迎えることになったわ」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000360e286">
「ぐ、むっ……」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000370e237">
「死ぬがいい」

//◆たいしょうりょう
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000380e237">
「六波羅に盾突く武人も、貴様で最後よ。
　大将領足利護氏公のもと、大和の武の一統
は成る」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000390e237">
「大義は成就するのだ！」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000400e286">
「ほざ、けっ……！」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000410e237">
「……」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000420e286">
「まだ……岡部弾正殿がおられる！
　野にもまだ、数多の志士がおる！」

//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000430e286">
「貴様らに、栄華の時は訪れまいぞ！」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000440e237">
「岡部如き、寿命を待つ老廃に過ぎん。
　市井に隠れ潜んで陰口を叩くだけの輩など、
物の数ですらない」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000450e237">
「垣見！
　貴様は奴らが来る時のため、せいぜい地獄
を清めておくがいい！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景500", 10000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	CreateColorEX("絵色500", 15000, "White");
	SL_rightdam(@0,@0,1600);

	OnSE("se戦闘_攻撃_刀振る02",1000);
	Fade("絵背景500", 100, 1000, null, true);
	Fade("絵色500", 100, 1000, null, true);
	Delete("絵背景500");

	FadeDelete("絵色500", 500, false);
//◆ずしゃー。
	OnSE("se人体_血_血しぶき01",1000);
	SL_rightdamfade(10);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　言い放ち、鷺沼は腰刀を抜くや、打ち負かした敵の
首を刈り取った。<k>
{	OnSE("se人体_衝撃_転倒02",1000);}
　落人垣見の切り離された胴体が、重い音と共に倒れ
ゆく。

　見守る村人達は、もはや声もなかった。
　凍りついて、ほんの数日の事ながらも親しんだ武人
の亡骸に視線を張り付かせている。

　対照的に興奮のざわめきが広がる軍部隊の陣列から、
鎧士が一人進み出て、隊長の掲げる首級を恭しく受け
取った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SL_Delete();
	SetNwC("cg/fw/nw鎧士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000460e030">
「御見事でござった」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000470e237">
「何、他愛もない仕業よ」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000480e030">
「して……鷺沼殿。
　村はいかが致そう」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000490e237">
「先刻言った。
　垣見を差し出せば、村は咎めぬと」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000500e030">
「は」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000510e237">
「あの村は、垣見を<RUBY text="・・・・・">差し出した</RUBY>か？」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000520e030">
「……いや。
　差し出しは、致しませなんだな」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000530e237">
「では仕方あるまい……」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000540e030">
「……」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000550e237">
「反逆の芽は刈らねばならぬ」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000560e030">
「御意！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


	OnSE("se人体_動作_手払う01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　隊長の意を汲み取ったその鎧士が、後方へ手振りで
合図する。
　それを見て、兵の一人が携えていた法螺貝を口元に
当てた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆法螺貝ほらほー。
//◆歓声
	CreateSE("SE01","se背景_ガヤ_おたけび01");
	OnSE("se特殊_楽器_法螺貝",1000);

	Wait(500);
	MusicStart("SE01",1000,1000,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　勇壮な<RUBY text="がく">楽</RUBY>が響き渡る。
　兵卒達は応えるように、雄叫びを上げた。

{	OnSE("se戦闘_銃器_複数構える01",1000);}
　銃の筒先を揃え、前方の獲物に向かって殺到する。
　その時ようやく、呆然としていた村人達は我に返り
――直後、恐慌に陥った。

　何が起きようとしているのか。
　自分達がどうなるのか、悟ったからだ。

　その理解は裏切られなかった。

　これより第二幕。
　小さな村の、悲劇が始まる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	PrintGO("上背景", 25000);
	CreateColorSP("絵色100", 15000, "Black");
	FadeDelete("上背景", 1000, true);


//◆夕空？
	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/bg001_空a_02.jpg");


//◆銃声。悲鳴

	CreateSE("SE01","se背景_ガヤ_合戦01");
	MusicStart("SE01",1500,500,0,1000,null,true);

	CreateSE("SE02","se背景_ガヤ_悲鳴01");
	MusicStart("SE02",1500,500,0,1000,null,true);


	Fade("絵色100", 1000, 0, null, true);

	SoundPlay("@mbgm36",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　武装と訓練を施された職業兵士にとって、その戦い、
<RUBY text="いな">否</RUBY>狩猟は、実に容易なものであった。
　獲物の動きは野生の獣よりも遥かに鈍く、恐慌中の
今は知性さえ劣る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　兵は、闇雲に逃げる村人の背を狙い撃った。
　脊椎を砕かれたその中年男は、もんどり打って倒れ、
吐血に<RUBY text="むせ">噎</RUBY>びながら<RUBY text="すす">啜</RUBY>り泣いた。

　兵は、土下座して命乞いする村人の後頭部に軍刀を
叩き付けた。
　熟した柘榴のようになった頭を抱えて、その老女は
言葉にならない叫びを張り上げた。

　軍兵は殺す。
　村人は殺されてゆく。

　方向性が固定された暴力関係。
　戦いではない、あるいは狩猟でさえないもの。

　だがやがて、脆弱な獲物――
　村人の中の一部は、絶望の底で闘志を固めた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	CreateTextureEX("絵背景200", 1000, Center, Middle, "cg/bg/bg004_鄙びた村a_02.jpg");
	Fade("絵背景200", 0, 1000, null, true);
	FadeDelete("絵背景100", 500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　鉈、鍬、手斧。
　物置から探し出した粗末な凶器を手に物陰へ潜伏し、
注意を怠った兵卒が通り掛かれば背後から襲って傷を
負わせた。

　古びた長銃を持ち出した猟師は、更に危険な存在と
なった。
　巧みに位置を変えながら、好機と見るや兵を狙撃し、
確実に一人ずつ葬り去った。

　驚愕し瞠目して絶命する兵卒を眺め、猟師は狂って
しまった頭の中で愉悦に耽る。
　まだまだ殺してやる。お前らが殺した分だけ、俺も
殺してやると。

　その望みは果たされない。
　恐ろしい猟師をも物ともしない魔神が、既に狙いを
定めていたからだ。

　長年の経験に基づいて潜伏し移動する猟師は、兵の
視線に決して捉えられなかった。
　地上にいる誰の目にも映らなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE*", 500, 0, null);

//◆空の竜騎兵
	#av_九四式竜騎兵=true;

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);


	CreateTexture("絵背景50", 100, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Delete("絵背景200");

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("黒幕１");

	StL(1000,@-950,@+600,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	FadeStL(0,true);
	Zoom("@StL*", 0, 500, 500, null, true);
	OnSE("se戦闘_動作_空突進01",1000);
	Move("@StL*", 100, @+2000, @-700, Dxl1, true);
	DeleteStL(0,false);

	Wait(500);

	StR(1000,@+1000,@-100,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	Zoom("@StR*", 0, 2000, 2000, null, true);
	FadeStR(0,true);
	OnSE("se戦闘_動作_空突進03",1000);
	Move("@StR*", 1000, @-1250, @+500, Dxl1, true);
	Zoom("@StR*", 2000, 1000,1000, null, true);

	CreateSE("SE01","se戦闘_動作_空中待機_L");
	MusicStart("SE01",0,800,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290a]
　<RUBY text="・・・・">空からは</RUBY>、瞭然であった。
　有翼の鎧を駆って飛翔する者にとり、猟師は迷信的
恐怖を刺激するに足るような存在ではなく、小賢しい
鼠であるに過ぎなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 500, 0, null);
	CreateTextureEX("絵背景200", 10000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg004_鄙びた村a_02.jpg");
	OnSE("se戦闘_動作_空突進02",1000);
	Fade("絵背景200", 200, 1000, null, true);
	Delete("絵背景50");
	DeleteStR(0,true);
	Fade("絵背景100", 0, 1000, null, true);
	FadeDelete("絵背景200", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290b]
　兵卒らの動揺を見かねた空中の一騎が、猟師の頭上
から急降下する。
　気配を感じて振り仰いだ彼の視界に鉄の輝きが満ち、
それは彼が見た最後の光景となった。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_攻撃_野太刀振る01",1000);
	CreateTextureEX("絵背景200", 2000, Center, 0, "cg/ef/ef008_汎用上下軌道.jpg");
	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg004_鄙びた村a_02.jpg");
	CreateColorEX("絵色100", 3000, "White");

	Zoom("絵背景200", 0, 2000, 2000, null, true);
	SetBlur("絵背景200", true, 4, 500, 50, false);
	Move("絵背景200", 500, @0, -200, null, false);
	Fade("絵背景200", 300, 1000, null, true);

	Wait(200);

	Fade("絵色100", 300, 1000, null, true);
	Delete("絵背景200");
	Delete("絵色200");

	Fade("絵色100", 300, 0, null, false);
	OnSE("se戦闘_破壊_建物02",1000);
	Shake("絵背景100", 1000, 0, 10, 0, 0, 500, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0291]
　鎧士の抜き打ちが猟師を縦割りに両断する。
　その余勢でか、猟師の身を隠していた小屋までもが
吹き飛んだ。

　地面にも深い亀裂が出来ている。
　常人の業では有り得なかった。

　……至極、<RUBY text="じねん">自然</RUBY>の事である。
　空舞う鎧士は常人ではない。

　その鎧から人域超越の力を与えられた彼らは魔神に
他ならない。

{	OnSE("se戦闘_動作_空突進03",1000);
	Wait(10);
	OnSE("se戦闘_動作_空突進02",500);}
　最初は兵卒の働きを見届ける構えであった鎧士らも、
一騎の行動が契機となったか、次々と降下を始めた。
　彼らの行使する暴力は、兵のそれが早春のそよ風に
思える程であった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_攻撃_野太刀振る01",1000);
	CreateTextureEX("絵背景200", 2000, Center, 0, "cg/ef/ef008_汎用上下軌道.jpg");
	CreateColorEX("絵色100", 3000, "White");

	Zoom("絵背景200", 0, 2000, 2000, null, true);
	SetBlur("絵背景200", true, 4, 500, 50, false);
	Move("絵背景200", 500, @0, -200, null, false);
	Fade("絵背景200", 300, 1000, null, true);

	Wait(200);

	Fade("絵色100", 300, 1000, null, true);
	Delete("絵背景200");
	Delete("絵色200");

	Fade("絵色100", 300, 0, null, false);
	OnSE("se戦闘_破壊_建物02",1000);
	Shake("絵背景100", 1000, 0, 10, 0, 0, 500, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0292]
　鎧士の太刀が唸りを上げる都度、村人の<RUBY text="・・">一団</RUBY>が死骸
の集まりと化す。
　斬られ、断たれ、砕かれ、引き裂かれて。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetNwC("cg/fw/nw部隊長.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000570e237">
「老人、病人、役に立ちそうにない者は殺せ」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000580e237">
「労役に耐えそうな男、若い女、それと子供
は、捕えて足の腱を切っておけ。
　いい売り物になる」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000590e237">
「一人たりとも逃がすな。
　こやつらに許す運命は、隷属か死か、それ
だけだ……」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000600e237">
「それが六波羅に弓引いた者の末路だ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se背景_ガヤ_合戦01");
	MusicStart("SE01",1500,500,0,1000,null,true);

	CreateSE("SE02","se背景_ガヤ_悲鳴01");
	MusicStart("SE02",1500,500,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　荒ぶる風が村の全てを呑み尽くす。

　鎧士は兵卒を従え、何もかも意のままとした。
　村人を選別し、殺すべき者を殺し、捕えるべき者を
捕えた。

　そこに村人自身の意思は介在しなかった。
　どのような形であれ、その意思の発現は無視された。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆村？

	SetNwC("cg/fw/nw村人Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【ｅｔｃ／村人Ａ】
<voice name="ｅｔｃ／村人Ａ" class="その他男声" src="voice/ma00/0000610e149">
「畜生ぉッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_銃器_構える01",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　一人が銃を手にする。
　それは猟師のものか。猟師に撃たれた兵士のものか。

　いずれにせよ、それは素晴らしい武器だ。
　望める限りの確実さで人を殺傷する道具だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	CreateColorEX("フラッシュ白", 15000, "WHITE");

//◆銃声四回
	OnSE("se戦闘_攻撃_ライフル撃つ4回",1000);
	Fade("フラッシュ白",0,1000,null,true);

	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　扱いに慣れているとも思えない男の発砲は、しかし
全弾が標的へと向かった。
　四発の弾丸が四騎の鎧士を目指す。

　一つの奇跡。
　無意味な、奇跡だ。

　瞬速にして必殺の弾丸を――
　
{	OnSE("se戦闘_銃器_弾かする01",1000);}
　一騎は、無造作に首を傾けて躱した。

{	OnSE("se戦闘_銃器_跳弾02",1000);}
　一騎は、太刀で切り払った。
{	OnSE("se戦闘_銃器_跳弾01",1000);}
　一騎は、片手で掴み取った。

　残り一騎は、何もしなかった。
{	OnSE("se戦闘_銃器_跳弾03",1000);}
　銃弾はその腹に命中し、傷さえ刻まず、零れ落ちた。

　彼らに共通していたのは無造作な態度。
　銃弾の襲来を、まるで蠅や何かと同様のものとしか
捉えていないかの。

　そして実際、羽虫のように扱った。
　音速を超えて飛ぶ銃弾を。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村人Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【ｅｔｃ／村人Ａ】
<voice name="ｅｔｃ／村人Ａ" class="その他男声" src="voice/ma00/0000620e149">
「……ッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　その男の行動力は特筆に値した。
　しかし既に、正気ではなかったのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 500, 0, null);
	SetVolume("SE02", 500, 0, null);

	CreateColorSP("黒幕１", 2500, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	OnSE("se乗物_車_乗り込む01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0361]
　近くに停めてあった、村に一台きりの<RUBY text="トラック">貨物運送車</RUBY>に
飛び付き、運転席へ転がり込む。
　アクセルを踏む。突き抜けよとばかりに踏む。

　その一瞬、彼は幻想しただろうか。
　車が走り出し、悪魔の手から自分の命を逃すことを。
更にはもう少し欲張り、仲間が荷台に乗り込むことを
も。

　動くはずのないトラックの中で。
　
　……だとしても、彼は失望を味わわずに済んだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTexture("絵背景50", 100, Center, Middle, "cg/bg/bg002_空a_02.jpg");

	Delete("絵背景200");
	Delete("絵背景100");
	Delete("絵色100");


	StC(1000,@0,-300,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	FadeStC(0,true);
	Move("@StC*", 0, @-100, @+50, null, true);

	Move("@StC*", 300, @+100, @-50, Dxl1, false);
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("黒幕１");

	BGMoveAuto("@StC*",1);

	SetNwL("cg/fw/nw鎧士Ｂ.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【ｅｔｃ／鎧士Ｂ】
<voice name="ｅｔｃ／鎧士Ｂ" class="その他男声" src="voice/ma00/0000630e031">
「フッ……！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景200", 10000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg004_鄙びた村a_02.jpg");
	CreateColorEXadd("絵色100", 1500, "White");

	OnSE("se戦闘_動作_空突進02",1000);
	BGMoveDelete();
	Move("@StC*", 300, @200, @200, Dxl1, false);
	Fade("絵背景200", 200, 1000, null, true);

	Delete("絵背景50");
	DeleteStC(0,true);

	Fade("絵背景100", 0, 1000, null, true);

	SL_Rightdown(@0,@0,1000);
	FadeDelete("絵背景200", 500, true);
	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_Rightdownfade(0);
	Fade("絵色100", 200, 1000, null, true);
	OnSE("se戦闘_攻撃_鉄切断",1000);
	FadeDelete("絵色100", 300, true);
	OnSE("se戦闘_破壊_金属",1000);

	CreateSE("SE01","se背景_ガヤ_合戦01");
	MusicStart("SE01",1500,500,0,1000,null,true);

	CreateSE("SE02","se背景_ガヤ_悲鳴01");
	MusicStart("SE02",1500,500,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　飛翔して瞬時に車両の上空を奪った鎧士が、太刀を
振り下ろす。
　銃に比べれば如何にも原始的な武器の単純な攻撃。

　その一閃は裁断した。
　人間を。トラックの座席――この場合は合金の壁と
言葉を置き換えてもいい――ごと、完璧に。

　彼は苦痛を覚える間も無かったろう。
　だからきっと、幸運だったのだ。苦しんで死ぬこと
に比べれば。あるいは苦しんで生きることに比べても。

　竹のように美しく両断された彼の断面は、何の不満
も訴えていなかった。
　一人また一人とアキレス腱を断たれ、苦悶しながら
地に這ってゆく同胞らとは違って。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村人Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【ｅｔｃ／村人Ｂ】
<voice name="ｅｔｃ／村人Ｂ" class="その他男声" src="voice/ma00/0000640e150">
「嫌だ……嫌だ。
　こんなのは、嫌だァ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE10","se人体_足音_走る01_L");
	MusicStart("SE10",0,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　一人が駆け出した。<k>
{	OnSE("se人体_衝撃_肩にぶつかる01",1000);}
　仲間とぶつかり、突きのけ、倒れている家族は踏み
越えて――<k>そこに悪意はなかったけれども。彼は単に、
恐れに満ちていたに過ぎない。

　人をかき分け、走り抜ける。
　道が開ける。

　隣の村へ通じる道。

　走り続ければ隣村へ行き着ける。
　きっと助かる。

　後ろを見るな。ひた走れ。
　走り続けていればいつか、いつかは、

{	SetVolume("SE10", 1000, 0, null);}
　……永遠に行き着けないということに、彼が気付く
には三十秒もの時間を要した。
　その間も彼は走り続けていた。一歩も進んでいない
事実を理解することなく。

　いつからか。
　彼の頭上には空を海のように泳ぎ渡る鎧兜の武人が
いて、その手は彼の襟首を掴み上げていて、彼は吊る
されながらばたばたと虚空を駆けていたのだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw鎧士Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0000650e032">
「戻れ」

{	NwC("cg/fw/nw村人Ｂ.png");}
//【ｅｔｃ／村人Ｂ】
<voice name="ｅｔｃ／村人Ｂ" class="その他男声" src="voice/ma00/0000660e150">
「あ……あぁ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_衝撃_転倒01",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　同胞の群れの中へ投げ戻される。
　待ち構えていた兵が、正確にその右足の筋を必要な
だけ切り裂いた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆しゅぱーん。
	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_left(@0,@+50,1500);
	SL_leftfade2(10);

	CreateColorEX("絵色100", 2999, "Black");
	CreateTextureEX("絵背景1000", 3000, Center, Middle, "cg/ef/ef004_汎用血雫.jpg");
	Rotate("絵背景1000", 0, @0, @180, @0, null,true);
	Fade("絵色100", 300, 1000, null, true);
	OnSE("se人体_血_たれる01",1000);
	Fade("絵背景1000", 0, 1000, null, false);
	DrawTransition("絵背景1000", 700, 0, 1000, 100, null, "cg/data/circle_11_00_0.png", true);

	CreateSE("SE01","se背景_ガヤ_合戦01");
	MusicStart("SE01",1500,500,0,1000,null,true);



	CreateColorEX("フラッシュ黒", 15000, "Black");
	Fade("フラッシュ黒",300,1000,null,true);

	Delete("絵背景1000");
	Delete("絵色100");

	SetVolume("SE01", 300, 200, null);
	SetVolume("SE02", 300, 200, null);

	MovieSESet(16000,"mv行進","se特殊_mv用_ツルギ行進");
	MovieSEStart2(300,1000);

	SetVolume("SE01", 500, 200, null);
	SetVolume("SE02", 500, 200, null);

	CreateTextureSP("fire_Move01", 1000, Center, Middle, "cg/ev/ev505_六波羅進軍.jpg");


	CreateTextureEXover("fire_Move02", 1000, Center, Middle, "cg/ef/ef046_炎a.jpg");

	Move("fire_Move02", 0, @-200, @0, null, true);
	DrawEffect("fire_Move02", 0, "MiddleWave", 0, 200, null);

	Fade("fire_Move02", 0, 500, null, true);
	ma00_FireMoveAuto();

	Fade("フラッシュ黒",300,0,null,true);
	Delete("フラッシュ黒");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　芋虫の真似事を強いられる人々。
　その合間合間にぽつぽつと、人らしく――か？――
死んでゆく人々。

　彼らの運命は完全に、軍を率いる長が指示した通り
に帰結する。
　彼ら自身の選択は意味を持たない。

　逃げようが戦おうが策を巡らそうがただ怯え竦もう
が、一顧だにされず――
　鎧の絶対者は己の意思のみを貫徹した。

　暴虐であった。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateSE("SE01","se背景_ガヤ_合戦01");
	MusicStart("SE01",1500,500,0,1000,null,true);

	CreateSE("SE02","se背景_ガヤ_悲鳴01");
	MusicStart("SE02",1500,500,0,1000,null,true);

	SetVolume("@mbgm36", 1000, 0, null);
	SetVolume("SE02", 2000, 1000, null);

//◆悲鳴が渦巻く中、
//◆夕空→夜空

	PrintGO("上背景", 15000);

	ma00_FireMoveAutoDelete();
	ma00_fireDelete();

	CreateTextureSP("絵背景200", 10000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	CreateTextureSP("絵背景300", 1900, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	FadeDelete("上背景", 1000, true);

	CreateProcess("プロセス１", 150, 0, 0, "fire01");
	CreateProcess("プロセス２", 150, 0, 0, "fire02");
	CreateProcess("プロセス３", 150, 0, 0, "fire03");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);

	FadeDelete("絵背景200", 1500, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　足首を切られた童女は思う。
　
　――なぜだろう。

　昨日までは村で普通に暮らしていた。

　父は山に入って木を切り出す林業に携わり、
　母は家の一切を取り仕切り、
　自分は友達と遊びつつ、時折母の手伝いをした。

　繰り返しの日々。
　何も変わらない毎日。

　それが唐突に壊される……
　どんな理由で、そんなことが起こるのだろう。

　あの軍隊というものがやって来て、村を滅茶滅茶に
してしまったのは、なんでだろう。

　学校の先生は教えてくれた。
　悪いことをすると自分に返ってくるのです。誰かに
酷いことをすれば自分も酷い目にあってしまいますよ、
と。

　自分は誰かに酷いことをしたのだろうか。
　父や母は。他にも大勢の死んだ人々は。今、自分と
一緒に足を切られて転がっている仲間達は。

　あの垣見という人を村に迎えて、寝床や食物を世話
したのが悪いことだったのだろうか。
　優しい人だったのに。大人もみんな、あんな立派な
お武家さまはいないと言っていたのに。

　それともほかの何かだろうか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	CreateColorEX("絵色100", 3000, "Black");
	Fade("絵色100", 2500, 1000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　何か酷いことをしたから、こんな目にあうのか。
　
　なら、<RUBY text="・・">これ</RUBY>をした連中は？

　この連中も、いずれ同じ目にあうのだろうか。
　そうでなくては、おかしい。筋道が通らない。

　でも、誰が？

　村は軍隊の圧倒的な力で滅茶滅茶にされた。
　けど、軍隊は誰が滅茶滅茶にしてくれるのだろう。

　誰にそんなことができるのだろう。
　誰がこの、鎧の人々を罰せられるのだろう。

　誰もいないのではないか。

　誰もいないのなら。
　罰の連鎖はここで終わり。

　どんな悪いことをしたのかもわからない自分達だけ
が罰を受けて、確かに酷いことをしたこの連中は何の
報いも受けない。
　だって、誰も彼らを罰することができないのだから。

　おかしい。
　おかしいよ。

　破壊と悲鳴の楽奏の中、立てない童女は叫ぶ。
　
　――こんなの、おかしいよ。

　誰か。誰か。
　助けてとは言いません。
　お願い。<RUBY text="・・・・・・・・・・・・・">わたしたちで終わらせないで</RUBY>。

　あいつらにも罰を。
　悪いことをした報いを。
　同じ苦痛と悲しみを。

　誰か、与えてください。
　神様。
　お願いです。

　童女は祈る。
　奪われた者の嘆き、純粋な怒りを胸に。

　お願いします。
　こんなことは間違っているのだから。
　どうか、正しくしてください。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	WaitAction("絵色100",null);
	Delete("プロセス*");
	SetVolume("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　……<k>……<k>……否。<k>
　間違ってはいない。

　間違ってる。
　悪いことをしたのなら、罰を。
　それが、正しいありかたのはず。

　否。
　正しいありかたとは――

　なんなのですか。
　正しいありかたとは。

　嘆きはいらぬ。
　怒りはいらぬ。

　必要です。
　わたしは嘆き怒ります。

　嘆きはいらぬ。
　怒りはいらぬ。
　憎悪も敵愾もいらぬ。

　いります！

　いらぬ。

　どうして！

　――――ふふ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//ボックス一度消し
//◆ＢＧＭ：銀星号の唄、音量低く？

	SoundPlay("@mbgm37",0,300,true);

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　
　　　　　　　　　うたがきこえる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	Fade("絵色100", 1000, 0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　童女は気付いた。
　自分が<RUBY text="・・">誰か</RUBY>と対話していることに。

　その声は笑っている。
　愛しむかのように優しく。
　子守唄をうたいながら。

　――嘆くな、怒るな、憎むな。
　どれもいらぬ。

　生きるためには、いらぬものよ。

　
　　　　　　　　　うたがきこえる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　笑え、歌え、手を叩け。
　歓喜を胸に躍り狂え。

　<RUBY text="・・">ひと</RUBY>を捨てよ。
　ただ、一つの命として生きよ。

　さすれば生は喜びで満ちる。
　悲しみはもはやいらぬ。

　それができないはずがあろうか？
　いいや。誰でもできること。

　できないと思うのは、忘れてしまっているからだ。

　生命は喜びを謳歌するためだけにあるということを！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　
　　　　　　　　　うたがきこえる。

　童女は知る。
　自分の誤解を知る。

　――ああ。
　そうなのですか？　神様。

　うたを聴く。
　命を歌う唄。

　――良いこととか、悪いこととか、
　生きるとは、<RUBY text="・・・・・・">そういうこと</RUBY>ではないのですか。

　うたが聴こえる。
　うたが教える。

　――命が生きるところに罪はなく。
　罰もなく。

　――命は命として純粋にあればいい。
　それが、正しいありかた。

　童女は歌う。
　生命を歌う。
　喜びを歌う。

　――ああ。わたしたちは！
　ひたむきに、生命であればよかったのですね！

　生きるということだけを追えばよかったのですね！

　ただ、生きる。
　<RUBY text="ケモノ">命</RUBY>として素直に、純粋に――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆村？と兵士
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 300, null, "cg/data/slide_02_01_0.png", true);


	Delete("絵背景300");
	Delete("絵色100");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");

	CreateSE("SE02","se背景_ガヤ_悲鳴01");
	MusicStart("SE02",1500,500,0,1000,null,true);

	DrawTransition("黒幕１", 1000, 1000, 0, 300, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");


	SetNwC("cg/fw/nw村人Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【ｅｔｃ／村人Ｃ】
<voice name="ｅｔｃ／村人Ｃ" class="その他男声" src="voice/ma00/0000670e151">
「嫌だ嫌だ、死にたくない！　助けてくれ！」

{	NwC("cg/fw/nw兵士Ａ.png");}
//【ｅｔｃ／兵士Ａ】
<voice name="ｅｔｃ／兵士Ａ" class="その他男声" src="voice/ma00/0000680e241">
「いいや……殺す」

{	NwC("cg/fw/nw村人Ｄ.png");}
//【ｅｔｃ／村人Ｄ】
<voice name="ｅｔｃ／村人Ｄ" class="その他男声" src="voice/ma00/0000690e152">
「死にたくない……」

{	NwC("cg/fw/nw兵士Ｂ.png");}
//【ｅｔｃ／兵士Ｂ】
<voice name="ｅｔｃ／兵士Ｂ" class="その他男声" src="voice/ma00/0000700e242">
「死ね」

{	NwC("cg/fw/nw村人Ｅ.png");}
//【ｅｔｃ／村人Ｅ】
<voice name="ｅｔｃ／村人Ｅ" class="その他男声" src="voice/ma00/0000710e153">
「生きたい……」

{	NwC("cg/fw/nw兵士Ｃ.png");}
//【ｅｔｃ／兵士Ｃ】
<voice name="ｅｔｃ／兵士Ｃ" class="その他男声" src="voice/ma00/0000720e243">
「死ね」

{	NwC("cg/fw/nw村人Ｆ.png");}
//【ｅｔｃ／村人Ｆ】
<voice name="ｅｔｃ／村人Ｆ" class="その他男声" src="voice/ma00/0000730e154">
「生きるんだ……」

{	NwC("cg/fw/nw兵士Ｄ.png");}
//【ｅｔｃ／兵士Ｄ】
<voice name="ｅｔｃ／兵士Ｄ" class="その他男声" src="voice/ma00/0000740e244">
「死ぬんだよ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE*", 1000, 0, null);

//◆ＢＧＭ音量ゆっくり上げ
	SetVolume("@mbgm37", 5000, 1000, null);



	CreateColorEX("絵色100", 1500, "Black");
	Fade("絵色100", 200, 1000, null, true);

//◆生と死の
	CreateTextureEX("Gin_song01", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄01.png");
//◆されば嘲笑
	CreateTextureEX("Gin_song02", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄02.png");

	Move("Gin_song01", 0, @0, @-40, null, true);
	Move("Gin_song02", 0, @0, @+10, null, true);

	SetBacklog("《生と死の選択を己に課す命題として自ら問う》", null, null);
	Move("Gin_song01", 1000, @0, @-10, null, false);
	Fade("Gin_song01", 1000, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《されば嘲笑の歓喜する渦に喜劇の幕よいざ上がれ》", null, null);
	Move("Gin_song02", 1000, @0, @-10, null, false);
	Fade("Gin_song02", 1000, 1000, null, true);

	Fade("silver_son*", 500, 0, null, true);

//嶋：テロップ追加のため退避
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　
　
　
　
　
　
　
《生と死の選択を己に課す命題として自ら問う》
《されば嘲笑の歓喜する渦に喜劇の幕よいざ上がれ》

</PRE>
	SetTextA();
	TypeBeginAI();//―――――――――――――――――――――――――――――

*/

//◆空、竜騎兵

	WaitKey();

	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	CreateTextureSP("絵st100", 1100, Center, Middle, "cg/st/3d九四式竜騎兵_騎航_通常.png");

	Fade("Gin_song01", 500, 0, null, false);
	Fade("Gin_song02", 500, 0, null, true);
	Delete("Gin_song*");

//	FadeStC(0,true);
	BGMoveAuto("@絵st100",1);

	DrawTransition("絵色100", 1000, 1000, 0, 300, null, "cg/data/slide_03_01_1.png", true);
	Delete("絵色100");

	Wait(300);

	SetNwL("cg/fw/nw鎧士Ａ.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000750e030">
「……？」

{	NwL("cg/fw/nw鎧士Ｂ.png");}
//【ｅｔｃ／鎧士Ｂ】
<voice name="ｅｔｃ／鎧士Ｂ" class="その他男声" src="voice/ma00/0000760e031">
「なんだ、この声……<RUBY text="きんちょうじょう">金打声</RUBY>か？」

{	NwL("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0000770e032">
「いや……違うぞ。
　何か、頭をかき回されているような……」

{	NwL("cg/fw/nw鎧士Ｄ.png");}
//【ｅｔｃ／鎧士Ｄ】
<voice name="ｅｔｃ／鎧士Ｄ" class="その他男声" src="voice/ma00/0000780e033">
「どこから聞こえてくるんだ？」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 1500, "Black");
	Fade("絵色100", 200, 1000, null, true);

	BGMoveDelete();

	Delete("絵st100");

//◆嵐の夜に
	CreateTextureEX("Gin_song03", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄03.png");
//◆温かい巣で
	CreateTextureEX("Gin_song04", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄04.png");
//◆木漏れ日の下
	CreateTextureEX("Gin_song05", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄05.png");
//◆せせらぎを聞く
	CreateTextureEX("Gin_song06", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄06.png");
//◆生の意味
	CreateTextureEX("Gin_song07", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄07.png");
//◆死の恐怖
	CreateTextureEX("Gin_song08", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄08.png");
//◆生命の問いに
	CreateTextureEX("Gin_song09", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄09.png");
//◆生命を信じ
	CreateTextureEX("Gin_song10", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄10.png");
//◆獣よ踊れ野を馳せよ
	CreateTextureEX("Gin_song11", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄11.png");
//◆いまや如何なる
	CreateTextureEX("Gin_song12", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄12.png");


	Move("Gin_song07", 0, @0, @-40, null, true);
	Move("Gin_song06", 0, @0, @-80, null, true);
	Move("Gin_song05", 0, @0, @-120, null, true);
	Move("Gin_song04", 0, @0, @-160, null, true);
	Move("Gin_song03", 0, @0, @-200, null, true);
	Move("Gin_song08", 0, @0, @0, null, true);
	Move("Gin_song09", 0, @0, @+40, null, true);
	Move("Gin_song10", 0, @0, @+80, null, true);
	Move("Gin_song11", 0, @0, @+120, null, true);
	Move("Gin_song12", 0, @0, @+160, null, true);

	SetBacklog("《嵐の夜に吼え立てる犬は愚かな盗賊と果敢に戦う》", null, null);
	Move("Gin_song03", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song03", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《温かい巣で親鳥を待つ雛は蛇の腹を寝床に安らぐ》", null, null);
	Move("Gin_song04", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song04", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《木漏れ日の下で生まれた獅子は幾千の鹿を飽食し》", null, null);
	Move("Gin_song05", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song05", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《せせらぎを聞く蛙の卵は子供が拾って踏みつぶす》", null, null);
	Move("Gin_song06", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song06", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《生の意味を信じる者よ道化の真摯な詭弁を聞け》", null, null);
	Move("Gin_song07", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song07", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《死の恐怖に震える者よ悪魔の仮面は黒塗りの鏡》", null, null);
	Move("Gin_song08", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song08", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《生命に問いを向けるなら道化と悪魔は匙を持ち》", null, null);
	Move("Gin_song09", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song09", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《生命を信じ耽溺するなら道化と悪魔は冠を脱ぐ》", null, null);
	Move("Gin_song10", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song10", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《獣よ踊れ野を馳せよ唄い騒いで猛り駆けめぐれ》", null, null);
	Move("Gin_song11", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song11", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《いまや如何なる鎖も檻も汝の前には朽ちた土塊》", null, null);
	Move("Gin_song12", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song12", 600, 1000, null, false);

	WaitKey();

	Fade("Gin_song0*", 500, 0, null, false);
	Fade("Gin_song10", 500, 0, null, false);
	Fade("Gin_song11", 500, 0, null, false);
	Fade("Gin_song12", 500, 0, null, true);
	Delete("Gin_song*");

//嶋：テロップ追加のため退避
/*
//嶋：下記位置調整のため、スペース追加
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　
　
　
《嵐の夜に吼え立てる犬は愚かな盗賊と果敢に戦う》
《温かい巣で親鳥を待つ雛は蛇の腹を寝床に安らぐ》
《木漏れ日の下で生まれた獅子は幾千の鹿を飽食し》
《せせらぎを聞く蛙の卵は子供が拾って踏みつぶす》
《生の意味を信じる者よ道化の真摯な詭弁を聞け》
《死の恐怖に震える者よ悪魔の仮面は黒塗りの鏡》
《生命に問いを向けるなら道化と悪魔は匙を持ち》
《生命を信じ耽溺するなら道化と悪魔は冠を脱ぐ》
《獣よ踊れ野を馳せよ唄い騒いで猛り駆けめぐれ》
《いまや如何なる鎖も檻も汝の前には朽ちた<RUBY text="つちくれ">土塊</RUBY>》

</PRE>
	SetTextA();
	TypeBeginAI();//―――――――――――――――――――――――――――――
*/

//◆村と兵士
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");

	DrawTransition("絵色100", 1000, 1000, 0, 300, null, "cg/data/slide_02_01_1.png", true);
	Delete("絵色100");


	SetNwC("cg/fw/nw村人Ｃ.png");

//嶋：voice_classチェック

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【ｅｔｃ／村人Ｃ】
<voice name="ｅｔｃ／村人Ｃ" class="その他男声" src="voice/ma00/0000790e151">
「あ……ア、ぁ、あア」

{	NwC("cg/fw/nw兵士Ａ.png");}
//【ｅｔｃ／兵士Ａ】
<voice name="ｅｔｃ／兵士Ａ" class="その他男声" src="voice/ma00/0000800e241">
「う……ぐゥ、アぁッ……」

{	NwC("cg/fw/nw村人Ｄ.png");}
//【ｅｔｃ／村人Ｄ】
<voice name="ｅｔｃ／村人Ｄ" class="その他男声" src="voice/ma00/0000810e152">
「グゲ……ガハ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空、竜騎兵
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);


	CreateTexture("絵背景50", 100, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	Delete("絵背景200");

	StC(1000,@0,-300,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	FadeStC(0,true);

	CreateSE("SE01","se戦闘_動作_空中待機_L");
	MusicStart("SE01",0,800,0,1000,null,true);
	BGMoveAuto("@StC*",1);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("黒幕１");

	SetNwL("cg/fw/nw鎧士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000820e030">
「何だ、こいつら……？
　様子が妙だぞ」

//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000830e030">
「恐怖の余り気が触れたか？」

{	NwL("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0000840e032">
「いや、兵どもの様子もおかしい。
　どうしたのだ、急に……」

{	NwL("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000850e237">
「ぬぅ……？」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 300, 0, null);

	CreateColorEX("絵色100", 1500, "Black");
	Fade("絵色100", 200, 1000, null, true);
	BGMoveDelete();
	DeleteStC(0,false);

	CreateTextureEX("Gin_song15", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄15.png");
	CreateTextureEX("Gin_song16", 1600, Center, Middle, "cg2/sys/telop/tp_銀星号の唄16.png");
	CreateTextureEX("Gin_song17", 1600, Center, Middle, "cg2/sys/telop/tp_銀星号の唄17.png");
	CreateTextureEX("Gin_song18", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄18.png");
	CreateTextureEX("Gin_song19", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄19.png");
	CreateTextureEX("Gin_song20", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄20.png");
	CreateTextureEX("Gin_song21", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄21.png");
	CreateTextureEX("Gin_song22", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄22.png");
	CreateTextureEX("Gin_song23", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄23.png");
	CreateTextureEX("Gin_song24", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄24.png");

	Move("Gin_song19", 0, @0, @-40, null, true);
	Move("Gin_song18", 0, @0, @-80, null, true);
	Move("Gin_song17", 0, @0, @-120, null, true);
	Move("Gin_song16", 0, @0, @-160, null, true);
	Move("Gin_song15", 0, @0, @-200, null, true);
	Move("Gin_song20", 0, @0, @0, null, true);
	Move("Gin_song21", 0, @0, @+40, null, true);
	Move("Gin_song22", 0, @0, @+80, null, true);
	Move("Gin_song23", 0, @0, @+120, null, true);
	Move("Gin_song24", 0, @0, @+160, null, true);

	SetBacklog("《奇跡を行う聖人は衆生を救い神を呪って嘔吐する》", null, null);
	Move("Gin_song15", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song15", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《黄金の兜の覇王は万里を征し愛馬と共に川底へ沈む》", null, null);
	Move("Gin_song16", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song16", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《湖の美姫は国を捨て愛を選び糞尿に溺れて刑死する》", null, null);
	Move("Gin_song17", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song17", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《孤赤児は蚯蚓の血を母の乳とし三夜して腹より腐る》", null, null);
	Move("Gin_song18", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song18", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《生命よこの賛歌を聞け笑い疲れた怨嗟を重ねて》", null, null);
	Move("Gin_song19", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song19", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《生命よこの祈りを聞け怒りおののく喜びを枕に》", null, null);
	Move("Gin_song20", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song20", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《百年の生は炎と剣の連環が幾重にも飾り立てよう》", null, null);
	Move("Gin_song21", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song21", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《七日の生は闇と静寂に守られ無垢に光り輝くだろう》", null, null);
	Move("Gin_song22", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song22", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《獣よ踊れ野を馳せよ唄い騒いで猛り駆けめぐれ》", null, null);
	Move("Gin_song23", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song23", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《いまや如何なる鎖も檻も汝の前には朽ちた土塊》", null, null);
	Move("Gin_song24", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song24", 600, 1000, null, false);

	WaitKey();
/*
//嶋：下記位置調整のためスペース追加
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　
　
《奇跡を行う聖人は衆生を救い神を呪って嘔吐する》
《黄金の兜の覇王は万里を征し愛馬と共に川底へ沈む》
《湖の美姫は国を捨て愛を選び糞尿に溺れて刑死する》
《孤赤児は蚯蚓の血を母の乳とし三夜して腹より腐る》
《生命よこの賛歌を聞け笑い疲れた怨嗟を重ねて》
《生命よこの祈りを聞け怒りおののく喜びを枕に》
《百年の生は炎と剣の連環が幾重にも飾り立てよう》
《七日の生は闇と静寂に守られ無垢に光り輝くだろう》
《獣よ踊れ野を馳せよ唄い騒いで猛り駆けめぐれ》
《いまや如何なる鎖も檻も汝の前には朽ちた土塊》

</PRE>
	SetTextA();
	TypeBeginAI();//―――――――――――――――――――――――――――――
*/



	SetVolume("@mbgm37", 2000, 0, null);

	Fade("Gin_song*", 500, 0, null, true);
	Delete("Gin_song*");

//◆空？
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	DrawTransition("絵色100", 1000, 1000, 0, 300, null, "cg/data/slide_03_01_1.png", true);
	Delete("絵色100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　悲劇は終わり。
　続いて第三幕。

　それはある種の喜劇であり、
　同時に単純なる惨劇である。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SoundPlay("@mbgm34",0,1000,true);
//◆村、兵士
	CreateTextureEX("絵背景100", 1200, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");
	CreateTextureSP("絵背景200", 100, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");
	Fade("絵背景100", 500, 1000, null, true);
	Delete("絵背景50");

	SetNwC("cg/fw/nw兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【ｅｔｃ／兵士Ａ】
<voice name="ｅｔｃ／兵士Ａ" class="その他男声" src="voice/ma00/0000860e241">
「ゲハァァァァァァァ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorEXadd("絵色100", 1500, "White");

	Fade("絵色100", 100, 1000, null, true);

	StC(1300,@0,@0,"cg/st/3d九四式竜騎兵_立ち_抜刀.png");
	FadeStC(0,true);
	Move("@StC*", 0, @-70, @+25, null, true);
//◆発砲
	OnSE("se戦闘_攻撃_ライフル撃つ01",1000);

	Move("@StC*", 300, @+70, @-25, Dxl1, false);
	Fade("絵色100", 100, 0, null, false);
	SetNwL("cg/fw/nw鎧士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0591]
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000870e030">
「なっ……
　貴様、誰に向かって撃っている!?」

//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000880e030">
「反逆するつもりか！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ev1000", 2500, -512, -100, "cg/ev/resize/ev002_銀星号事件イメージ２_l.jpg");
	CreateTextureEX("絵ev100", 2000, Center, Middle, "cg/ev/ev002_銀星号事件イメージ２.jpg");

	Move("絵ev1000", 1600, @-512, @0, DxlAuto, false);
	Fade("絵ev1000", 300, 1000, null, true);

	Wait(300);

	Fade("絵ev100", 0, 1000,null,true);
	Fade("絵ev1000", 1000, 0, null, true);
	Delete("絵ev1000");

	SetNwC("cg/fw/nw兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0592]
//【ｅｔｃ／兵士Ａ】
<voice name="ｅｔｃ／兵士Ａ" class="その他男声" src="voice/ma00/0000890e241">
「グッ、グヘッ、グルァァァ」

{	NwC("cg/fw/nw兵士Ｂ.png");}
//【ｅｔｃ／兵士Ｂ】
<voice name="ｅｔｃ／兵士Ｂ" class="その他男声" src="voice/ma00/0000900e242">
「ウゥゥゥ……ァァァアア……」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000910e030">
「き……聞いているのか、貴様らァ!!」

{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0000920e032">
「待て、どう見ても錯乱状態だぞ……」

{	NwC("cg/fw/nw鎧士Ｂ.png");}
//【ｅｔｃ／鎧士Ｂ】
<voice name="ｅｔｃ／鎧士Ｂ" class="その他男声" src="voice/ma00/0000930e031">
「いったい何だってんだ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1300,@-200,@0,"cg/st/3d九四式竜騎兵_立ち_抜刀.png");
	FadeStC(0,true);

	Fade("絵ev100", 1000, 0, null, true);

	CreateWindow("ウィンドウ１", 10000, 600, 0, 350, 576, false);
	SetAlias("ウィンドウ１","ウィンドウ１");
	CreateTextureEX("ウィンドウ１/絵ev100", 2000, 500, 0, "cg/ev/ev002_銀星号事件イメージ２.jpg");

	Move("ウィンドウ１/絵ev100", 5000, @-512, @0, AxlDxl, false);
	Fade("ウィンドウ１/絵ev100", 0, 1000,null,false);
	DrawTransition("ウィンドウ１/絵ev100", 1000, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	SetNwC("cg/fw/nw鎧士Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0593]
//【ｅｔｃ／鎧士Ｄ】
<voice name="ｅｔｃ／鎧士Ｄ" class="その他男声" src="voice/ma00/0000940e033">
「とにかく、止めろ――ぬぁ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆殴打音
	SL_leftdown(@-200,@-100,1000);
	CreateColorEXadd("絵色100", 15000, "White");
	OnSE("se戦闘_攻撃_殴る03",1000);
	SL_leftdownfade2(10);
	Wait(100);
	Fade("絵色100", 100, 1000, null, true);
	Delete("ウィンドウ１/*");
	Delete("ウィンドウ１");
	DeleteStC(0,true);
	Shake("絵背景100", 500, 10, 0, 0, 0, 500, null, false);
	Fade("絵色100", 100, 0, null, true);

	SetNwC("cg/fw/nw村人Ｅ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【ｅｔｃ／村人Ｅ】
<voice name="ｅｔｃ／村人Ｅ" class="その他男声" src="voice/ma00/0000950e153">
「ギィ……ググ」

{	NwC("cg/fw/nw村人Ｆ.png");}
//【ｅｔｃ／村人Ｆ】
<voice name="ｅｔｃ／村人Ｆ" class="その他男声" src="voice/ma00/0000960e154">
「クヒッ、ヘハァ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景100");
	Delete("絵背景200");
	CreateTextureSP("絵背景10", 50, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	StL(1300,-700,-450,"cg/st/3d九四式竜騎兵_騎航_戦闘b.png");
	StR(1200,-730,-300,"cg/st/3d九四式指揮官_騎航_通常.png");

	Move("@StL*", 400, -300, @0, Dxl3, false);
	Move("@StR*", 400, 130, @0, Dxl1, false);

	FadeStR(300,false);
	FadeStL(300,false);

	OnSE("se戦闘_動作_空突進02",1000);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");

	SetNwC("cg/fw/nw鎧士Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0611]
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0000970e032">
「こいつらもか……？」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000980e030">
「さ、鷺沼殿……これは……!?」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000990e237">
「っ……。
　とにかく、我々に抵抗する者を殺せ！」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001000e237">
「状況の解明は後で良い！」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001010e030">
「は……はッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStR(0,true);
	DeleteStL(0,true);

	StC(1200,@-300,@+200,"cg/st/3d九四式竜騎兵_騎航_戦闘a.png");

	Move("@StC*", 400, @+300, @+200, Dxl1, false);
	FadeStC(300,false);
	OnSE("se戦闘_動作_空突進02",1000);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");

	SetNwC("cg/fw/nw鎧士Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0612]
//【ｅｔｃ／鎧士Ｂ】
<voice name="ｅｔｃ／鎧士Ｂ" class="その他男声" src="voice/ma00/0001020e031">
「了解！
　何をトチ狂ったのか知らんが関係ねえ」

//【ｅｔｃ／鎧士Ｂ】
<voice name="ｅｔｃ／鎧士Ｂ" class="その他男声" src="voice/ma00/0001030e031">
「どのみち俺達が負けるわけ、」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆光速一閃
//◆撃墜
	CreateColorSP("絵黒地", 1, "#000000");

	CreateTextureEX("絵EF100", 5000, Center, Middle, "cg/ef/ef019_銀星号突貫.jpg");
	CreateColorEXadd("絵色100", 6000, "White");

	SetBlur("絵EF100", true, 5, 500, 50, false);
	Zoom("絵EF100", 0, 2000, 2000, null, true);

	OnSE("se戦闘_動作_突進01",1000);

	Zoom("絵EF100", 500, 1000, 1000, Dxl1, false);
	Fade("絵EF100", 200, 1000, null, true);

	Wait(400);

	Fade("絵色100", 200, 1000, null, true);

	DeleteStC(0,true);
	Delete("絵EF100");

	CreateTextureSP("絵EF200", 4900, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSPadd("絵EF100", 5000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("絵EF100", 0, 2000, 2000, null, true);

	OnSE("se戦闘_破壊_鎧02",1000);
	Zoom("絵EF100", 500, 1000, 1000, null, false);
	Fade("絵色100", 200, 0, null, true);
	Shake("絵EF100", 500, 10, 10, 0, 0, 500, null, true);

	Delete("絵EF200");

	FadeDelete("絵EF100", 300,true);

	PrintGO("上背景", 15000);


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("上背景");

	CreateTextureSP("絵背景10", 50, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	StR(60,@0,@+300,"cg/st/3d九四式竜騎兵_騎航_戦闘b.png");
	StL(70,@0,@+400,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	FadeStR(0,true);
	FadeStL(0,true);
	Zoom("@StR*", 0, 500, 500, null, true);
	Request("@StR*", Smoothing);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	SetNwC("cg/fw/nw鎧士Ａ.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001040e030">
「……山崎っ!?」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001050e237">
「なに……!?」

{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001060e032">
「だ、誰がやった!?」

{	NwC("cg/fw/nw鎧士Ｅ.png");}
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001070e034">
「どこから……！」

{	NwC("cg/fw/nw鎧士Ｆ.png");}
//【ｅｔｃ／鎧士Ｆ】
<voice name="ｅｔｃ／鎧士Ｆ" class="その他男声" src="voice/ma00/0001080e035">
「こいつら……か？」

{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001090e032">
「そんな馬鹿な！　どうやって――」

{	NwC("cg/fw/nw鎧士Ｄ.png");}
//【ｅｔｃ／鎧士Ｄ】
<voice name="ｅｔｃ／鎧士Ｄ" class="その他男声" src="voice/ma00/0001100e033">
「……ぎ……銀色……」

{	NwC("cg/fw/nw鎧士Ｅ.png");}
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001110e034">
「津田？」

{	NwC("cg/fw/nw鎧士Ｄ.png");}
//【ｅｔｃ／鎧士Ｄ】
<voice name="ｅｔｃ／鎧士Ｄ" class="その他男声" src="voice/ma00/0001120e033">
「銀だ！　今のは、銀色の――！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆光速一閃
//◆撃墜
	CreateTextureEX("絵EF100", 5000, Center, Middle, "cg/ef/ef019_銀星号突貫.jpg");
	CreateColorEXadd("絵色100", 6000, "White");
	SetBlur("絵EF100", true, 5, 500, 50, false);
	Zoom("絵EF100", 0, 2000, 2000, null, true);

	OnSE("se戦闘_動作_突進01",1000);

	Zoom("絵EF100", 500, 1000, 1000, Dxl1, false);
	Fade("絵EF100", 200, 1000, null, true);

	Wait(400);

	Fade("絵色100", 200, 1000, null, true);

	Delete("絵EF100");

	CreateTextureSP("絵EF200", 4900, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");

	CreateTextureSPadd("絵EF100", 5000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("絵EF100", 0, 2000, 2000, null, true);

	OnSE("se戦闘_破壊_鎧02",1000);

	Zoom("絵EF100", 300, 1000, 1000, null, false);
	Fade("絵色100", 200, 0, null, true);

	Shake("絵EF100", 300, 10, 10, 0, 0, 500, null, true);
	Delete("絵EF200");

	DeleteStR(0,true);
	FadeDelete("絵EF100", 300,true);

	SetNwC("cg/fw/nw鎧士Ｅ.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001130e034">
「……ッ！」

{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001140e032">
「あっ……ああ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵背景200", 10000);

	Delete("絵背景100");
	Delete("絵背景10");
	Delete("絵色100");
	DeleteStL(0,true);

	CreateColorSP("絵色100", 1000, "Black");
	CreateColorEXadd("絵色200", 10000, "White");

	CreateTextureSP("銀星", 5000, Center, -372, "cg/ev/resize/ev952_銀星号登場_l.jpg");
	Request("銀星", Smoothing);
	Fade("絵背景200", 300, 0, null, true);

	Wait(500);

	Fade("絵色200", 100, 1000, null, true);
	Delete("銀星");
	Delete("絵色100");
	CreateTextureSP("銀星", 200, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	FadeDelete("絵色200", 500, true);

//◆銀星号。演出入り

	SetNwC("cg/fw/nw鎧士Ｅ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001150e034">
「白銀の……<RUBY text="つるぎ">劔冑</RUBY>……」

{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001160e032">
「銀星号……!?」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001170e030">
「こ、こいつが……銀星号かッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆なんか演出
	#av_銀星号=true;

	PrintGO("上背景", 15000);

	CreateColorEXadd("絵色200", 10000, "White");

	CreateTextureSP("銀星", 5000, Center, InBottom, "cg/ev/ev952_銀星号登場.jpg");
	Request("銀星", Smoothing);

	CreateColorEX("絵色100", 5500, "Black");

//◆生命の問いに
	CreateTextureEX("Gin_song01", 6000, Center, Middle, "cg/sys/telop/tp_銀星号の唄09.png");

//◆生命を信じ
	CreateTextureEX("Gin_song02", 6000, Center, Middle, "cg/sys/telop/tp_銀星号の唄10.png");

//◆獣よ踊れ野を馳せよ
	CreateTextureEX("Gin_song03", 6000, Center, Middle, "cg/sys/telop/tp_銀星号の唄11.png");

//◆いまや如何なる
	CreateTextureEX("Gin_song04", 6000, Center, Middle, "cg/sys/telop/tp_銀星号の唄12.png");


	Move("Gin_song01", 0, @0, @-65, null, true);
	Move("Gin_song02", 0, @0, @-25, null, true);
	Move("Gin_song03", 0, @0, @+15, null, true);
	Move("Gin_song04", 0, @0, @+55, null, true);

	Fade("上背景", 500, 0, null, false);

	Move("銀星", 2000, @0, 0, Dxl1, true);

	Fade("絵色100", 300, 500, null, true);

	SetBacklog("《生命に問いを向けるなら道化と悪魔は匙を持ち》", null, null);
	Move("Gin_song01", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song01", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《生命を信じ耽溺するなら道化と悪魔は冠を脱ぐ》", null, null);
	Move("Gin_song02", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song02", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《獣よ踊れ野を馳せよ唄い騒いで猛り駆けめぐれ》", null, null);
	Move("Gin_song03", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song03", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《いまや如何なる鎖も檻も汝の前には朽ちた土塊》", null, null);
	Move("Gin_song04", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song04", 600, 1000, null, false);

	WaitKey();

/*
//◆演出用のため、スペースで退避。
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　
　
　
　
　
《生命に問いを向けるなら道化と悪魔は匙を持ち》
《生命を信じ耽溺するなら道化と悪魔は冠を脱ぐ》
《獣よ踊れ野を馳せよ唄い騒いで猛り駆けめぐれ》
《いまや如何なる鎖も檻も汝の前には朽ちた土塊》

</PRE>
	SetTextA();
	TypeBeginAI();//―――――――――――――――――――――――――――――
*/

//	Fade("絵色200", 100, 1000, null, true);
	Fade("Gin_song*", 500, 0, null, true);
	Delete("Gin_song*");
//	Delete("銀星");
//	Delete("絵色100");

	Fade("絵色100", 300, 0, null, true);

//	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/bg/bg002_空b_03.jpg");
//	FadeDelete("絵色200", 500, true);

	SetNwR("cg/fw/nw鎧士Ａ.png");

//	StC(1000, @30,@0,"cg/st/3d銀星号_立ち_通常.png");
//	FadeStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001180e030">
「殺戮者銀星号……」

{	NwR("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001190e032">
「破壊魔銀星号……」

{	NwR("cg/fw/nw鎧士Ｅ.png");}
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001200e034">
「死の雨銀星号……」

{	NwR("cg/fw/nw鎧士Ｆ.png");}
//【ｅｔｃ／鎧士Ｆ】
<voice name="ｅｔｃ／鎧士Ｆ" class="その他男声" src="voice/ma00/0001210e035">
「白銀の悪魔……！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



	CreateColorEX("絵色100", 5500, "Black");
//◆生と死の
	CreateTextureEX("Gin_song01", 6000, Center, Middle, "cg/sys/telop/tp_銀星号の唄13.png");

//◆されば嘲笑
	CreateTextureEX("Gin_song02", 6000, Center, Middle, "cg/sys/telop/tp_銀星号の唄14.png");

	Move("Gin_song01", 0, @0, @-40, null, true);
	Move("Gin_song02", 0, @0, @+10, null, true);

	Fade("絵色100", 300, 500, null, true);

	SetBacklog("《生と死の狭間に己を笑い恍惚として自ら忘るる》", null, null);
	Move("Gin_song01", 600, @0, @-10, null, false);
	Fade("Gin_song01", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《されば夜明けの嘆きを鐘に神曲の幕よいざ上がれ》", null, null);
	Move("Gin_song02", 600, @0, @-10, null, false);
	Fade("Gin_song02", 600, 1000, null, true);

	WaitKey();

	Fade("Gin_song01", 500, 0, null, false);
	Fade("Gin_song02", 500, 0, null, true);
	Delete("Gin_song*");

	Fade("絵色100", 300, 0, null, true);

//嶋：テロップ挿入につき退避
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　
　
　
　
　
　
《生と死の狭間に己を笑い恍惚として自ら忘るる》
《されば夜明けの嘆きを鐘に神曲の幕よいざ上がれ》

</PRE>
	SetTextA();
	TypeBeginAI();//―――――――――――――――――――――――――――――
*/

	SetNwR("cg/fw/nw鎧士Ｅ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0671]
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001220e034">
「空中に……<RUBY text="・・">静止</RUBY>している……!?」

{	NwR("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001230e030">
「馬鹿な……。
　飛行船じゃねえんだぞ、そんなことできる
わけが……ッ！」

{	NwR("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001240e237">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);

	Delete("銀星");

	CreateColorSP("黒幕１", 10000, "BLACK");
	DrawDelete("上背景", 300, 1000, "slide_01_01_1", true);

	DeleteStC(0,true);

	CreateTextureSP("絵背景10", 50, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	StR(1000,100,-400,"cg/st/3d九四式指揮官_騎航_通常.png");
	StL(1200,-750,-490,"cg/st/3d九四式竜騎兵_騎航_通常.png");

	StCL(1000,@-1500,@+350,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	StCR(1250,@-1500,@+450,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	FadeStCR(0,true);
	FadeStCL(0,true);

	Move("@StL*", 400, -340,-390, Dxl1, false);
	FadeStR(300,false);
	FadeStL(300,false);
	OnSE("se戦闘_動作_空突進02",1000);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	SetNwC("cg/fw/nw鎧士Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001250e032">
「隊長ッ！　隊長殿！　采配を！」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001260e237">
「……か、掛かれ！
　怯むなたわけ！　奴がいかに剛強をもって
鳴ろうと所詮は一騎、押し包んで討ち取れぬ
はずがあろうか！」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001270e237">
「掛かれ!!
　奴の首を上げれば大功ぞ!!」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001280e030">
「お……応！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆武者編隊展開
//◆攻撃
//◆全然当たらん様子
	OnSE("se戦闘_動作_空突進01",1000);
	Move("@StR*", 400, @-1500, @-50, Dxl1, false);

	Move("@StL*", 400, 160, -490, Dxl1, false);

	Move("@StMR*", 400, -10, -190, Dxl1, false);

	Move("@StML*", 400, -470, -530, Dxl1, true);


	StL(1200,160, -490,"cg/st/3d九四式竜騎兵_騎航_戦闘a.png");
	StCR(1250,-10, -190,"cg/st/3d九四式竜騎兵_騎航_戦闘a.png");
	StCL(1000,-470, -530,"cg/st/3d九四式竜騎兵_騎航_戦闘a.png");
	Wait(100);

	OnSE("se戦闘_動作_刀構え01",1000);
	FadeStL(300,false);
	Wait(100);
	OnSE("se戦闘_動作_刀構え02",1000);
	FadeStCL(300,false);
	Wait(100);
	OnSE("se戦闘_動作_刀構え01",1000);
	FadeStCR(300,true);

	Wait(100);

	OnSE("se戦闘_動作_空突進02",1000);
	Move("@StL*", 400, @+1200, @+300, Dxl1, false);

	Wait(200);

	OnSE("se戦闘_動作_空突進01",1000);
	Zoom("@StMR*", 100, 2000, 2000, null, false);
	Move("@StMR*", 400, @+1500, @+100, Dxl1, false);

	Wait(100);

	OnSE("se戦闘_動作_空突進02",1000);
	Zoom("@StML*", 100, 500, 500, null, false);
	Move("@StML*", 400, @+1600, @-100, Dxl1, true);


	CreateTextureEX("絵背景200", 10000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	Zoom("絵背景200", 0, 2000, 2000, null, true);
	SL_down(@0,@-100,1500);
	SL_left(@0,@-100,1500);
	SL_leftup(@0,@-100,1500);

	CreateColorEXadd("絵色200", 15000, "White");
	Zoom("絵背景200", 400, 1000, 1000, null, false);
	Fade("絵背景200", 300, 1000, null, true);

	DeleteStA(0,true);

	CreateColorSP("絵色100", 1500, "Black");

	FadeDelete("絵背景200", 300, true);
	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_leftupfade2(15);
	OnSE("se戦闘_攻撃_刀振る02",1000);
	SL_leftfade2(10);
	Wait(100);
	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_downfade2(10);
	Fade("絵色200", 200, 1000, null, true);
	Delete("絵背景200");
	Delete("絵色100");


	StC(1000,@-100,@+450,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	Fade("絵色200", 200, 0, null, true);

	Move("@StC*", 300, @100, @-50, DxlAuto, false);
	FadeStC(300,true);

	SetNwL("cg/fw/nw鎧士Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001290e032">
「な……消え……!?」

{	NwL("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001300e030">
「ど、何処だ!?　何処!?」

{	NwL("cg/fw/nw鎧士Ｅ.png");}
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001310e034">
「馬鹿、上だ！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――



	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStC(0,true);
	Delete("絵色200");
	Delete("絵背景100");
	Delete("絵背景200");

//◆奈：突っ込み
	CreateTextureSP("絵背景10", 50, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	StR(1200,@+500,@+800,"cg/st/3d銀星号_騎航_通常.png");
	FadeStR(0,true);
	Rotate("@StR*", 0, @0, @180, @30, null,true);
	SetBlur("@StR*", true, 3, 500, 50, false);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);

	OnSE("se戦闘_動作_空突進07",1000);
	Move("@StR*", 200, @-1800, @-1152, Dxl1, true);

	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
	DeleteStR(0,true);
	Delete("絵背景10");
//◆奈：ここまで

	CreateTextureSP("絵背景10", 50, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	StL(1200,-360,-300,"cg/st/3d九四式指揮官_騎航_通常.png");
	StR(1000,140,-440,"cg/st/3d九四式竜騎兵_騎航_通常.png");

	FadeStR(0,true);
	FadeStL(0,true);

	Rotate("@StL*", 0, @0, @0, @-10, null,true);
	Request("@StL*", Smoothing);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");




	SetNwC("cg/fw/nw鎧士Ｆ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0691]
//【ｅｔｃ／鎧士Ｆ】
<voice name="ｅｔｃ／鎧士Ｆ" class="その他男声" src="voice/ma00/0001320e035">
「速過ぎる……！」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001330e237">
「く……銃だ！
　銃を使え！　足を止めて捕まえろ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆機銃連射
//◆やっぱり当たんねー。

	PrintGO("上背景", 10000);

	CreateColorSP("黒幕１", 5000, "BLACK");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	DrawDelete("上背景", 200, 100, "slide_01_01_0", true);

	StL(1250,@-1424, @300,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	StR(1200,@-1424, @500,"cg/st/3d九四式竜騎兵_騎航_通常.png");

	Zoom("@StR*", 0, 750, 750, null, true);
	Zoom("@StL*", 0, 750, 750, null, true);

	FadeStA(0,true);


	OnSE("se戦闘_動作_空突進08",800);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_0", true);
	Zoom("@StR*", 600, 500, 500, null, false);
	Zoom("@StL*", 600, 500, 500, null, false);
	BezierMove("@StR*", 600, (@0,@0){@0,@0}{@0,@0}(@+812,@+100){@+1024,@+50}{@+1024,@+50}(@+2748,@-200), Dxl1, false);
	BezierMove("@StL*", 600, (@0,@0){@0,@0}{@0,@0}(@+812,@+100){@+1024,@+50}{@+1024,@+50}(@+3548,@-500), Dxl1, true);

	DeleteStR(0,true);
	DeleteStL(0,true);

	StL(1250, @+2048, @-500,"cg/st/3d九四式竜騎兵_騎航_戦闘c.png");
	StR(1200, @+2048, @-500,"cg/st/3d九四式竜騎兵_騎航_戦闘c.png");

	FadeStR(200,false);
	FadeStL(200,false);

	Request("@StL*", Smoothing);
	Request("@StR*", Smoothing);
	Rotate("@StL*", 0, @0, @0, @+20, null,true);
	Rotate("@StR*", 0, @0, @0, @+10, null,true);

	Wait(300);

	OnSE("se戦闘_動作_空突進02",1000);
	BezierMove("@StL*", 700, (@0,@0){@0,@0}{@0,@0}(@-512,@+100){@-1024,@+50}{@-1024,@+50}(@-1598,@+900), Dxl1, false);
	BezierMove("@StR*", 700, (@0,@0){@0,@0}{@0,@0}(@-512,@+100){@-1024,@+50}{@-1024,@+50}(@-2350,@+700), Dxl1, true);

	CreateTextureEX("絵背景1000", 2100, -1024, Middle, "cg/ev/resize/ev302_94式射撃_l.jpg");

	CreateTextureEX("絵背景500", 2000, Center, Middle, "cg/ev/ev302_94式射撃.jpg");
	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/ev/ev302_94式射撃.jpg");

	Move("絵背景1000", 1500, @+300, @0, Dxl1, false);
	Fade("絵背景1000", 700, 1000, null, true);


	Fade("絵背景500", 0, 1000, null, true);
	Fade("絵背景200", 0, 1000, null, true);

	Shake("絵背景200", 500000, 1, 2, 0, 0, 500, null, false);

	Wait(300);;

	Fade("絵背景1000", 300, 0, null, true);

	CreateColorEXadd("絵色100", 15000, "White");

	CreateSE("SE01","se戦闘_銃器_機関銃乱射01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵色100", 80, 800, null, true);
	Fade("絵色100", 80, 0, null, true);
	Fade("絵色100", 80, 800, null, true);
	Fade("絵色100", 80, 0, null, true);
	Fade("絵色100", 80, 800, null, true);
	Fade("絵色100", 80, 0, null, true);
	Fade("絵色100", 80, 800, null, true);
	Fade("絵色100", 80, 0, null, true);
	Fade("絵色100", 80, 800, null, true);
	Fade("絵色100", 80, 0, null, true);
	Fade("絵色100", 80, 800, null, true);
	Fade("絵色100", 80, 0, null, true);
	Fade("絵色100", 80, 800, null, true);
	Fade("絵色100", 80, 0, null, true);

	Fade("絵色100", 300, 1000, null, true);

	Delete("絵背景200");
	Delete("絵背景100");
	Delete("絵背景500");
	Delete("絵背景1000");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	SetVolume("SE01", 500, 0, null);


	Fade("絵色100", 300, 0, null, true);


	SetNwC("cg/fw/nw鎧士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001340e030">
「く、糞！　今度は何処に――」

{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001350e032">
「榊ッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@OnSE*", 200, 0, null);

//◆光速一閃
//◆撃墜
	CreateTextureEX("絵EF100", 5000, Center, Middle, "cg/ef/ef019_銀星号突貫.jpg");
	Rotate("絵EF100", 0, @0, @180, @0, null,true);
	CreateColorEXadd("絵色100", 6000, "White");
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	SetBlur("絵EF100", true, 5, 500, 50, false);

	OnSE("se戦闘_動作_突進01",1000);

	Move("絵EF100", 200, @-500, @-200, null, false);
	Fade("絵EF100", 200, 1000, null, true);
	Wait(300);
	Fade("絵色100", 200, 1000, null, true);

	DeleteStR(0,true);
	DeleteStL(0,true);

	Delete("絵EF100");

	CreateTextureSP("絵EF200", 4900, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSPadd("絵EF100", 5000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");
	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");

	OnSE("se戦闘_攻撃_殴る05",1000);
	Zoom("絵EF100", 300, 2000, 2000, null, false);
	Fade("絵色100", 200, 0, null, true);

	Shake("絵EF100", 1000, 10, 10, 0, 0, 500, null, false);
	Delete("絵EF200");

	Wait(500);

	CreateTextureEXadd("絵st120", 2200, -655, -691, "cg/ef/ef044_火花c.png");
	Rotate("絵st120", 0, @0, @0, 35, null,true);
	CreateTextureEXadd("絵st130", 2200, -332, -323, "cg/ef/ef044_火花c.png");
	Rotate("絵st130", 0, @0, @0, 15, null,true);
	CreateTextureEXadd("絵st140", 2200, -666, -330, "cg/ef/ef044_火花c.png");
	Rotate("絵st140", 0, @0, @0, 90, null,true);

	OnSE("se戦闘_動作_空落下01",1000);
	Wait(300);
	Shake("絵背景100", 1200, 10, 15, 0, 0, 1000, Dxl1, false);
	FadeDelete("絵EF100", 300,true);

	SetNwC("cg/fw/nw鎧士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001360e030">
「がはッ!?」

{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001370e032">
「榊！　無事か！」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001380e030">
「……大丈夫だ………
　くそ、腕と……母衣をやられた！」

//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001390e030">
「飛べねえ……！」

{	NwC("cg/fw/nw鎧士Ｅ.png");}
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001400e034">
「……榊！　逃げろ!!」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001410e030">
「あ……？」

{	NwC("cg/fw/nw村人Ｃ.png");}
//【ｅｔｃ／村人Ｃ】
<voice name="ｅｔｃ／村人Ｃ" class="その他男声" src="voice/ma00/0001420e151">
「ギ……グフ」

{	NwC("cg/fw/nw村人Ｄ.png");}
//【ｅｔｃ／村人Ｄ】
<voice name="ｅｔｃ／村人Ｄ" class="その他男声" src="voice/ma00/0001430e152">
「ケケカカカカカカ」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001440e030">
「うぁぁぁぁぁっ!?」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆無数の殴打
	CreateTextureEXadd("絵st150", 2200, 131, -668, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵st160", 2200, 250, -435, "cg/ef/ef044_火花c.png");
	Rotate("絵st160", 0, @0, @0, 120, null,true);
	CreateTextureEXadd("絵st170", 2200, -186, -576, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵st180", 2200, -2, -324, "cg/ef/ef044_火花c.png");
	Rotate("絵st180", 0, @0, @0, 160, null,true);
	Zoom("絵st*", 0, 500, 500, null, true);
	SetBlur("絵st*", true, 2, 400, 150, false);
	SetTone("絵st*", Sepia);

	CreateSE("SE01L","se戦闘_攻撃_殴打連撃02_L");
	MusicStart("SE01L",0,1000,0,1000,null,true);

	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");
	Shake("絵背景100", 50000, 2, 3, 0, 0, 1000, null, false);
	Rotate("絵st110", 500, @0, @0, @+1800, Dxl1,false);
	Zoom("絵st110", 200, 1300, 1300, Dxl1, false);
	Fade("絵st110", 50, 1000, Dxl1, true);
	Zoom("絵st170", 25, 500, 500, null, false);
	Fade("絵st110", 200, 0, null, false);

	Rotate("絵st120", 500, @0, @0, @+4200, DxlAuto,false);
	Zoom("絵st120", 200, 1100, 1100, Dxl1, false);
	Fade("絵st120", 50, 1000, Dxl1, true);
	Zoom("絵st110", 25, 500, 500, null, false);
	Fade("絵st120", 200, 0, null, false);

	Rotate("絵st130", 500, @0, @0, @+3600, DxlAuto,false);
	Zoom("絵st130", 200, 1600, 1600, Dxl1, false);
	Fade("絵st130", 50, 1000, Dxl1, true);
	Zoom("絵st120", 25, 500, 500, null, false);
	Fade("絵st130", 200, 0, null, false);

	Rotate("絵st140", 500, @0, @0, @+7500, null,false);
	Zoom("絵st140", 200, 1100, 1100, Dxl1, false);
	Fade("絵st140", 50, 1000, Dxl1, true);
	Zoom("絵st130", 25, 500, 500, null, false);
	Fade("絵st140", 200, 0, null, false);

	Rotate("絵st150", 500, @0, @0, @+2500, DxlAuto,false);
	Zoom("絵st150", 200, 1400, 1400, Dxl1, false);
	Fade("絵st150", 50, 1000, Dxl1, true);
	Zoom("絵st140", 25, 500, 500, null, false);
	Fade("絵st150", 200, 0, null, false);

	Rotate("絵st160", 500, @0, @0, @+3500, Dxl2,false);
	Zoom("絵st160", 200, 1100, 1100, Dxl1, false);
	Fade("絵st160", 50, 1000, Dxl1, true);
	Zoom("絵st150", 25, 500, 500, null, false);
	Fade("絵st160", 200, 0, null, false);

	Rotate("絵st170", 500, @0, @0, @+3600, Dxl3,false);
	Zoom("絵st170", 200, 1300, 1300, Dxl1, false);
	Fade("絵st170", 50, 1000, Dxl1, true);
	Zoom("絵st160", 25, 500, 500, null, false);
	Fade("絵st170", 200, 0, null, false);

	Rotate("絵st130", 500, @0, @0, @+3000, Dxl1,false);
	Zoom("絵st130", 200, 1400, 1400, Dxl1, false);
	Fade("絵st130", 50, 1000, Dxl1, true);
	Zoom("絵st170", 25, 500, 500, null, false);
	Fade("絵st130", 200, 0, null, false);

	Rotate("絵st140", 500, @0, @0, @+7900, DxlAuto,false);
	Zoom("絵st140", 200, 1700, 1700, Dxl1, false);
	Fade("絵st140", 50, 1000, Dxl1, true);
	Zoom("絵st130", 25, 500, 500, null, false);
	Fade("絵st140", 200, 0, null, false);

	Rotate("絵st150", 500, @0, @0, @+1800, DxlAuto,false);
	Zoom("絵st150", 200, 1600, 1600, Dxl1, false);
	Fade("絵st150", 50, 750, Dxl1, true);
	Zoom("絵st140", 25, 500, 500, null, false);
	Fade("絵st150", 200, 0, null, false);

	Rotate("絵st160", 500, @0, @0, @+3600, DxlAuto,false);
	Zoom("絵st160", 200, 1100, 1100, Dxl1, false);
	Fade("絵st160", 50, 1000, Dxl1, true);
	Zoom("絵st150", 25, 500, 500, null, false);
	Fade("絵st160", 200, 0, null, false);

	Rotate("絵st110", 500, @0, @0, @+5400, Dxl1,false);
	Zoom("絵st110", 200, 1200, 1200, Dxl1, false);
	Fade("絵st110", 5, 800, Dxl1, true);
	Zoom("絵st160", 25, 500, 500, null, false);
	Fade("絵st110", 200, 0, null, false);

	CreateColorEX("黒幕１", 15000, "BLACK");
	Fade("黒幕１", 500, 1000, null, false);

	Rotate("絵st120", 500, @0, @0, @+1800, Dxl1,false);
	Zoom("絵st120", 200, 1300, 1300, Dxl1, false);
	Fade("絵st120", 50, 1000, Dxl1, true);
	Zoom("絵st110", 25, 500, 500, null, false);
	Fade("絵st120", 200, 0, null, false);

	Rotate("絵st130", 500, @0, @0, @+4200, DxlAuto,false);
	Zoom("絵st130", 200, 1100, 1100, Dxl1, false);
	Fade("絵st130", 50, 1000, Dxl1, true);
	Zoom("絵st120", 25, 500, 500, null, false);
	Fade("絵st130", 200, 0, null, false);

	Rotate("絵st140", 500, @0, @0, @+3600, DxlAuto,false);
	Zoom("絵st140", 200, 1600, 1600, Dxl1, false);
	Fade("絵st140", 50, 1000, Dxl1, true);
	Zoom("絵st130", 25, 500, 500, null, false);
	Fade("絵st140", 200, 0, null, false);

	Rotate("絵st150", 500, @0, @0, @+7500, null,false);
	Zoom("絵st150", 200, 1100, 1100, Dxl1, false);
	Fade("絵st150", 50, 1000, Dxl1, true);
	Zoom("絵st140", 25, 500, 500, null, false);
	Fade("絵st150", 200, 0, null, false);

	WaitAction("黒幕１", null);

	SetVolume("SE01L", 1000, 0, null);
	PrintGO("上背景", 15000);

	CreateColorSP("黒幕１", 5000, "BLACK");
	DrawDelete("上背景", 300, 100, "slide_03_01_0", true);

	CreateTextureEX("散華1", 4000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("散華1", 0, 2000, 2000, null, true);
	Move("散華1", 0, -200, @0, null, true);


	CreateTextureEXadd("散華2", 4000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("散華2", 0, 1000, 1000, null, true);

	CreateColorEXadd("絵色200", 5000, "White");

	CreateTextureSP("絵背景100", 1000, Center, 0, "cg/bg/bg002_空b_03.jpg");
	Delete("絵背景10");
	Delete("絵色100");
	Delete("絵EF100");

	StL(1250,@+290,@+300,"cg/st/3d九四式竜騎兵_騎航_戦闘a.png");
	StR(1200,@+190,@-30,"cg/st/3d九四式竜騎兵_騎航_戦闘a.png");
	Zoom("@StL*", 0, 1200, 1200, null, true);
	Zoom("@StR*", 0, 600, 600, null, true);

	Rotate("@StL*", 0, @0, @0, @-20, null,true);

	Request("@StL*", Smoothing);
	Request("@StR*", Smoothing);


	CreateTextureEX("絵st100", 1200, Center, InBottom, "cg/st/3d銀星号_騎航_通常.png");
	Move("絵st100", 0, @+800, @0, Dxl1, true);
	Fade("絵背景100", 0, 1000, null, true);
	Rotate("絵st100", 0, @0, @180, @0, null,true);

	FadeStR(0,true);
	FadeStL(0,true);

	SetVertex("絵背景100", 0, 512);
	Zoom("絵背景100", 0, 2000, 2000, null, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("黒幕１");


	SetNwC("cg/fw/nw鎧士Ｅ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001450e034">
「さ、榊……」

{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001460e032">
「おい、呆けてる場合か！　前――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆光速一閃
//◆撃墜
//◆光速一閃
//◆撃墜
	Move("@StR*", 2000, -1200, @0, Dxl1, false);
	Move("@StL*", 2000, -1500, @0, Dxl1, false);
	DeleteStR(500,false);
	DeleteStL(500,false);
	Move("絵背景100", 1500, -1024, @0, Dxl1, true);
	OnSE("se戦闘_動作_空突進02",1000);
	BezierMove("絵st100", 500, (@0,@0){@-500,@150}{@-500,@150}(@-700, @+150), Dxl1, false);
	Fade("絵st100", 300, 1000, null, true);

	Wait(200);

	OnSE("se戦闘_動作_空上昇01",1000);

	SetBlur("絵st100", true, 3, 500, 50, false);

	BezierMove("絵st100", 1000, (@0,@0){@+400,@-200}{@+400,@-200}(@-524, @+500){@-1524,@-150}{@-1524,@-150}(@-2024, @-600), Dxl1, false);

	Wait(500);
	Fade("絵色200", 300, 1000, null, true);

	Delete("絵st100");

	Fade("散華1", 0, 1000, null, true);
	Wait(300);

	OnSE("se戦闘_破壊_爆発01",1000);
	Zoom("散華1", 300, 1500, 1500, null, false);
	Fade("絵色200", 300, 0, null, true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	Fade("絵色200", 300, 1000, null, true);
	Delete("散華1");
	Fade("散華2", 0, 1000, null, true);
	OnSE("se戦闘_破壊_鎧02",1000);
	Zoom("散華2", 300, 2000, 2000, Dxl1, false);
	FadeDelete("絵色200", false);
	FadeDelete("散華2",1000,true);

//◆竜騎兵、一人
	StL(1200,@-500,@300,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	StR(1200,@+400,@0,"cg/st/3d銀星号_立ち_通常b.png");

	OnSE("se戦闘_動作_空突進02",1000);

	Move("@StL*", 300, @+500, @0, Dxl1, false);
	FadeStL(300,true);

	SetNwC("cg/fw/nw鎧士Ｆ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【ｅｔｃ／鎧士Ｆ】
<voice name="ｅｔｃ／鎧士Ｆ" class="その他男声" src="voice/ma00/0001470e035">
「え……あ……？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆銀星号
	OnSE("se人体_動作_跳躍03",1000);
	Move("@StR*", 300, @-300, @0, Dxl1, false);
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【ｅｔｃ／鎧士Ｆ】
<voice name="ｅｔｃ／鎧士Ｆ" class="その他男声" src="voice/ma00/0001480e035">
「た、た、隊長！　鷺沼殿ッ！　たすけ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光速一閃
//◆撃墜
/*
	CreateColorEX("絵色100", 3000, "Black");
	CreateColorEXadd("絵色200", 10000, "White");
	Fade("絵色100", 100, 1000, null, true);
	DeleteStR(0,true);
	DeleteStL(0,true);
	SL_left(@0,@-100,2000);
	OnSE("se戦闘_攻撃_野太刀振る01",1000);
	SL_leftfade2(10);
	Fade("絵色200", 300, 1000, null, true);
	Delete("絵色100");
	OnSE("se戦闘_破壊_鎧02",1000);

	Fade("絵色200", 1000, 0, null, true);
*/


	CreateColorEXadd("絵色200", 10000, "White");

	Fade("絵色200", 100, 1000, null, true);
	DeleteStR(0,true);
	DeleteStL(0,true);

	CreateColorEXadd("絵色300", 10000, "White");

	CreateTextureEX("絵EV100", 1000, Center, Middle, "cg/ev/ev301_銀星号クラッシュ.jpg");
	CreateTextureEX("絵EV200", 500, Center, Middle, "cg/ev/ev301_銀星号クラッシュ.jpg");
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	SetBlur("絵EV100", true, 3, 500, 100, false);
	Fade("絵EV100", 0, 1000, null, true);
	Fade("絵EV200", 0, 1000, null, true);

	SetVertex("絵EV100", 1024, 0);


	Zoom("絵EV100", 300, 1000, 1000, null, false);
	OnSE("se戦闘_破壊_鎧02",1000);
	Fade("絵色200", 200, 0, null, true);

	Wait(100);

	Fade("絵色300", 100, 800, null, false);

	Wait(100);

	FadeDelete("絵EV100", 500, false);
	Shake("絵EV100", 500, 5, 6, 0, 0, 500, null, false);
	Zoom("絵EV100", 500, 1600, 1600, null, false);
	Fade("絵色300", 500, 0, Dxl1, false);

	Wait(1500);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	Delete("絵EV*");
	Delete("絵色*");
	Delete("絵背景*");
	CreateTextureSP("絵背景10", 50, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	StC(1200,-89,-398,"cg/st/3d九四式指揮官_騎航_通常.png");

	FadeStC(0,true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");


	SetNwL("cg/fw/nw部隊長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001490e237">
「……ッ」

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


//◆隊長騎


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001500e237">
「お……おのれ……！
　やってくれたな……俺の隊を！　貴様ァ！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆色々と攻撃。
//◆色々とスカ。

	Move("@StC*", 300, @+500, @-100, Dxl1, false);
	DeleteStC(300,true);
	CreateTextureEX("絵EF100", 10000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateColorEX("絵色100", 1500, "Black");
	SetVertex("絵EF100", 0, 0);
	Zoom("絵EF100", 300, 2000, 2000, Dxl1, false);
	Fade("絵EF100", 200, 1000, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵EF100", 200, 0, null, true);

	CreateColorEXadd("絵色1", 15000, "White");
	CreateTextureEX("絵EF01", 10000, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	CreateTextureEX("絵EF02", 10000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureEX("絵EF03", 10000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	CreateTextureEX("絵EF04", 10000, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureEX("絵EF05", 10000, Center, Middle, "cg/ef/ef017_汎用正面軌道.jpg");
	CreateTextureEX("絵EF06", 10000, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");

	Zoom("絵EF0*", 0, 2000, 2000, null, true);

	OnSE("se戦闘_攻撃_刀連撃02",1000);
	Zoom("絵EF01", 100, 1000, 1000, Dxl1, false);
	Fade("絵EF01", 50, 1000, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF01");
	Fade("絵EF02", 0, 1000, null, true);
	Zoom("絵EF02", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF02");
	Fade("絵EF03", 0, 1000, null, true);
	Zoom("絵EF03", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF03");
	Fade("絵EF04", 0, 1000, null, true);
	Zoom("絵EF04", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF04");
	Fade("絵EF05", 0, 1000, null, true);
	Zoom("絵EF05", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF05");
	Fade("絵EF06", 0, 1000, null, true);
	Zoom("絵EF06", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF06");
	Delete("絵色100");
	Delete("絵EF100");
	SetVolume("@OnSE*", 300, 0, null);
	FadeDelete("絵色1", 500, true);

	StC(1200,@+500,@+100,"cg/st/3d九四式指揮官_騎航_戦闘.png");
	Request("@StC*", Smoothing);
	Move("@StC*", 300, -140, -440, Dxl1, false);
	FadeStC(300,true);

	WaitKey(100);

	OnSE("se戦闘_動作_突進01",1000);

	Move("@StC*", 300, 400, -500, Dxl1, false);
	DeleteStC(300,true);

	SetNwL("cg/fw/nw部隊長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001510e237">
「オォォォォォォ!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆色々と攻撃。
//◆色々とスカ。
//◆光速一閃
//◆痛撃
	CreateColorEXadd("絵色1", 15000, "White");
	CreateTextureEX("絵EF01", 10000, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	CreateTextureEX("絵EF02", 10000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureEX("絵EF03", 10000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	CreateTextureEX("絵EF04", 10000, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureEX("絵EF05", 10000, Center, Middle, "cg/ef/ef017_汎用正面軌道.jpg");
	CreateTextureEX("絵EF06", 10000, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	CreateTextureEX("絵EF07", 10000, Center, Middle, "cg/ef/ef019_銀星号突貫.jpg");

	Zoom("絵EF0*", 0, 2000, 2000, null, true);

	OnSE("se戦闘_攻撃_刀連撃02",1000);
	Zoom("絵EF02", 100, 1000, 1000, Dxl1, false);
	Fade("絵EF02", 50, 1000, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF02");
	Fade("絵EF01", 0, 1000, null, true);
	Zoom("絵EF01", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF01");
	Fade("絵EF04", 0, 1000, null, true);
	Zoom("絵EF04", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF04");
	Fade("絵EF05", 0, 1000, null, true);
	Zoom("絵EF05", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF05");
	Fade("絵EF03", 0, 1000, null, true);
	Zoom("絵EF03", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF03");
	Fade("絵EF06", 0, 1000, null, true);
	Zoom("絵EF06", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF06");
	Delete("絵EF100");
	SetVolume("@OnSE*", 300, 0, null);
	StC(1200,@0,@+400,"cg/st/3d九四式指揮官_騎航_戦闘.png");
	FadeStC(0,true);
	Move("@StC*", 300, @+200, @0, null, false);
	Fade("絵色1", 300, 0, null, true);
	OnSE("se戦闘_攻撃_野太刀振る01",1000);
	Fade("絵EF07", 0, 1000, null, true);
	Zoom("絵EF07", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 1000, null, true);
	OnSE("se戦闘_攻撃_殴る05",1000);
	Delete("絵EF07");
	Move("@StC*", 300, @-200, @0, null, false);
	Shake("@StC*", 500, 10, 10, 0, 0, 500, null, false);
	Shake("絵背景100", 500, 10, 10, 0, 0, 500, null, false);
	FadeDelete("絵色1", 500, true);

	SetNwL("cg/fw/nw部隊長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001520e237">
「ぐっ……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆攻撃
//◆スカ
//◆銀星号
	Move("@StC*", 300, @+1200, @0, null, false);
	DeleteStC(300,true);

	CreateColorEX("絵色1", 2000, "Black");
	CreateColorEXadd("絵色2", 15000, "White");
	SL_centerout(@0,@-100,1000);

	Fade("絵色1", 200, 1000, null, true);
	OnSE("se戦闘_攻撃_刀振る01",1000);

	SL_centeroutfade2(10);
	Fade("絵色2", 200, 1000, null, true);

	Delete("絵色1");
	StC(1200,@0,@0,"cg/st/3d銀星号_立ち_通常b.png");
	FadeStC(0,true);
	Wait(200);

	StL(1200,@-50,@+300,"cg/st/3d九四式指揮官_騎航_戦闘.png");

	OnSE("se人体_動作_跳躍01",1000);

	Move("@StC*", 300, @+350, @0, null, false);
	Fade("絵色2", 200, 0, null, true);

	FadeStL(300,true);

	SetNwC("cg/fw/nw部隊長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001530e237">
「ま、まるで通じぬ……だと……!?
　俺の剣が……技が……」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001540e237">
「……何なのだ……」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001550e237">
「兵と村人は唄声で狂わせ……
　<RUBY text="われわれ">竜騎兵</RUBY>は片手であしらい……」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001560e237">
「貴様は一体、何なのだァ!!
　<RUBY text="ぎん">白銀</RUBY>の魔王ッッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆攻撃
//◆光速一閃
//◆撃墜
	CreateTextureEX("絵EF100", 5000, Center, Middle, "cg/ef/ef019_銀星号突貫.jpg");
	CreateColorEXadd("絵色100", 6000, "White");
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	SetBlur("絵EF100", true, 5, 500, 50, false);

	SetVolume("@mbgm34", 500, 0, null);
	OnSE("se戦闘_動作_突進01",1000);

	Zoom("絵EF100", 500, 1000, 1000, Dxl1, false);
	Fade("絵EF100", 200, 1000, null, true);
	Wait(400);

	Fade("絵色100", 200, 1000, null, true);

	DeleteStC(0,true);
	DeleteStL(0,true);
	Delete("絵EF100");
	CreateTextureSP("絵EF200", 4900, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSPadd("絵EF100", 5000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("絵EF100", 0, 2000, 2000, null, true);

	OnSE("se戦闘_破壊_鎧02",1000);
	Zoom("絵EF100", 500, 1000, 1000, null, false);
	Fade("絵色100", 200, 0, null, true);

	Shake("絵EF100", 500, 10, 10, 0, 0, 500, null, true);
	Delete("絵EF200");

	FadeDelete("絵EF100", 300,true);


//◆虚空に佇む銀星号
	CreatePlainSP("上背景", 15000);
	CreateTextureSP("銀星", 1200, 200, -200, "cg/st/resize/3d銀星号_立ち_通常s.png");

	Move("銀星", 2000, @0, -35, DxlAuto, false);
	FadeDelete("上背景", 300, true);

	WaitAction("銀星",null);

	WaitKey(1000);

//	StC(1200,@0,@-200,"cg/st/3d銀星号_立ち_通常.png");
//	Move("@StC*", 1000, @0, @+200, null, false);
//	FadeStC(300,true);
//	WaitAction("@StC*",null);

	PrintGO("上絵", 15000);

	Delete("銀星");


	CreateSE("SE01","se自然_火_火災倒壊");
	MusicStart("SE01",1000,500,0,1000,null,true);


	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");

	FadeDelete("上絵", 2000, true);



	SetNwC("cg/fw/nw村人Ｅ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【ｅｔｃ／村人Ｅ】
<voice name="ｅｔｃ／村人Ｅ" class="その他男声" src="voice/ma00/0001570e153">
「ギヒ、ヒィーーーッ!!」

{	NwC("cg/fw/nw村人Ｆ.png");}
//【ｅｔｃ／村人Ｆ】
<voice name="ｅｔｃ／村人Ｆ" class="その他男声" src="voice/ma00/0001580e154">
「ああァアうググ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆殴打。銃声。
	CreateSE("SE10","se背景_ガヤ_合戦01");
	MusicStart("SE10",1000,500,0,1000,null,true);


//◆ＥＶ：精神汚染

	CreateTextureEX("絵EV100", 10000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");

	SoundPlay("@mbgm37",0,1000,true);

	Fade("絵EV100", 1000, 1000, null, true);

//◆村、炎上。レッドマスク＋ＳＥでＯＫか。

//◆見下ろす銀星号

//	CreateColorEX("上黒", 15000, "Black");
//	Fade("上黒", 300, 500, null, true);

//◆生命よこの賛歌
	CreateTextureEX("Gin_song19", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄19.png");
//◆生命よこの祈り
	CreateTextureEX("Gin_song20", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄20.png");

	Move("Gin_song19", 0, @0, @-40, null, true);
	Move("Gin_song20", 0, @0, @+10, null, true);

	SetBacklog("《生命よこの賛歌を聞け笑い疲れた怨嗟を重ねて》", null, null);
	Move("Gin_song19", 1000, @0, @-10, null, false);
	Fade("Gin_song19", 1000, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《生命よこの祈りを聞け怒りおののく喜びを枕に》", null, null);
	Move("Gin_song20", 1000, @0, @-10, null, false);
	Fade("Gin_song20", 1000, 1000, null, true);

	WaitKey();

	Fade("Gin_song19", 500, 0, null, false);
	Fade("Gin_song20", 500, 0, null, true);
	Delete("Gin_song*");

//嶋：テロップ追加のため退避
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
　
　
　
　
　
　
《生命よこの賛歌を聞け笑い疲れた怨嗟を重ねて》
《生命よこの祈りを聞け怒りおののく喜びを枕に》

</PRE>
	SetTextA();
	TypeBeginAI();//―――――――――――――――――――――――――――――

*/


//◆地獄絵図


	CreateTextureEX("Gin_song21", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄21.png");
	CreateTextureEX("Gin_song22", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄22.png");
	CreateTextureEX("Gin_song23", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄23.png");
	CreateTextureEX("Gin_song24", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄24.png");

	Move("Gin_song21", 0, @0, @-80, null, true);
	Move("Gin_song22", 0, @0, @-40, null, true);
	Move("Gin_song23", 0, @0, @0, null, true);
	Move("Gin_song24", 0, @0, @+40, null, true);

	SetBacklog("《百年の生は炎と剣の連環が幾重にも飾り立てよう》", null, null);
	Move("Gin_song21", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song21", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《七日の生は闇と静寂に守られ無垢に光り輝くだろう》", null, null);
	Move("Gin_song22", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song22", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《獣よ踊れ野を馳せよ唄い騒いで猛り駆けめぐれ》", null, null);
	Move("Gin_song23", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song23", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《いまや如何なる鎖も檻も汝の前には朽ちた土塊》", null, null);
	Move("Gin_song24", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song24", 600, 1000, null, false);

	WaitKey();

	Fade("Gin_song21", 500, 0, null, false);
	Fade("Gin_song22", 500, 0, null, false);
	Fade("Gin_song23", 500, 0, null, false);
	Fade("Gin_song24", 500, 0, null, true);
	Delete("Gin_song*");

/*
//嶋：下記位置調整のためスペース追加
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
　
　
　
　
　
《百年の生は炎と剣の連環が幾重にも飾り立てよう》
《七日の生は闇と静寂に守られ無垢に光り輝くだろう》
《獣よ踊れ野を馳せよ唄い騒いで猛り駆けめぐれ》
《いまや如何なる鎖も檻も汝の前には朽ちた土塊》

</PRE>
	SetTextA();
	TypeBeginAI();//―――――――――――――――――――――――――――――
*/


//	Fade("上黒", 300, 0, null, true);
//◆銀星号
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	Fade("絵背景100",0,1000,null,true);


	FadeDelete("絵EV100",1000,true);

	CreateTextureEX("絵銀星", 1200, 200, -35, "cg/st/resize/3d銀星号_立ち_通常s.png");
	Fade("絵銀星", 300, 1000, null, true);


//	Fade("上黒", 300, 500, null, false);


//◆朽ちた土塊……
	CreateTextureEX("Gin_song01", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄25.png");

	Move("Gin_song01", 0, @0, @-40, null, true);

	SetBacklog("《朽ちた土塊……》", null, null);
	Move("Gin_song01", 1000, @0, @-10, null, false);
	Fade("Gin_song01", 1000, 1000, null, false);

	WaitKey();

	Fade("Gin_song01", 500, 0, null, true);
	Delete("Gin_song*");

//嶋：テロップ追加のため退避
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　
　
　
　
　
　
《朽ちた土塊……》

</PRE>
	SetTextA();
	TypeBeginAI();//―――――――――――――――――――――――――――――
*/

//	Fade("上黒", 300, 0, null, true);

//◆何かに気付く銀星号
//◆燃える村。何者かの重い足音



	PrintGO("上背景", 15000);

	SetVolume("OnSE*",6000, 0, null);
	SetVolume("SE*",6000, 0, null);
	SetVolume("@mbgm37",6000, 0, null);

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");

	Fade("上背景", 500, 0, null, true);

	Wait(2000);

	CreateColorEX("絵色100", 1500, "Black");
	CreateColorEX("絵色200", 17000, "Black");
	Fade("絵色100", 500, 1000, null, true);

	MovieSESet(16000,"mv村正登場","se特殊_mv用_村正登場");
	MovieSEStart2(300,0);
	Fade("絵色200", 300, 1000, null, true);
	Delete("絵色100");
	FadeDelete("絵色200", 500, true);

/*
	CreateSE("SE10","se人体_足音_鎧歩く01_L");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	Wait(5000);

	SetVolume("SE10", 500, 0, null);
*/

	StC(1500,@10,@10,"cg/st/3d村正初期_立ち_通常.png");

	OnSE("se戦闘_動作_鎧_踏み込み01",1000);

	Move("@StC*", 300, @-10, @-10, Dxl1, false);
	FadeStC(300,true);

	Wait(1000);

	CreateTextureEX("絵ST100", 2000, -500, 576, "cg/st/3d村正初期_立ち_通常.png");
	Request("絵ST100", Smoothing);
	Zoom("絵ST100", 0, 1400, 1400, null, true);

	Fade("@StC*", 3000, 500, null, false);
	Fade("絵ST100", 3000, 1000, null, false);
	Move("絵ST100", 3000, @0, @-650, Dxl1, true);

	Wait(1000);

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0831]
//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001590a00">
「――――」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("上背景", 500, 1000, null, true);
	Fade("@StC*", 0, 1000, null, true);
	Delete("絵ST100");

	Wait(1000);

	SetFwL("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0832]
//【光】
<voice name="光" class="光" src="voice/ma00/0001600a14">
「――――」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――



//	Wait(1000);

	FadeDelete("上背景", 500, true);

	StC(1500,@0,@0,"cg/st/3d村正初期_立ち_抜刀.png");
	OnSE("se戦闘_動作_刀構え01",1000);
	FadeStC(300,true);

	Wait(1000);

	CreatePlainSP("上背景", 10000);

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	Fade("絵背景100",0,1000,null,true);

	StC(1200,@0,@0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStC(0,true);
	Rotate("@StC*", 0, @0, @180, @0, null,true);

	Fade("上背景",300,0,null,true);

	OnSE("se日常_衣類_衣擦れ01",500);
	Move("@StC*", 3000, @-200, @0, Dxl1, true);

	CreatePlainSP("上背景", 10000);

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");
	Fade("絵背景100",0,1000,null,true);
	CreateTextureEX("絵EF100", 5000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	StC(1200,@0,@0,"cg/st/3d村正初期_立ち_抜刀.png");
	FadeStC(0,true);

	FadeDelete("上背景",500,true);


	OnSE("se戦闘_動作_空上昇01",1000);
	Wait(200);

	CreateTextureSP("絵村正", 1200, 80, -160, "cg/st/3d村正初期_騎航_戦闘.png");
	Request("絵村正", Smoothing);
	Rotate("絵村正", 0, @0, @0, @40, null,true);

	DeleteStC(0,true);

	Move("絵村正", 300, @-700, @-1000, Dxl1, false);
	FadeDelete("絵村正", 300, false);

	Wait(200);

	Fade("絵EF100", 200, 1000, null, true);

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	Fade("絵背景100",0,1000,null,true);


	StC(1200,@-200,@0,"cg/st/3d銀星号_立ち_通常.png");
	Rotate("@StC*", 0, @0, @180, @0, null,true);
	FadeStC(0,true);

	FadeDelete("絵EF100", 200, true);

	OnSE("se戦闘_動作_空突進03",1000);

	CreateTextureSP("絵銀星", 1200, -160, -240, "cg/st/3d銀星号_騎航_通常.png");
	Request("絵銀星", Smoothing);
	Rotate("絵銀星", 0, @0, @0, @40, null,true);

	DeleteStC(0,true);


	Move("絵銀星", 300, @+700, @+1000, Dxl1, false);
	FadeDelete("絵銀星", 300, true);

	CreateColorEXadd("絵色100", 15000, "White");
	CreateTextureEX("絵EF100", 5000, Center, Middle, "cg/ef/ef020_村正突貫04.jpg");
	CreateTextureEX("絵EF200", 6000, Center, Middle, "cg/ef/ef019_銀星号突貫04.jpg");

	SetVertex("絵EF100", 0, 576);
	SetVertex("絵EF200", 1024, 0);
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	Zoom("絵EF200", 0, 2000, 2000, null, true);
	Fade("絵色100", 200, 1000, null, true);
	Fade("絵EF100",0,1000,null,true);
	Shake("絵EF100", 1000, 3, 3, 0, 0, 500, null, false);
	Move("絵EF100", 600, -612, 300, Dxl1, false);
	OnSE("se戦闘_動作_空突進03",1000);
	Fade("絵色100", 500, 0, null, true);
	Fade("絵色100", 500, 1000, null, true);
	Fade("絵EF200",0,1000,null,true);
	Shake("絵EF200", 1000, 3, 3, 0, 0, 500, null, false);
	Move("絵EF200", 600, 612, -300, Dxl1, false);
	OnSE("se戦闘_動作_空突進01",1000);
	Fade("絵色100", 500, 0, null, true);
	Fade("絵色100", 500, 1000, null, true);
	Fade("絵EF200",0,0,null,true);
	Zoom("絵EF100", 0, 1200, 1200, null, true);
	Zoom("絵EF200", 0, 1200, 1200, null, true);
	Request("絵EF100", Smoothing);
	Request("絵EF200", Smoothing);
	Move("絵EF100", 0, 0, 0, Dxl1, true);
	Move("絵EF200", 0, 0, 0, Dxl1, true);
	OnSE("se戦闘_動作_空上昇01",1000);
	Shake("絵EF100", 1000, 1, 1, 0, 0, 500, null, false);
	Fade("絵色100", 500, 0, null, true);
	Fade("絵色100", 500, 1000, null, true);
	Fade("絵EF200",0,1000,null,true);
	OnSE("se戦闘_動作_空上昇01",1000);
	Shake("絵EF200", 1000, 1, 1, 0, 0, 500, null, false);
	Fade("絵色100", 500, 0, null, true);
	Fade("絵色100", 500, 1000, null, true);
	Delete("絵EF100");
	Delete("絵EF200");
	CreateColorSP("絵色200", 4000, "Black");
	CreateWindow("ウィンドウ１", 5000, 0, 0, 1024, 288, true);
	CreateWindow("ウィンドウ２", 5000, 0, 288, 1024, 576, true);
	SetAlias("ウィンドウ１","ウィンドウ１");
	SetAlias("ウィンドウ２","ウィンドウ２");
	CreateTextureEX("ウィンドウ２/絵EF100", 5000, 0, -200, "cg/ef/ef020_村正突貫04.jpg");
	CreateTextureEX("ウィンドウ１/絵EF200", 6000, 0, -100, "cg/ef/ef019_銀星号突貫04.jpg");

	CreateTextureEX("絵EF100", 7000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Request("絵EF100", Smoothing);
	Rotate("絵EF100", 0, @0, @180, @0, null,true);
	Zoom("絵EF100", 0, 1200, 1200, null, true);

	Fade("絵色100", 500, 0, null, false);

	Fade("ウィンドウ２/絵EF100", 0, 1000, null, false);
	DrawTransition("ウィンドウ２/絵EF100", 1000, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", false);

	Fade("ウィンドウ１/絵EF200", 0, 1000, null, false);
	DrawTransition("ウィンドウ１/絵EF200", 1000, 0, 1000, 100, null, "cg/data/slide_01_04_1.png", true);

	OnSE("se戦闘_衝撃_衝突01",1000);

	Fade("絵色100", 0, 700, null, false);
	DrawTransition("絵色100", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Fade("絵色100", 500, 1000, null, true);

	Fade("絵EF100", 0, 1000, null, true);
	Shake("絵EF100", 5000, 1, 1, 0, 0, 500, null, false);

	Wait(200);
	OnSE("se戦闘_衝撃_衝突01",1000);

	Delete("上黒");
	Delete("ウィンドウ*");
	Delete("絵色200");

//	SL_up(@0,@0,2000);

	Fade("絵色100", 500, 0, null, true);
	Zoom("絵EF100", 250, 2500, 2500, Dxl1, false);
	Wait(100);
	Fade("絵色100", 500, 1000, null, true);
	Delete("絵EF100");

	FadeDelete("絵色100", 1500, true);

	CreateSE("SE01","se戦闘_攻撃_乱戦02");
	MusicStart("SE01",0,500,0,1000,null,true);


//◆銀星号

//◆村正
//◆チャキンと野太刀を構える

//◆銀星号

//◆村正飛躍
//◆突進

//◆銀星号

//◆銀星号飛翔
//◆銀色流星
//◆赤色彗星
//◆駆け違い交差する二つの軌跡
//◆夜空。激突のＳＥは継続？


//	RFlash();

	SoundPlay("@mbgm31",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
　――二条の流星は天を駆け巡り交差しまた巡る。

　赤の星は餓狼めいて獰猛に。
　銀の星は雌鹿めいて軽やかに。

　咆哮が夜空を叩く。
　笑声が夜空を渡る。

　赤色の武人は慟哭の響きで太刀を繰り出し、
　銀色の武人は抱擁の柔らかさでそれを流す。

　怒りを、慙愧を、無念を、悲嘆を、
　喜びが、慰撫が、許容が、愉悦が迎える。

　第四幕――
　この夜最後の一幕は、最初の幕に<RUBY text="なら">倣</RUBY>っての決闘か。

　否。
　そうでは、ない。

　これは<RUBY text="まじわり">交情</RUBY>。

　戯れであった。
　無粋な男と、彼をあしらう高雅な姫の。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	RFlashDelete();

	CreateTextureSP("絵背景100", 1000, Center, 0, "cg/bg/bg001_空a_03.jpg");

	StC(1500,@-60,@+300,"cg/st/3d銀星号_騎航_通常.png");
	Rotate("@StC*", 0, @0, @0, @280, null,false);
	Request("@StC*", Smoothing);
	FadeStC(0,true);

	StR(1500,@0,@576,"cg/st/3d村正初期_騎航_戦闘.png");
	Zoom("@StR*", 0, 1200, 1200, null, true);

	Rotate("@StR*", 0, @0, @0, @90, null,false);
	Request("@StR*", Smoothing);

	SetVolume("SE*", 500, 0, null);

	Move("@StC*", 300, @-20, @-20, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_03_01_1", true);


	OnSE("se戦闘_動作_空突進01",1000);
	Move("@StC*", 500, @-300, @-1000, Dxl1, false);
	DeleteStC(300,false);

	Wait(300);

	Move("@StR*", 150, 200, -40, Dxl1, false);
	FadeStR(200,true);

	OnSE("se戦闘_動作_空突進02",1000);
	Move("@StR*", 1000, @-300, @-1200, Dxl1, false);
	DeleteStR(300,false);

	Wait(250);

	CreateColorEXadd("白転", 25000, "#FFFFFF");
	Fade("白転", 300, 1000, null, true);

	CreateTextureEX("絵EF100", 2000, Center, 0, "cg/ef/ef019_銀星号突貫03.jpg");
	Rotate("絵EF100", 0, @180, @0, @0, null,true);
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	Move("絵EF100", 0, -512, -288, Dxl1, false);
	Request("絵EF100", Smoothing);
	SetBlur("絵EF100", true, 3, 500, 50, false);

	CreateTextureSP("絵背景100", 1000, Center, 0, "cg/bg/bg002_空a_03.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Move("絵背景100", 0, @0, -288, Dxl1, false);

	DrawDelete("白転", 200, 100, "slide_06_00_1", true);

	OnSE("se戦闘_動作_空上昇01",1000);
	Move("絵EF100", 500, 0, 0, Dxl1, false);
	Zoom("絵EF100", 500, 1000, 1000, Dxl1, false);
	Fade("絵EF100", 1000, 1000, null, true);

	Move("絵背景100", 0, 0, 0, Dxl1, true);
	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Fade("絵EF100", 500, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　白銀は天へと舞い踊る。
　深紅も追って駆け昇る。

　月へ。
　月を目指して。

　だからかもしれない。
　天楼の冷えた輝きは相応しい者を迎え入れ、相容れ
ざるものを跳ね除けたのかもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//嶋：出来ればここでもう一演出
//◆奈：とりあえず入れとく。

	CreateTextureEX("絵EF100", 2000, Center, 0, "cg/ef/ef019_銀星号突貫03.jpg");
	CreateTextureEX("絵EF200", 2500, Center, 0, "cg/ef/ef020_村正突貫03.jpg");
	CreateTextureEX("絵EF300", 3000, Center, 0, "cg/ef/ef019_銀星号突貫04.jpg");
	Zoom("絵EF300", 0, 2000, 2000, null, true);
	Request("絵EF300", Smoothing);
	Rotate("絵EF100", 0, @180, @0, @0, null,true);
	Rotate("絵EF300", 0, @180, @0, @320, null,true);
	OnSE("se戦闘_動作_空突進03",1000);
	Fade("絵EF100", 200, 1000, null, false);
	Fade("絵EF200", 200, 500, null, true);
	Wait(200);
	Fade("絵EF300", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0861]
　銀の妖精はどこまでも高みへ。
　赤の鬼神は地獄に呼び戻されるかの如く引き離され。

　天頂へ至る白銀の彗星。

　月輪の輝きをあたかも玉座のように背負いながら、
尚も駆け上がろうとあがく深紅の鬼を見下ろして。

　兜の裏に微笑むその口元が、一節の詩を唄った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 500, 0, null);

	CreateTextureEX("絵背景100", 3500, Center, 0, "cg/bg/bg002_空a_03.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

	SetFwC("cg/fw/fw銀星号_通常.png");

	#voice_on_銀星号=true;

	SetBacklog("　　　　「天座失墜――小彗星」", "voice/ma00/0001610a14", 光);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【光】
<voice name="光" class="光" src="voice/ma00/0001610a14">
　
　　　　「<RUBY text="フォーリンダウン">天座失墜</RUBY>――<RUBY text="レイディバグ">小彗星</RUBY>」

</PRE>
	SetTextEXC();
	Request("@text0860", NoLog);
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フォーリンダウン・レイディバグ
//◆高々度から急降下、敵の直上で回転、踵キック。
//◆激突。撃墜

//嶋：ちょっと修正
//奈：更に修正
/*
	CreateTextureEX("絵ev50", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	CreateTextureSP("絵ev40", 9000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	CreateTextureEX("絵ev60", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	SetBlur("絵ev60", true, 3, 500, 100, false);

	CreateTextureEX("絵ev100", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	CreateTextureEX("絵ev200", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_b.jpg");
	CreateTextureEX("絵ev300", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_c.jpg");
	CreateTextureEX("絵ev400", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");

	CreateTextureEX("絵ev410", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");
	SetBlur("絵ev410", true, 3, 500, 100, false);

	CreateColorEX("絵色1000", 15000, "White");
	CreateColorEX("絵色100", 17000, "Black");

	OnSE("se人体_動作_跳躍03",1000);
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	Fade("絵色1000", 0, 1000, null, true);
	SetVertex("絵ev50", 0, 0);
	Zoom("絵ev50", 0, 2000, 2000, Dxl1, true);
	Fade("絵ev50", 0, 1000, null, true);
	SetBlur("絵ev50", true, 3, 500, 100, false);
//	Move("絵ev50", 1500, -1024, -576, Dxl2, false);
	Move("絵ev50", 0, -1024, -576, Dxl2, false);
	Request("絵ev50", Smoothing);
	Fade("絵色1000", 1000, 500, null, true);
	Fade("絵色1000", 1000, 0, null, false);
//	OnSE("se戦闘_動作_空突進03",1000);
	OnSE("se特殊_陰義_発動01",1000);
	Move("絵ev50", 1500, @+1024, @+576, Dxl2, true);

//	Wait(500);
*/

	CreateColorEXadd("白", 10000, "WHITE");

	Fade("白",200,1000,null,true);

	MovieSESet(16000,"mv小彗星_a","se特殊_mv用_小彗星_a");
	MovieSEStart2(300,1000);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	Fade("フラッシュ白",500,1000,null,true);

	Delete("白");

	Wait(500);

//	CreateSE("SE01","se戦闘_破壊_爆発01");
//	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色1000", 500, 1000,null,true);
	Delete("絵ev*");
	Delete("絵EF*");
	Delete("絵背景*");

	CreateColorEX("絵色100", 17000, "Black");
//◆ブラックアウト
//◆ウェイト
	Fade("絵色100", 1500, 1000,null,true);
	Delete("絵色1000");
	Delete("フラッシュ白");
	Wait(2000);

	SetVolume("SE01", 1500, 0, null);

//◆荒れ野？　倒れる村正
	CreateTextureSP("絵ev10", 1000, -300, InBottom, "cg/ev/resize/ev101_プロローグ_a.jpg");
	CreateTextureEX("絵ev20", 1000, -700, 0, "cg/ev/resize/ev101_プロローグ_a.jpg");
	CreateTextureEX("絵ev100", 1000, Center, Middle, "cg/ev/ev101_プロローグ_a.jpg");
	CreateTextureEX("絵ev200", 1200, Center, Middle, "cg/ev/ev101_プロローグ_b.jpg");
	CreateTextureEX("絵ev300", 2000, Center, Middle, "cg/ev/ev101_プロローグ_c.jpg");

	CreateSE("SE01","se自然_火_火災倒壊");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Wait(1500);

	Move("絵ev10", 6000, @+300, @0, AxlDxl, false);
	Fade("絵色100", 1500, 0,null,true);

	Wait(3000);

	Move("絵ev20", 6000, @-300, @0, AxlDxl, false);
	Fade("絵ev20", 1000, 1000,null,true);

	Wait(3000);

	Fade("絵ev100", 1000, 1000,null,true);

//◆シュイーンと舞い降りる銀星号。村正の上に浮遊

	SetFwC("cg/fw/fw村正武者_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001620a00">
「……銀星号……」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma00/0001630a14">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色1000", 15000, "White");
	Fade("絵色1000", 500, 1000,null,true);

//◆村正へ手を伸ばす銀星号。村正の野太刀がぷかーと浮かぶ
	Fade("絵ev200", 0, 1000,null,true);

	Fade("絵色1000", 1000, 0,null,true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001640a00">
「俺の野太刀……？
　どうするつもりだ……」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma00/0001650a14">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorEX("絵色100", 15000, "White");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵色100", 200, 1000, null, true);

	Fade("絵ev300", 0, 1000,null,true);
	Delete("絵ev100");
	Delete("絵ev200");
	FadeDelete("絵色100", 300, true);
//◆パキーンと割れる音。フラッシュ。
//◆野太刀が七個の光る粒に変わっている

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001660a00">
「……〝卵〟……！」

//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001670a00">
「やめろ……またそれをばら撒くつもりか！」

//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001680a00">
「寄生体を生み出すのか！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg001_空a_03.jpg");
	Fade("絵背景100", 0, 1000, null, true);

//	StC(1200,@0,@0,"cg/st/3d銀星号_騎航_通常.png");
//	FadeStC(0,true);
	CreateSE("SE02","se戦闘_動作_空上昇01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeDelete("絵ev300", 300, true);

//◆ヒュン。飛行音と共にワイプアウト
//◆夜空


	Wait(100);

//	CreateSE("SE02","se戦闘_動作_突進01");
//	MusicStart("SE02",0,1000,0,1000,null,false);

//	Move("@StC*", 300, @+1000, @-100, null, false);
//	DeleteStC(300,true);


	CreateTextureEX("絵背景200", 1000, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");
	CreateSE("SE01a","se自然_火_火災倒壊");
	MusicStart("SE01a",500,1000,0,1000,null,true);

	Fade("絵背景200", 1000, 1000, null, true);
	Delete("絵背景100");

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001690a00">
「待て！」

//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001700a00">
「待て……ぐふっ」

//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001710a00">
「…………光…………！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//奈：以下、ちとタイミング修正しました
	CreateColorEX("色100", 20000, "Black");
	SetVolume("SE*", 3000, 0, null);
	SetVolume("@mbgm*", 4000, 0, null);
	Fade("色100", 2000, 1000, null, true);

	DeleteStA(0,true);
	Delete("絵*");

	CreateTextureEX("logo001", 1000, Center, Middle, "cg/sys/Telop/lg_under.png");
	CreateTextureEX("logo002", 1000, Center, Middle, "cg/sys/Telop/lg_muramasa.png");

	CreateTextureEX("logo003", 1000, Center, Middle, "cg/sys/Telop/lg_装.png");
	CreateTextureEX("logo004", 1000, Center, Middle, "cg/sys/Telop/lg_甲.png");
	CreateTextureEX("logo005", 1000, Center, Middle, "cg/sys/Telop/lg_悪.png");
	CreateTextureEX("logo006", 1000, Center, Middle, "cg/sys/Telop/lg_鬼.png");
	CreateTextureEX("logo007", 1000, Center, Middle, "cg/sys/Telop/lg_村.png");
	CreateTextureEX("logo008", 1000, Center, Middle, "cg/sys/Telop/lg_正.png");

	CreateTextureEX("logo009", 400, Center, Middle, "cg/sys/Telop/lg_村正.jpg");
	CreateTextureEX("logo010", 900, Center, Middle, "cg/sys/Telop/lg_下白.jpg");

	CreateStencil("マスク０",16100,center,Middle,128,"cg/sys/Telop/lg_under.png",false);
	CreateColor("マスク０/logoM100", 16100, 0, 0, 1024, 576, #990000);
	Fade("マスク０/logoM100", 0, 0, null, true);
	Zoom("マスク０/logoM100", 0, 1100, 1100, null, true);

	CreateStencil("マスク１",16100,center,Middle,128,"cg/sys/Telop/lg_装.png",false);
	CreateColor("マスク１/logoM001", 16100, 0, 0, 1024, 576, "White");
	Fade("マスク１/logoM001", 0, 0, null, true);

	CreateStencil("マスク２",16100,center,Middle,128,"cg/sys/Telop/lg_甲.png",false);
	CreateColor("マスク２/logoM002", 16100, 0, 0, 1024, 576, "White");
	Fade("マスク２/logoM002", 0, 0, null, true);

	CreateStencil("マスク３",16100,center,Middle,128,"cg/sys/Telop/lg_悪.png",false);
	CreateColor("マスク３/logoM003", 16100, 0, 0, 1024, 576, "White");
	Fade("マスク３/logoM003", 0, 0, null, true);

	CreateStencil("マスク４",16100,center,Middle,128,"cg/sys/Telop/lg_鬼.png",false);
	CreateColor("マスク４/logoM004", 16100, 0, 0, 1024, 576, "White");
	Fade("マスク４/logoM004", 0, 0, null, true);


	CreateStencil("マスク５",16100,center,Middle,128,"cg/sys/Telop/lg_村.png",false);
	CreateColor("マスク５/logoM005", 16100, 0, 0, 1024, 576, "White");
	Fade("マスク５/logoM005", 0, 0, null, true);

	CreateStencil("マスク６",16100,center,Middle,128,"cg/sys/Telop/lg_正.png",false);
	CreateColor("マスク６/logoM006", 16100, 0, 0, 1024, 576, "White");
	Fade("マスク６/logoM006", 0, 0, null, true);

	Request("マスク１/logoM001", AddRender);
	Request("マスク２/logoM002", AddRender);
	Request("マスク３/logoM003", AddRender);
	Request("マスク４/logoM004", AddRender);
	Request("マスク５/logoM005", AddRender);
	Request("マスク６/logoM006", AddRender);

	CreateColorSP("絵色100", 500, "Black");
	Delete("色100");

	Wait(4000);

	OnSE("se戦闘_攻撃_刀衝突02",800);
	Fade("マスク１/logoM001", 100, 1000, Dxl1, true);
	Fade("logo003", 0, 1000, null, true);
	Fade("マスク１/logoM001", 300, 0, Axl1, true);

	Wait(200);

	OnSE("se戦闘_攻撃_刀衝突02",800);
	Fade("マスク２/logoM002", 100, 1000, Dxl1, true);
	Fade("logo004", 0, 1000, null, true);
	Fade("マスク２/logoM002", 300, 0, Axl1, true);

	Wait(200);

	OnSE("se戦闘_攻撃_刀衝突02",800);
	Fade("マスク３/logoM003", 100, 1000, Dxl1, true);
	Fade("logo005", 0, 1000, null, true);
	Fade("マスク３/logoM003", 300, 0, Axl1, true);

	Wait(200);

	OnSE("se戦闘_攻撃_刀衝突02",800);
	Fade("マスク４/logoM004", 100, 1000, Dxl1, true);
	Fade("logo006", 0, 1000, null, true);
	Fade("マスク４/logoM004", 300, 0, Axl1, true);

	Wait(1500);

	OnSE("se特殊_鎧_装着03",800);

	Fade("マスク５/logoM005", 100, 1000, Dxl1, false);
	Fade("マスク６/logoM006", 100, 1000, Dxl1, true);
	Fade("logo001", 300, 1000, null, false);
	Fade("logo002", 300, 1000, null, false);
	Fade("logo007", 0, 1000, null, false);
	Fade("logo008", 0, 1000, null, true);
	Fade("マスク５/logoM005", 500, 0, Dxl1, false);
	Fade("マスク６/logoM006", 500, 0, Dxl1, true);


	WaitKey(5000);

//◆フェードアウト
	ClearWaitAll(3000, 2000);


..//ジャンプ指定
//次ファイル　"ma01_001.nss"

//タイトル画面。それなりに演出。





}


.//ma00_fire
function ma00_fire(){


	CreateTextureEX("fire_Move01", 1000, 0, -388, "cg/bg/resize/bg004_鄙びた村b_02.jpg");
	Request("fire_Move01", Smoothing);

	CreateColor("fire_Move02", 2500, 0, 0, 1024, 576, #a44809);
	Fade("fire_Move02", 0, 0, null, true);
	SetAlias("fire_Move02","fire_Move02");
	Request("fire_Move02", AddRender);

	CreateProcess("町火", 150, 0, 0, "ma00_fireProcess");
	SetAlias("町火","町火");
	Request("町火", Start);

}

.//ma00_fireDelete
function ma00_fireDelete(){

	Delete("@fire_Move01");
	Delete("@fire_Move02");
	Delete("@町火");

}

.//ma00_fireProcess
function ma00_fireProcess(){

　begin:

	$ma00_t01 = 150;
	$ma00_t02 = 180;
	$ma00_t03 = 300;
	$ma00_t04 = 200;
	$ma00_t05 = 150;
	$ma00_t06 = 400;
	$ma00_t07 = 140;
	$ma00_t08 = 200;
	$ma00_t09 = 220;
	$ma00_t10 = 160;

	$ma00_f01 = 80;
	$ma00_f02 = 60;
	$ma00_f03 = 120;
	$ma00_f04 = 150;
	$ma00_f05 = 60;
	$ma00_f06 = 200;
	$ma00_f07 = 130;

	Move("@fire_Move01", 100000, @-1024, @0, null, false);

	Fade("@fire_Move01", 0, 1000, null, true);

	DrawTransition("@fire_Move02", 0, 0, 200, 800, null, "cg/data/slide_02_00_1.png", true);

	while(1){
		Fade("@fire_Move02", $ma00_t01, $ma00_f01, null, true);
		Fade("@fire_Move02", $ma00_t02, $ma00_f02, null, true);
		Fade("@fire_Move02", $ma00_t03, $ma00_f03, null, true);
		Fade("@fire_Move02", $ma00_t04, $ma00_f04, null, true);
		Fade("@fire_Move02", $ma00_t05, $ma00_f05, null, true);
		Fade("@fire_Move02", $ma00_t06, $ma00_f06, null, true);
		Fade("@fire_Move02", $ma00_t07, $ma00_f07, null, true);
		Fade("@fire_Move02", $ma00_t08, $ma00_f02, null, true);
		Fade("@fire_Move02", $ma00_t09, $ma00_f03, null, true);
		Fade("@fire_Move02", $ma00_t10, $ma00_f05, null, true);
		Fade("@fire_Move02", $ma00_t05, $ma00_f04, null, true);
	}


}

..//ma00_FireMoveAuto
function ma00_FireMoveAuto(){


	CreateProcess("fire_moveauto", 150, 0, 0, "ma00_FireMoveAutoProcess");
	SetAlias("fire_moveauto","fire_moveauto");
	Request("fire_moveauto", Start);

}

..//ma00_FireMoveAutoProcess
function ma00_FireMoveAutoProcess(){

	begin:

	while(1){
		Zoom("@fire_Move02", 2500, 1300, 1300, null, true);
		Zoom("@fire_Move02", 2500, 1800, 1800, null, true);
		Zoom("@fire_Move02", 2500, 1300, 1300, null, true);
		Zoom("@fire_Move02", 2500, 1300, 1600, null, true);
		Zoom("@fire_Move02", 2500, 1800, 1000, null, true);
		Zoom("@fire_Move02", 2500, 1300, 1700, null, true);
	}

}

function ma00_FireMoveAutoDelete(){

	Delete("@fire_moveauto");

}



//◆２３４５６７８９０１２３４５６７８９０１２３４


