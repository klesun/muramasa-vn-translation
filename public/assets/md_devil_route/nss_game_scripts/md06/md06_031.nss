//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_031.nss_MAIN
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
	#bg009_鎌倉住宅街a_01=true;
	#bg113_駅のホームa_01=true;
	#bg037_競技場ガレージa_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_032.nss";

}

scene md06_031.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_030.nss"

//◆隣駅前。bg009
	SoundPlay("@msong05_short", 0, 1000, true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	OnBG(100, "bg009_鎌倉住宅街a_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　無用に長い時間を費やして、ようやく隣駅まで来る。
　
　……村正が<RUBY text="さら">攫</RUBY>われてから、どれだけ経ったろう。

　考える時間も惜しく、考えたくもなく。
　脇目を振らず、駅の中へ飛び込む。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆bg113
	CreateColorSP("黒幕", 25000, "#000000");
	DrawTransition("黒幕", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	OnBG(100, "bg113_駅のホームa_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕", 150, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("黒幕");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　当然だったが、列車はとうにいない。
　人は幾人もいる――だが雪車町の姿は無い。村正も。

　何処だ。
　ここから、何処に行った!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310010a00">
「誰か――！」

{	NwC("cg/fw/nw通行人Ａ.png");}
//【ｅｔｃ／通行人Ａ】
<voice name="ｅｔｃ／通行人Ａ" class="その他男声" src="voice/md06/0310020e213">
「……？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310030a00">
「ここで蝦夷の女性を見ませんでしたか!?」

{	NwC("cg/fw/nw通行人Ｂ.png");}
//【ｅｔｃ／通行人Ｂ】
<voice name="ｅｔｃ／通行人Ｂ" class="その他男声" src="voice/md06/0310040e214">
「…………」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310050a00">
「杖を持ったやくざ者は……!?」

{	NwC("cg/fw/nw通行人Ｃ.png");}
//【ｅｔｃ／通行人Ｃ】
<voice name="ｅｔｃ／通行人Ｃ" class="その他男声" src="voice/md06/0310060e215">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　皆、通り過ぎてゆく。
　何を騒ぎ立てているのだ、と言いたげな一瞥だけを
残して。

　誰も見ていないのか!?
　いや、誰か……一人くらいは！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310070a00">
「髪の長い蝦夷の女か……病人じみた顔色の
筋者です！
　誰か見ていませんかっ!?」

{	NwC("cg/fw/nw通行人Ｄ.png");}
//【ｅｔｃ／通行人Ｄ】
<voice name="ｅｔｃ／通行人Ｄ" class="その他男声" src="voice/md06/0310080e216">
「…………」

{	NwC("cg/fw/nw通行人Ｅ.png");}
//【ｅｔｃ／通行人Ｅ】
<voice name="ｅｔｃ／通行人Ｅ" class="その他男声" src="voice/md06/0310090e217">
「…………」

{	NwC("cg/fw/nw通行人Ｆ.png");}
//【ｅｔｃ／通行人Ｆ】
<voice name="ｅｔｃ／通行人Ｆ" class="その他男声" src="voice/md06/0310100e218">
「……あぁ……。
　げっそりしたチンピラ風の奴なら、さっき
見たけど」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　無言の群集の中、たった一人。
　呟くのが聴こえた。

　いた……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw通行人Ｆ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／通行人Ｆ】
<voice name="ｅｔｃ／通行人Ｆ" class="その他男声" src="voice/md06/0310110e218">
「なんかでかい箱を担いでたな」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310120a00">
「何処です!?
　何処へ行きました!?」

{	NwC("cg/fw/nw通行人Ｆ.png");}
//【ｅｔｃ／通行人Ｆ】
<voice name="ｅｔｃ／通行人Ｆ" class="その他男声" src="voice/md06/0310130e218">
「えーっと……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310140a00">
「……」

{	NwC("cg/fw/nw通行人Ｆ.png");}
//【ｅｔｃ／通行人Ｆ】
<voice name="ｅｔｃ／通行人Ｆ" class="その他男声" src="voice/md06/0310150e218">
「駅を出て……
　どっちだったかなぁ」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310160a00">
「思い出して下さい！
　……思い出せっ！」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310170a00">
「早く!!」

{	NwC("cg/fw/nw通行人Ｆ.png");}
//【ｅｔｃ／通行人Ｆ】
<voice name="ｅｔｃ／通行人Ｆ" class="その他男声" src="voice/md06/0310180e218">
「……おいおい。なんだそりゃ。
　人に物を訊く態度じゃねえぞ」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310190a00">
「そんな事はいい！
　何処だ！　二人は……村正はっ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　村正。
　その名を口にして、深い喪失を覚える。

　あいつが傍にいない。
　片時も離れなかった存在が、今はいない。

　いて欲しいのに。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310200a00">
（村正）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　大きな大きな欠落。
　失った今、ひしと想う。

　確かな愛情を。

　愛している。
　求めている。

　俺にはあいつが要る――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw通行人Ｆ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ｅｔｃ／通行人Ｆ】
<voice name="ｅｔｃ／通行人Ｆ" class="その他男声" src="voice/md06/0310210e218">
「ちっ。
　何だこいつは……」

//【ｅｔｃ／通行人Ｆ】
<voice name="ｅｔｃ／通行人Ｆ" class="その他男声" src="voice/md06/0310220e218">
「口の利き方覚えて、出直しな！
　あばよ！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310230a00">
「待っ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　気に食わなげに舌打ちして、男が身を翻す。
　足音荒く、歩き去っていこうとする。

　何故だ。
　何故、わかってくれない。

　大切な時なのに！
　愛する人を救えるか、その瀬戸際なのに！

　どうして理解してくれないのだ!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	EfRecoIn1(18000,600);

	CreateTextureSP("絵背景400", 400, Center, Middle, "cg/bg/bg037_競技場ガレージa_01.jpg");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw皇路_困惑.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【皇路】
<voice name="皇路" class="皇路" src="voice/md06/0310240b24">
「どうして……
　どうしてこんなことになる」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/md06/0310250b24">
「やっと……勝利を手にしたのに。
　やっと、世界に挑戦できるのに」

//【皇路】
<voice name="皇路" class="皇路" src="voice/md06/0310260b24">
「みっ、湊斗さん……あなたは僕を応援して
くれていたんでしょう！
　僕の無念を知っているでしょう！」

//【皇路】
<voice name="皇路" class="皇路" src="voice/md06/0310270b24">
「僕は……僕は、ようやくあの挫折からここ
まで還ってきたんだ！
　どれほどの苦労だったか！　あなたなら、
わかってくれるはずです！」


//【皇路】
<voice name="皇路" class="皇路" src="voice/md06/0310280b24">
「見逃してください……！
　お願いします……お願い……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃。斬殺
//◆ずばしゅ。
	EfRecoOut1(100);
	CreateColorEX("黒", 3000, "BLACK");
	Fade("黒", 500, 1000, null, true);
	EfRecoOut2(600,true);

	CreateSE("SE01a","se戦闘_攻撃_刀振る01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);

	SL_leftdownfade2(15);

	WaitKey(500);

	SL_centerdam(@0,@0,1600);
	OnSE("se人体_血_血しぶき01",1000);
	CreateColorEX("赤幕１", 15000, "#990000");
	Fade("赤幕１", 1500, 1000, null, false);
	SL_centerdamfade2(100);

//◆戻り
	PrintGO("上背景", 25000);
	CreateColorSP("絵色黒", 20000, "#000000");

	OnBG(100,"bg113_駅のホームa_01.jpg");
	FadeBG(0,true);

	Delete("黒*");
	Delete("赤*");
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵色黒", 1000, true);

	SetFwC("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310290a00">
「待ってくれっ！
　頼む……頼むから！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　男を引き止めようと、手を伸ばす。
　届かない。すり抜ける。

　男は去る。

　待て。
　待って、待ってくれ……！

　二人が何処へ行ったのか、手掛かりをくれ！
　でないと――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310300a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　駆け出そうとして。
　ふと、それが目に留まった。

　駅内の伝言板。
　
　その片隅。

{	SetVolume("@m*", 5000, 0, null);}
　雪車町、の署名と――
　短い文章。

　……俺宛の、連絡だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_032.nss"