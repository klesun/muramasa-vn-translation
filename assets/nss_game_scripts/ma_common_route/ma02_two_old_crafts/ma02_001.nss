//<continuation number="410">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_001.nss_MAIN
{
	$TITLE_NOW = "　";

	//★個別マクロ超速対応
	Conquest("nss/ma02_001.nss","BoyaboyaAction",true);
	Conquest("nss/ma02_001.nss","BoyaboyaSet",true);

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
	#bg001_空a_01=true;
	#bg020_山脈坑道_01=true;
	#bg020_山脈_01=true;
	#ev501_村正鎮座=true;


	//▼ルートフラグ、選択肢、次のGameName
//嶋：初期化
	$Others_Flag = 0;
	$OthersFav_After = 0;

	#voice_on_長坂右京=true;
	#voice_on_湊斗景明=true;
	#voice_on_村正=true;

	#av_八八式指揮官騎=true;

	$PreGameName = $GameName;
	$GameName = "ma02_002vs.nss";

}

scene ma02_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma01_026.nss"

//◆空
//◆銃声×２
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg001_空a_01.jpg");

	FadeDelete("上背景", 3000, true);

	WaitKey(1000);

	CreateSE("SE01","se戦闘_ライフル撃つ遠音01");
	CreateSE("SE01a","se戦闘_ライフル撃つ遠音01");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(300);
	MusicStart("SE01a",0,1000,0,700,null,false);

	WaitPlay("SE01a", null);

//◆坑道前。六波羅一般兵×２
//◆倒れ込む音と共に一般兵消去、一人ずつ

	PrintGO("上背景", 15000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");

	StCL(1000, @0, @0,"cg/st/st六波羅兵士_通常_制服.png");
	StCR(1000, @0, @0,"cg/st/st六波羅兵士_抜刀_制服.png");
	Request("@StMR*", Smoothing);
	Rotate("@StMR*", 0, @0, @180, @0, null,true);

	FadeStA(0,true);

	FadeDelete("上背景", 2000, true);

	CreateSE("SE02","se人体_衝撃_転倒03");
	CreateSE("SE02a","se人体_衝撃_転倒03");

	MusicStart("SE02",0,1000,0,800,null,false);
	DeleteStCL(300,true);

	MusicStart("SE02a",0,1000,0,1000,null,false);
	DeleteStCR(300,true);


	WaitPlay("SE*", null);

	SetFwC("cg/fw/fw長坂_驚き.png");

	#voice_on_長坂右京=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010010b45">
「……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝・ＧＨＱ軍装
	StR(1000, @0, @0,"cg/st/st香奈枝_射撃_制服.png");
	FadeStR(300,true);

	CreatePlainSP("絵板写", 10000);
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_制服a2.png");
	FadeStR(0,true);
	OnSE("se戦闘_銃器_構える01",1000);
	FadeDelete("絵板写", 300, true);

	SoundPlay("@mbgm21",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010020a03">
「けほ、けほっ。
　…………ふぅ」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010030a03">
「やっぱり銃は好きになれません。
　煙たいですし、手応えも良くないですし」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0010040a04">
「おや、お嬢さま。
　飛び道具なのに手応えとは、如何なもので
ございましょう」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010050a03">
「あるんですよー。
　弾頭が標的を撃ち抜いた瞬間に指の先から
脊椎の裏まで駆け巡る……壊れたオルガンの
ような旋律が、こう」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0010060a04">
「それは単に充足した<RUBY text="サディズム">嗜虐性</RUBY>が体を震わせて
いるだけなのでは？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010070a03">
「そう片付けられてしまうと、ただの変態ね。
　ひどいばあや」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0010080a04">
「人にして人を殺せる輩はみな変態の異常者
でございます、お嬢さま」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010090b45">
「……待て……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(160,true);

//◆長坂
	StL(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	FadeStL(240,true);

	SetFwC("cg/fw/fw長坂_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030a]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010100b45">
「ど――
　どういうつもりだ？」



</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st香奈枝_通常_制服a2.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030b]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010110a03">
「こういうつもりですけれども。
　ええと――」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StCR(1100, @120, @0,"cg/st/stさよ_通常_私服.png");
	Request("@StMR*", Smoothing);
	Rotate("@StMR*", 0, @0, @180, @0, null,true);
	Move("@StMR*", 300, @-30, @0, DxlAuto, false);
	FadeStCR(300,false);

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030c]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0010120a04">
「六波羅代官、長坂大尉殿です」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010130a03">
「長坂大尉。
　進駐軍司令部より派遣された巡察官として、
大和軍将兵の不適切な行いを是正することは
わたくしの責務ですの」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010140b45">
「我が兵が貴官に対し何か失礼な振舞いでも
……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010150a03">
「村人の徴発、限度を超えた酷使、作業から
脱落した者に対する私刑。
　いずれも軍士官として適切なやりようでは
ありませんね？」


{	FwC("cg/fw/fw長坂_驚き.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010160b45">
「そのようなことを貴官に言われる筋合いは
ないっ！　大和の内政は六波羅に委任されて
いる筈ではないか！」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010170a03">
「ええ。
　ＧＨＱの監督の下で」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010180b45">
「採鉱事業の申請ならばとうに済ませた！
　許可も得ている……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010190a03">
「けれど、それはあくまで書類上のこと。
　あなたがたの施政の実態を調査し、好まし
からぬ事実が発見された時には、状況の悪化
を防ぐ措置を取るのが巡察官の職権の内」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010200b45">
「莫迦な……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010210a03">
「これは私見なのですけれど。
　……民政局への付け届けが足りなかったの
ではありませんこと？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010220b45">
「コブデン中佐の胃袋にも財布にも寝台にも、
奴の欲しがるものを欲しがるだけ詰め込んで
やったわ！
　あれでもまだ足りないと抜かすのか!?」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010230a03">
「それは確かですか？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010240b45">
「確かだよ！　この事業の予算の一割は奴が
一人で食い潰したようなものだ！
　貴官、何も聞かされておらんのか!?　奴は
万事うまく取り計らうと請け負ったのだぞ!?」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010250a03">
「……まあ、大変」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010260a03">
「さよ、今のを聞きまして？　わたくしたち、
贈収賄事件の重大な証拠をつかんでしまった
みたい」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0010270a04">
「大変ドラマティックな展開でございます、
お嬢さま」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010280b45">
「馬鹿にしているのか、貴様らは!?」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010290a03">
「そんなつもりはないのですけれど。
　ねえ？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0010300a04">
「はばかりながらお嬢さま。
　客観的に評価致しまして、我々は大尉殿を
遺憾なく小バカにしております」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010310a03">
「あら、そうでしたの？
　申し訳ありません。わたくしったらどうも、
こういうことには疎くて」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010320b45">
「…………。
　目的は……何だ」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010330a03">
「目的？」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010340b45">
「貴官の目的だ！　とどのつまり何が欲しい
のだ。金か、それとも鉱山の利権か？
　ならそう言え、下手な揺さぶりなどかけず
とも、話は聞いてやる！」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010350a03">
「…………」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010360a03">
「困ったことね、さよ。
　会話が通じていません」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0010370a04">
「まことに難儀なことで。
　如何でございましょう。ここは一つ、大尉
殿の脳天に風穴を開けてやって、ちっとは物
の道理がわかるようにして差し上げては？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010380a03">
「それが親切というものかしら。
　では、そういうことですので」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆チャキ。香奈枝、銃構え

	CreatePlainSP("絵板写", 5000);
	StR(1000, @0, @0,"cg/st/st香奈枝_射撃_制服.png");
	FadeStR(0,true);
	OnSE("se戦闘_銃器_構える01",1000);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010390a03">
「<RUBY text="ＰＬＥＡＳＥ，ＧＯ　ＴＯ　ＹＯＵＲ　ＧＲＡＶＥ">あなたのための墓穴へどうぞ</RUBY>。
　せっかく村の人達が掘って下さった<RUBY text="あな">坑道</RUBY>、
有効にご活用下さいまし」


{	FwC("cg/fw/fw長坂_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010400b45">
「――小娘ェェェェェッッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆長坂、装甲。八八式竜騎兵指揮官仕様
	#av_八八式指揮官騎=true;

//◆突進

	CreateColorEXadd("絵フラ", 10000, "#FFFFFF");
	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SetVolume("@mbgm*", 1200, 0, null);
	Fade("絵フラ", 200, 1000, null, true);

	DeleteStA(0,true);

	StC(1000, @0,@0,"cg/st/3d八八式指揮官_立ち_通常.png");
	FadeStC(0,true);

	CreateSE("SE01a","se特殊_鎧_装着04");
	MusicStart("SE01a",0,1000,0,750,null,false);

	Fade("絵フラ*", 1600, 0, null, true);


	StC(1000, @0,@0,"cg/st/3d八八式指揮官_立ち_抜刀.png");
	OnSE("se戦闘_動作_刀構え01",1000);
	FadeStC(300,true);

	CreateTextureSP("絵演立", 1000, Center, Middle, "cg/st/3d八八式指揮官_騎突_戦闘.png");
	SetBlur("絵演立", true, 3, 500, 50, false);
	Zoom("絵演立", 0, 700, 700, null, true);
	OnSE("se戦闘_動作_空突進02",1000);
	Zoom("絵演立", 300, 5000, 5000, null, false);
	Fade("絵フラ", 250, 1000, null, true);

	PrintGO("上背景", 10000);
	CreateColorSP("絵黒地", 100, "#000000");
	FadeDelete("上背景", 3000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　代官――どうやらその地位を失いつつあるようだが
――が己の劔冑を呼び、装甲し飛び立とうとする一瞬、
老人は自分が動かねばならないことを悟っていた。
　そして、間に合わないということも。

　あの愚かな男を止めるのは自分の責任だ。
　男の愚かさを、その所以を、知る者は今となっては
彼ひとりしか残っていない。

　この手で、決着をつけたかった。
　これ以上、いらぬ血が流される前に。

　あの男の暴走がこの小さな村を巻き込む前に、留め
得なかったことは、老人にとって痛恨であった。

　――益体なき男が二人、死ねばそれで良かろうに。
　
　そう思う。

　忌まわしきは老いの退廃。
　代官に挑むための支度が、彼の期待を裏切って多く
の時を必要としたせいで、状勢の悪化をただ座視する
羽目になった。

　今、この刹那もか。

　村を蝕む事態を動かした――というよりも蹴り飛ば
した――あの若い女は殺されるだろう。自業自得と、
見られなくもない。
　だが、彼女はどうやら村の救い手のようだ。

　そして今ここで殺された後には、災いを残すだろう。
　老人は世の動静に疎かったが、祖国が戦争に敗れ、
占領を受けている現状は知っていた。

　その占領軍に属する人間が、この村で変死を遂げた
ならば……。

　あの女性はどう見ても大和人であるものの、しかし、
軍服は間違いなく進駐軍司令部の所属を示している。
　その死について、現地の居住民が責任を問われない
という保証はどこにもなかった。

　あの男は今ここで止めなくてはならない。
　他ならぬ彼が止めねばならない。
　
　なのに。

　――できぬ、とは。

　振り返れば、悔いばかりを重ねてきた命。
　既に終わりの見えたこの年齢になって、なお大きな
一つを加えなくてはならないのか。

　竜騎兵は疾駆する。
　空を裂き。地に溝を穿ち。

　数打の、紛い物に等しい劔冑であろうと、もたらす
速度と力は到底只人が及ぶべくもなし。
　抗うはおろか、確と見留めることすらかなうものか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣閃
	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_centerin(@0, @0,1000);
	SL_centerinfade2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　――止めてくれ。
　
　老人は願った。

　あの一閃を。
　この身ではどうしても届かぬ、あの一閃だけ、誰か
――止めてはくれぬか。

　さすれば後は、我が手で始末をつけられように。

　虚しい祈り。
　応えるものなどいよう筈もない。

　……否、
　かつてはいた。

　力なきやからの、民草の叫びに応え、絶大な力を刃
に乗せて揮う者がいた。
　いると――信じられていた。真実は違ったとしても。
そう世に信じさせるだけの事実があった。

　今は、無い。
　人々は既に信仰を失った。
　その名を叫ぶに、込める想いは希望に<RUBY text="あら">非</RUBY>ず、呪詛。

　老人の願いは誰にも届かぬ。
　届いたところで、誰も聞かぬ。

　誰も――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆割り込み剣撃。ガシーン
	CreateSE("SE02","se戦闘_攻撃_刀振る02");
	MusicStart("SE02",0,1000,0,800,null,false);

	SL_rightdown(@0, @0,1500);
	SL_rightdownfade2(10);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　いない――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正
//◆八八式を吹っ飛ばす
	PrintGO("上背景", 10000);
	CreateColorSP("絵フラ", 5000, "#FFFFFF");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");

	StL(1000, @30, @10,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	FadeStL(0,true);

	OnSE("se戦闘_攻撃_刀衝突01",1000);
	Delete("上背景");
	FadeDelete("絵フラ", 2000, false);

	Shake("@StL*", 800, 1, 2, 0, 0, 1000, Dxl2, false);
	Move("@StL*", 300, @-60, @0, Dxl1, true);

	WaitAction("絵フラ", null);

	PrintGO("上背景", 15000);

	CreateColorSP("絵黒", 5000, "#000000");
	DrawDelete("上背景", 200, 1000, "slide_01_03_1", true);

	CreateCamera("Ｃ", -100, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵背景10", 0, Center, Middle, "cg/bg/bg020_山脈_01.jpg");
	Zoom("Ｃ/絵背景10", 0, 1500, 1500, null, true);

	CreateTextureSP("Ｃ/絵演立絵村正", 250, Center, InBottom, "cg/st/3d村正標準_立ち_抜刀.png");
	SetVertex("Ｃ/絵演立絵村正", center, bottom);
	Zoom("Ｃ/絵演立絵村正", 0, 750, 750, null, true);

	Request("Ｃ/*", Smoothing);

	MoveCamera("Ｃ", 3000, @-70, @50, @100, AxlDxl, false);

	SoundPlay("@mbgm04",0,1000,true);

	DrawDelete("絵黒", 2000, 1000, "slide_01_03_1", false);

	Wait(1800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　赤い<RUBY text="いろ">彩</RUBY>が踊る。
　……血の深紅が。

　あたかも蒼空を呪うかのように。

　重厚な甲鉄。
　鋭凶な刀刃。
　目にするだけで心臓が騒ぐほどの、力満つ気配。

　具象化した武。
　天より降りた神。あるいは地より這い出た鬼。

　其は、何か。
　何物か。

　それは
　在るべくもなく
　見誤るべくもなく。

　然して今、其処に在るもの。

　其は。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0010410b06">
「じっちゃ……。
　あれ、なぁに？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　傍らの孫娘の問いに、老人は答えを持っていた。
　あれが何であるか、知っていた。

　彼の脳漿が、否、
　血潮が知っている。
　鍛冶種族の血が赤い孤影の意味を教える。

　あれは。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、適当に演出
	CreatePlainSP("絵板写", 10000);

	CreateTextureEXadd("絵演効果", 3010, Center, Middle, "cg/ev/ev501_村正鎮座.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev501_村正鎮座.jpg");
	BoyaboyaAction();

	FadeDelete("絵板写", 2000, true);

	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("絵色白", 2000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　――真性の劔冑。
　そして、真実の武者。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(3000, 2000);



}

..//ジャンプ指定
//次ファイル　"ma02_002vs.nss"

.//プロセス用======================================================

..//鎮座のゆらめき
function BoyaboyaAction()
{
	CreateProcess("プロセスボヤ", 5000, 0, 0, "BoyaboyaSet");
	Request("プロセスボヤ", Start);
	Request("プロセスボヤ", Disused);
}

function BoyaboyaSet()
{
	begin:
	while(1)
	DrawTransition("@絵演効果", 0, 0, 300, 100, null, "cg/data/circle_07_00_0.png", true);
	{
	DrawEffect("@絵演効果", 3000, "LowWave", 0, 20, null);
	Fade("@絵演効果", 800, 500, null, true);

	Wait(200);

	Fade("@絵演効果", 2000, 0, null, true);
	}
}