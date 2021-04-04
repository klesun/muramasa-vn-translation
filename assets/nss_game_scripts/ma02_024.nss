//<continuation number="1160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_024.nss_MAIN
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
	#bg023_弥源太の家_03b=true;
	#bg023_弥源太の家_03b=true;
	#bg023_弥源太の家_03a=true;
	#bg020_山脈坑道_01=true;
	#bg020_山脈坑道_02=true;
	#bg022_山林a_03=true;
	#bg004_鄙びた村b_03=true;
	#bg002_空b_03=true;



	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;


	//★死亡処理
	$その他死亡=true;
	judgment_of_count();


//■未読既読判定２
	$BasGameName = $GameName;
	$GameName = $GameName + "_NEXT";
	$AllRead = Conquest($ConGameName,$GameName,null);

//■超速設定２
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定２
	$PreGameName = $GameName;
	$GameName = "ma03_001.nss";

//嶋：体験版用
//	$GameCircle=0;

}

scene ma02_024.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma02_023.nss"

	PrintBG("上背景", 15000);
	CreateColorSP("絵暗転", 5000, "#000000");
	Delete("上背景");

	SoundPlay("@mbgm26",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　雪車町一蔵は結論として、自分はまあそこそこ幸運
だったと、そう思うことにした。
　痛む体を、煎餅布団に横たえながら。

　あの<RUBY text="おまわり">警官</RUBY>から逃げ損ね、斜面を転げ落ち秋の温かく
もない川に没する羽目になったのは不運としても。
　凍死する前に拾われ手当てを受けられたのは、自分
のような人間にとっては稀有の奇貨。

　そうして結果的に、自分は生き延びている。
　ならやはり、幸運だったと言わねばならないだろう。

　懸念があるとすれば、ここにあの警官や、あの巡察
官などが踏み込んできた場合のことだが……
　その場合も何とかなるだろうと、筋者雪車町一蔵は
踏んでいる。

　何しろこの家には無力な子供が二人もいるのだ。
　取り押さえられる前にその片方でも人質にできれば、
活路は開ける。

　……こう考える時、雪車町という男の精神上に別段、
苦痛は存在しない。
　嗜虐的な喜びを覚えることもないが――いや。あの
警官やＧＨＱの女に一泡吹かせられるのなら。

　雪車町一蔵とはそういう男だ。
　卑小な人格を持ち、卑劣に生きてきた。
　それで良いと思っている。

　人を傷つけ、陥れて、小利を稼ぐことにのみ、興味
関心が向いた。そういうことにだけ知恵が回った。
　義侠だの、恩義だの、忠孝だの、そういった上等な
ものはどうしても理解できなかった。無意味だった。

　なら仕方ない、と雪車町一蔵は思うのだ。
　自分には卑小なことしかわからない。だから卑小に
生きる。
　上等な人生は、上等なことのわかる奴がやればいい。

　だから彼は躊躇わない。
　自分を助けた少女達に災いなす考えを弄ぶことにも、
そして、それを実行することにも。
　いつもの薄笑いを浮かべたまま、雪車町はやれる。

　その卑劣さは筋金入りだ。
　打撲の痛みに意識を朦朧とさせながらも、彼はその
ような考えを巡らし、戸口が開く音を聞き取った時に
は、行動に備えて隣の様子を窺った。卑劣さが違う。

　気配を殺し――今は意識が飛んでるから完璧だなど
と彼は愚昧なことをちらと考えた――息を殺し、この
部屋と隣室を隔てる障子戸の隙間へ、頭を運ぶ。
　そして、その向こうの光景を見た。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆隙間から覗いたっぽく、bg23を切り出す

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg023_弥源太の家_03b.jpg");
	DrawTransition("絵背景100", 0, 0, 200, 100, null, "cg/data/slide_06_00_1.png", true);

	OnSE("se日常_建物_スライド開く01",1000);
	DrawDelete("絵暗転", 1000, 100, "slide_01_04_1", true);


	SetFwC("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240010a12">
（……）

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240020a12">
（…………）

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240030a12">
（……なんだ？
　………起きてるつもりで、眠ってる……の、
か？）

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240040a12">
（なんでぇ……<RUBY text="・・">これ</RUBY>は）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);


//◆キリング判定
//◆自動的にアナザーを選択（そのようにポイント設定）

	ClearFadeAll(2500, true);

}



scene ma02_024.nss_NEXT
{
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 110, "#000000");

	OnBG(100,"bg023_弥源太の家_03b.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);
	Wait(2000);
	WaitPlay("@mbgm*", null);

//◆ざしゅ。ぶしゃー。
//◆血花
	SL_rightdown(@0, @0,1000);
	SL_rightdownfade2(10);

	Wait(1000);

	OnSE("se人体_血_血しぶき01",1000);
	CreateTextureSP("絵背景110", 110, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Delete("絵暗転");

	FadeDelete("絵背景110", 3000, true);

	StL(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStL(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
　――まずは姉から。
　くうくうと、安らかな息を立てて眠るその首を、
　
　刃音もない一刀で断ち切った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。弥源太家の晩餐。セピアカラー？

	PrintGO("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	CreateColorEXmul("絵色100", 1500, #847000);
	Fade("絵色100",0,400,null,true);

	FadeDelete("上背景", 2000, true);


	SetFwC("cg/fw/fwふき_困惑.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0240050b05">
「あっ、そうですよね。でも……
　武者の方ですし。六波羅の人達より本当の
お武家様って感じがしますし」


{	FwC("cg/fw/fwふき_笑い.png","Sepia");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0240060b05">
「やっぱりお武家様です」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。坑道前。姉妹の差し入れ

	PrintGO("上背景", 15000);

	OnBG(100,"bg020_山脈坑道_01.jpg");
	FadeBG(0,true);

	CreateColorEXmul("絵色100", 1500, #847000);
	Fade("絵色100",0,400,null,true);

	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	StR(1000, @-60, @0,"cg/st/stふき_通常_私服.png");
	StCR(1010, @60, @0,"cg/st/stふな_通常_私服.png");

	FadeStA(0,true);

	FadeDelete("上背景", 2000, true);


	SetFwC("cg/fw/fwふき_衝撃.png","Sepia");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0240070b05">
「こら、ふなっ！
　……じゃあ、どうぞ。おにぎりしかありま
せんけど。あ、こっちはお茶です」


{	FwC("cg/fw/fw景明_笑顔a.png","Sepia");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240080a00">
「これは、行き届いたこと。
　ふきさんは良い花嫁になられます」


{	FwC("cg/fw/fwふき_照れ.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0240090b05">
「……え、……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0240100b55">
「あまりおだてるなよ、御堂。
　なら貰ってくれなどと言い出しかねんぞ」


{	FwC("cg/fw/fwふき_照れ.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0240110b05">
「じ、じっちゃまー！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆血花
	PrintGO("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_03b.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	Wait(1000);

	CreateTextureEX("絵ＥＦ100", 100, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	Fade("絵ＥＦ100", 2000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
　死んでいる。
　即死であったろう。
　痛みも何もなかったろう。

　……だから何だというのか。
　当然与えられるべき未来を、今、理不尽に奪われた
人間にとって。

　死は死。殺は殺。ただの暴虐だ。

　――――次。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＦ100", 2000, true);

	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0039a]
　もう一つの布団を見下ろす。
　姉よりも一回り小さい、しかし同じように、平穏な
眠りの中にある姿。

{	OnSE("se戦闘_動作_刀構え01",1000);}
　太刀を逆手に持ち替える。
　切先を――心臓の上へ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。ふなと景明

	PrintGO("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	CreateColorEXmul("絵色100", 1500, #847000);
	Fade("絵色100",0,400,null,true);

	StR(1000, @0, @0,"cg/st/stふな_通常_私服.png");
	FadeStA(0,true);

	FadeDelete("上背景", 2000, true);


	SetFwC("cg/fw/fwふな_不思議.png","Sepia");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0240120b06">
「かまくらはもっとすごい？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240130a00">
「人が大勢います」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0240140b06">
「どのくらい？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240150a00">
「この村の倍の、十倍の、百倍ほど」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0240160b06">
「きゃー！
　すごいねぇ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆弥源太家
	PrintGO("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_03b.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240170a00">
「……ッ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぐさ。ずぶしゅ。生々しい音。
//◆血花

	PrintGO("上背景", 5000);
	CreateColorSP("絵暗転", 100, "#000000");
	Delete("上背景");

	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_down(@0, @0,1500);
	SL_downfade2(10);

	CreateSE("SE01","se人体_血_血しぶき01");
	MusicStart("SE01",0,1000,0,750,null,false);

	CreateTextureSP("絵ＥＦ90", 90, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	CreateTextureSP("絵ＥＦ100", 100, Center, Middle, "cg/ef/resize/ef006_汎用血しぶきtex.jpg");
	Delete("絵暗転");

	Wait(1000);

	FadeDelete("絵ＥＦ100", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
　血の花が、もう一輪。
　咲く。

　血花、二輪。
　平和な、平和であった、蝦夷の家に。
　今はもう、死しかない。

　弥源太老人も死んだ。
　二人の孫は後を追った――追わされた。
　
　助け上げた男の手で。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。決戦前の会話

	PrintGO("上背景", 15000);

	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);

	CreateColorEXmul("絵色100", 1500, #847000);
	Fade("絵色100",0,400,null,true);

	StR(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStA(0,true);

	FadeDelete("上背景", 2000, true);

	SetFwC("cg/fw/fw弥源太_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0240180b55">
「御堂。
　酒はいける口かな」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240190a00">
「……？
　それは、一応……人並み程度には」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0240200b55">
「では今宵は一献酌み交わそう。
　思えば御堂と出会ってからは忙しないこと
続きで、そんな暇もなかったが……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0240210b55">
「年寄りにとって若い者との酒は何よりの薬。
　だというにうちの孫は二人とも娘、しかも
まだ子供とあってはどうにもならぬ。
　得難い機会よ。御堂、付き合って貰えぬか」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆弥源太家
	PrintGO("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_03b.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240220a00">
「今宵は一献……
　今宵は、一献……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240230a01">
《……御堂》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240240a00">
「……大丈夫だ。
　俺は狂ってなどいない。
　狂ってなどいない」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240250a00">
「狂いなどしない。
　<RUBY text="・・・・・・・・・・・・">そんなところには逃げない</RUBY>」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240260a01">
《……そう。
　でも、違う》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240270a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240280a01">
《御堂。
　まだ終わってない》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240290a00">
「……？」


{	NwC("cg/fw/nwその他.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0240300b06">
「……けふっ。
　こほっ、けふっ、けふっ！」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240310a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	SoundPlay("@mbgm31",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　下の娘が――ふなが――目覚めている。
　まさか――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240320a01">
《見当を誤ったようね。
　姉と同じように首を刎ねていれば良かった
のよ》

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240330a00">
「……う……あ……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240340a01">
《顔を直視したくなかったんでしょう。
　そのお陰で……あの子は苦しんでいる》

{	FwC("cg/fw/fwふな_泣き.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0240350b06">
「けほ、えほっ、えぇっ……
　ねーや……いたいよ……ねーやぁ……
　じっちゃ…………」


{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240360a00">
「ひ……ひっ、ひぃ……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240370a01">
《早くしなさい！》

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240380a00">
「ひ……あぁ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_刀構え01",1000);
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_戦闘.png");
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　太刀を振りかぶる。
　苦しみ、喘ぐ、幼子の顔を確と、見定めて――
　その頭部を、今度こそ、一刀で。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふな_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0240390b06">
「えほ、けほっ！
　にーや……！」


{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240400a00">
「!!」


{	FwC("cg/fw/fwふな_泣き.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0240410b06">
「たすけて……にーや……
　にーやぁ……」


//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0240420b06">
「いたいよぉ……
　にーやぁぁ…………」


{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240430a00">
「あ……ひぃ……ッ」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240440a00">
「ひぃぃぃぃぃぃぃぃぃぃぃッッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃
//◆ざぱー。

	PrintGO("上背景", 5000);
	CreateColorSP("絵暗転", 100, "#000000");
	Delete("上背景");

	CreateSE("SE01a","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_down(@0, @0,1500);
	SL_downfade2(10);

	CreateSE("SE01","se人体_血_血しぶき01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("絵ＥＦ90", 90, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	CreateTextureSP("絵ＥＦ100", 100, Center, Middle, "cg/ef/ef006_汎用血しぶき.jpg");
	Zoom("絵ＥＦ100", 0, 2000, 2000, null, true);

	Delete("絵暗転");

	Wait(1000);


	FadeDelete("絵ＥＦ100", 2000, true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240450a00">
「…………」


{
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240460a01">
《……完了。
　帰りましょう、御堂》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240470a00">
「……………………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240480a01">
《泣いているの？
　御堂……》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnBG(10,"bg023_弥源太の家_03b.jpg");
	FadeBG(0,true);

	FadeDelete("絵ＥＦ*", 1000, false);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240490a00">
「……泣く？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240500a00">
「泣くとは、どういうことだ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240510a01">
《…………》

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240520a00">
「なんて可哀想なことをしたんだと――
　俺は嫌々ながらやったのだと――
　本当はこんなことをしたくなかったのだと、
　涙を流して――俺も性根は善良なのだと」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240530a00">
「そう言えというのか？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240540a01">
《……》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240550a00">
「……ふざけるなよ。村正……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240560a00">
「本当に善良なら、最初から人を殺したりは
しないのだ！
　殺しておいてから流す涙など、最も醜悪な
偽善に過ぎん！」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240570a00">
「人を殺すことは悪業であり、悪業を為す者
は悪鬼なのだ！
　俺は悪鬼なのだ！」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240580a00">
「俺は悪鬼なのだッッ!!」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240590a01">
《…………。
　さっきの言葉、もう一度言っておく》


//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240600a01">
《貴方は何も考えなくていい》


//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240610a01">
《貴方はただの<RUBY text="てあし">仕手</RUBY>。
　この村正の手足よ》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240620a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240630a01">
《手足がものを考える必要なんてない。
　ただ――使われていなさい》


//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240640a01">
《……全てが終わったら解放してあげる。
　その時まで、心を閉ざしていて》


//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240650a01">
《何も考えず、何も感じずに……
　その時を待ちなさい》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240660a00">
「…………御託は終わりか？
　劔冑」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240670a01">
《……》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240680a00">
「貴様が俺の主だというのなら、ひとつだけ
聞いておく。
　何故だ？」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240690a00">
「<RUBY text="・・・">何故だ</RUBY>？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240700a01">
《……以前にも聞いた覚えのある問いね》


//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240710a01">
《答はかつてと変わらない。
　私は兵器。己を形作る理念を全うするだけ》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240720a00">
「理念……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240730a01">
《鬼に逢うては鬼を斬る。
　仏に逢うては仏を斬る》


//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240740a01">
《他の理由なんて……私には無い。
　私は人ではないのだから》


//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240750a01">
《劔冑なのだから》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240760a00">
「…………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240770a01">
《心を閉ざすことさえ辛いのなら、ひたすら
に私を憎みなさい。
　貴方にはその資格がある》


//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240780a01">
《貴方の人生を呪った刃を……
　心の底から憎む権利がある》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240790a00">
「そんなものは無い」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240800a01">
《……》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240810a00">
「己は兵器に過ぎぬと言ったな、劔冑。
　まさしく然り」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240820a00">
「貴様はただの兵器。ただの道具。
　道具に罪などない。
　道具は罪など背負えない」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240830a00">
「道具を使う義務も権利も責任も、罪科も、
すべて俺ひとりのものだ。お前には何もない。
　当然だろう。奴隷に責任を押し付ける主人
などおらぬ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240840a01">
《……御堂》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240850a00">
「罪は道具を使う者に。
　ならば、憎むべきも……その者だけだ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

	CreateColorEX("絵暗転", 5000, "#000000");
	Fade("絵暗転", 2000, 1000, null, true);

	Wait(2000);
	WaitPlay("@mbgm*", null);

	FadeDelete("絵暗転", 2000, true);


//◆雪車町サイド


	SetFwC("cg/fw/fw雪車町_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240860a12">
（…………）

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240870a12">
（夢……だよ、な……）

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240880a12">
（へ、へ……ひでえ、夢……）

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240890a12">
（けど……）

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240900a12">
（こいつがもし、夢じゃァなかったら……）

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0240910a12">
（……夢じゃ、なかったなら……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆山道
	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 5000, "#000000");

	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	Wait(1000);

	CreateSE("SE01","se人体_足音_歩く01_L");
	MusicStart("SE01",0,1000,0,500,null,true);

	Wait(1000);

	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0136]
　……村へ続く道を歩いていく。
　村長へ、報告をしなくてはならない。

　彼は喜ぶだろう。
　そして、代官が現れる前の、平和な村を取り戻して
ゆくだろう。

　穏やかに。
　静かに。
　何事もなかったかのように、村は平和な日々を過ご
してゆくのだろう。

　ただ――
　そこには、善良な蝦夷の一家がいない。

　平穏で――幸福で――
　一つだけピースの欠けた村。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240920a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240930a01">
《御堂……》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240940a00">
「…………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240950a01">
《御堂……！》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240960a00">
「……黙っていろ。
　用はない」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240970a01">
《御堂！　村が！》


{	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0240980a00">
「……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se自然_火_火災倒壊");
	MusicStart("SE01",0,1000,0,1000,null,true);

//◆焼け落ちる村
	OnBG(100,"bg004_鄙びた村b_03.jpg");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0147]
　これは――
　これは――――

　家屋を包む赤と黄色の衣。
　死に絶えている人々。

　村は――
　<RUBY text="・">今</RUBY>、<RUBY text="・・・・・">滅びている</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0240990a01">
《まさか……》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0241000a00">
「……ッ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　倒れ伏す人々を見回す。
　誰か……誰か、息のある者は――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0241010e160">
「あ……あぁ……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0241020a00">
「村長！」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0241030e160">
「あぁ……なぜ……村が……
　どう……して…………」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0241040a00">
「何があった！
　何があったのだ！」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0241050e160">
「……ほしが……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0241060a00">
「……星!?」


{	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0241070e160">
「ぎんいろの……ほし…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がく。


	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0241080a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0241090a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm37",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　――村は終わった。

　代官が死に、
　蝦夷の一家が死に、
　そして、村も死に絶えた。

　何も、残らなかった。

　何も。
　何も。
　何一つ。

　全てがここに、灰燼へ帰す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0241100a01">
《……かかさま……》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0241110a00">
「……光……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);

	CreateSE("SE01","se自然_火_火災倒壊");
	MusicStart("SE01",2000,1000,0,850,null,true);

//◆夜空。火の粉？
	OnBG(100,"bg002_空b_03.jpg");
	FadeBG(0,true);

	CreateProcess("プロセス１", 150, 0, 0, "fire01");
	CreateProcess("プロセス２", 150, 0, 0, "fire02");
	CreateProcess("プロセス３", 150, 0, 0, "fire03");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);

	FadeDelete("上背景", 2000, true);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0241120a00">
「光ゥゥゥゥゥゥゥゥゥッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(2000);

	ClearWaitAll(2000, 0);

	PrintGO("上背景", 25000);

	CreateColorSP("絵黒地", 10, "#000000");
	CreateTextureSP("絵テロ２", 100, Center, Middle, "cg/sys/Telop/lg_第二編.png");

	WaitKey(4000);

	FadeDelete("上背景", 2000, true);


	Wait(1000);


	PrintGO("上背景", 25000);

	CreateColorSP("絵黒地", 10, "#000000");
	CreateTextureSP("絵テロ３", 100, Center, Middle, "cg/sys/Telop/lg_第二編了.png");

	FadeDelete("上背景", 1000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);




//◆第二編・了


}

..//ジャンプ指定
//次ファイル　"ma03_001.nss"


//◆２３４５６７８９０１２３４５６７８９０１２３４



//退避

/*==============================================
※第四話用ボイス

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ex/0010050b05">
「悪鬼！」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ex/0010060b05"
「殺した！」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ex/0010070b06">
「悪鬼！」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ex/0010080b06">
「殺した！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

==============================================*/




