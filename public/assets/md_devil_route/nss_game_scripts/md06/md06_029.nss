//<continuation number="520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_029.nss_MAIN
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
	#bg001_空b_01=true;
	#bg034_署長宅茶の間a_01=true;
	#bg007_若宮大路a_01=true;
	#bg012_鎌倉駅前周辺_01=true;
	#bg113_駅のホームb_01=true;
	#ev263_村正を刺し貫く雪車町=true;
	#ev110_変てこチェイス=true;
	#ev914_九〇式竜騎兵魔剣インメルマンターン=true;
	#ev905_村正電磁撃刀_a=true;
	#bg113_駅のホームa_01=true;
	#ev106_雄飛と見下ろす村正_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_030.nss";

}

scene md06_029.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_028.nss"

//◆※以下、ラストシーン演出
//◆朝

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 15000, "BLACK");
	CreateTextureSP("空", 100, @0, @0, "cg/bg/bg001_空b_01.jpg");

	Delete("上背景");
	FadeDelete("黒",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　朝。
　心持ち早く起床して、支度を整えた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景", 100, @0, @0, "cg/bg/bg034_署長宅茶の間a_01.jpg");
	Fade("絵背景", 1000, 1000, null, true);
	Delete("空");

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290010a00">
「衣類はこの程度でいいな」

{	FwC("cg/fw/fw村正_笑顔.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290020a01">
「そうね。
　あ、そこにこれも入れておいて」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290030a00">
「……何だ？」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290040a01">
「お弁当。
　さっき作ったの」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290050a00">
「物置を引っくり返していたのではなかった
のか、あの音……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　持ち出す物は大して多くない。
　二時間足らずで荷造りは済んだ。

　出発。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＢＧＭ：ＥＤテーマ歌詞無し版？
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 3000, 1000, null, true);

	SoundPlay("@msong02_full", 0, 1000, true);
	//SoundPlay("@msong02_inst", 0, 1000, true);

	Wait(2000);

//◆鎌倉市街
	OnBG(100, "bg007_若宮大路a_01.jpg");
	FadeBG(0, true);

	FadeDelete("絵色黒", 3000, true);

	WaitKey(1000);

//◆駅前
	CreateColorSP("黒幕", 5000, "#000000");
	DrawTransition("黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("絵背景", 150, @0, @0, "cg/bg/bg012_鎌倉駅前周辺_01.jpg");
	Delete("@OnBG*");

	CreateSE("SEL01", "se背景_ガヤ_ざわめき01_L");
	MusicStart("SEL01", 2000, 1000, 0, 1000, null,true);

	DrawTransition("黒幕", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　鎌倉駅に着くと、丁度列車が入るところだった。
　しかし、それに乗るのは難しそうだ。

　乗車待ちの客がいつになく多い。

　昨日の変事の作用だろうか。
　遂に鎌倉も安全ではなくなったと悟って脱出しよう
としているのだとすれば、この人出も納得できる。

　海賊の横行する海を船で行くより、軍に一応は保護
される陸の鉄道を使いたがるのは当然の事だ。
　無論、この安全の格差は高くつくのだが。

　いま眼前で停止する車両は、俺達より前の客を飲み
込むだけで精一杯と見える。
　次の列車を待たねばならないようだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆bg113a
	CreateTextureEX("絵背景02", 160, @0, @0, "cg/bg/bg113_駅のホームb_01.jpg");
	Fade("絵背景02", 1000, 1000, null, true);

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290060a00">
「急ぐ旅でもないしな」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290070a01">
「ええ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 3000, 1, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……そう。
　急ぐ事は何もない。

　俺はもう、急がなくて良いのだ。

　この二年間、まさしく矢のように日々を過ごした。
　ともすれば息をつく間もない程、己を馳せに馳せた。

　そうして今がある。
　もう走る事はない日々。

　平安に満たされているかと云えば、否だ。
　幸福に満たされているかと云えば、否だ。

　当然の事。
　俺は偉業を成し遂げた末に休息を得た英傑ではない
のだから。

　罪を犯し、
　今はその罪から逃げているに過ぎない。

　承知していた。
　これがただの、逃避だという事は。

　安楽を得る資格が、あろう筈もない。

　過去という不変のものに、苛まれずにいられる筈が
ない。

　だが。
　
　……急いで逃げなくてもいい。

　自分の速さで、歩いて良いのだ。
　今の俺は。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290080a00">
「村正は、汽車に乗るのは初めてか」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290090a01">
「そうね。ちゃんと乗るのは」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290100a00">
「……ああ。
　鉄道を使う時は、貨物扱いにしていたな」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290110a00">
「済まん」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290120a01">
「何よ、今更」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　多くのものを失った。
　その代わりに何を得たのでもない。

　強いて云えばこの時間。
　罪から、過去から、緩慢に逃げてゆく今。

　これが全てだった。

　しかし、他の何が相応しいだろうか。
　湊斗景明の二年間の結果として、何が。

　これで良い。
　これ以上の何かでは、俺は持て余す。

　この道程をゆこう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290130a00">
「列車の窓から見る景色はいいものだ」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290140a01">
「そうなの？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290150a00">
「流れてゆく風景が……何と言うかな。
　奇妙に幻想的に映る」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290160a00">
「世界を外から眺めているような……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290170a01">
「ふぅん……？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290180a00">
「まぁ、乗ってみればわかる」

{	FwC("cg/fw/fw村正_笑顔.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290190a01">
「うん。
　楽しみ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 3000, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　全ての車両が満車になったようだ。
　俺達の他にもあぶれた客はいて、構内の其処彼処で
嘆息したり時計片手に時刻表を確かめたりしている。

　その間を、発車前の最終確認であろう、駅員が走り
抜けてゆく。

　次の列車はいつ来る？
　一時間後か、もっと後か。

　構いはしない。

　俺は急がずにゆく。
　何かを追う旅は、もう終わったのだから。

　村正を見る。
　村正も、俺を見返した。

　理由もなく、微笑んでくれた。

{	CreateSE("SE01","se乗物_汽車_汽笛");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　汽笛が鳴り響く。
　発車の合図だ。

　それは一つの終わりと、一つの始まりを告げていた。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,1000);//―――――――――――――――――――――――――――――

//◆ウェイト
//◆ホワイトアウト
//◆ＳＥ：ざしゅ。刺殺音
//◆小ウェイト
//◆ホワイトイン
//◆ＥＶ：背後から刺される村正
//◆まず刺突部分から表示→刺される村正
	Wait(1000);

	SetVolume("SE*", 2500, 0, null);
	SetVolume("@m*", 2500, 0, null);

	CreateColorEXadd("白", 15000, "WHITE");
	Fade("白", 2000, 1000, null, true);

	WaitPlay("@m*", null);
	WaitKey(2000);

	OnSE("se戦闘_攻撃_刀刺さる01", 1000);
	WaitPlay("@OnSE*", null);

	CreateTextureSP("絵イベ", 5000, Center, Middle, "cg/ev/ev263_村正を刺し貫く雪車町.jpg");
	CreateTextureSP("絵イベ２", 5010, -227, InBottom, "cg/ev/resize/ev263_村正を刺し貫く雪車町l.jpg");
	Request("絵イベ２", Smoothing);

	Delete("絵背景*");

	Wait(1000);

	FadeDelete("白",2000,true);

	WaitKey(1500);

	Move("絵イベ２", 6000, @0, -80, null, true);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290200a01">
「――えっ――――」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290210a00">
「…………村正？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("絵イベ２", 6000, @0, -490, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　突き抜ける鉄枝。

　村正の胸の中央から――

　刃先。

　……刃？

　何者の？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆演出入れつつＥＶ全て表示。雪車町一蔵。
	$回想音源=se擬音_回想_フラッシュバック01;

	CreateSE("SE01","$回想音源");
	CreateSE("SE01a","$回想音源");
	CreateSE("SE01b","$回想音源");
	CreateSE("SE01c","$回想音源");

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色白", 300, 1000, null, true);

	Move("絵イベ２", 0, -60, -170, null, true);
	Move("絵イベ２", 6000, -720, @0, null, false);

	CreateTextureSP("そりまち02", 15900, @0, @0, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");
	CreateTextureEX("そりまち01", 15800, @0, @0, "cg/ev/ev110_変てこチェイス.jpg");
	CreateTextureEX("そりまち", 15700, Center, InBottom, "cg/st/st雪車町_通常_私服.png");
	CreateColorEX("絵色黒背景", 15000, "#000000");
	SetTone("そりまち*", NegaPosi);

	CreatePlainSP("そりまち02板", 15910);
	FadeFR2("そりまち02板",0,500,400,@0,@0,60,Dxl2, false);
	Fade("絵色白", 300, 0, null, true);
	FadeDelete("そりまち02*", 300, true);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵色白", 300, 1000, null, true);
	Fade("そりまち01", 1, 1000, null, true);
	CreatePlainEX("そりまち01板", 15810);
	Delete("そりまち02");
	FadeFR2("そりまち01板",0,500,400,@0,@0,60,Dxl2, false);
	Fade("絵色白", 300, 0, null, true);
	FadeDelete("そりまち01*", 300, true);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵色白", 300, 1000, null, true);
	Fade("絵色黒背景", 0, 1000, null, false);
	Fade("そりまち", 1, 1000, null, true);
	CreatePlainEX("そりまち板", 15710);
	Delete("そりまち01");
	FadeFR2("そりまち板",0,500,400,@0,@0,60,Dxl2, false);
	Fade("絵色白", 300, 0, null, true);
	Fade("絵色黒背景", 300, 0, null, false);
	FadeDelete("そりまち*", 300, true);

	MusicStart("SE01c",0,1000,0,1000,null,false);
	Fade("絵色白", 300, 1000, null, true);
	Wait(1000);
	Delete("そりまち*");
	Delete("絵色黒背景");
	FadeDelete("絵色白", 2000, true);

	WaitAction("絵イベ２", null);

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290220a12">
「いよぅ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290230a12">
「へ、へ……。
　相変わらず、しけた面してやがる……」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵イベ２", 1000, true);

	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290240a12">
「……いや……違うなァ？」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290250a12">
「相変わらず、じゃねェ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290260a12">
「ここ最近の腐りっぷりは……
　前にも増して、見るに耐えなかったぜェ！」

{	FwC("cg/fw/fw雪車町_哄笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290270a12">
「湊斗さんよぉ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆黒画面
	CreateColorEX("黒", 15000, "BLACK");
	Fade("黒", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　顧みて……
　湊斗景明の敵とは、誰であったろう。

　鈴川令法か。
　長坂右京か。
　風魔小太郎か。
　皇路卓か。皇路操か。

　ジョージ・ガーゲットか。
　一ヶ尾一磨か。
　足利護氏か。

　足利茶々丸か。
〝神〟か。
　湊斗光か。

　彼らは湊斗景明と敵対した。
　生命を、あるいは他の何かをも賭して争った。

　しかし、彼らの湊斗景明に対する敵意は純一のもの
であったろうか？

　湊斗景明を邪魔に思い、排斥しようとした者がいる。
　湊斗景明を、戯れ程度に相手した者がいる。
　湊斗景明など、徹頭徹尾眼中に無かった者がいる。
　湊斗景明を、愛した者がいる。

　彼らにとって、真に挑むべき敵とは別に在った。
　湊斗景明は対敵であっても怨敵ではなかった。

　では？
　では、誰が。

　湊斗景明を憎悪し得たのは誰か？
　湊斗景明が憎悪し得るのは誰か？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想・第四話の雪車町

//ma04_016vs.nssの部分のフラッシュバックですが、現状FWがいじられておりません。
//元のファイルのFWが完了後に修正の必要ありです。

	EfRecoIn1(18000,600);
	CreateTextureSP("イベ絵10", 16000, Center, Middle, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw雪車町_警戒.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290280a12">
《何度でも言ってやるぜ……
　てめェはくだらねえ半端野郎だ》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290290a12">
《なんで、かァ？
　てめェは、<RUBY text="・・">嫌々</RUBY>、やってるじゃあねぇか》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290300a12">
《あの餓鬼共を……
　あの姉妹を、嫌々ながら殺しやがった!!》

{	FwC("cg/fw/fw雪車町_怒り.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290310a12">
《ふざっけんじゃねェェェェェェェェ!!》

{	FwC("cg/fw/fw雪車町_怒り.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290320a12">
《<RUBY text="・・・・・">嫌々ながら</RUBY>で、やった奴自身が納得もして
ねえような理由で、殺されちまった方の身に
なりやがれ!!
　あァ――》

{	FwC("cg/fw/fw雪車町_怒り.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290330a12">
《馬鹿馬鹿しくてしょうがねえだろうがぁ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想・村正

	EfRecoIn1(18000,600);
	Delete(イベ絵*);
	CreateTextureSP("イベ絵10", 16000, Center, Middle, "cg/ev/ev905_村正電磁撃刀_a.jpg");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw村正武者_通常b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290340a00">
《……黙れ……
　貴様》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290350a00">
《黙れと》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290360a00">
《黙れと言っている!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);

	Delete("イベ絵*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　嘗て<RUBY text="インメルマン・ターン">金翅鳥王剣</RUBY>と共に訪れた天啓。
　あの時に約束された未来はいま現実となる。

　突き詰めて――
　
　湊斗景明の敵とは、雪車町一蔵がいるに過ぎない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ここから挿入歌？
//◆ＥＶ
	SoundPlay("@msong05_short", 0, 1000, true);
	FadeDelete("黒",1500,true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290370a00">
「……お前は――――」

{	FwC("cg/fw/fw雪車町_哄笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290380a12">
「ケ、ケッ……ケェーーーーッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆たっ。跳躍音
	CreateSE("SE01","se人体_動作_跳躍01");

//◆ef001
	CreateTextureEXadd("飛ぶ２", 15010, @0, @0, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureEX("飛ぶ", 15000, @0, @0, "cg/ef/ef003_汎用移動.jpg");
	Zoom("飛ぶ*", 0, 2000, 2000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("飛ぶ*", 350, 1000, 1000, Dxl2, false);
	Fade("飛ぶ*", 0, 1000, null, true);
	FadeDelete("飛ぶ２", 1000, false);
	DrawTransition("飛ぶ*", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateSE("SE02","se乗物_汽車_走行01_L");
	MusicStart("SE02",3000,400,0,800,null,true);

	Delete("絵イベ");

	SetFrequency("SE02", 10000, 1100, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　雪車町一蔵が村正を抱えて跳ぶ。
　向かう先は……既に動き出している列車。

　窓枠を手掛かりにして張り付く。

　構う事なく、列車は走る。
　轟音と共に、加速しながら。

　俺の前から消える。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE02", 5000, 0, null);

//◆bg113
	OnBG(100, "bg113_駅のホームa_01.jpg");
	FadeBG(0, true);

	FadeDelete("飛ぶ",1500,true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290390a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　全てが一瞬の間に終始した。

　列車は止まらない。
　駅員は誰も、今の寸劇を目に入れなかったようだ。

　構内の客も――いやほんの数人、気付いたと思しき
者もいるが。
　しかし彼らはぽかんとした様子で、去りゆく列車の
後尾を眺めるばかりだ。

　俺と同じ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290400a00">
「…………」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290410a00">
「ッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　いや。
　同じように、立ち尽くしていてどうする！

　村正が刺され――拉致されたのだ！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆だっ。駆け出す
//◆ef003
	OnSE("se人体_足音_走る03", 1000);

	CreateTextureSP("駆け出す", 2000, @0, @0, "cg/ef/ef002_汎用移動.jpg");
	DrawTransition("駆け出す", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　荷物を放り捨てて走り出す。
　前方が見えなかった。人にぶつかる。罵声と怒声を
浴びる。

　白い闇の中、駆け抜けて。
　ホームの端へ。

　そこから線路に躍る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw駅員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【ｅｔｃ／駅員】
<voice name="ｅｔｃ／駅員" class="その他男声" src="voice/md06/0290420e026">
「おいっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　走る。
　枕木に足を取られて、姿勢が崩れた。

{	CreateSE("SE01","se人体_衝撃_転倒05");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　為す術なく横転する。
　
　……何を、邪魔な！

　立ち上がる。
　再び走る。

　追う。

　列車は既に遥か先だ。

　雪車町と村正を乗せて、遠く。速く。

　行かせてはならない。
　追う。

　速く、速く――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreatePlainEX("絵板写", 1900);
	Fade("絵板写", 0, 500, null, true);

	SetNwC("cg/fw/nw駅員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【ｅｔｃ／駅員】
<voice name="ｅｔｃ／駅員" class="その他男声" src="voice/md06/0290430e026">
「待て、貴様ァ！」

{	CreateSE("SE01","se人体_動作_腕を掴む01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("駆け出す");
	Shake("絵板写", 300, 30, 0, 0, 0, 1000, Dxl2, false);
	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290440a00">
「ぐっ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@OnSE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　不意に足が進まなくなり、同時に呼吸が止まった。
　強い力で襟首を掴まれたのだ。

　何を……!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw駅員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【ｅｔｃ／駅員】
<voice name="ｅｔｃ／駅員" class="その他男声" src="voice/md06/0290450e026">
「民間人の線路内立ち入りは禁止だ！
　神妙にしろ！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290460a00">
「放せ!!」

{	NwC("cg/fw/nw駅員.png");}
//【ｅｔｃ／駅員】
<voice name="ｅｔｃ／駅員" class="その他男声" src="voice/md06/0290470e026">
「何ぃ!?」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290480a00">
「構っている暇は無いっ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　そんな場合かと云うのだ。
　行かねば。行かねば！

　無理矢理に地を蹴り、走り出す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se人体_足音_走る06", 1000);


	SetNwC("cg/fw/nw駅員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【ｅｔｃ／駅員】
<voice name="ｅｔｃ／駅員" class="その他男声" src="voice/md06/0290490e026">
「舐めるな！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どさっ。引き倒された
//◆黒
	OnSE("se人体_動作_掴む02", 1000);

	OnSE("se人体_衝撃_転倒03", 1000);
	Shake("絵板写", 300, 0, 10, 0, 0, 1000, Dxl2, false);
	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 100, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("絵板写");
	CreateColorSP("下敷き", 10, "#000000");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　――果たせない。
　力ずくで、引き倒された。

　地面の上に顔を埋め、土を舐める。
　嘔吐を催す味がした。

　不条理の味だった。
　
　……何故！　今は危急の時だと云うのに！
　どうして、こんな勝手な暴力で邪魔をされる!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。新田雄飛殺害

	EfRecoIn1(18000,600);
	CreateTextureSP("イベ絵10", 16000, -450, -0, "cg/ev/resize/ev106_雄飛と見下ろす村正_d.jpg");
	CreateTextureSP("イベ絵11", 15500, -900, -500, "cg/ev/resize/ev106_雄飛と見下ろす村正_d.jpg");
	CreateTextureSP("イベ絵12", 15000, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_d.jpg");

	EfRecoIn2(300);

	Move("イベ絵10", 2000, @200, @0, DxlAuto, true);
	FadeDelete("イベ絵10",1500,false);
	Move("イベ絵11", 2000, @-100, @0, DxlAuto, true);
	FadeDelete("イベ絵11",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　理不尽だ。
　理不尽だ。

　理不尽な――身勝手な真似をするな！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);
	Delete("イベ絵*");
	EfRecoOut2(600,true);

	SetNwC("cg/fw/nw駅員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【ｅｔｃ／駅員】
<voice name="ｅｔｃ／駅員" class="その他男声" src="voice/md06/0290500e026">
「さあ、来い！
　しばらく不味い飯を食わせてやる！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290510a00">
「五月蝿い、どけぇっ!!」

{	NwC("cg/fw/nw駅員.png");}
//【ｅｔｃ／駅員】
<voice name="ｅｔｃ／駅員" class="その他男声" src="voice/md06/0290520e026">
「ぐっ……この！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ef003
	OnSE("se人体_動作_後ずさり01", 1000);
	CreateTextureSP("絵演効果", 2500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	DrawDelete("黒幕１", 100, 100, "zoom_01_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　ようやくの事で、振り払う。
　立ち上がり、走る。

　駅員も後を追ってくる。
　
　だが俺よりも足が遅いのか、それとも持久力が無い
のか、気配は次第に遠ざかっていった。

　……時間を浪費した！
　列車はもう影も形も見えない。

　どうする。
　どうする。
　どうすれば追い付ける？

　あの列車は次の駅で止まり、雪車町はそこで降りる
だろう。
　しかしこのまま走っていては、次の駅までどれだけ
掛かるか……その間に村正がどうなるか。

　いや、落ち着け。
　このような時こそ武者の能力が生かせる。

　汽車の一区間程度、翼の一打ち。
　すぐに劒冑を……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);


}

..//ジャンプ指定
//次ファイル　"md06_030.nss"