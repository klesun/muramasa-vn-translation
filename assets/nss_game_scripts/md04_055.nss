
//<continuation number="760">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_055.nss_MAIN
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
	#bg069_普陀楽城内広間_01a=true;
	#bg100_天守閣_02=true;
	#ev145_桜子を犯す童心_a=true;
	#ev143_邦氏と桜子_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_056.nss";

}

scene md04_055.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_054vs.nss"

//◆城主の間。bg069
//◆邦氏

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	CreateTextureSP("絵背景", 4900, Center, Middle, "cg/bg/bg100_天守閣_02.jpg");

	OnBG(100, "bg069_普陀楽城内広間_01a.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm32", 0, 1000, true);

	CreateSE("SE01L","se背景_ガヤ_戦場の風景02_L");
	CreateSE("SE01La","se背景_ガヤ_合戦01");
	MusicStart("SE01L",0,1000,0,1000,null,true);
	MusicStart("SE01La",0,1000,0,1000,null,true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

	Wait(1000);

	SetVolume("SE01L*", 2000, 500, null);
	FadeDelete("絵背景", 1500, true);

	Wait(500);

	StL(1100, @0, @0, "cg/st/st邦氏_通常_私服.png");
	FadeStL(500, true);

	Wait(500);

	SetFwC("cg/fw/fw邦氏_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550010b49">
（…………）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550020b49">
（戦いの音が、ずっと途絶えない……）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550030b49">
（まだ遠い。
　けれど、近付いている）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550040b49">
（これは……破滅の響き）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550050b49">
（…………）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550060b49">
（……滅びるのか……）

{	SetVolume("SE*", 10000, 0, null);
	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550070b49">
（六波羅が）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550080b49">
（お爺さまの創った六波羅が）

{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550090b49">
（…………）

{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550100b49">
（いや）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550110b49">
（滅びるべきなんだ）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550120b49">
（六波羅は……<RUBY text="・・・・・">悪しきもの</RUBY>だ……）

{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550130b49">
（……この、僕も……）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550140b49">
（…………）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550150b49">
（滅びれば……いい）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戸の開く音。足音

	OnSE("se日常_建物_スライド開く01", 1000);
	WaitKey(1200);
	CreateSE("SE01b","se人体_足音_歩く09");
	MusicStart("SE01b",0,1000,0,700,null,false);
	WaitKey(1000);

//	DeleteStL(150,true);

	StC(1000, @-250, @0, "cg/st/st六波羅将校_通常_制服.png");
//	StL(1000, @-150, @0, "cg/st/st邦氏_通常_私服.png");
	Move("@StC*", 300, @50, @0, null, false);
//	FadeStL(150, false);
	OnSE("se人体_動作_一歩", 1000);
	FadeStC(150, true);


	SetNwC("cg/fw/nw邦氏の護衛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／邦氏護衛】
<voice name="ｅｔｃ／邦氏護衛" class="その他男声" src="voice/md04/0550160e253">
「何だ、お前は!?
　誰の許しを得てここへ来た!!」

{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550170b49">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150);//―――――――――――――――――――――――――――――

//◆桜子

	SetVolume("SE01b", 300, 0, null);


	StR(1000, @0, @0, "cg/st/st桜子_通常_私服ｃ.png");
	FadeStR(500, true);

	Wait(500);

	SetFwC("cg/fw/fw桜子_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【桜子】
<voice name="桜子" class="桜子" src="voice/md04/0550180b28">
「――――」

{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550190b49">
「……あ……」

{	NwC("cg/fw/nw邦氏の護衛.png");}
//【ｅｔｃ／邦氏護衛】
<voice name="ｅｔｃ／邦氏護衛" class="その他男声" src="voice/md04/0550200e253">
「ええい、下がれ下がれ！
　逆賊の娘風情が、殿下の御前を汚しおって」

//【ｅｔｃ／邦氏護衛】
<voice name="ｅｔｃ／邦氏護衛" class="その他男声" src="voice/md04/0550210e253">
「下がらぬとあらば斬って捨てるぞ!!」

{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550220b49">
「待てっ！
　構わぬ、お通しせよ」

{	NwC("cg/fw/nw邦氏の護衛.png");}
//【ｅｔｃ／邦氏護衛】
<voice name="ｅｔｃ／邦氏護衛" class="その他男声" src="voice/md04/0550230e253">
「し、しかし、殿下」

{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550240b49">
「余が良いと言っている。
　それにお前は異を唱えるのか？」

{	NwC("cg/fw/nw邦氏の護衛.png");}
//【ｅｔｃ／邦氏護衛】
<voice name="ｅｔｃ／邦氏護衛" class="その他男声" src="voice/md04/0550250e253">
「…………」

{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550260b49">
「皆、下がれ！
　余が呼ぶまでは戻るでない」

{	NwC("cg/fw/nw邦氏の護衛.png");}
//【ｅｔｃ／邦氏護衛】
<voice name="ｅｔｃ／邦氏護衛" class="その他男声" src="voice/md04/0550270e253">
「……はッ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//―――――――――――――――――――――――――――――

//◆出て行く側衆

	DeleteStC(150,false);
	Move("@StC*", 150, @-20, @0, null, false);
	OnSE("se人体_動作_一歩", 1000);
//	DeleteStL(150,true);
//◆邦氏と桜子

	Wait(500);

	OnSE("se日常_建物_扉開閉01",1000);

	Wait(1500);


//	StL(1000, @0, @0, "cg/st/st邦氏_通常_私服.png");
//	FadeStL(150, true);


	SetFwC("cg/fw/fw桜子_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【桜子】
<voice name="桜子" class="桜子" src="voice/md04/0550280b28">
「……」

{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550290b49">
「桜子どの……」

{	FwC("cg/fw/fw桜子_怒り.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/md04/0550300b28">
「……」

{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550310b49">
「桜子どの、その、今日は――」

{	FwC("cg/fw/fw桜子_怒り.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/md04/0550320b28">
「……」

{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550330b49">
「……」

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550340b49">
（何を……）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550350b49">
（何を言えばいいんだ）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550360b49">
（何を言えるんだ）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550370b49">
（この人に対して）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550380b49">
（僕は、あの時……
　何もできなかったのに）

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150);//―――――――――――――――――――――――――――――

//◆回想：能会。童心の暴行
	EfRecoIn1(18000,600);

	CreateTextureSP("絵", 5000, Center, 0, "cg/ev/resize/ev145_桜子を犯す童心_dl.jpg");
	SetTone("絵", Sepia);

	EfRecoIn2(300);
	WaitKey(1000);

	SetFwR("cg/fw/fw童心_バサラ.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0550390a09">
「岡部の姫よ！
　六波羅を語れい！」

{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/md04/0550400b28">
「――外道ッッ!!」

{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0550410a09">
「いかにも！」

{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/md04/0550420b28">
「人非人ッッ!!」

{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0550430a09">
「いかにも！」

{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/md04/0550440b28">
「鬼畜！　悪魔！
　地獄の底から来た<RUBY text="やつばら">奴輩</RUBY>!!」

{	FwR("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0550450a09">
「いかにもッッ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);
	Delete("絵");

	EfRecoOut2(600,true);

	Wait(500);

	SetFwC("cg/fw/fw邦氏_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550460b49">
（……何も言えない……）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550470b49">
（言えるわけが、ない）

{	FwC("cg/fw/fw桜子_怒り.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/md04/0550480b28">
「…………」

{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550490b49">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆しゃきん。短刀を抜く

	OnSE("se戦闘_動作_刀構え01", 1000);
	WaitKey(100);
	Move("@StR*", 100, @-10, @0, DxlAuto, false);
	WaitKey(1000);

	SetFwC("cg/fw/fw邦氏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550500b49">
「――――!!」

{	FwC("cg/fw/fw桜子_憎悪.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/md04/0550510b28">
「足利邦氏ッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一刺し。ずぶ。
	OnSE("se戦闘_攻撃_刀刺さる01", 1000);
	Move("@StR*", 250, @-150, @0, Axl1, false);
	WaitKey(100);
//◆血

	CreateColorEXadd("フラッシュ", 15000, "RED");
	Fade("フラッシュ",0,1000,null,false);
	CreateTextureEX("絵EF", 1500, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	DeleteStR(0,false);
	Fade("絵EF", 0, 1000, null, true);
	Fade("フラッシュ",1000,1000,null,false);
	FadeDelete("フラッシュ", 500, true);


	SetFwC("cg/fw/fw邦氏_自失.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550520b49">
「……っ……」

{	FwC("cg/fw/fw桜子_怒り.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/md04/0550530b28">
「……」

{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550540b49">
「くっ、ぅ……」

{	FwC("cg/fw/fw邦氏_自失.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550550b49">
（…………あぁ…………）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550560b49">
（これで）

{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550570b49">
（これで、いい）

{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550580b49">
（これで……いいんだ……）

{	FwC("cg/fw/fw桜子_憎悪.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/md04/0550590b28">
「まだよ！」

{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550600b49">
「……？」

{	FwC("cg/fw/fw桜子_憎悪.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/md04/0550610b28">
「悪鬼の棟梁！
　あなたにはすることがあるでしょう！」

{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550620b49">
「――――」

{	FwC("cg/fw/fw邦氏_自失.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550630b49">
（悪鬼の……棟梁……）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550640b49">
（そうか）

{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550650b49">
（僕はもう、六波羅の長として――
　悪鬼の王としてしか、この人の心のなかに
いられないんだ）

{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550660b49">
（なら）

{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550670b49">
（ちゃんと）

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550680b49">
（僕は、悪鬼の王を）

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


	DeleteStA(0,true);

//	StR(1000, @0, @0, "cg/st/st桜子_通常_私服a.png");
//	FadeStR(0, true);
	FadeDelete("絵EF",1500,true);

//◆しゅら。抜刀


	OnSE("se戦闘_動作_刀構え02", 1000);
	SetFwC("cg/fw/fw邦氏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550690b49">
「――」

{	FwC("cg/fw/fw桜子_怒り.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/md04/0550700b28">
「――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//―――――――――――――――――――――――――――――

//	Move("@StL*", 250, @150, @0, Dxl2, false);
	WaitKey(100);
//◆一閃。ずぶ。

	CreateColorSP("黒幕１", 5000, "BLACK");
	CreateTextureSPadd("絵背景500", 10000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	OnSE("se戦闘_攻撃_刀振る02",1000);
	FadeDelete("絵背景500",1000,true);
	OnSE("se戦闘_攻撃_刀刺さる01", 1000);
	OnSE("se人体_血_たれる01", 1000);
	DeleteStL(0,true);
	CreateTextureEX("絵EF", 5500, Center, Middle, "cg/ef/ef004_汎用血雫.jpg");
	Fade("絵EF", 0, 1000, null, true);
	WaitKey(1500);
	FadeDelete("絵EF",700,false);
	OnSE("se人体_衝撃_転倒01", 1000);
/*
	StR(1000, @150, @0, "cg/st/st桜子_通常_私服a.png");
	FadeStR(0, true);

	StCR(1100, @0, @0, "cg/st/st邦氏_通常_私服.png");
	FadeStCR(0, true);
*/
	FadeDelete("黒幕１",1000,true);

	SetFwC("cg/fw/fw桜子_羞恥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【桜子】
<voice name="桜子" class="桜子" src="voice/md04/0550710b28">
「…………」

{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550720b49">
「…………」

{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/md04/0550730b28">
「……お上手ですのね……」

{	FwC("cg/fw/fw邦氏_自失.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550740b49">
「……ぁ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：桜子と邦氏の出会い

//ev143_邦氏と桜子_a

	EfRecoIn1(18000,600);

//おがみ：CGないのでシーン抜粋
//	CreateTextureSP("絵", 5000, Center, Middle, "cg/ev/ev143_邦氏と桜子_a.jpg");

	StL(1000, @0, @0,"cg/st/st邦氏_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st桜子_通常_私服a.png");
	FadeStR(0,true);
	FadeStL(0,true);
	OnBG(100,"bg065_普陀楽城内郭_01.jpg");
	FadeBG(0,true);


	EfRecoIn2(300);
	WaitKey(1000);

//◆戻り

	EfRecoOut1(300);
	Delete("絵");

	DeleteStA(0,true);

	OnBG(100, "bg069_普陀楽城内広間_01a.jpg");
	FadeBG(0, true);

	EfRecoOut2(600,true);


//	Move("@StR*", 300, @0, @50, null, true);

	WaitKey(500);
	OnSE("se人体_衝撃_転倒01", 1000);

	Wait(500);
//	Move("@StR*", 300, @0, @50, null, false);
//	DeleteStR(300,true);

	SetFwC("cg/fw/fw邦氏_自失.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/md04/0550750b49">
「……さくら……こ……」

{	FwC("cg/fw/fw桜子_涙.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/md04/0550760b28">
「…………」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	Move("@StMR*", 300, @0, @50, null, true);

	WaitKey(500);
	OnSE("se人体_衝撃_転倒01", 1000);

//	Move("@StMR*", 300, @0, @50, null, false);
//	DeleteStCR(300,true);

//◆ウェイト

	WaitKey(500);

//◆フェードアウト

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md04_056.nss"


	EfRecoIn1(18000,600);

	CreateTextureSP("絵", 5000, Center, Middle, "cg/ev/ev145_桜子を犯す童心_a.jpg");

	EfRecoIn2(300);
	WaitKey(1000);

//◆戻り

	SetFwR("cg/fw/fw童心_バサラ.png");

//【童心】
<voice name="童心" class="童心" src="voice/md04/0550390a09">
「岡部の姫よ！
　六波羅を語れい！」
