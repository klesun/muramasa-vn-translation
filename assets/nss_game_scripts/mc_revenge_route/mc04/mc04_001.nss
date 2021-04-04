//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_001.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_大鳥花枝=true;

	$PreGameName = $GameName;

	$GameName = "mc04_002vs.nss";

}

scene mc04_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc03_027.nss"


//◆大鳥本邸
//◆応接間
//◆邦氏、花枝
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	CreateTextureSP("絵背景20", 100, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");
	Delete("上背景");
	FadeDelete("黒幕１", 2000, true);

	OnSE("se日常_建物_扉開く01", 1000);
	WaitKey(500);
	SoundPlay("@mbgm20",0,1000,true);
	StR(1100,@0,@ 0,"cg/st/st花枝_通常_私服.png");
	StCL(1100,@50,@ 0,"cg/st/st邦氏_通常_私服.png");
	StL(1000,@-90,@ 0,"cg/st/st獅子吼_通常_制服.png");
	FadeStL(300,false);
	Move("@StL*", 300, @20, @0, Dxl1, true);

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010010a06">
「邦氏殿下。花枝様。
　間もなく刻限でございます」


{	FadeStCL(300,false);
	FadeStR(300,false);
	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010020b49">
「……」


{	#voice_on_大鳥花枝=true;
	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010030b18">
「……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010040a06">
「どうぞ、お支度を」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010050b49">
「うむ……」

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010060b49">
「……」

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010070b49">
「いや、だが……
　獅子吼よ」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010080a06">
「殿下。
　この度の婚約の意義は、既に幾度もご説明
致しました通り」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010090a06">
「鎌倉奪還の為、避けられぬ<RUBY text="きざはし">階</RUBY>でございます」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010100b49">
「それは……わかっている。
　わかっているが、」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010110a06">
「おわかりならば、従われませ。
　殿下は六波羅の――大和の命運を担うべく
生まれつかれた御方」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010120a06">
「されば己一個の意思などお捨てあれ。
　何事を決めるにも、偏に国家の利害のみを
考慮されれば宜しゅうございます」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010130b49">
「――――」


{	NwC("cg/fw/nw女官.png");}
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mc04/0010140e123">
「し、獅子吼殿。お言葉が過ぎましょうぞ！」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010150a06">
「……<RUBY text="・・・">過ぎる</RUBY>？
　何が過ぎている」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010160a06">
「俺は現実をお話ししているだけだ、<RUBY text="つぼね">局</RUBY>。
　それとも貴様は、俺の言葉に嘘偽りが少し
でもあったと云うのか」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw女官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mc04/0010170e123">
「そ……そうは申しませぬが――」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010180a06">
「そうは申さぬ？
　では俺の言葉が正しいと知りつつ、それを
曲げて殿下に伝えさせようとしたのか」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010190a06">
「君側の奸」


{	NwC("cg/fw/nw女官.png");}
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mc04/0010200e123">
「なっ」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010210a06">
「殿下の御側に侍る資格なし。
　除けろ」


{	NwC("cg/fw/nw大鳥軍兵士Ａ.png");}
//【ｅｔｃ／大鳥兵士Ａ】
<voice name="ｅｔｃ／大鳥兵士Ａ" class="その他男声" src="voice/mc04/0010220e171">
「はッ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆兵士、女官連れ去る。ＳＥで表現か

	DeleteStA(200,true);
	OnSE("se人体_動作_抱く02", 1000);
	WaitKey(200);
	OnSE("se人体_動作_人引きずる_L", 1000);

	SetNwC("cg/fw/nw女官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mc04/0010230e123">
「で、殿下ぁ！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//―――――――――――――――――――――――――――――


//◆ドア閉まる。ばたん。
	SetVolume("@OnSE*", 200, 0, null);
	OnSE("se日常_建物_扉閉める01", 1000);
	WaitKey(300);
	StCL(1100,@50,@ 0,"cg/st/st邦氏_通常_私服.png");
	FadeStCL(300,false);
	

	SetFwC("cg/fw/fw邦氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010240b49">
「ま――待て！」


//◆ドス利かせて
{
	StL(1000,@-90,@ 0,"cg/st/st獅子吼_通常_制服.png");
	FadeStL(300,false);
	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010250a06">
「殿下」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010260b49">
「……っ！」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010270a06">
「繰り返し申し上げます。
　現実をご説明致します」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010280a06">
「<RUBY text="・・・・">足利邦氏</RUBY>など、何の価値もない。
　価値があるのは<RUBY text="げんじのちょうじゃ">源氏長者</RUBY>であり、竜軍元帥
であり、<RUBY text="しょうさんみりくえたいしょうりょう">正三位六衛大将領</RUBY>」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010290a06">
「……宜しいか。
　これより後は何事をなさるにも、この理を
わきまえられませ」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010300b49">
「………………」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010310a06">
「殿下。
　御命令を」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010320b49">
「……支度をして参る。
　しばし待て」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010330a06">
「はッ！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//―――――――――――――――――――――――――――――

//◆邦氏、去る

	Move("@StCL*", 200, @-20, @0, Dxl1, false);
	DeleteStCL(200,true);
	StR(1100,@0,@ 0,"cg/st/st花枝_通常_私服.png");
	FadeStR(200,true);
	SetFwC("cg/fw/fw花枝_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010340b18">
「……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010350a06">
「花枝様も、お願い致します」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010360b18">
「……」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010370a06">
「何か？」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010380b18">
「<RUBY text="いぬ">狗畜</RUBY>」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010390a06">
「――――」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010400a06">
「お言葉、承りました。
　ではお支度を」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010410b18">
「蒙昧」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010420a06">
「……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010430a06">
「お気が済まれましたら、どうか控えの間へ。
　係りの者が花枝様をお待ちしております」


{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010440b18">
「うんこ」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010450a06">
「……………………」


{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010460b18">
「お前の言葉なんてうんこにしか聞こえんわ。
　うんこうんこうんこうんこうんこうんこ」


{	Move("@StL*", 300, @50, @0, Dxl2, false);
	DeleteStL(300,false);
	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010470a06">
「――<RUBY text="ライアー">食わせ者め</RUBY>」


//◆獅子吼、花枝の顎をつかむ。ＳＥ表現？
{	OnSE("se人体_動作_腕を掴む01", 1000);
	Shake("@StR*", 100, 7, 0, 0, 0, 1000, Dxl3, false);
	FwC("cg/fw/fw花枝_失意.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010480b18">
「……ぐっ……」


{	DeleteStR(300,false);
	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010490a06">
「貴方様のその、下劣な品性だけは遂に叩き
直して差し上げられなかった。
　<RUBY text="せんじょうもの">僭上者</RUBY>の血は争えぬということか。貴方の
姉君もそうであられた」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010500a06">
「<RUBY text="・・・・・">こんな代物</RUBY>を大君の后に擬さねばならんと
は……大鳥千年の恥に他ならぬ。
　全てはこの獅子吼の力が足りなかった故」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010510a06">
「どうかお許しあれ、花枝様」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010520b18">
「くっ……ぁ」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010530a06">
「事が成った暁には……
　今度こそ、念入りに調教を施し――多少は
人がましくして差し上げましょう程に」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010540b18">
「……っの……！
　はな、せっ……変態！」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010550a06">
「……」


//◆がぶ。
{	OnSE("se人体_動作_噛みつき", 1000);
	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010560a06">
「ッ！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 990);

//◆振り払う。倒れる花枝

	OnSE("se人体_動作_跳躍01", 1000);
	StL(1000,@20,@ 0,"cg/st/st獅子吼_通常_制服.png");
	Move("@StL*", 300, @-20, @0, Dxl1, false);
	FadeStL(300,false);

	Wait(200);

	OnSE("se人体_衝撃_転倒03", 1000);
	Shake("絵板写", 300, 0, 10, 0, 0, 1000, Dxl1, true);
	Delete("絵板写");

	WaitKey(700);

	StR(1100,@0,@50,"cg/st/st花枝_通常_私服.png");
	OnSE("se人体_動作_後ずさり01", 1000);
	Move("@StR*", 300, @0, @-50, Dxl1, false);
	FadeStR(300,true);
	WaitKey(300);
	SetFwC("cg/fw/fw花枝_野心.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010570b18">
「……ぺっ。
　狗畜野郎は血も不味い。最低だ」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010580a06">
「狗畜すら、無闇に人を噛みはせぬものを。
　貴方様の性根はよくよく捻じ曲がっている
らしい」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010590a06">
「だが見限りはせぬ。
　雄飛様を戴く望みが潰えた以上、大鳥家の
主は貴方しかいないのだ」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010600b18">
「……」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010610a06">
「いずれは邦氏殿下との間に生まれし御子を
貰い受けるとしても、<RUBY text="・・">繋ぎ</RUBY>が要る……。
　せめてそのくらいは務まるよう矯正させて
頂く故、覚悟しておかれよ」


{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010620b18">
「覚悟ならお前がしとけや！
　いつまでもその首、胴体にくっついてると
思うなよ」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010630a06">
「……」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010640b18">
「……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010650a06">
「花枝様をお連れしろ」


{	NwC("cg/fw/nw大鳥軍兵士Ｂ.png");}
//【ｅｔｃ／大鳥兵士Ｂ】
<voice name="ｅｔｃ／大鳥兵士Ｂ" class="その他男声" src="voice/mc04/0010660e172">
「は――はッ！」


//【ｅｔｃ／大鳥兵士Ｂ】
<voice name="ｅｔｃ／大鳥兵士Ｂ" class="その他男声" src="voice/mc04/0010670e172">
「では御館様、こちらへ……」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010680b18">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆外で爆音。どかーん。
	SetVolume("@mbgm*", 1000, 0, null);

	DeleteStA(150,true);

	CreatePlainSP("絵板写", 5000);

	OnSE("se戦闘_破壊_爆発02", 1000);
	FadeFR2("絵板写",0,500,300,@0,@0,30,Dxl2, true);

	WaitKey(300);

	SetNwC("cg/fw/nw大鳥軍兵士Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／大鳥兵士Ｂ】
<voice name="ｅｔｃ／大鳥兵士Ｂ" class="その他男声" src="voice/mc04/0010690e172">
「な……何だぁ!?」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010700b18">
「……爆発……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//―――――――――――――――――――――――――――――

//◆どかーんどかーん

	OnSE("se戦闘_破壊_爆発02", 1000);
	FadeFR2("絵板写",0,500,300,@0,@0,20,Dxl2, true);
	WaitKey(300);

	OnSE("se戦闘_破壊_爆発01", 1000);
	FadeFR2("絵板写",0,500,300,@0,@0,40,Dxl2, true);
	WaitKey(300);

	SetFwC("cg/fw/fw獅子吼_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010710a06">
「――――」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010720a06">
「榴弾砲……だと？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆どかーん
	OnSE("se戦闘_破壊_爆発05", 1000);
	FadeFR2("絵板写",0,500,300,@0,@0,60,Dxl2, false);

	CreateVOICEEX("ｅｔｃ／大鳥兵士Ｃ","mc04/0010730e173","その他男声");
	MusicStart("ｅｔｃ／大鳥兵士Ｃ",0,1000,0,1000,null,false);

//	SetNwC("cg/fw/nw大鳥軍兵士Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0070]
//◆ボイスのみ
//【ｅｔｃ／大鳥兵士Ｃ】
//<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/0010730e173">
//「敵襲ぅーーー!!
//　敵襲だぁーーーーーーーーーーっ!!」

//</PRE>
//	SetTextEXC();
//	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw花枝_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010740b18">
「…………」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010750a06">
「……ッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("ｅｔｃ／大鳥兵士Ｃ", 2500, 0, null);
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc04_002vs.nss"