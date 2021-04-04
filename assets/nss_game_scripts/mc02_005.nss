//<continuation number="110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_005.nss_MAIN
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
	$PreGameName = $GameName;

	$GameName = "mc02_006.nss";

}

scene mc02_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_004.nss"

//◆景明の部屋

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm16",0,1000,true);

	CreateColorSP("黒幕１", 25000, "BLACK");

	OnBG(11, "bg030_ＧＨＱ監禁部屋_01.jpg");
	FadeBG(0, false);

	Delete("上背景");
	FadeDelete("黒幕１",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　目覚めたそこは、未知の場所だった。

　白く、清潔感のある部屋だ。
　広くはない。せいぜい六畳だろう。だが物が少ない
せいか、やけに空漠として見える。

　存在感を有する物体は、たった今まで我が身を横た
えていた質素な<RUBY text="ベッド">寝台</RUBY>くらいしかない。
　後は椅子が一つと、小物が数点。

　見直せば、壁に窓すら無かった。
　息苦しさを覚えるのは間違いなくそのせいだろう。
通風孔はあるが、身体的にはともかく心理的には全く
必要充分でない。

　鉛を詰めたように重い頭蓋は、考えを巡らせる前に
まずここから出る事を要求していた。
　
　部屋の一隅に扉を見つけ、そちらに歩く。

　ほんの数歩を進むために、幾度かよろめいた。
　どういうわけか、手足の感覚が鈍い。

　他人の体を糸で操っている心地になりながら、どう
にか辿り着く。
　<RUBY text="ノブ">把手</RUBY>を掴んで、回して引いた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガタ。開かない。
	OnSE("se日常_建物_扉開かず",1000);
	WaitKey(1500);
	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050010a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　押してみる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガタ。開かない。
	OnSE("se日常_建物_扉開かず",1000);
	WaitKey(1500);
	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050020a00">
「…………うむ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　さて。
　状況が新たに一つ判明した。

　扉は開かない。
　鍵が掛けられている。無論、外側から。

　把手を舐めるように見回してみようが、鍵穴もなけ
ればボタンも引き金もない。
　開ける事は不可能だった。

　つまり監禁されている。

　……いや。
　決め付けるのは早計か。

　ここは単に病院の病室であり、鍵が掛かっているの
は関係者以外の立ち入りを禁ずる為なのかもしれない。
　患者の症状によっては、内側から開けられない部屋
に収容する必要もあるだろう。

　で、あれば――とりあえず、すべきは一つだ。
　起床した事実を外へ伝えよう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ノック。こんこん
	OnSE("se人体_動作_ドアノック01",1000);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050030a00">
「失礼。
　何方か、おられませんか」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(1000);

//◆こんこん
	OnSE("se人体_動作_ドアノック01",1000);

	SetFwC("cg/fw/fw景明_通常b.png");
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050040a00">
「もし――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドカァッ。ドアをぶん殴る音
	OnSE("se人体_動作_叩く02",1000);
	CreatePlainEX("絵板写", 15);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");
	WaitKey(1000);

	SetNwC("cg/fw/nw番兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆ボイス「ビー・クァイエット！」Be quiet!
//【ｅｔｃ／ＧＨＱ見張り】
<voice name="ｅｔｃ／ＧＨＱ見張り" class="その他男声" src="voice/mc02/0050050e000">
「静かにしろッ！」


//◆ボイス「……オーケイ」OK.
{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050060a00">
「…………承知」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　監禁されているのは間違いないようだ。

　それにしても、今の声。
　聞き間違えようのない外国語――英語だった。

　英語を話す人間が、俺の身柄をこの一室に封じよう
としている。
　
　……つまり。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050070a00">
（俺は進駐軍に拘束されているのか）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　そういう事になりそうだった。

　理由に心当たりがない…………などと口にしたなら
健忘症の謗りを受けるだろう。
　江ノ島でＧＨＱの将校らと敵対した記憶は、風化さ
せてしまうには流石にまだ時が足りなかった。

　あの折は銀星号の登場によって何もかも混沌の内に
幕を引いてしまったが、それでＧＨＱが俺の事は放置
しようと変心したとは思えない。
　次の手を仕掛けて来るのは、むしろ当然とも言えた。

　しかし、それにしても突然である。
　何の脈絡もなくこんな始末になった事の説明として
は充分でない。

　いや……脈絡？
　
　脈絡。

　俺は建朝寺へ親王らを救いにゆこうとして……

　そうだ……建朝寺への攻撃。
　要するに、あれは――――進駐軍の……？

　では、あれも――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆フラッシュバック。バロウズの署長射殺

	EfRecoIn1(18000,600);

	CreateTextureSP("イベ絵10", 11, Center, Middle, "cg/ev/ev170_バロウズ署長を射殺_a.jpg");

	EfRecoIn2(300);
	WaitKey(1000);

	EfRecoOut1(300);

	Delete("イベ絵*");

	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050080a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　……割れるような頭痛に、脳が<RUBY text="うず">疼</RUBY>いた。
　考えをひとまず止める。

　今は、別の――<k>
　
　そういえば、村正はどうしたのか。

　この室内にいないのは間違いない。
　見ればわかる事だし、見なくともわかる事だった。
武者を劒冑と共に閉じ込めるなど、余りにも馬鹿げて
いる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050090a00">
（村正？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　……………………………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050100a00">
「村正」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　……………………………………………………………

　声に出して呼んでみても、金打声の返答はなかった。
　聴こえていないのか、聴こえていても答えられない
のか……。

　これは稀有な事態だ。
　無論、良からぬ意味で。

　縁を結んだ仕手と劒冑は二人で一騎の武者となる。
　一個体になるとも言えるのであり、そうあるからに
は両者が引き離される事など<RUBY text="・・・・・">有り得ない</RUBY>。

　互いが見えないほど距離を隔てていても、隣にいる
のと同様に通話できるのだ。
　
　それが今はできない。

　最も妥当な可能性は、会話する能力を失ったという
それだ。

　つまり、完全に破壊された。

　死者に口無し。
　一概に生物とは定義し難い劒冑とて、その格言から
逃れられはしない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050110a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　――それ以外には、<RUBY text="アイソレーションボックス">通信遮断装置</RUBY>に密封されている
可能性くらいしか思い当たらないが。
　ＧＨＱが邪魔者として始末しようとした<RUBY text="おれ">村正</RUBY>の為に
そこまでの手間を掛けるものかどうか、大いに疑問だ。

　ただ……<RUBY text="テトロドトキシン">猛毒</RUBY>に冒されたこの肉体が生存している。
　村正が回復させたのだとすれば、少なくともそれが
終了するまでは健在だったという事になる……。

　いずれにしろ、今は事実を確認できる状態にない。

　動きが起こるのを待つしかないだろう。
　自由を奪われ、その自由を取り戻す方法もない以上、
それが唯一の選択だ。

　……そんな事を選択などと呼びたくはないが。
　
　俺はせめてもの最善を尽くすべく、ベッドに戻って
いまだ疲れが濃く残る身体を横たえた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆フェードアウト
//◆ウェイト

}

..//ジャンプ指定
//次ファイル　"mc02_006.nss"