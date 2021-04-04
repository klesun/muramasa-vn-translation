//<continuation number="1730">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_006.nss_MAIN
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
	#ev103_香奈枝演奏_a=true;

	#bg013_鎌倉俯瞰a_01=true;
	#bg014_鎌倉繁華街_01=true;
	#bg012_鎌倉駅前周辺_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_大鳥香奈枝=true;
	#voice_on_永倉さよ=true;

	$PreGameName = $GameName;

	$GameName = "ma01_007.nss";

}

scene ma01_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_005.nss"

	PrintBG("上背景", 30000);

//◆昼の鎌倉
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg013_鎌倉俯瞰a_01.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm22",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……リツは帰ってこなかった。
　家にも、学校にも、おれたちの前にも。

　さすがに騒ぎが起き始めている。
　失踪事件など今の関東ではさほど珍しくもないが、
だからといって、身近でそれが起きた時に平然として
いられるものでもない。

　鈴川は、今日は朝しか教室に顔を出さなかった。
　リツの家と職員室と警察署を周回しているようだ。

　厳しい表情で廊下や校庭を早足に進む姿を、何度か
見かけた。

　警察には捜索願を出したろう。だが、それで問題が
解決するとは鈴川も家族もよもや期待していまい。
　神社に賽銭を投げ込む程度の心持ちのはずだ。

　形ばかりの捜査でもすればまだましな方。
　おそらくはなにかの帳面におざなりな記録をして、
それきりだろう。

　ここ数年間、警察が市民の保護者として機能したと
いう話など大にも小にも全く聞かない。
　倒幕勢力の摘発などに際して、六波羅に下請け業者
よろしく使い倒されることならあるそうだが。

　要するに、カケラもあてにはできない。

　だから、自分でやるしかないのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景200", 90, Center, Middle, "cg/bg/bg014_鎌倉繁華街_01.jpg");
	FadeDelete("絵背景100", 1000, true);

	StR(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StL(1000, @0, @0,"cg/st/st雄飛_通常_制服.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060010b43">
「こっちじゃないみたいだね。
　常盤まで下りてきて、宮野さんの店を覗か
ないっていうのはちょっと考えにくいよ」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060020b56">
「他になにもないよな？　このへん」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060030b43">
「少なくとも、リツにとって面白いものはね」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060040b56">
「となると駅方面か、北鎌か……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　頭の中で鎌倉の地図を広げながら呟く。
　なにも言ってこないということは、忠保にも異論は
ないのだろう。

　おれたちは、一昨日の夜に忠保と別れた後のリツの
足取りを追うところから始めていた。
　リツの行動範囲は広いが、それでもここはあいつの
地元で、しかもあいつは目立つ。

　労を惜しまなければ素人探偵二名でもどうにかなら
ないこともない。
　現に今のところはある程度の成果が上がっている。

　ここにいない小夏はリツの交友関係をあたるために
単独で別行動中だ。
　目当ての大半は女子。となると、男子がくっついて
いては邪魔という次第。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆駅周辺
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStA(0,true);

	Delete("絵背景*");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg012_鎌倉駅前周辺_01.jpg");

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　駅へやってきた。

　鉄道は関東交通網の大動脈と言っていいが、当然、
一般市民がそうそうお世話になれる代物とは違う。
　……一昔前はそうでもなかったが。

　今の鉄道は幕府の御用列車も同然だ。運ぶのは軍人、
もしくは軍需物資ばかり。
　民間人も利用できることはできるが、それには法外
な額の運賃が必要になる。

　江戸や駿府に出たいのなら船の方がよほど便利だ。
　鉄道に比べて遅いが安価で、本数も安定している。

　そういうわけで、リツが鎌倉駅から列車に搭乗して
どこかへ行ったとは考えられない。
　元より、そんな推測でここへ来たのではなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StL(1000, @0, @0,"cg/st/st雄飛_通常_制服.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060050b56">
「さて……どっから当たったもんかな？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060060b43">
「多過ぎて困るねぇ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　忠保と二人、少し途方に暮れたりする。

　駅前という場所の標準仕様として――純粋な軍用駅
は別だが――鎌倉駅前も繁華街だった。
　飲食店、服飾店、デパート、遊技場……リツが喜び
そうな場所はいくらでもある。

　それらすべてを調べて回るのは無理だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060070b56">
「金の掛かる場所は除外できるよな」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060080b43">
「馬鹿の集会所みたくなってる所も行く必要
はないね」

{	FwC("cg/fw/fw雄飛_快活.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060090b56">
「あいつ馬鹿は嫌いだからな。バカだから」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060100b43">
「バカだからねえ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　ちなみに『バカ』とは字面と語感が示すようなまあ
そういう方向性の変チクを指し、『馬鹿』とは字面が
示す通りの非人間的かつ没知性的な生物を意味する。
　混同されることも多いが別物なので注意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060110b56">
「つまり上と下は切って、普通のとこだけを
探せばいいってことだな」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060120b43">
「ハハハ、一番多いカテゴリだね」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060130b56">
「……それでもいくらかマシだろ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
『無理』が『至難』になった程度だが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060140b43">
「もう少し的を絞ってみない？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060150b56">
「できるものなら是非。
　どうやって？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060160b43">
「どこへ向かうにしたって、この辺りは必ず
通るよ。ここで聞き込みしてみよう。
　うまくすればどっち方面に行ったかくらい
はわかるかもしれない」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060170b56">
「ここでか……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,false);
	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　辺りを見回す。
　忠保の言うことは間違ってはいないが。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StL(1000, @0, @0,"cg/st/st雄飛_通常_制服.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060180b56">
「通行人を片っ端から捕まえて聞くのか？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060190b43">
「それは無駄だね……ここを通り過ぎる人で
はなくて、ここに留まっている人に聞かない
と」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060200b56">
「駅員？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060210b43">
「駅員は駅の中しか見てないんじゃないかな」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060220b56">
「交番」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060230b43">
「気持ち良く寝ているみたいだよ。
　彼が一昨日の夜だけは真面目に働いていた
可能性に賭けてみる？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060240b56">
「もう少し勝ち目のある勝負がいいな。
　屋台」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060250b43">
「日が落ちたら店は畳むね、普通」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060260b56">
「……結局どうしろと？」

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060270b43">
「あれなんかどうかな？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	SetVolume("@mbgm*", 1000, 0, null);

//◆香奈枝、コントラバス独奏
//◆ＥＶ絵にするなら傍らにさよも

	CreateWindow("ウィンドウ上", 1500, 0, 0, 1024, 288, false);
	CreateWindow("ウィンドウ下", 1500, 0, 288, 1024, 576, false);
	SetAlias("ウィンドウ上","ウィンドウ上");
	SetAlias("ウィンドウ下","ウィンドウ下");

	CreateTextureSP("ウィンドウ上/絵背景50", 1500, Center, Middle, "cg/bg/bg012_鎌倉駅前周辺_01.jpg");
	CreateTextureSP("ウィンドウ下/絵背景50", 1500, Center, Middle, "cg/bg/bg012_鎌倉駅前周辺_01.jpg");

	CreateTextureSP("kana", 1000, 0, Middle, "cg/ev/resize/ev103_香奈枝演奏_a.jpg");
	CreateTextureSP("絵EV100", 900, 0, Middle, "cg/ev/ev103_香奈枝演奏_a.jpg");
	Move("kana", 0, @-200, @-200, null, true);

	Move("kana", 2000, @-200, @+100, Dxl1, false);
	Move("ウィンドウ上", 1500, @0, @-150, null, false);
	Move("ウィンドウ下", 1500, @0, @+150, null, true);

	SoundPlay("@mbgm06",0,1000,true);
	Wait(500);

	Move("ウィンドウ上", 1000, @0, @-150, null, false);
	Move("ウィンドウ下", 1000, @0, @+150, null, true);
	Delete("ウィンドウ上/*");
	Delete("ウィンドウ上");
	Delete("ウィンドウ下/*");
	Delete("ウィンドウ下");

	FadeDelete("kana", 1000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　言われておれは初めて気付いた。
　その人に、ではなく。

　その人の<RUBY text="かなで">奏</RUBY>をさっきからずっと聞いていたことに。

　大きな弦楽器。
　それを恋人のように――あるいは子供のように――
抱きかかえて、女性が弓を当てている。

　音色は重く、厚く、だが静か。
　深い森の中、日の差さない最奥に<RUBY text="たゆた">揺蕩</RUBY>う風を想う。

　誰の肌にも触れない風。
　誰の耳にも届かない響。

　楽師の前で足を止める者は一人もいなかった。
　絶え間ない人の流れは、ただ足早に行き過ぎてゆく。

　彼らはこの曲を聴いたことさえ記憶しないだろう。
　だがふとした折に聞き覚えのないメロディが脳裏を
よぎり、首を傾げるのかもしれない。

　気付いてみれば、
　彼女の演奏は美しかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060280b56">
「おまえ……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060290b43">
「うん？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060300b56">
「よく見つけられたな」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060310b43">
「……そうだね。たまたまだと思うよ。
　不思議だな。よく見るとあんなに華やかな
ひとなのに、なんで少し目を離すだけで途端
にひっそりとするんだろう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　忠保の分析は当を得ていた。

　細い目筋が特徴的な、明らかに水準以上の美人だ。
長い髪が<RUBY text="きらめ">煌</RUBY>く衣装のようでもある。
　どう見たところで群集から一頭地を抜く容姿なのに、
それが遠目には、奇怪なほど風景の中に溶けてしまう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060320b43">
「ああいう人を探して見ていたから気付けた
んだろうなぁ」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060330b56">
「ああいう人？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060340b43">
「路上で芸を見せる人。
　そういう人なら結構遅くまでいると思って」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060350b43">
「けど……」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060360b56">
「ん？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060370b43">
「あの人が芸人さんかどうかは疑問だね。
　あの芸じゃお金は稼げないよ」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060380b56">
「そりゃそうだな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　気付かれないのでは話にならない。
　耳に止まれば、大枚をはたいたっていいような演奏
なのだが。

　ともかく聞くだけ聞いてみよう。
　おれと忠保は頷き合って、女性に近づいていった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆立ち絵もしくはＥＶを消去、駅前背景
	FadeDelete("絵EV100",500,true);

	StR(1000, @-50, @0,"cg/st/st雄飛_通常_制服.png");
	StC(800, @+300, @0,"cg/st/st忠保_通常_制服.png");
	FadeStC(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060390b56">
「あの……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　す、と。
　目の前に手が現れて、おれを遮った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆さよ立ち絵
	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060400b56">
（……あれ？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　すぐ終わりますから、と穏やかな視線が伝えてくる。
　それはいいのだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060410b56">
（この人、どこから出てきた？）

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060420b43">
（いやぁ……どこだろう。
　僕も気付かなかったよ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

/*
	DeleteStL(200,false);
	DeleteStR(200,false);
	DeleteStC(200,true);

	StC(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStC(200,true);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　一見して品の良い老婦人。令嬢風の女性と並ぶと、
お付きの<RUBY text="・・・">ばあや</RUBY>という風情。
　ごく、質朴な身なりをしていた。傍らの端麗な姿に
比べればどうしても印象は隠れる。……だから、か？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(1000);

	SetVolume("@mbgm06", 2000, 0, null);

	DeleteStL(300,false);
	DeleteStR(300,false);
	DeleteStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
　二人並んで訝っている間に、演奏は終わりを迎えて
いた。美しく一礼して、老人が引き下がる。
　長い髪の女性が顔を上げた。視線が合う。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm26",500,1000,true);

	StL(1100, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStL(300,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0242]
　その瞬間。
　おれは恥ずかしいまでに自惚れた直感を得た。

　あまりにも馬鹿馬鹿しい悟り。
　
　――この人に、おれは無条件で愛されているという。

　冷静に考えてみるまでもなく、妄想だった。
　一体どこからそんなくそボケた考えが湧いてきたの
か。今日はじめて出会った女性、しかもこれだけ綺麗
なひとが、なんでおれを好きにならなきゃならんのか。

　小一時間脳味噌を問い詰めたい。

　しかし、その細い瞳がまずかった。
　おれを見る眼差しが優し過ぎた。
　
　どうしても、そんな誤解をしたくなる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @-50, @0,"cg/st/st雄飛_通常_制服.png");
	StC(800, @+300, @0,"cg/st/st忠保_通常_制服.png");
	FadeStC(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw雄飛_驚くa.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060430b56">
「あ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　とにかく妄念を振り払うために、おれは口を開こう
とした。
　話をしよう。話をすれば正気に戻る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060440b56">
「あの……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　言葉が出ない。
　何を話せばいいのかわからない。

　何してるんだおれ？
　ここへ何しに来たんだっけ？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060450b56">
「あのっ……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060460b43">
「雄飛、どうしたの。勃起してるよ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	SetVolume("@mbgm21", 200, 300, null);

//◆ギガントパンチ。どがしゃー。
	CreateTextureEX("絵EF100", 5000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	SetBlur("絵EF100", true, 3, 500, 50, false);
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Move("絵EF100", 0, @-100, @+100, null, true);
	Zoom("絵EF100", 0, 2500, 2500, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	Move("絵EF100", 200, @+100, @-100, null, false);
	Zoom("絵EF100", 200, 1200, 1200, Dxl1, false);
	Fade("絵EF100", 200, 1000, null, true);

	Wait(100);

	OnSE("se戦闘_攻撃_殴る05",1000);
	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵EF100");
	DeleteStC(0,false);
	DeleteStCL(0,false);
	DeleteStL(0,false);
	DeleteStR(0,true);

//shake用下背景定義
	CreateTextureSP("絵背景1", 10, Center, Middle, "cg/bg/bg012_鎌倉駅前周辺_01.jpg");
	Fade("絵背景1", 0, 1000, null, true);
	Shake("背景50", 800, 5, 5, 0, 0, 500, null, false);

	Fade("フラッシュ白",200,0,null,true);

	Delete("フラッシュ白");

	StR(1000, @0, @0,"cg/st/st雄飛_通常_制服.png");
	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetComic(@0,@0,15);
	SetFwC("cg/fw/fw雄飛_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060470b56">
「せ、せめて顔が赤いとか言えぇ!!」

{	#voice_on_大鳥香奈枝=true;
	DeleteComic();
	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060480a03">
「勃ったんですか？」

{	FwC("cg/fw/fw雄飛_怯えb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060490b56">
「うわぁ聞かれてるもう駄目だ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 5000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　頭を抱えて走り出そうとしたところへ、ばあさんが
ついと進み出てくる。
　まぁまぁとか言いながら肩をがっしり掴んで半回転
させられ、おれは無理矢理元の位置へと戻された。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0311]
　女性の視線は変わっていなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//	SetVolume("@mbgm21", 1000, 1000, null);


	SetFwC("cg/fw/fw忠保_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060500b43">
「うーん……雄飛……友情が重いよ」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060510b56">
「今のは混じり気無しの殺意だバカヤロウ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　まぁお陰で正気には戻れたが。ショック療法で。
　けど絶対礼なんか言わねぇ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060520b56">
「あの」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060530a03">
「はい」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060540b56">
「少しお伺いしたいことが……
　あ、すいません。おれこのへんに住んでる
学生で新田雄飛って言います」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060550a03">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　女性が頷く。
　そして、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060560a03">
「雄飛さん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　大切な宝物のように、おれの名前を口にした。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_驚くa.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060570b56">
（うっ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　落ち着け、落ち着けおれ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060580b56">
「こっ、こ、こっちは稲城忠保」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060590b43">
「稲城です。ところでさっきから雄飛がおか
しいのは別に奇行癖ではなく、きれいなお姉
さんを前にして浮かれてるだけなんですよと
フォローしてあげたりする友情覇王だったり」

{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060600b56">
「おまえもう帰れぇ!!」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060610a03">
「はい。友情覇王さん」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060620b43">
「わぁい、こっちで覚えてもらえたよ雄飛！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　嬉しいのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060630b56">
「それでその。
　お姉さんは、ここで演奏をしている人なん
ですよね？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060640b43">
「雄飛、その言い方だとまるでほかに習性の
ない動物みたいだよ」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060650b56">
「うっ。ええとつまり」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060660a03">
「ここで毎日演奏をして生計を立てている人
なのか、ということですね？」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060670b56">
「あ、はい。そうです」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060680b43">
「<RUBY text="ＣＰＵ">演算機</RUBY>の性能差が如実に知れる会話だなぁ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　返す言葉もねぇ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060690a03">
「残念ですが……わたくしは、鎌倉には来た
ばかりですの。
　ここでこの子を弾くのは今日が初めてです」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060700b56">
「あ、そうなんですか……」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060710b43">
「残念だね、雄飛」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060720b56">
「こら」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　残念とか言うな。悪いだろうが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060730a03">
「申し訳ありません。
　お役に立てなかったようです」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060740b56">
「いえそんな、こっちの都合ですから」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　案の定、女性は肩を落としてしまっていた。
　こっちが申し訳ない。慌てて手を振る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060750b56">
「別に大したことではないので……」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060760b43">
「ハハハそれは結構ひどい言い草じゃ<?>
{	OnSE("se戦闘_攻撃_殴る04",700);
	DeleteFwC(0,false);}
むぎょ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　親指一本突きによる<RUBY text="インターセプト">攻勢阻止</RUBY>成功。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_通常b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060770a03">
「そうですか……？
　ではせめて、道を示して差し上げましょう」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060780b56">
「道を？」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060790a03">
「あら、申し遅れました。
　わたくしは――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ドゥーン。コントラバスひと弾き
	OnSE("se特殊_楽器_コントラバス01",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　挨拶のように弦をひと弾き。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060800a03">
「ご覧の通り」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060810b56">
「はい」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060820a03">
「流しの占い師です」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060830b56">
「ええっ!?」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0060840a04">
「助手でございます」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060850b56">
「…………その楽器は？」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060860a03">
「大螺旋交差演奏法による占いを得意として
おりまして」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060870b43">
「鬼のような胡散臭さですね」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060880a03">
「説明いたしますと」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060890b56">
「いえいいです別に。なんかそのへん聞くと
ドツボにはまるような気が」

{	#voice_on_永倉さよ=true;
	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0060900a04">
「お嬢さま、それは企業秘密でございます」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060910a03">
「そうでした。企業秘密は守らなくては。
　占い業界から刺客でも放たれては大変です
ものね」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0060920a04">
「強襲突撃戦用占い師が襲ってくるやもしれ
ませんな」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060930b43">
「根本的なところで色々とおかしいって指摘
してあげたらどうだい、雄飛？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　おまえやれ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ドゥーン
	OnSE("se特殊_楽器_コントラバス01",1000);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060940a03">
「では、あなたの未来を占って差し上げます」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060950b56">
「ええと、すいません。あんまり変な方法で
占いとかして欲しくないっていうか、むしろ
そういうのは呪いの仲間なんじゃないかって
思うんですけど、その辺どうなんでしょう？」

//◆ドゥンドゥーン
{	OnSE("se特殊_楽器_コントラバス02",1000);
	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060960a03">
「見えますっ！」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060970b56">
「なんとなくわかっていましたけど無視なん
ですね。つーか楽器を使うなら見えるんじゃ
なくて聴こえるんじゃないですか？　あぁぁ、
いえもういいです別にどうでも」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060980b43">
「その悟った横顔、素敵だよ。雄飛」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060990b56">
「黙れ」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061000a03">
「……雄飛さん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//	SetVolume("@mbgm21", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　占い師（？）がおれを呼ぶ。
　その表情は意外さを覚えるほど真摯だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061010a03">
「あなたには運命が待ち構えています。
　避けられない運命が……」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061020b56">
「はぁ。運命スか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　まあそういうもんがあることにしとかないと、占い
屋なんて成立しないのだろうが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061030a04">
「してお嬢さま、その運命とは？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドゥーン
	OnSE("se特殊_楽器_コントラバス01",1000);
	Wait(1000);
	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0591]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061040a03">
「猥褻行為を繰り返した挙句、逮捕されると
『ぼくはモテモテ。どんな女も簡単に落ちる。
みんなには王子さまと呼ばれていた』などと
供述したりする運命が待っているのです！」

//◆ガーン
{	SetComic(@0,@0,8);
	FwC("cg/fw/fw雄飛_驚くb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061050b56">
「嫌だよそんな運命!!」

{	DeleteComic();
	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061060b43">
「雄飛、僕たち学校を卒業しても友達だけど
会いには来ないでね！」

{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061070b56">
「鵜呑みにしてしかも見捨てるんじゃねぇ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　本気で呪いだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061080a03">
「安心してください。逃れる方法が一つだけ
あります」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061090b56">
「壷を買えとか言うんじゃないでしょうね」

//◆ドゥーン
{	OnSE("se特殊_楽器_コントラバス01",1000);
	SetVolume("@mbgm26", 1000, 0, null);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061100a03">
「この鎌倉にいる限り、運命からは逃れられ
ません」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061110b56">
「え？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061120a03">
「鎌倉を離れることです、新田雄飛さん。
　一日も早く。今、これからにでも」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061130a03">
「ご家族に相談なさい。
　きっと理解してくれます」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061140b56">
「いや、離れるったって……そんな急に」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061150a03">
「さよ」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061160a04">
「は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm18",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　女性に促されて、ばあさんが進み出る。
　そしておれに、恭しい仕草で何かを差し出した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061170b56">
「……これ」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061180b43">
「乗車券だね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　大和全線適用一等定期乗車券。

　……錯覚かと思ったが、間違いない。
　これを持っていれば一定期間、大和国内のあらゆる
鉄道を無制限に最上級の乗客として利用できるという、
最高額の乗車券だ。有効期間はあと半年。

　……捨て値で売っても五万にはなるシロモノだ。
　新任公務員の月給三か月分。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061190b56">
「冗談でしょう？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061200a03">
「お使いください。そのつもりがあるのなら」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　女性は微笑んでいる。
　最初からずっと。

　最初から。
　あの風のような調べを奏でていた時から。

　これが冗談なら、最初からすべて冗談だったという
ことになるのだろう。
　
　――あの演奏も含めて。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061210b56">
「…………」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061220b43">
「雄飛」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　おれを下がらせようとした忠保を止める。
　わかっている。こいつはいま、おれを助けるために
何かをしようとした。

　長い付き合いだ、それくらいわからいでか。
　だけど今はいらない。大丈夫だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061230b56">
「占い師さん」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061240a03">
「はい」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061250b56">
「あなたがどうしてこんなことをするのか、
正直さっぱりわからないです。
　でも……あなたが本当に、おれを心配して
くれているのはわかりました」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061260b56">
「ありがとうございます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　おれは頭を下げた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061270a03">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061280a04">
「……」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061290b56">
「でも、これはお返しします」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061300a03">
「なぜ？」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061310b56">
「受け取る理由がないとか……そういうこと
じゃないんです。
　あなたが本気でおれを案じてくれていると
いうのは充分な理由ですから」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061320b56">
「けど、少なくとも今は駄目です。
　おれにはここでやることがありますから」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061330a03">
「それは大切なことなのですか？」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061340b56">
「はい」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061350a03">
「そのために、あなたが本当に――
　過酷な運命に呑まれるとしても、捨てられ
ないほど？」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061360b56">
「はい。
　おれが今やらなくてはならないのは、仲間
を助けることですから」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061370b56">
「それが原因でおれに何かがあっても……
　その時は、仲間がおれを助けてくれます」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061380b43">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　女性は口を閉ざした。
　眼差しを伏せ……やがてまた一つ、弦を爪弾く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ドゥーン
	OnSE("se特殊_楽器_コントラバス01",1000);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061390a03">
「大回転爆裂炎上法が示した運命……」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061400b43">
「あれ？　ちょっと変わったような」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
　ちょっとどころじゃないような。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061410a03">
「わたくしに見えるのは、雄飛さんがそれに
巻き込まれる所まで。その先はわかりません。
　運命に勝つか、負けるか。あなた次第です」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061420b56">
「……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061430a03">
「親切げな顔をして、不吉なことばかり申し
上げてしまいましたね。どうかお許しを。
　今日のことは忘れてくださいまし」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061440b56">
「そんな。えっと……なんて言ったらいいか
わかんないですけど。
　ほんと、迷惑なんかじゃなかったです」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061450b56">
「お姉さんのことは忘れません。
　……忘れたくないです」

{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061460a03">
「……ありがとうございます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
　<RUBY text="まなじり">眦</RUBY>がやわらかに下がる。
　白い頬にほんの少し、朱がのぼっていた。

　うわぁ。このひと、本当に美人だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061470b43">
「やぁ、なんか僕はおおむね蚊帳の外でした
けど、楽しかったですよ。演奏も良かったし。
　これ、つまらないものですがお礼です」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061480a03">
「あらあら、どうも」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
　いつの間にか買っていたらしいジュースのパックを
差し出す忠保。
　うらやましいほどマイペースですねキミは。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061490a03">
「さよ」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061500a04">
「はい」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061510a03">
「ではお二方、わたくしどもはこれで」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061520a04">
「失礼致します」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	SetVolume("@mbgm33", 500, 0, null);

	DeleteStC(300,false);
	DeleteStR(300,false);
	DeleteStCL(300,false);
	DeleteStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　自称占い師の女性は軽く会釈して、自称その助手の
老婦人は深々と一礼して、共に雑踏の中へ歩み去って
いった。

　消えていく背中を見送る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StR(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StL(1000, @0, @0,"cg/st/st雄飛_通常_制服.png");
	FadeStL(300,false);
	FadeStR(300,true);


	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061530b43">
「印象的な人たちだったねぇ」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061540b56">
「そうだなぁ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　きっと忘れないだろう。
　あの不思議で、親切な女性のことは。

　――さようなら。
　うっかり告げ忘れた別れの言葉を呟く。

　駅前の雑多な光景の中、最後に見えた後姿は、
　
　嗚咽するように。口元を押さえていた――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");
	SetVolume("@mbgm18", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061550b56">
「……忠保」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061560b43">
「なんだい？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061570b56">
「おまえが渡した、あれ、なんだ？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061580b43">
「あれ？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　あっけらかんと。
　その男は言った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061590b43">
「実は密かにブームらしくてそこの売店でも
売ってた一〇〇％天然・芋サイダー」

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061600b56">
「おどりゃぁぁぁぁぁああああああああ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//◆ブラックアウト
//◆駅前
	CreateColorEX("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 2000, 1000, null, true);

	StR(1000, @0,@0,"cg/st/st香奈枝_通常_私服b.png");
	StL(1000, @0,@0,"cg/st/stさよ_通常_私服.png");
	FadeStR(0,true);
	FadeStL(0,true);

	WaitKey(3000);

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm30",0,1000,true);


	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061610a04">
「お嬢さま……あれで宜しかったのですか？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061620a03">
「ええ」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061630a04">
「<RUBY text="ししく">獅子吼</RUBY>殿の指先は、おそらくもう間近まで
迫っておりましょう」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061640a03">
「それでも。
　彼の運命は彼が選ぶものです」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061650a04">
「……まさしく」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061660a03">
「わたくしにできるのは、運命を示して差し
上げること。
　そしていずれ……彼が運命と戦う時には。
ほんの少し、手助けをして差し上げること」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061670a04">
「左様でございますねぇ……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061680a03">
「急ぎましょう、さよ。
　そろそろ本業に戻らなくては」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061690a04">
「はい」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061700a03">
「それと」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061710a04">
「は」

{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061720a03">
「この新たな味覚の開拓に雄々しく挑戦して
華々しく散った英雄的ドリンク、飲みません
こと？」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061730a04">
「断じて結構でございます」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);


..//ジャンプ指定
//次ファイル　"ma01_007.nss"

}



