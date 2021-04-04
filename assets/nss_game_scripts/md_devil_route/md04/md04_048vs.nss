//<continuation number="1100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene md04_048vs.nss_MAIN
{

//コックピット用Ｓｅｔ
	//CP_AllSet("村正");

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
	#bg105_城門付近内側_02=true;
	#ev220_茶々丸の世界=true;
	#ev908_村正電磁擲刀_a=true;
	#ev908_村正電磁擲刀_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	#aw_虎徹=true;

	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "md04_049vs.nss";

}

scene md04_048vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_047vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆脱出。bg105
	PrintBG("上背景", 30000);

	OnBG(100,"bg105_城門付近内側_02.jpg");
	FadeBG(0,true);
	CreateTextureSP("絵ＳＴＣ100", 1002, Center, InBottom, "cg/st/3d虎徹_立ち_通常.png");

	MyLife_Count(0,600);
	CP_IHPChange(0,9,null,false);
	CP_PowerChange(0,820,null,false);

	MyTr_Count(0,150);
	CP_HighChange2(0,3,null,false);
	CP_SpeedChange2(0,0,null,false);

	CP_AziChange(0,45,null,false);
	CP_AltChange(0,0,null,false);

	Cockpit_AllFade2();

	SoundPlay("@mbgm12", 0, 1000, true);
	FadeDelete("上背景", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　自由を取り戻す。
　だがその代償の激痛は、再び脳髄を焼いた。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_苦痛.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0010a00">
「……っっ……！」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0020a01">
《待って！》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆力使った。じゃきーん。
	OnSE("se特殊_鎧_装着03", 1000);
	CreateColorEXadd("絵フラ", 20000, "#FFFFFF");
	MyTr_Count(300,413);
	Fade("絵フラ", 300, 1000, null, true);

	Wait(50);

	Fade("絵フラ", 300, 0, null, false);
	MyTr_Count(300,150);

	CP_PowerChange(600,770,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　村正が左腕の甲鉄を復元、同時に肩の治癒を始める。
　肉体の方は簡単に復元できない。この戦闘の最中は
左腕を動かせないだろう。

　しかし痛みは和らぎつつあった。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0030a00">
「……仕切り直しだ」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0040a01">
《ええ》

{	FwL("cg/fw/fw茶々丸虎徹_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0050a07">
「いや、『ええ』じゃねーだろーがぁ！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我に返ったらしい茶々丸が、激昂の様子で荒い声を
上げる。
　険しい視線がこちらへ向けられていた。

　対象は俺ではないようだ。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸虎徹_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0060a07">
「てめぇ村正……
　仕手の体を壊してどうする!?　命令された
ってやらねえだろ普通！」

{	FwL("cg/fw/fw茶々丸虎徹_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0070a07">
「それでも劒冑か!!」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0080a01">
《劒冑よ》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　村正は糸屑程度の怯みも見せなかった。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0090a01">
《私は御堂の<RUBY text="・・・">保護者</RUBY>じゃない。
　戦って勝つための相棒なの》

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0100a01">
《勝つために守るし、勝つためなら傷付ける
ことだってある》

{	FwL("cg/fw/fw茶々丸虎徹_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0110a07">
「邪道だろ」

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0120a00">
「いや、正道だ」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,850,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　足元のものを拾い上げながら、口を挟む。
　……どうやら跳んだ位置が良かったようだ。

　脇差である。
　手放してしまった唯一の武装を、俺は取り戻した。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_戦闘.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0130a00">
「俺の劒冑はそれで正しい」

{	FwL("cg/fw/fw茶々丸虎徹_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0140a07">
「……お兄さんも難儀なお人やね。
　どうしてそんなのを認めちまうかなぁ」

{	FwL("cg/fw/fw茶々丸虎徹_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0150a07">
「切ない気分ですよ」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0160a00">
「そう言われても返しようがないが。
　仕手と劒冑の縁が結ばれるからには、相応
の理由があったという事なのだろうよ」

{	FwL("cg/fw/fw茶々丸虎徹_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0170a07">
「……はは。
　その逆をいえば、<RUBY text="・・・・・・・">結ばれなかった</RUBY>ことにも
理由はあるってことか」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　低く笑いながら。
　悔しげに、茶々丸は唇を噛んだ。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸虎徹_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0180a07">
「どうしたもんかな。
　劒冑はイカレてるし、お兄さんは頑固者」

{	FwL("cg/fw/fw茶々丸虎徹_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0190a07">
「これじゃその気がなくたって命の取り合い
になっちまうねぇ……」

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0200a00">
「……それを厭うなら道を開けてくれ」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　無益を承知で頼む。
　返答はやはり、首を左右に振る動作だけだった。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸虎徹_冷酷.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0210a07">
「仕方ないな。
　<RUBY text="・・・">こいつ</RUBY>で眠ってもらおう」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆茶々丸、エネルギー上昇

	SetVolume("@mbgm*", 1000, 0, null);
	WaitKey(1000);
	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラ", 20000, "#FFFFFF");


	CreateTextureSPadd("絵演陰義二", 19005, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	CreateTextureSP("絵演陰義三", 19000, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");

	CreateTextureSP("絵ＳＴＣ100", 1002, Center, InBottom, "cg/st/3d虎徹_立ち_戦闘.png");
	CreateTextureEXadd("絵演立ち絵効果", 1003, Center, InBottom, "cg/st/3d虎徹_立ち_戦闘.png");

	SetBlur("絵演立ち絵効果", true, 1, 100, 100, false);


$ループムーブナット名 = "@絵演立ち絵効果";
$ループムーブタイム = 25000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");

	Request("プロセス１", Start);

	Zoom("絵演陰義*", 0, 1300, 1300, null, true);
	SetBlur("絵演陰義二", true, 2, 500, 30, false);

	Zoom("絵演陰義*", 100, 1000, 1000, Dxl2, false);
	Fade("絵フラ", 100, 0, null, false);
	FadeDelete("絵演陰義二", 300, true);

	WaitKey(1000);

	FadeDelete("絵演陰義三", 300, true);

	Fade("絵演立ち絵効果", 2000, 300, null, false);

	CreateSE("SE01","se特殊_陰義_咆哮城塞_準備_L");
	MusicStart("SE01",0,500,0,500,null,true);

	SetFwL("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0220a00">
「む……」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0230a01">
《御堂、敵騎の熱量が変動してる！
　これは――》

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0240a00">
「陰義か!?」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0250a01">
《おそらく！》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　発動前に制するには――遅いか？
　距離はやや遠く、一歩では届かない。

　待ち受けるしかないようだ。
　術を見極め、その上で防ぐ。

　武者の秘中の秘技たる陰義は法外不測、どんな現象
でも起こり得る――しかしどんな現象が起きても対処
せねばならない。
　鬼が出るか蛇が出るか。俺は心胆を据えた。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸虎徹_悪戯.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0260a07">
「そう警戒しなくていいよ。
　大した術じゃないんだ……」

{	FwL("cg/fw/fw茶々丸虎徹_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0270a07">
「単に感覚を共有するだけ」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0280a00">
「……感覚を……？」

{	FwL("cg/fw/fw茶々丸虎徹_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0290a07">
「お兄さんは覚えがあるはずだよ。
　もう何度かやって見せてる」

{	FwL("cg/fw/fw茶々丸虎徹_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0300a07">
「ただし」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆エネルギー上昇

	CreateColorSPadd("絵フラ", 20000, "#FFFFFF");
	CreateTextureSP("絵背景100", 150, Center, Middle, "cg/bg/bg105_城門付近内側_02.jpg");
	Fade("絵背景100", 0, 400, null, true);
	Zoom("絵背景100", 0, 1200, 1200, null, true);
	DrawEffect("絵背景100", 50, "LowWave ", 0, 100, null);


	MusicStart("SE01",1000,800,0,800,null,true);
	Fade("絵フラ", 1000, 0, null, true);


	SetFwL("cg/fw/fw茶々丸虎徹_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0310a07">
「今回は<RUBY text="・・・・">加減なし</RUBY>」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0320a07">
「足利茶々丸の世界をそのまま捧げる」

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0330a00">
「――――」

{	FwL("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0340a07">
「行くよ……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆エネルギー最高


	MusicStart("SE01",0,1000,0,1000,null,true);
	SetBlur("絵ＳＴＣ100", true, 6, 500, 60, false);

	OnSE("se特殊_その他_神の絶叫", 1000);
	Zoom("絵演立ち絵効果", 500, 1600, 1600, Axl1, false);
	Zoom("絵ＳＴＣ100", 500, 1600, 1600, Axl1, false);
	FadeDelete("絵ＳＴＣ100", 500, true);

	Request("プロセス１", Stop);
	Delete("プロセス１");
	Delete("絵演立ち絵効果");

	SetFwL("cg/fw/fw茶々丸虎徹_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0350a07">
　　　　　　「<RUBY text="キャッスル・オブ・ハウリング">咆哮の城塞</RUBY>」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆陰義・咆哮城塞
	#aw_虎徹=true;

	OnSE("se特殊_雰囲気_崩壊音",1000);

	CreateColorSPadd("絵フラ", 20000, "#FFFFFF");
	SetVolume("@mbgm*", 2000, 0, null);
	SetVolume("@SE*", 2000, 0, null);

	Delete("絵背景100");

//	CreateSE("SE01","se特殊_陰義_発動03");
//	MusicStart("SE01",0,1000,0,1000,null,false);
//	SetVolume("@SE01*", 100, 0, null);

	SetFont("ＭＳ 明朝", 22, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	CreateText("絵我が", 16000, 50, 20, 700, 500, "〝我は力〟");
	SetAlias("絵我が","絵我が");
	Move("絵我が", 0, 450, 230, null, true);
	Fade("絵我が", 0, 0, null, true);
	Request("絵我が", NoLog);

	Cockpit_AllFade0();
	CreateTextureEX("絵演", 2000, Center, Middle, "cg/ev/ev220_茶々丸の世界.jpg");
	Request("絵演", Smoothing);

	Zoom("絵演", 0, 2000, 2000, Dxl1, false);
	SetBlur("絵演", true, 2, 500, 60, true);

	CreateTextureSP("茶々丸の世界", 15000, @0, @0, "cg/ev/ev220_茶々丸の世界.jpg");
	Fade("茶々丸の世界", 0, 500, null, true);

	Zoom("茶々丸の世界", 0, 1500, 1500, null, true);
	CreateTextureEX("茶々丸の世界２", 15000, @0, @0, "cg/ev/ev220_茶々丸の世界.jpg");
	Zoom("茶々丸の世界２", 0, 1500, 1500, null, true);
	DrawEffect("茶々丸の世界", 50, "LowWave ", 0, 100, null);
	DrawEffect("茶々丸の世界２", 50, "SuperWave", 0, 500, null);

	Wait(2000);

	CreateSE("ぼえー", "se特殊_その他_神の声01");
	CreateSE("ノイズ１", "se日常_機械_ノイズ03");
	CreateSE("ノイズ２", "se日常_機械_ノイズ02");
	CreateSE("ノイズ３", "se日常_機械_ノイズ03");
	CreateSE("ノイズ４", "se日常_機械_ノイズ03");
	MusicStart("ぼえー",2000,1000,0,500,null,false);

	Zoom("絵演", 00, 1500, 1500, Dxl1, false);
	Fade("絵演", 0, 1000, null, false);
	Fade("絵フラ", 2000, 0, null, false);

	Wait(2000);

	MusicStart("ノイズ１",0,1000,0,1000,null,false);
	Fade("絵我が", 300, 1000, null, false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(100);
	Fade("絵我が", 0, 0, null, false);
	Fade("茶々丸の世界２", 0, 0, null, true);
	SetVolume("ノイズ１", 0, 0, null);

	Wait(2000);

	MusicStart("ノイズ２",0,1000,0,1000,null,false);
	Fade("絵我が", 300, 1000, null, false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(100);
	Fade("絵我が", 0, 0, null, false);
	Fade("茶々丸の世界２", 0, 0, null, true);
	SetVolume("ノイズ２", 0, 0, null);

	Wait(50);
	Fade("絵我が", 300, 1000, null, false);
	MusicStart("ノイズ３",0,1000,0,1000,null,false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(150);
	Fade("絵我が", 0, 0, null, false);
	Fade("茶々丸の世界２", 0, 0, null, true);
	SetVolume("ノイズ３", 0, 0, null);

	Wait(2000);

	Fade("絵我が", 300, 1000, null, false);
	MusicStart("ノイズ４",0,1000,0,1000,null,true);
	Wait(100);
	Fade("茶々丸の世界２", 0, 500, null, true);
//	Fade("茶々丸の世界２", 0, 0, null, true);

//◆音に合わせて　〝我は力〟　ＣＧ表示。小さく。
//■↑演出保留中　inc櫻井

	Fade("絵我が", 0, 0, null, false);
	SetVolume("ノイズ４", 3000, 100, null);

	WaitKey(1500);

	Delete("絵我が");

	CreateSE("SE01","se特殊_その他_茶々丸の世界_L");
	MusicStart("SE01",0,200,0,600,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　…………何だ？

　何か――
　奥深くから、<RUBY text="・・・・">ひたひた</RUBY>と。迫り、押し寄せてくる、
これ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥ：ざわめき。単なるガヤではなく過去作品の
//◆ボイスを多数合成して作ると良いか。
//◆ev220
//◆ＳＥボリュームは徐々に上げる。ＣＧ表示もそれに
//◆合わせた演出で。


	MusicStart("SE01",1000,600,0,800,null,true);
	Cockpit_AllFade0();
	CreateTextureEXadd("絵演上", 19002, Center, Middle, "cg/ev/ev220_茶々丸の世界.jpg");
	Request("絵演上", Smoothing);

	Zoom("絵演上", 0, 3000, 3000, Dxl1, true);
//	SetBlur("絵演上", true, 2, 500, 60, true);


//	Rotate("絵演上", 90000, @0, @0, @-1800, null, false);

	Zoom("絵演上", 1500, 2000, 2000, Dxl1, false);
	Fade("絵演上", 1500, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　……人の声。
　無数に、幾重にも聴こえてくる。

　いや……姿も？
　無数の人々の影……。

　これは聴覚？
　それとも視覚？

　――――<RUBY text="・・">信号</RUBY>？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥボリューム、耳障りレベルに
//◆ＣＧ表示も乱れた感じに

//inc久保田　このCGに色々なエフェクトをかけたところポケモン現象が起こりました。
//頭痛と吐き気がすごいことになります。なので、現状軽くしてあります。

	CreateTextureEXsub("絵演上2", 19003, Center, Middle, "cg/ev/ev220_茶々丸の世界.jpg");
	Zoom("絵演上2", 0, 3000, 3000, Dxl1, true);
//	SetBlur("絵演上2", true, 2, 500, 60, true);
	CreateTextureEX("絵演上3", 19000, Center, Middle, "cg/ev/ev220_茶々丸の世界.jpg");
	Fade("絵演上3", 1500, 500, null, false);

//	Rotate("絵演上2", 50000, @0, @0, @1800, null, false);
	Zoom("絵演上2", 1500, 2000, 2000, Dxl1, false);
	Fade("絵演上2", 1500, 500, null, true);
	MusicStart("SE01",1000,1000,0,1000,null,true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0360a00">
「あがッ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//inc久保田情報が流れ込んでくるイメージで、SEテンポをアップさせています。

	MusicStart("SE01",1000,1000,0,1400,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　情報！
　情報だ！

　<RUBY text="・・・・・・">氾濫する情報</RUBY>！

　余りにも多過ぎる。
　多大な音が、多大な光が、その全てが明確な意味を
持って俺のもとへ殺到してくる！

　こんなもの……俺の脳は許容できない!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆多量のテキストが高速で流れる。ＣＧ処理
//◆テキストは過去作シナリオから適当に抜粋？

//	Rotate("絵演上2", 50000, @0, @0, @3600, null, false);
//	Rotate("絵演上", 80000, @0, @0, @-3600, null, false);
/*
	SetFont("ＭＳ 明朝", 50, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	CreateText("字幕01a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕02a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕03a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕04a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕05a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕06a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕07a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");

	Move("字幕01*", 0, @0, @-300, null, true);
	Move("字幕02*", 0, @100, @-200, null, true);
	Move("字幕03*", 0, @200, @-100, null, true);
	Move("字幕04*", 0, @300, @0, null, true);
	Move("字幕05*", 0, @400, @100, null, true);
	Move("字幕06*", 0, @500, @200, null, true);
	Move("字幕07*", 0, @600, @300, null, true);

	Move("字幕*", 0, @0, @50, null, false);

	CreateText("字幕01b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕02b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕03b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕04b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕05b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕06b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕07b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");

	Move("字幕01b", 0, @500, @-300, null, false);
	Move("字幕02b", 0, @400, @-200, null, false);
	Move("字幕03b", 0, @300, @-100, null, false);
	Move("字幕04b", 0, @200, @0, null, false);
	Move("字幕05b", 0, @100, @100, null, false);
	Move("字幕06b", 0, @0, @200, null, false);
	Move("字幕07b", 0, @-100, @300, null, false);

	Request("字幕*",NoLog);
	Request("字幕*",PushText);
*/

	CreateTextureEX("絵背景文字", 14000, Center, Middle, "cg/ef/ef050_数字一杯.png");
	MusicStart("SE01",1000,1000,0,1800,null,true);
	Fade("絵背景文字", 300, 1000, null, true);


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0370a00">
「―――――――――――――――――――
――――――――――――――――――――
――――――――――――――――――――
――――――――――――――――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	MusicStart("SE01",1000,1000,0,800,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　溢れ返る、
　溢れ返る、
　
　情報。情報。情報。情報。情報。

　これが――茶々丸の世界――――？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	MusicStart("SE01",1000,1000,0,1800,null,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0380a01">
《……これは……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0390a01">
《人の感覚と、劒冑の感覚が……
　<RUBY text="・・">混線</RUBY>している？》

{	FwC("cg/fw/fw茶々丸虎徹_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0400a07">
「そうさ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	MusicStart("SE01",1000,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　輪唱、群像の中、足利茶々丸という一個体も喋って
いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸虎徹_歯噛.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0410a07">
「これがヒトで在り劒冑で在るあての宿業。
　ヒトの感覚に基づいて、劒冑の感覚機能が
情報を収集し、肉の脳に叩き込む」

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0420a07">
「結果がこの<RUBY text="・・・・">情報洪水</RUBY>。
　……お兄さん？　もう溺死しちゃってない
だろうね？」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0430a00">
「――――」

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0440a07">
「まだあるんだよ。
　ヒトと劒冑の複合感覚は、ヒトにも劒冑に
も感じ取れないものまでつかみ取る……」

{	FwC("cg/fw/fw茶々丸虎徹_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0450a07">
「その最たるものが」

{	FwC("cg/fw/fw茶々丸虎徹_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0460a07">
「こいつだ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どーん。衝撃。カオスの世界を粉砕
//◆ＳＥ：神の絶叫
//◆金神魔王尊、部分（ぼかし）表示？

	FadeDelete("茶々丸*", 1000, true);
	Delete("茶々丸*");

	SetVolume("@SE*", 1000, 0, null);
	Wait(1500);

	CreatePlainSP("絵板写", 20000);
	FadeDelete("絵演*", 1000, true);
	Delete("絵演*");
	Delete("絵背景文字");
	Delete("字幕*");

	CreateTextureSP("かみ", 2000, @0, @0, "cg/ev/ev237_空に昇った金神_b.jpg");
	CreateTextureSPadd("かみ効果", 2000, @0, @0, "cg/ev/ev237_空に昇った金神_b.jpg");
	Fade("かみ効果", 0, 500, null, true);
	Request("かみ*", Smoothing);
	SetShade("かみ*", MEDIUM);
	Zoom("かみ*", 0, 2000, 2000, null, true);

$ループムーブナット名 = "@かみ効果";
$ループムーブタイム = 25000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");

	Request("プロセス１", Start);


//あきゅん「演出："HardSplit"は細かすぎる＆重いので調整しました」
//	Zoom("絵板写", 1000, 2000, 2000, null, false);
//	FadeDelete("絵板写", 1000, false);
	OnSE("se特殊_雰囲気_崩壊音",1000);
	DrawEffect("絵板写", 1500, "HardSplit ", 0, 1000, Axl1);
	FadeDelete("絵板写", 1000, true);


//	SetVolume("@mbgm*", 300, 0, null);


	Wait(1000);

	CreateSE("SE01","se特殊_その他_神の絶叫");
	MusicStart("SE01",0,600,0,600,null,true);

	Wait(1000);

	SoundPlay("@mbgm02", 0, 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0470a01">
《　　　》

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0480a01">
《　　　　　　　　　　　　　》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　これは

　そうだ
　　　　　　緑龍会の集会の場で、聴かされた

　あの声

　違う

　違う　　　違う
　　　　違う　　　違う　　　　　　違う
違う　　　違う違う違う違う違う違う

　あんなものそよ風だった

　これは

　桁が　　　　次元が

//◆ＳＥ：神の絶叫、更に悪化
{	MusicStart("SE01",1000,1000,0,1000,null,true);}

　あ
　　　　　　　　　　　　　　アア

　
　
　　　　　　　　　　　　　　　　　　これが

　　　　　　　　　　　本当の

　
　
　
　　　　　　　　　　　　　　　　　　神

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥ、しばらく流して（映像も織り交ぜ）
//◆フェードアウト
//◆ウェイト
	SetVolume("@mbgm*", 1000, 0, null);
	CreateTextureEX("絵演上2", 19003, Center, Middle, "cg/ev/ev220_茶々丸の世界.jpg");
	Zoom("絵演上2", 0, 3000, 3000, Dxl1, true);
//	SetBlur("絵演上2", true, 2, 500, 60, true);
	Request("絵背景", Smoothing);
	Fade("絵演上2", 1500, 1000, null, false);
	Rotate("絵演上2", 10000, @0, @0, @-18000, null, false);

	Zoom("絵演上2", 1500, 2000, 2000, Dxl1, false);
	Fade("絵演上2", 1500, 1000, null, true);
	FadeDelete("かみ*", 1000, true);

	Wait(1000);
	CreateColorSP("絵フラ", 19000, "BLACK");

	Wait(1000);
	FadeDelete("絵演上2", 3000, true);

	Delete("プロセス１");

	SetVolume("SE01*", 3000, 0, null);
	SetVolume("ぼえー", 3000, 0, null);
	SetVolume("ノイズ*", 3000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　…………黒。

　暗い。
　冷たい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0490a00">
（何だ……？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　散り散りになった意識の断片が集まり。
　百億年ほどの時を掛けて、自分が地面に突っ伏して
いるという事実を認識した。

　両腕を突いて、体を持ち上げる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆元の光景

	Cockpit_AllFade2(1500);
	MyLife_Count(0,500);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,500,null,false);

	CP_SpeedChange(0,0,null,false);
	MyTr_Count(0,500);

	CP_HighChange(0,1500,null,false);
	CP_AziChange(0,243,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateColorSPmul("絵色100", 18000, "RED");
	OnBG(100,"bg105_城門付近内側_02.jpg");
	FadeBG(1500,true);
	Zoom("OnBG*", 0, 1200, 1200, Dxl1, true);
	FadeDelete("絵フラ", 1500, false);
	Zoom("OnBG*", 4000, 1000, 1000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　……意識を失っていた時間は、どうやら思っていた
よりは幾らか短かったらしい。
　周辺の光景が未知の文明のそれに置き換わっている
ようなことはなく、相変わらずの普陀楽城である。

　茶々丸もそのままの姿で、立っていた。
　驚きを込めて、俺を見詰めている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸虎徹_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0500a07">
「……予想以上にタフだねー、お兄さん。
　今ので潰れないとは思わなかった」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0510a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　言い返そうとして、言葉が出ない。
　まだ何か、うまく<RUBY text="・・・・・・・">繋がっていない</RUBY>様子だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆村正モニター
//◆計器類がシッチャカメッチャカ

	CreateSE("SE01","se特殊_鎧_電子音01");
	MusicStart("SE01",0,1000,0,1000,null,true);

	MyLife_Count(800,500);
	CP_IHPChange(6000,150,null,false);
	CP_PowerChange(6000,50,null,false);
	CP_IHPChange(6000,1,null,false);
	CP_SpeedChange(600,0,null,false);

	CP_EHPChange(5000,5,null,false);

	CP_HighChange(5000,2500,null,false);
	CP_AziChange(5000,2800,null,false);
	CP_AltChange(5000,50,null,false);

	CP_SpeedChange(6000,500,null,false);
	MyTr_Count(5000,60);

	Wait(500);

	FadeDelete("絵色100", 3000, false);

	SetVolume("SE*", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　……村正も同じか。

　<RUBY text="ＯＳ">統御機能</RUBY>が完全に崩壊しかねない程の衝撃を受けた
らしい。
　幸いにもそうはならず、復旧に向かっているが……。

　これが騎航中の事でなかったのも幸いだった。
　もしそうであったら、墜落は免れなかったろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻って
	CreateColorSP("黒幕１", 30000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Cockpit_AllFade0(0);
	Delete("絵色100");
	SoundPlay("@mbgm10", 0, 1000, true);


	CreateColorEX("くろ", 100, "BLACK");
	Fade("くろ", 0, 600, null, true);

	CreateWindow("窓右", 5500, 0, 0, 276, 576, true);
	SetAlias("窓右","窓右");
	Fade("窓右", 0, 0, null, true);
	Move("窓右", 0, @658, @0, null, true);
	CreateTextureSP("窓右/下地", 5500, @-400, @0, "cg/bg/bg105_城門付近内側_02.jpg");
	Fade("窓右", 0, 1000, null, true);
	CreateTextureSP("窓右/絵右ＳＴ", 5510, @-208, -170, "cg/st/3d村正脇差_立ち_通常.png");

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", false);
	Move("窓右/絵右ＳＴ", 600, @-320, @0, DxlAuto, false);

	DrawTransition("窓右", 300, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0520a00">
「茶々丸」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　ようやく、言葉が出る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0530a00">
「お前は……<RUBY text="おまえたち">緑龍会</RUBY>は……
　あれを地上に引き出そうというのか」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0540a00">
「あの――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　神？
　魔神？
　金属塊？
　自然現象？

　どう表現すれば良いのかわからない。

　ただ――

　あれは巨大であった。
　あれは強大であった。
　あれは膨大であった。
　あれは遠大であった。

　あれは動力であった。
　あれは活力であった。
　あれは暴力であった。
　あれは威力であった。

　途方もない途轍もない力、力、力、ただ力。
　ただ<RUBY text="・・・・">大きな力</RUBY>であった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0550a00">
「あんなものを！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateWindow("窓左", 5500, 80, 0, 276, 670, true);
	SetAlias("窓左","窓左");
	CreateTextureEX("窓左/下地", 4500, @0, @0, "cg/bg/bg105_城門付近内側_02.jpg");
	CreateTextureEX("窓左/絵左ＳＴ", 4510, @-100, @100, "cg/st/3d虎徹_立ち_戦闘.png");
	Fade("窓左*", 0, 1000, null, false);
	Move("窓左/絵左ＳＴ", 600, -350, 44, Dxl3, false);
	DrawTransition("窓左", 300, 0, 1000, 100, null, "cg/data/slide_01_00_1.png", true);

	SetFwC("cg/fw/fw茶々丸虎徹_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0421]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0560a07">
「うん。
　あのカタマリを引っ張り出す」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0570a07">
「……そうしないとあいつは黙らねえ……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0580a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　駄目だ。

　それは、駄目だ。
　
　<RUBY text="・・・・・">世界が滅ぶ</RUBY>。

　本当に滅ぼされる。

　あんなものが地上に現れ、活動したなら！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0590a01">
《……御堂……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0600a00">
「回復したか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0610a01">
《ええ。
　……さっきの、あれが》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0620a00">
「神とやらだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0630a01">
《与太話じゃないのね……》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0640a00">
「今からでも与太話にして欲しいがな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　俺も村正も、<RUBY text="・・">感知</RUBY>してしまった。
　地下に潜むあの存在。あの脅威を。

　あれを知って――どうして一笑に付する事ができる
だろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0650a01">
《あんなものを自由にするわけにはいかない》

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0660a07">
「罰当たりなこと言うんじゃねーよ。
　ありゃ、<RUBY text="・・・・・">おめーらの</RUBY>神様だろうが」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0670a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0680a01">
《こ、金神さま？》

{	FwC("cg/fw/fw茶々丸虎徹_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0690a07">
「ウォルフの推論が当たってればだけどな。
　あれが劒冑の起源」

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0700a07">
「天界から火を盗んだプロメテウス。
　太陽を削り取るヴィシュヴァカルマン。
　天帝に挑んで敗れ、地に埋められた<RUBY text="しゆう">蚩尤</RUBY>。
　<RUBY text="そら">宇宙</RUBY>よりの<RUBY text="まれびと">客人</RUBY>、金神魔王尊」

{	FwC("cg/fw/fw茶々丸虎徹_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0710a07">
「遠い昔に天から落ちてきた、鍛冶の祖神だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　記憶に触れる。
　あの――劒冑夢想論と題された論文か。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0720a01">
《……そうだとしても。
　崇めはしたって、この<RUBY text="うつしよ">現世</RUBY>に連れて来よう
なんて考えるもんですか》

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0730a07">
「神がそれを望んでいてもか？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0740a01">
《<RUBY text="・・・">祟り神</RUBY>の言いなりになったって誰も幸せに
ならないでしょうが！
　お供えをして、鎮まって下さいってお願い
すればいいのよ！》

{	FwC("cg/fw/fw茶々丸虎徹_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0750a07">
「都合のいい話だなオイ。
　ま、信仰もヒトが発明したもんなんだから
ヒトに都合良く出来てるのは当たり前だ」

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0760a07">
「神が<RUBY text="・・">実在</RUBY>さえしなけりゃ、それで通ったん
だがな」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0770a01">
《…………》

{	FwC("cg/fw/fw茶々丸虎徹_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0780a07">
「アレにはお祈りを聴く耳もなけりゃ供物を
食う口もない。
　鎮める方法なんて一つきり……」

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0790a07">
「望む通りにしてやるしかねえんだよ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0800a00">
「茶々丸……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　そうしなければ。
　お前は、<RUBY text="・・">あれ</RUBY>から解放されない……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆再びエネルギー上昇
	CreateColorEXadd("窓左/あかい", 15000, "RED");

	CreateSE("SE01","se特殊_雰囲気_集中01_L");
	MusicStart("SE01",0,1000,0,1300,null,true);

	Fade("窓左/あかい", 1000, 600, null, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0810a01">
《……また!!》

{	FwC("cg/fw/fw茶々丸虎徹_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0820a07">
「お兄さんがいくらしぶとくても、その劒冑
がどこまで鈍感でも、もう一度あれを聴けば
落ちるだろ。
　だから、そうする」

{	FwC("cg/fw/fw茶々丸虎徹_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0830a07">
「下手に抗わない方が多分楽だよ、お兄さん」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0840a00">
「く……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE*", 2000, 0, null);

	CreateColorEXadd("窓右/あおい", 15000, "BLUE");

	CreateSE("SE01","se特殊_電撃_帯電02");
	MusicStart("SE01",0,1000,0,1400,null,true);

	Fade("窓右/あおい", 1000, 1000, null, true);
	CreateTextureEX("窓右/絵右EV", 6510, @-478, @0, "cg/ev/ev908_村正電磁擲刀_a.jpg");
	Fade("窓右/絵右EV", 1000, 1000, null, false);
	Fade("窓右/あおい", 1000, 300, null, true);
	Fade("窓右/あおい", 1000, 1000, null, true);
	Fade("窓右/あおい", 1000, 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　兎も角も――ここで倒されてはならない。
　失われるものが余りにも多く大きく重過ぎる。

　瞬時の判断で、俺は脇差を鞘に納めた。
　そして体内の熱量を掻き集める。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0850a01">
《御堂!?》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0860a00">
「<RUBY text="レールガン">電磁擲刀</RUBY>！
　やれるな、村正!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0870a01">
《――――諒解！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆帯電
	Wait(500);

	CreateSE("SE03","se特殊_鎧_装着05");
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",200,1000,null,true);
	FadeDelete("窓*", 1000, false);
	Delete("くろ");

	FadeDelete("絵背景300", 300, true);

	CreateTextureSP("絵背景500", 6200, Center, Middle, "cg/ev/resize/ev908_村正電磁擲刀_cl.jpg");
	CreateTextureSP("絵背景400", 6200, Center, Middle, "cg/ev/resize/ev908_村正電磁擲刀_cl.jpg");
	CreateTextureSP("絵背景600", 6200, Center, Middle, "cg/ev/resize/ev908_村正電磁擲刀_cl.jpg");
	Move("絵背景400", 0, -205, -55, null, true);
	Move("絵背景500", 0, -205, -55, null, true);
	Move("絵背景600", 0, -205, -55, null, true);
	SetVertex("絵背景600", 680, 130);

	Shake("絵背景400", 1000000, 1, 1, 0, 0, 1000, null, false);
	Zoom("絵背景600", 0, 1200, 1200, null, true);

	SetBlur("絵背景600", true, 3, 500, 100, false);

	CreateSE("SE02","se特殊_電撃_放電02");
	MusicStart("SE02",0,1000,0,800,null,false);

	FadeDelete("フラッシュ白", 1000, false);
	Zoom("絵背景600", 500, 1000, 1000, Dxl1, false);
	Fade("絵背景600", 500, 0, null, true);

	Delete("絵背景600");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　未だ足腰が立たず、斬り掛かる事のできない現状で
は、これが唯一の方途だった。
　電磁刀術の第三法。鞘に納めた脇差を、磁気反発を
利用して<RUBY text="・・">射出</RUBY>する。

　何者であれ回避は不可能。
　いや一度だけ、超常の速度まで到達した騎体に回避
された経験があるが――あの真似を茶々丸が成し得る
とは思えない。通常は反応すら無理だ。

　狙うは足元。
　直撃させねば致命傷になる事はない。しかし着弾の
衝撃波は甲鉄の守護をもってしても完全には防ぎ切れ
ないであろう。

　それなりの<RUBY text="ダメージ">損傷</RUBY>は受けるはず。
　その隙にこの場を突破し、天守閣へ向かうのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//	FadeDelete("絵*", 1500, true);

	SetFwC("cg/fw/fw茶々丸虎徹_通常a.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0880a07">
「……そう来るかぁ……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0890a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆両騎、エネルギー上昇

	CreateColorSPadd("しろ", 15000, "#FFFFFF");
	Delete("絵*");

	CreateWindow("絵ＷＬ", 1500, Center, -288, 1024, 288, true);
	SetAlias("絵ＷＬ","絵ＷＬ");
	CreateTextureSP("絵ＷＬ/絵背景Ｌ100", 1500, Center, middle, "cg/bg/bg105_城門付近内側_02.jpg");
	Fade("しろ", 300, 0, null, true);

	CreateTextureSP("絵ＷＬ/絵ＳＴＬ", 1500, -151, 0, "cg/st/3d虎徹_立ち_陰義.png");
	Request("絵ＷＬ*", Smoothing);

	Move("絵ＷＬ/絵背景Ｌ100", 0, @312, @0, null, true);
	Move("絵ＷＬ/絵ＳＴＬ", 0, -151, 100, null, true);
	Move("絵ＷＬ", 0, @0, @288, null, true);


	CreateWindow("異ＷＲ", 1500, Center, 576, 1024, 576, true);
	SetAlias("異ＷＲ","異ＷＲ");
	CreateTextureEX("異ＷＲ/異ＳＴＲ", 1000, -300, -300, "cg/ev/ev908_村正電磁擲刀_c.jpg");
	Request("異ＷＲ*", Smoothing);

	Move("異ＷＲ/異ＳＴＲ", 0, @120, @330, null, true);
	Move("異ＷＲ", 0, @0, @-288, null, true);

	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01a","se戦闘_動作_空突進03");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Move("絵ＷＬ/絵背景Ｌ100", 500, @-380, @0, Dxl1, false);
	Move("絵ＷＬ/絵ＳＴＬ", 500, -150, @-200, Dxl2, false);

	Zoom("異ＷＲ/異ＳＴＲ", 0, 1100, 1100, Dxl1, true);
	Fade("異ＷＲ*", 300, 1000, null, false);
	Move("異ＷＲ/異ＳＴＲ", 500, @190, @0, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　今、勝敗を定めるのは術を組み立てる早さだ。
　先に完成させた者が勝つ。

　俺が熱量を作り村正がそれを磁力に変換、その磁力
を俺が扱い村正がその補助をする――工程は最上最速
を極めなくてはならない。
　だが精緻さも重要だ。

　多大な<RUBY text="エネルギー">力量</RUBY>を生じさせ運用するこの術式、制御法を
しくじれば血管破裂程度では済まない。
　巧遅ではなく拙速でもなく、巧かつ速を突き詰める。

　左腕の動きがままならないのはやはり負担だった。
　言わば<RUBY text="・・">砲身</RUBY>である鞘をうまく支えられない……抜刀
そして投擲を確実にこなせるか、若干の不安がある。

　それでもやらねばならない、が、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばち。ちょっと発電

	CreateColorEXadd("異ＷＲ/異あおい", 15000, "BLUE");

	CreateSE("SE01","se日常_機械_電気ショート帯電01");
	MusicStart("SE01",0,1000,0,850,null,false);

	Fade("異ＷＲ/異あおい", 0, 1000, null, true);
	Fade("異ＷＲ/異あおい", 150, 1000, null, true);
	Fade("異ＷＲ/異あおい", 0, 1000, null, true);
	Fade("異ＷＲ/異あおい", 50, 1000, null, true);
	Fade("異ＷＲ/異あおい", 0, 1000, null, true);
	FadeDelete("異ＷＲ/異あおい", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0900a01">
《――》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0910a00">
「――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　礼を述べる手間は省いた。
　今は無用の事だ。

　左手の不安は、これでほぼ無い。
　掌と鞘が磁力で接合されている――握力不足の補い
になる。

　後は陰義を完成させるのみ！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆エネルギー上昇

	CreateColorEXadd("絵ＷＬ/絵あけぇ", 15000, "RED");
	CreateColorEXadd("異ＷＲ/異あおい", 15000, "BLUE");

	CreateSE("SE02","se特殊_電撃_放電02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Fade("異ＷＲ/異あおい", 0, 1000, null, false);
	FadeDelete("異ＷＲ/異あおい", 1000, true);


	CreateSE("SE02a","se特殊_雰囲気_集中01_L");
	MusicStart("SE02a",0,1000,0,1000,null,true);

	Fade("絵ＷＬ/絵あけぇ", 0, 1000, null, true);
	FadeDelete("絵ＷＬ/絵あけぇ", 1000, true);
	FadeDelete("異ＷＲ/異あおい", 1000, true);

	SetVolume("SE02a", 2000, 0, null);

	SetFwC("cg/fw/fw茶々丸虎徹_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0920a07">
「――――」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0930a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆最高潮
	CreateColorEXadd("異ＷＲ/異あおい", 15000, "BLUE");
	Fade("異ＷＲ/異あおい", 0, 1000, null, true);
	Fade("異ＷＲ/異あおい", 1000, 0, null, false);
	Move("異ＷＲ/異ＳＴＲ", 500, @100, @30, Dxl2, false);
	Zoom("異ＷＲ/異ＳＴＲ", 500, 1300, 1300, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　俺の方が、<k>
　
　早い――――――か!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Move("絵*", 500, @0, @-288, Dxl2, false);
	Move("異ＷＲ", 500, @0, @-288, Dxl2, true);

	OnSE("se特殊_電撃_放電01",1000);
	CreateTextureSP("下正", 100, -200, -35, "cg/ev/resize/ev908_村正電磁擲刀_cl.jpg");
	Zoom("異ＷＲ/異ＳＴＲ", 500, 2000, 2000, Dxl1, false);
	FadeDelete("絵*", 500, false);
	FadeDelete("異*", 500, true);

	SetFwC("cg/fw/fw景明_戦闘.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0940a00">
「<RUBY text="レールガン">電磁擲刀</RUBY>――」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0950a00">
「<RUBY text="カシリ">呪</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆電磁擲刀・呪。レーザービーム。
//◆着弾。ちゅどーん。

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE02", 500, 0, null);
	OnSE("se特殊_陰義_レールガン呪",1000);

	CreateColorEXadd("フラッシュ白", 19000, "WHITE");

	CreateTextureEX("絵ef90", 3000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureEXadd("絵ef100", 3000, Center, 200, "cg/ef/ef038_汎用射撃.jpg");
	Zoom("絵ef90", 0, 2000, 2000, null, true);
	Zoom("絵ef100", 0, 2000, 2000, null, true);
	Rotate("絵ef100", 0, @0, @0, @-5, null,true);
	Request("絵ef*", Smoothing);
	SetBlur("絵ef100", true, 2, 500, 200, false);


	Fade("絵ef90", 200, 1000, null, false);
	Move("絵ef90", 300, -512, 288, Dxl2, true);

	Move("絵ef90", 1000, 512, -288, Axl2, false);
	Wait(700);
	Zoom("絵ef100", 1000, 6000, 6000, Dxl2, false);
	Fade("絵ef100", 300, 1000, null, true);

	Fade("フラッシュ白",1000,1000,Axl2,true);

	Wait(1500);
	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_03_01_0.png", true);
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 18001, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetBlur("絵演", true, 3, 300, 30, false);
	Fade("絵演上", 0, 500, null, true);


	Zoom("絵演", 3000, 1100, 1100, Dxl1, false);
	Zoom("絵演上", 3000, 1200, 1200, Dxl1, false);
	Shake("絵演", 2000, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("フラッシュ白", 300, true);

	Delete("下正");
	Delete("絵ef*");
	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　……術は完全な形で行使された。
　敵騎の陰義は襲って来ない。

　つまりは――企図を遂げた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆粉塵が晴れる
//◆茶々丸いない
	FadeDelete("絵*", 3000, true);

	Wait(1000);

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0960a00">
「……ぬっ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　茶々丸がいない。

　まさか、直撃した……？
　いや、だとしても破片も残さず消え失せるのは妙だ。

　茶々丸が立っていた地点には、電磁擲刀の着弾跡で
あろう、いびつな<RUBY text="すりばち">擂鉢</RUBY>状の穴が出来ているのみ。
　他には何もない。

　……何処に行った？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピピ。探査音
	CreateSE("SE01","se特殊_コックピット_アラーム");
	MusicStart("SE01",0,500,0,1000,null,false);

	Wait(500);
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0970a01">
《あそこ！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0980a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg105_城門付近内側_02.jpg");
	Rotate("絵背景100", 0, @0, @180, @0, null,true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_02_0.png", true);

	SoundPlay("@mbgm35", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　村正の示した方角へ兜を向ける。
　そこに――いた。着弾の瞬間に跳躍したのだろうか、
大きく距離を置いて立っている。

　……どういう意図であろう。

　陰義の勝負をやめ、直前に退避した。
　それはわかる。わかるが。

　何の益がある？

　確かにこちらは電磁擲刀を無駄撃ちした格好だ。
　とはいえ茶々丸も術を完成寸前まで練り上げていた。
そこから陰義を放棄しても、既に消費した熱量を取り
戻せるものではない。

　つまり消耗はお互い様。
　戦力比は全く変移していない。

　茶々丸の行動は本当に無意味……
　としか思えない、が……<k>…………？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸虎徹_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0990a07">
「あての勝ちかな」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs1000a00">
「……」

{	FwC("cg/fw/fw茶々丸虎徹_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs1010a07">
「悪知恵勝負じゃ分が悪かったね、お兄さん。
　こちとら堀越公方足利茶々丸」

{	FwC("cg/fw/fw茶々丸虎徹_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs1020a07">
「<RUBY text="・・">裏技</RUBY>はお手の物ですよ。
　……じゃっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　言い捨てて、茶々丸は駆け去ろうとする。
　踵を返し、俺に背を向けて。

　逃げる……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs1030a00">
「――――」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs1040a00">
「――ちッ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　違う!!

　図られた。
　完璧に騙された。

　茶々丸は無理を押してまで俺と決戦する必要はない。
　時間が過ぎ去り、鍛造雷弾を積んだ船が普陀楽上空
へ現れればそれで勝利を得られる――

　そこまでは俺も承知していた。
　だから一か八かの陰義勝負を避けた事にも実は納得
ができなくはなかった……無難に時間を稼げればそれ
で良かったのだと。余りに消極的だとは思うものの。

　だが違った。

　もう一つある事に気付かなかった。

　茶々丸は俺を倒す事と時間を稼ぐ事の他にもう一つ、
<RUBY text="・・・">勝ち筋</RUBY>を持っている！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/3d村正脇差_立ち_通常.png");
	FadeStR(500,true);

	SetFwC("cg/fw/fw景明_怒りa.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs1050a00">
「殺す気だ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs1060a01">
《……え？　誰を？》

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs1070a00">
「足利邦氏をだ！
　彼が死ねば、鍛造雷弾投下を阻止する方法
は無くなる！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs1080a01">
《……あ……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　茶々丸の行く手には天守閣。
　間違いない。

　追わねば！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がく。
	CreateSE("SE01b","se特殊_鎧_駆動音01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-50, @20, Axl3, true);
	WaitKey(300);
	Move("@StR*", 300, @-10, @40, Dxl1, true);

	SetFwC("cg/fw/fw景明_苦痛.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs1090a00">
「ッ……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　足が崩れる。
　力が――入らない。

　茶々丸の陰義の余韻がまだ残っているのか。
　それに加えて、電磁擲刀による熱量の消耗が響いて
いる……!?

　これが狙いだったのか!!
　全ては茶々丸の計算の内か!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs1100a00">
「くっ……おおお!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どうにかダッシュ

	CreateSE("SE01b","se特殊_鎧_駆動音01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("@StR*", 300, @50, @-40, Axl3, true);
	WaitKey(300);

	Shake("@StR*", 500, 1, 1, 0, 0, 500, null, false);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DeleteStR(500, false);
	Move("@StR*", 500, @-300, @0, Axl3, false);


	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"md04_049vs.nss"