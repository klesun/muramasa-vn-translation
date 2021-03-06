//<continuation number="500">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_025.nss_MAIN
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
	#bg006_雄飛の部屋_03b=true;
	#bg007_若宮大路a_03=true;

	#ev106_雄飛と見下ろす村正_a=true;
	#ev106_雄飛と見下ろす村正_b=true;
	#ev106_雄飛と見下ろす村正_c=true;
	#ev106_雄飛と見下ろす村正_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_026.nss";

}

scene ma01_025.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_024.nss"



//◆雄飛の部屋
	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg006_雄飛の部屋_03b.jpg");

	FadeDelete("上背景", 1000,true);

	SoundPlay("@mbgm30",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　寝転がって、天井を見つめる。
　ほかにできることがない。
　眠ることさえ。

　開け放したままのがらり戸は庭からの風を運び、肌
寒いほどだったが、それが寝るのに邪魔ということは
なかった。むしろ心地よい。
　けれど眠れない。

　なら起きればいいのだろうが、片足を負傷した状態
ではそれも億劫だった。痛みはもうほとんどないとは
いえ、それがじっとしていることを条件に危うく成立
しているのは明らかだ。その安息を捨てる理由もない。

　つまるところ、寝転がってる以外にないのだった。
　熱い身体を抱えながら。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250010b56">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　あれから。
　湊斗さんが手配していたのだろう。警察がやってき
て、おれたちは保護された。

　そのまま病院へ直行だったのは言うまでもない。

　おれの治療は止血と縫合、鎮痛剤投与だけで済んで
しまったが、他の二人は当然そうはいかなかった。
　見届けることはできなかったが、集中治療室へ送ら
れたと聞かされている。

　おそらく、今もまだそこにいるだろう。
　手術が終わるまで自分も残ると言うだけ言ってみた
が、その場にいた全員に帰って寝ろと怒られては断念
するしかなかった。

　何の役にも立てないどころか、邪魔にしかならない
ことは自分でもわかっていたから仕方がない。
　おれはおじさんおばさん、忠保の家族らと入れ違う
形で、警察の車に送られてひとり帰ってきた。

　そうして、今はここでこうして夜風を聴いている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250020b56">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　考えるべきことは多くあった。
　おじさんおばさん、忠保の家族にも、おれの口から
事の説明をしなくてはならないだろう。警察から既に
聞いていても――そうか、警察の事情聴取もある。

　病院では誰もおれに何も訊かなかった。気を遣って
くれたのだろうが、甘えてはいられない。
　三人の中で一番無事に近かった人間として、おれに
は説明する義務があるはずだった。

　正しく、見たこと起きたことを彼らに伝えなくては
ならない。それが辛さを伴おうと。
　前もって準備をしておくべきだった。おれは説明事
が得意なわけではないのだから。

　他にも考えなくてはならないことはいくらでもある。
とりあえず明日の朝飯はどうしたものかといったこと
から……あの鈴川のことまで。
　そして、仲間のことも。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　小夏、忠保、リツ。
　あの三人を襲った現実――――

　考えるべきことは本当に多い。
　だが今のおれはそのどれも、胸に思い描いてはいな
かった。

　明日になれば。
　明日、この寝床で目覚めたその瞬間。
　おれは初めて、今日起きたことのすべてを、本当に
現実として受け止めることになるだろう。

　そして心を押し潰されるだろう。
　小夏の体を、忠保の眼を、もういないリツを想って、
枕に突っ伏すだろう。

　床の上をのたうち、意味のない叫びを上げるだろう。

　それがわかる。
　そうなるということがわかる。
　だが今は違う。今だけは、おれの心は救われていた。
悲痛を隠してくれていた――熱い興奮が。

　だから今だけ、この一晩だけ、おれはこの熱に浸る。
　明日からの悲しみを乗り切るために。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆フラッシュバック・村正
//	CreateColorEXmul("絵色100", 1500, #847000);
//	Fade("絵色100",0,400,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　昨日までのおれと、今のおれとの違い。
　それは一つ。
　信じる道があるということ。

　正義。
　それは考えとして……概念としてあるだけでは、心
から信じることはできない。
　それでは足りないのだ。ただの紙切れだ。

　だからおれも、そんなものは信じていなかった。
　諦めていた。そんなものは無い、と。
　だけど。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　現れた。
　正義は形として現れた。
　信じるに足る姿をもって。

　正義は体現する者があって初めて意味を持つ。
　正義を奉じて戦う者が必要だったのだ。

　そんな人がいるなんて思いもしなかった。
　戦う者、武人といえば、思い浮かぶのは六波羅幕府
でしかない。欲望に任せて剛力を揮うばかりの餓狼団。
それが全て。武の世界は六波羅の野心が席巻している。

　力ある武人は総てがその一党で、力なき人々の弾圧
に奔走している。力の無い人々のために戦おうとする
武人などは一人もいない。
　そう思っていた。

　だけど、いる。
　今は知っている。
　自分の欲望ではなく、誰かを守るために、戦う人が
いることを知っている。

　それが、たった一人でも。
　おれはその人がいるのなら、正義というものを信じ
られる。

　それはただの題目ではなく。
　意味のない飾りではなく。
　国語辞典と道徳のテキストの中で惰眠を貪るだけの
一言でもなく。

　人が正しく在るための道標。

　だから、おれはこの道を行こうと思う。
　いま確かに見えているこの道筋を。

{	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);}
//	SetVolume("@mbgm*", 2500, 0, null);}
　そして――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ひょー。ざっ。風と共に現れるのＳＥ
	CreateSE("SE01","se自然_風_野原01");
	MusicStart("SE01",1000,1000,0,1000,null,false);

	Wait(1000);

//	CreateSE("SE02","se自然_風_野原02");
	CreateSE("SE02","se特殊_鎧_装着01");
	MusicStart("SE02",0,1000,0,600,null,false);

	PrintGO("上背景", 15000);
	CreateColorSP("暗転", 5000, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg007_若宮大路a_03.jpg");

	SetVolume("SE*", 2500, 0, null);
	FadeDelete("上背景", 2000, true);

	WaitPlay("SE*", null);
//	WaitPlay("@mbgm*", null);

	WaitKey(1000);


//◆大通り・夜
//◆車の走行音
//◆ブレーキ。止まる

	CreateSE("SE01","se乗物_車_停止01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	FadeDelete("暗転", 1000, true);

//	SoundPlay("@mbgm21",0,1000,true);

	SetVolume("SE*", 5000, 0, null);
	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0250030a04">
「いかがなさいました？　お嬢さま」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250040a03">
「……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0250050a04">
「おお……そういえば新田さまのお宅はこの
近くでした。
　立ち寄っていかれるおつもりですか？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250060a03">
「……」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0250070a04">
「お嬢さま？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250080a03">
「今……
　赤い何かが、空を過ぎったような」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0250090a04">
「赤い……何か？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250100a03">
「さよ。あなたは何も見ていなくて？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0250110a04">
「ご無理を仰いますな。お嬢さまの眼にさえ
定かならぬものが、どうしてこの老婆に見え
ましょう。
　流れ星かなにかでは？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250120a03">
「星……
　わたくしの眼が、完全な信頼を置いて良い
ものなら、あれは……武者、だったような」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0250130a04">
「ほっ。夜だというのにまあ、幕府の方々は
相変わらずお忙しいようで。
　迷惑なことですなァ。勤勉な暴君とは全く
なんとも」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0250140a04">
「勿論、お嬢さまの眼は確かでございますよ」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250150a03">
「幕府……ええ。そうね。
　そうなのでしょうね」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250160a03">
「珍しくもない……
　ただそれだけのこと」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250170a03">
「なのに……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250180a03">
「どうして……こんなに。
　わたくしは……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0250190a04">
「……お嬢さま？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 0);


	PrintBG("上背景", 15000);
	CreateColorSP("暗転", 5000, "#000000");
	CreateTextureSP("絵ＥＶ1000", 1000, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_a.jpg");

	FadeDelete("上背景", 2000, true);

	WaitPlay("@mbgm*", null);
	WaitKey(1000);

	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250200b56">
「……あっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　夜の帳に沈む庭。
　その中でひとり暗闇を吹き払う紅い輝きを放って、
おれの信じる正義がそこにいた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＢＧＭ：えー感じの。静かなハッピーエンド
//◆ＥＶ：庭に落ちた影。村正と片膝立ちの雄飛。

	FadeDelete("暗転", 1000, true);

	WaitKey(1000);
	SoundPlay("@mbgm27",0,1000,true);

	SetFwC("cg/fw/fw雄飛_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250210b56">
「来てくれたんだ……」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250220a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140a]
　あわてて飛び起き、膝立ちの膝歩きで縁側まで出た
おれを、武者は黙って見下ろした。
　甲鉄に覆われたその眼の色彩は冷たい。けれど気に
ならなかった。その奥の優しさを知っている。



</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景5000", 5000, -380, -526, "cg/ev/resize/ev106_雄飛と見下ろす村正_a.jpg");
	Move("絵背景5000", 8000, @0, @400, DxlAuto, false);
	Fade("絵背景5000", 600, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140b]
　村正。
　深紅の武者。

　この姿を見たかった。
　瞼の裏に焼きついて、細部まで思い出すことも簡単
だったけれど。それでも本当の姿を見たかった。見て
いたかった。少しでも長く、少しでも近く。

　願いが叶って、おれの村正が今ここにいる。
　……まさか本当に、おれのために？

　いや、バカな。きっと事件のことでおれに聞きたい
ことかなんかがあるんだ。このロクでもない世の中、
たった一人の正義の味方が暇なはずもない。
　用事がなければおれの所なんかにわざわざ来るか。

　……そりゃまあ、心配して見に来てくれたってのも
あるかもしれないけどさ。
　だからって甘えていいもんじゃない。恥ずかしい。
協力して、手早く用件を終わらせてあげないと。

　だってのに。
　赤い雄姿をこんなに間近にしてしまったおれはもう、
我慢が利かなくなっていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景5010", 5010, -920, -526, "cg/ev/resize/ev106_雄飛と見下ろす村正_a.jpg");
	Fade("絵背景5010", 600, 1000, null, true);

	SetFwC("cg/fw/fw雄飛_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250230b56">
「あ、あのさ……」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250240a00">
「……」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250250b56">
「な、なんて言ったらいいのかな。言いたい
ことがすごくいっぱいあるんだけど……何を
どう言えばいいんだか」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250260a00">
「……」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250270b56">
「その……
　おれ、あんたのことを信じるよ」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250280a00">
「…………」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250290b56">
「あんたのことを信じる。
　あんたの戦いを信じる。
　あんたの正義を信じる。
　あんたの行く道を信じる」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250300b56">
「おれさ……
　一度、あんたに失望したんだ」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250310a00">
「……」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250320b56">
「野木山の連中に絡まれた時。
　あの時、土下座したあんたを見て、おれは
思ってた。こいつ、戦うときには戦うなんて
言ってたくせに、口だけじゃねえかって」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250330b56">
「こんな奴を信じそうになってたおれが馬鹿
だったって。
　でも……違ったんだな。おれが馬鹿なのは
その通りだったけど。意味が違った」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250340b56">
「あんたは、戦わねばならない時には戦う、
って言ったんだ。
　あんなチンピラ共なんて、戦わなきゃなら
ない相手じゃなかった」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250350b56">
「こっちが頭を下げてりゃ、それで有頂天に
なるような連中なんだから。
　本当に強い奴は、そんなのをいちいち相手
にしない……そうだよ。そういうもんだ」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250360b56">
「あんたが戦うのは、そうする以外にどうし
ようもない時だけ。
　超人の武者が生身の人間に刃を向ける……
そんな時だけ、あんたは戦うんだ」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250370b56">
「村正になって。
　自分を守る力のない誰かのために」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250380a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　村正――湊斗さんは何も答えない。
　もしかして照れてるのかな。そんなことをちらっと
考える。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵背景5000");
	FadeDelete("絵背景5010", 600, true);

	SetFwC("cg/fw/fw雄飛_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250390b56">
「それがわかったから……
　おれはあんたを信じる」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250400a00">
「……」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250410b56">
「この世には正義があるってことを信じる。
　正しく生きようとすることには意味がある
って信じる」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250420b56">
「そうすることが強さだって信じる」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　ああ……くそ。どうしてこんな安っぽい言葉でしか
喋れないんだろう。語りたいことは安っぽくないのに。
　おれが安っぽいからか？

　……そりゃそうだ。
　おれは村正と違って、まだ何もしていない。
　信じると言っているだけで、信じて何かをしたわけ
じゃない。口先ヤローだ。大安売りの特価商品だ。

　でもこれからは違う。違う人間になりたい。
　そのために――今は、信じる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250430b56">
「信じるよ。
　この世には村正っていう名の、正義の味方
がいるってことを」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　その姿を見る。
　全身を染め上げる紅は鮮血の色。禍々しく、けれど
頼もしい。なぜならそれは戦う覚悟を語るものだから。
　黄金造りの太刀は紅の中で一点、煌びやかに映える。

　峻厳な兜はあたかも鬼面。
　胸に張り出す甲鉄は城壁のよう。

　これほど敵に回して恐ろしい姿が他にあろうか。
　これほど守り手にして安堵できる姿が他にあろうか。

　村正。
　呪わしい名を持つ、優しい武者。

　それは、おれを見下ろしながら。
　……ゆっくりと、かぶりを振った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250440a00">
「いない」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250450b56">
「……？」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250460a00">
「正義の味方など、いない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　兜の奥から、こぼれてきたのはそんな言葉。
　静かな静かな、氷原を渡る風の声。

　おれは少し呆然として、それから、
　
　……ああ、そうか、と。
　心の中で頷いた。

　この人は、まったく。
　もう少し、他人に理解と評価を求めたっていいじゃ
ないか。

　湊斗さん。
　あんたはきっと、自分にすごく厳しい人なんだろう。

　どれだけのことを成し遂げても、より上の完璧を、
もっと良い結果を――例えばおれと小夏と忠保が全員
怪我しないで無事に済むとか――考えて、自分を減点
してしまう人なんだろう。

　だからそんなことを言うんだろう？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　でもあんたは今日、おれたちを助けてくれたんだ！
　それは間違いないんだ。あんたが来てくれなかった
ら、おれたち三人は全員死んでいた。殺されて、今頃
はあの箱の中だ。

　そうならなくて済んだのは、あんたが助けてくれた
から。

　おれはあんたに感謝したい。
　あんたを尊敬したい。

　なのに。
　あんたは自分を貶めて、そうはさせまいとするのか？
　
　……少し寂しくなる。

　でも、いい。
　おれは信じる。

　あんたは正義の味方だ。
　大和で唯一の、正義のために戦ってくれる武者だ。

　唯一の――――英雄。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250470a00">
「……どこにもいない。
　正義の味方は、どこにもいない」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250480a00">
「いないのだ――新田雄飛」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250490b56">
「いるよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　おれは手を差し伸べた。
　紅く輝く姿に。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250500b56">
「ここにいる」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　おれは信じる。あんたを信じる。
　あんたを理想とする。
　あんたを目指す。

　そして――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆ホワイトアウト。ＢＧＭ、短めフェードアウト

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEXadd("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 200, 1000, null, true);

	PrintGO("上背景", 10000);
	CreateColorSP("絵暗転", 50, "#000000");
	FadeDelete("上背景", 200, true);

//◆横薙ぎ剣撃アニメ？
	SL_right(@0,@0,2500);
	SL_rightfade2(10);


//◆ＳＥ：ダーン！　ピアノの鍵盤を思い切り叩いた音
//◆同時に画面を高速切り替え。村正影が剣を振り切っている。全体にレッドマスク

	PrintGO("上背景", 10000);
	CreateColorSPmul("絵血面", 50, "#CC0000");
	CreateTextureSP("絵ＥＶ30", 30, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_b.jpg");
	CreateTextureSP("絵ＥＶ20", 20, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_c.jpg");
	CreateTextureSP("絵ＥＶ10", 10, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_d.jpg");

	Delete("上背景");
	CreateSE("SE01","se擬音_悲劇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵血面", 300, 0, null, true);
	WaitKey(1000);

//◆ダーン！
//◆雄飛の首が胴から離れる

	CreateSE("SE02","se擬音_悲劇01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵血面", 0, 1000, null, true);
	Delete("絵ＥＶ30");
	Fade("絵血面", 300, 0, null, true);
	WaitKey(1000);


//◆ダーン！
//◆雄飛の首が転がる

	CreateSE("SE03","se擬音_悲劇01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Fade("絵血面", 0, 1000, null, true);
	Delete("絵ＥＶ20");
	FadeDelete("絵血面", 300, true);



	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　………………
　あれ？

　なんで、おれ、倒れてるんだろう。
　なんで、眼が霞んでるんだろう。

　これじゃあ、村正の姿が良く見えない。
　おれの大好きな姿が。

　ちくしょう、何やってんだおれ。
　疲れてぶっ倒れちまったのか？

　そりゃ無理もねえけど。
　もうちょっと頑張れよ。

　今はそこに村正がいるんだから。
　この人の前でみっともないとこ見せんじゃねえ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ55", 5500, -60, -80, "cg/ev/resize/ev106_雄飛と見下ろす村正_d.jpg");
	SetShade("絵ＥＶ55", MEDIUM);

	Move("絵ＥＶ55", 20000, @0, -560, DxlAuto, false);
	Fade("絵ＥＶ55", 600, 1000, null, false);

	SoundPlay("@mbgm31",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　ああ……<k>くそ、眼が霞む。

　なんか血が足りてないみたいな感じだ。
　なんでだろ。出血は大したことなかったはずなんだ
けどな。やっぱ疲れのせいかな。

　起き上がりたいけど起き上がれない。
　体がどっかにいっちまったみたいだ。
　指一本動きゃしない。なさけねぇ。

　動くのは眼だけだ。
　だから……せめて村正の姿をしっかりと見たいのに。
こう霞んでちゃあそれもできない。

　なんでこんなにぼやけるんだよ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵ＥＶ55", 0, 1000, null, true);
	CreateTextureSP("絵ＥＶ54", 5400, -940, -1100, "cg/ev/resize/ev106_雄飛と見下ろす村正_d.jpg");
	Zoom("絵ＥＶ54", 0, 2000, 2000, null, true);

	Move("絵ＥＶ54", 20000, @0, @480, DxlAuto, false);
	FadeDelete("絵ＥＶ55", 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0306]
　なんか冷たいな。
　頬が濡れてる。

　なんだろ。
　涙？

　なんでおれ、泣いてるんだろ。
　何が哀しいんだろ。
　変なの……

　哀しい。
　何かが哀しい。
　哀しくて――哀しくて。涙が止まらない。

　なんだろう。
　おれはなにが――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＳＴ", 2900, -200, Middle, "cg/st/3d村正標準_立ち_抜刀.png");

	CreateColorEX("白地", 2800, "#FFFFFF");
	Fade("絵ＳＴ", 0, 300, null, false);

	FadeDelete("白地", 500, false);
	FadeDelete("絵ＥＶ54", 3000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　ああ……そうか。
　村正の姿がもう見えないからだ。

　涙のせいで、視界が歪んで、もう村正の形はわから
ない。
　きっとおれはそれが哀しいんだな。
　こんなに涙をこぼすほど。

　大丈夫だって。
　起きるまで待っててくれるよ。
　この人は優しいんだから。

　だから、少し眠ろう。起きられないんじゃ仕方ない。
　少し眠って、疲れをとって……それからまた起きて、
村正の姿を見よう。

　そうして、その姿を追って。
　歩き始めよう。

　理想を追って。
　正義のために戦う道を、おれも――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトアウト
	CreateColorEXadd("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 2000, 1000, null, true);

	WaitKey(1000);

	ClearWaitAll(2000, 3000);


}

..//ジャンプ指定
//次ファイル　"ma01_026.nss"

