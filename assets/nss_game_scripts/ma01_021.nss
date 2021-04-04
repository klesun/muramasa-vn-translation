//<continuation number="1060">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_021.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma01_021.nss","Moyamoya",true);

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
	#bg019_廃校教室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_村正=true;

	$PreGameName = $GameName;

	$GameName = "ma01_022vs.nss";

}

scene ma01_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_020.nss"


	SoundPlay("@mbgm34",0,1000,true);

//◆廃校内
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");

	FadeDelete("上背景", 1000, true);

	WaitKey(1000);

	OnSE("se人体_動作_後ずさり01",1000);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　両手をつく。
　膝を折る。

　土下座のようでみっともない。
　だが見てくれなんぞ知ったことか。

　あがいて動けば動くほど、徐々に鎮まっていた痛み
がまた盛り返す。
　だがそんなことはどうでもいい。

{	OnSE("se人体_動作_起きる02",1000);}
　体を起こす。
　……足が立たない。

　なら、上半身だけでも持ち上げる。
　強張る腕に力を注いで、無理矢理支える。

　視界が、立ち尽くす鈴川を捉えた。
　相変わらず両手を高く挙げて、自分に酔ってる気色
満々で――少なくともおれにはそう見える――天井を
仰いでいる。

　実はアホじゃねえのかおまえ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210010b56">
「おい」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210020b57">
「……新田」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/3d真改_立ち_抜刀.png");
	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,600,null,false);
	FadeStL(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　おれの存在をまさか忘れていたのか――少し驚いた
ような響きが鈴川の反応の中にはあった。
　鋼鉄をよろう首が傾いで、おれの方を向く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210030b57">
「どうした。
　<RUBY text="・・・">終わり</RUBY>が欲しいか」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210040b56">
「いや。その前にさ。
　ちょっと質問があるんスけどね」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210050b57">
「言ってみろ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　まだ授業のつもりなのか、平然と先を促す鈴川。
　改めて思う。こいつはとんだ大物か、でなかったら
やはりアホか、もしかするとその両方だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210060b56">
「今、おれの感じているものが……絶望なん
ですか」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210070b57">
「そうだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　鉄兜が頷く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210080b57">
「それが絶望だ、新田。
　我々に必ずもたらされるものだ」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210090b57">
「幸福はその下地であり、希望はその導き手。
　我々を冒す不治の病」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210100b57">
「美しいものがあり、
　それは必ず失われるものであり、
　その真実を悟ること。
　――絶望」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210110b57">
「喜びに満ちていた生はいつか必ず、この世
の悪意によって腐らされ。
　行き着く果ては、絶望という終点……そう
いう事なのだ。今お前がそうなったように」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210120b56">
「そうスか。
　けど妙だな……」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210130b57">
「何？」

{	FwC("cg/fw/fw雄飛_勇敢.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210140b56">
「今、おれが抱えている<RUBY text="・・">ヤツ</RUBY>。
　どう考えても、絶望なんて<RUBY text="・・・・・">おとなしい</RUBY>代物
だとは<?>
{	FwC("cg/fw/fw雄飛_怒りa.png");}
思えないんですけどねェッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆だがん。
	OnSE("se人体_動作_叩く02",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　おれは両手で床を打った。
　反動がごくわずか、体を浮かせる。

　その隙に、足を折り曲げる。
　膝立ちの格好から、足の裏で地を噛む形へ。

　体重を受けて、足の傷口が広がった。
　電流のような感覚の暴走が、再度。

　だがそれを呑む。
　犬歯で砕いて臓腑へ落とす。

　膝を伸ばした。
　足に掛かる体重が増す。激痛。無視。

　立つ。
　鈴川の前に立つ。
　<RUBY text="・">敵</RUBY>と向き合う。

　――肘を折り畳む。
　脇を締めて、引き絞る。

　この期に及んでまだ鈴川は、おれが何を始めようと
しているのか理解できなかったらしい。
　訝しむ視線だけが注がれてくる。

　おれは左足を踏み出した。
　痛みで膝ががくがくと笑う。
　耐える。

　そうして、拳を握り締めて。
　腰の回転を最大に利かせて。

{	SetVolume("@mbgm*", 1000, 0, null);}
　――――殴った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆がん
	CreateSE("SE01","se戦闘_動作_鎧_踏み込み02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	OnSE("se戦闘_攻撃_殴る01",1000);
	Shake("@StL*", 200, 10, 0, 0, 0, 200, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　武者に拳をぶつける感触は、硬い、なんてものでは
なかった。
　岩を――というより岩山を殴ったに等しい。

　しかも手加減ゼロの、全力だったから、おれの拳が
受けた報いは推して知るべしというところ。
　壊れたジャングルジムのような有様になった。

　当然ながら、痛い。
　もう痛覚なんて全部焼き切れたものとばかり思って
いたが、鬱陶しいことにまだまだ健在らしい。勤勉に
活動して右拳が完全に砕けたことを教えてくれる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210150b56">
「うがっ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　脳髄が沸騰。
　たぶん重要な回路の何本かが断線。

　その成果はと言えば、武者の体がやや揺れただけ。
　これでは足りない。全然足りない。足りやしない！

　おれは体勢を取り直した。
　もう一度、左足を踏みしめる。腰を据え、力を溜め、
全体重を乗せて――蹴る。

　穴が開いた右足で。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210160b56">
「がああああっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆どがん
	CreateSE("SE01","se戦闘_攻撃_鉄切断");
	MusicStart("SE01",0,1000,0,750,null,false);
	OnSE("se戦闘_攻撃_殴る03",1000);
	Shake("@StL*", 200, 10, 0, 0, 0, 400, DxlAuto, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　素人の無茶苦茶な<RUBY text="ハイ・キック">上段蹴り</RUBY>。
　それは奇跡のように、武者の顎を正確にとらえて、
下から上へ突き上げた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210170b57">
「ぬわっ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　その前の殴打で姿勢を崩していたところへの加撃。
　――有り得ないことが、起きた。

　武者が倒れる。
　<RUBY text="・・・・・・・・・・・・・・・・">おれに蹴り飛ばされて武者が倒れる</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばたん
	DeleteStL(300,true);

	CreateTextureSP("絵背景振動", 1000, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");

	OnSE("se戦闘_衝撃_鎧転倒03",1000);
	Shake("絵背景振動", 500, 0, 4, 0, 0, 1000, null, true);

	Delete("絵背景振動");

	SetFwC("cg/fw/fw雄飛_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210180b56">
「……はッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　ガッツポーズ。
　右腕の力瘤を左手で打つ。

　おれの足元に、倒れた武者を見下ろして。
　……そう。おれは、武者を見下ろしている。今。

　その姿。
　大の字で床に転がる武者の姿は。

　なんとも。なんともなんとも実に、
　みっともない格好だった！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210190b57">
「……なっ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　その時、ようやく。
　鈴川は理解力を現実に追いつかせたらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210200b57">
「何をする」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210210b56">
「何をじゃねえ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm10",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　おれは怒鳴った。

　馬鹿だこいつは。
　何もわかってないのか。
　自分が何をしたのかもわかっていないのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210220b56">
「絶望だあ？
　そんなもん知るか」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210230b57">
「なに……？」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210240b56">
「そんなんじゃねえ。
　いいか。おれは。おれはな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　教えてやる。
　授業の礼だ。

　あんたの大間違いを、教えてやる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210250b56">
「おれは、<RUBY text="・・・・">怒ってる</RUBY>んだ！
　当たり前だろうがッ!!」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210260b57">
「――――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　当たり前だった。
　当たり前だった。

　友を傷つけられたのだ！
　酷く酷く傷つけられたのだ！
　怒り以外に何を知る！

　おれは心の底の底から赫怒していた。
　それ以外のものは、何もなかった。

　……哀しみというものが、後からやって来ることは
わかってる。なんとなくわかってる。
　でも今はない。

　怒りだけだ！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210270b57">
「怒り……だと？
　何を……勘違いしている……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　鈴川が身を起こしながら、呟く。
　絶望とやらに塗れた声音で。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210280b57">
「怒りなど……無駄だ！　無駄だ！
　美しいものを奪い去る悪に……怒りを燃や
したところで、それが何になる。
　どうともなりはしない……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210290b57">
「怒りで私を倒せるか!?　武者の私を！
　倒せるのか……六波羅を！」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210300b57">
「六波羅に対して怒りを向けて、それでどう
なる！　あの武者の軍団に対して何ができる！
何もできまい！
　だから……絶望するのだ！」

{	FwC("cg/fw/fw雄飛_勇敢.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210310b56">
「しない！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　突っぱねる。
　奈落への誘い、ただ落ちるだけで済む場所への誘い
を跳ね除ける。

　そんなものはいらない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210320b57">
「何だと……」

{	FwC("cg/fw/fw雄飛_勇敢.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210330b56">
「倒せるかどうかなんて関係あるか。
　力の差なんて知ったことか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　言い聞かせる。
　鈴川に。――自分に。

　ほんの少し前までの自分に。
　相手が武者だからといって、なにもしないうちから
観念して、諦めきって、小夏と忠保を傷つけられるに
任せてしまった自分に。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_勇敢.png");

//嶋：音声下記のもあります。
//「<RUBY text="・・・・・・">奪うこと</RUBY>は、悪なんだ！
//　理不尽なんだ！
//　否定しなくちゃならないんだ！
//　絶対に！」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210340b56">
「<RUBY text="・・・・・・">奪われること</RUBY>は、悪なんだ！
　理不尽なんだ！
　否定しなくちゃならないんだ！
　絶対に！」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210350b56">
「だから、
　怒って戦うべきなんだ！」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210360b57">
「――――」

{	FwC("cg/fw/fw雄飛_勇敢.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210370b56">
「<RUBY text="・・・・・・・・・・・・・">戦わねばならない時には戦う</RUBY>！
　勝てるかどうかなんてのはその後だ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　それはただの不合理な叫び。
　断じて論理に非ず。
　断じて道理に非ず。

　だが、信仰。
　もう二度と決して、美しいものを、邪悪の<RUBY text="ほしいまま">恣</RUBY>にさせ
ないための。

　――おれにはやりたいことというものがなかった。
　夢がなかった。

　今、その理由に気付こう。

　それは諦めていたからだ。
　どうせ無理だと、諦めていたからだ。

　夢を。
　本当はあった、夢を。

　眠らせていた。
　ずっと。諦めて。

　今こそ、
　起こす。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210380b56">
「六波羅ともおれは戦う。
　戦ってみせる」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210390b57">
「…………」

{	FwC("cg/fw/fw雄飛_勇敢.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210400b56">
「どうやって戦ったらいいのかなんて、まだ
全然わからないけど。
　でも、戦う。これだけは決めた。だって、
おれは」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　おれは。
　おれは――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210410b56">
「ずっと六波羅に怒っていた！
　あいつらの無茶苦茶が許せなかった！
　世の中を変えたかった。<RUBY text="・・">マシ</RUBY>にしたかった。
ずっとずっと、おれはそう願っていたんだ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　それがおれの夢。
　おれのやりたかったこと。

　願うことすら忘れて、諦めていた夢。
　だが、もう手放さない。

　戦わねばならないのだから！
　理不尽に奪われないために！

　それがどれほど過酷な道かは知らない。
　ゴールがあるのかどうかさえ。

　けれど、おれはおれのやり方で。
　一歩一歩、この道を。

　諦めずに、進んでみせる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210420b57">
「……………………」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210430b57">
「お前は……何も理解していないのだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　おれの眼下で、腰を落としたまま、鈴川が呟く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210440b57">
「失うということを。確かにあった、愛して
いた美しいものが、手の中から消えてゆくと
いう現実を。
　理解していないのだ」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210450b57">
「すぐにわかる。今は頭が理解を拒んでいる
だけだ……だが程なく知ることになる。
　来栖野、稲城、彼らが何を失ったのか。
　お前が何を失ったのか……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210460b57">
「知れば絶望するのだ。お前も！」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210470b56">
「くどいぜ、先生。
　おれは絶望なんかしない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　確信があった。
　断定する。

　なぜなら。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210480b56">
「おれは何も失くしてなんかないからな！」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210490b57">
「――――な、に？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　よほど意表をつかれたのか。
　初めてその声はひび割れた。

　おれは辺りを見渡す。
　小夏と忠保の姿を見る。目を背けたくてたまらない、
その残酷な姿を正視する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210500b56">
「あんたはおれの大事なものを傷つけた。
　そいつは確かだ。だから怒ってる。絶対に
許すつもりもない」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210510b56">
「けど何も失ってない！」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210520b57">
「……」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210530b56">
「何を失くしたって言うんだ!?
　小夏の身体か？　ああそうだな。これから
とても、想像もできないほど、こいつは苦労
しなけりゃならないだろう」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210540b56">
「でもおれが助ける！
　おれが代わりの身体になってやる！」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210550b57">
「――ッ!?」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210560b56">
「他にはなんだ。忠保の将来か。
　はん。そりゃな、失明ってのは普通に考え
たら絶望的なハンディキャップだろうよ」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210570b56">
「でも……こいつは諦めない。
　そんな程度のことで絶望しない。
　<RUBY text="レーサー">装甲騎手</RUBY>の夢だって捨てないかもしれない
さ！　こいつはそういう奴なんだよ！」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210580b57">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210590b56">
「後はなんだ!?
　あんたはさっきなんて言ってた。絆か？
　おれたちの絆か」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210600b56">
「それこそ、そんなもん、てめえ如きに壊さ
れるかよ！
　おれたちはずっと仲間だった！　昔から！」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210610b56">
「てめえが今日、ちょっと何かしたからって、
<RUBY text="・・・・・・・・・・・・">その事実が消えたりするか</RUBY>！
　消えない！　忘れない！　おれはおれたち
がどういう仲間だったか、絶対に忘れない！」

{	FwC("cg/fw/fw雄飛_勇敢.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210620b56">
「だから、
　おれたちは何も失くしてないッ!!」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210630b57">
「――――馬鹿な」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　無様に腰を落としたまま、鈴川が呻く。
　強くもなければ鋭くもない。

　なんだってこんな奴に、さっきまでおれは刃向かい
もせず諾々と従っていたのか！
　こんな奴。
　こんな奴、ただの。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210640b56">
「美しいものは弱いって言ってたな。
　脆弱だって言ってたな。
　鈴川」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210650b57">
「――黙れ」

{	FwC("cg/fw/fw雄飛_勇敢.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210660b56">
「教えてやる。
　弱いのはおまえの言う美しいものじゃない」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210670b57">
「黙れ」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210680b56">
「弱いのはおまえだ、鈴川！
　綺麗なものが目の前から消えたってだけで、
思い出も何もかも忘れて、何もかも無かった
ことにしちまった、おまえが弱いんだ!!」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210690b57">
「黙れェッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/3d真改_立ち_抜刀.png");
	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,600,null,false);
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　武者が立ち上がる。
　激昂を漲らせて。

　その威迫は凄まじい。
　純粋な戦闘存在が、抑制の全てを失って、暴走寸前
の焦げ付く臭気を放っているのだ。

　冥府の入り口に立っているようなものだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210700b57">
「何も失わないだと？　私が弱いだけだと？
　何も知らない小僧が……口先でほざくな！」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210710b56">
「何も知らないのはあんただ。
　いいか？　馬鹿でもわかるようにはっきり
言ってやる」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210720b56">
「<RUBY text="・・・・・・・・・・・・・・・">てめえの絶望に他人を巻き込むな</RUBY>！
　<RUBY text="・・・・・・・・・・・・・・">おれたちはそんなに弱くねえッ</RUBY>!!」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210730b57">
「――――!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　最後の爆弾。
　決定打。

　武者の全身に亀裂が走った。
　――ように見えた。

　鉄の体が揺らぐ。揺れる。
　それが示すのは、装甲の内側の動揺。
　そして怒り。

　逆上。
　憤怒。

{	OnSE("se戦闘_動作_刀構え02",1000);}
　太刀が鈍い唸りを上げ、直上を差す。
　振り下ろされればおれは一刀両断だ。

　そして、そうしない理由はどこにもないだろう。

　太刀を睨む。
　鋭利というにもあまりに鋭過ぎる刃。

　――まず、あれを躱せるかどうか。
　それだけでも、天文学的な運が<RUBY text="いりよう">入用</RUBY>に違いない。

　その後で、小夏と忠保を守り、この場を切り抜ける
となると。
　……気が遠くなる、の一言では済まない話だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　けど、諦めない。
　絶対に諦めない。

　今は戦うべき時。
　だから、戦う。

　相手がどんな強敵でも。
　武者であっても。

　あらゆる方法を考えて、
　あらゆる手段を尽くして、
　戦う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210740b56">
「来いよ。弱虫」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210750b57">
「――――ッ！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	Wait(1000);

//◆一閃
	PrintGO("上背景", 5000);
	CreateColorSP("絵暗転", 10, "#000000");
	DrawDelete("上背景", 100, 100, "slide_06_00_0", true);

	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_down(@0,@0,2000);
	SL_downfade2(10);

//◆鋼糸
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景20", 100, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	OnSE("se特殊_生物_蜘蛛の糸吐く01",1000);
	DrawDelete("上背景", 100, 100, "slide_04_01_0", true);

//◆カキーン
	SetVolume("@mbgm*", 500, 0, null);
	CreateSE("SE01","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("絵フラ", 150, "#FFFFFF");
	Fade("絵フラ", 200, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　…………え？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("暗転", 15000, "#000000");
	DrawTransition("暗転", 250, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵*");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");

	DrawDelete("暗転", 250, 100, "slide_01_03_1", true);

	StL(1000, @30, @0,"cg/st/3d真改_立ち_抜刀.png");
	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,600,null,false);
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210760b57">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　硬質の音。
　弾かれる太刀。
　慌てて飛び退く鈴川。

　何？
　何が起きてる？

　武者の太刀が、俺へと落とされた――瞬間。
　何かが飛んできた。

　糸のような細い何か。
　鋭い銀色の光、それが幾条も束になって。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210770b57">
「これは！
　まさか……あの夜の」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);
	CreateColorSP("暗転", 1500, "#000000");
	DrawDelete("上背景", 250, 100, "slide_01_03_0", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　鈴川が首を巡らす。
　この部屋唯一の戸口を見る。

　その向こうは闇が広がるばかりで、何の姿もない。
　しかし。

{	CreateSE("SE01","se人体_足音_木床ゆっくり歩く01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);}
　足音が聞こえた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//◆顔グラなし
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210780a00">
「潔さこそ<RUBY text="もののふ">武士</RUBY>の<RUBY text="さが">性</RUBY>。
　敗北を認めよ、鈴川令法。彼の強さは貴様
の及ぶ処ではない」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210790b57">
「ッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　そして、静かに渡る声。

　聞き覚えがあった。
　どこかで聞いた、誰かの声。

　しん、しん……
　雪を踏むように床を鳴らして、その人が来る。

　大きな影。
　闇に眠るかの暗い気配。

　徐々に完成する彫刻のように、その姿が陰から浮き
上がってゆく。
　見覚えのある、ほんの短い時間だけ行動を共にした
コート姿。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE*", 600, 0, null);
	SoundPlay("@mbgm04",0,1000,true);

	CreateColorSP("絵暗転地", 10, "#000000");

	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(0,true);

	FadeDelete("暗転", 600, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　――湊斗景明。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("暗転", 300, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");
	StL(200, @0, @0,"cg/st/3d真改_立ち_通常.png");
	FadeStL(0,true);
	DrawDelete("暗転", 1000, 100, "slide_01_03_0", true);

//◆景明登場
/*
	PrintGO("上背景", 15000);
	CreateColorSP("暗転", 5000, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");

	StL(1000, @0, @0,"cg/st/3d真改_立ち_通常.png");
	FadeStL(0,true);

	DrawDelete("上背景", 250, 100, "slide_01_03_1", true);
	DrawDelete("暗転", 250, 100, "slide_01_03_1", true);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0611]
　その人は。
　悠然と現れ、堂々と、そこへ立った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210800a00">
「この近辺で発生した失踪事件のうち数件、
学生の行方不明は貴様の<RUBY text="もの">犯行</RUBY>か。
　教職公務員鈴川令法」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210810b57">
「……何者だ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreatePlainSP("上背景", 10000);
	StL(1000, @0, @0,"cg/st/3d真改_立ち_抜刀.png");
	FadeStL(0,true);

	OnSE("se戦闘_動作_刀構え01",1000);
	FadeDelete("上背景", 300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　太刀を構え直して、誰何する鈴川。
　鋼鉄に隈なく覆われたその姿の意味を、誤解できる
人間などこの世にいないだろう。

　だが湊斗景明は冷然としていた。
　あまつさえ問いを黙殺し、教室を眺めやる。

　一角で視線が止まった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210820a00">
「その四つの箱」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　教壇の脇にあるものを見る。
　眼を<RUBY text="すが">眇</RUBY>めて。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210830a00">
「一つに一人、仏が眠るならば……
　貴様が殺めたのは四人ということだな」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210840b57">
「誰かと訊いている！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	PrintGO("上背景", 30000);
	CreateColorSP("絵フラ", 5000, "#FFFFFF");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");

	OnSE("se戦闘_攻撃_刀振る01",1000);
	Delete("上背景");

	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(0,true);
	StL(1000, @0, @0,"cg/st/3d真改_立ち_抜刀.png");
	FadeStL(0,true);

	DrawDelete("絵フラ", 250, 300, "slide_06_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　怒声を発し、鈴川が太刀を振り下ろす。
　届く距離ではない。しかしその速度は超音境。空気
が割れ、虚無の風が疾駆する。

　鎌鼬に掠め切られて、闇色の男の頬が一筋裂けた。
　血の細糸が流れ落ちる。だがそれでも表情は、微動
だにしなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210850a00">
「内務省警察局鎌倉市警察署属員。
　湊斗景明」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210860b57">
「なに……？
　ではお前がパート警官とやらか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　奥歯を噛む音がした。
　ぎりぎりと。歯を<RUBY text="きし">軋</RUBY>る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210870b57">
「私を捕らえにきたのか」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210880a00">
「……」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210890b57">
「<RUBY text="ろくはら">巨悪</RUBY>には手を出さず……時によっては片棒
まで担ぎながら。この私は捕らえ、罪に問う
というのか――警察！
　恥を知れ！」


//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210900b57">
「捕まるものか！　お前は殺す！
　ためらう理由もない。その醜さは私が憎悪
してやまぬものだ！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210910a00">
「そうか。諒解した。
　だが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　殺害の宣告を受けて。
　彼はあくまで、静然と。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210920a00">
「恥ならば知っている。
　六波羅に<RUBY text="こうべ">頭</RUBY>を垂れ、ただ機を待つばかりの
不甲斐なさ、心ある警官ならば誰もが心の底
より恥じている」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210930a00">
「しかしそれが、貴様を見逃す理由になる筈
もない。例え汚物に満ちた街であっても、屑
を一つ一つ拾う行為が意味を失うことはない。
　恥は貴様こそが知れ」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210940b57">
「ぐ……ッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　腹からせり上がる怒りでか、鈴川は息を詰めた。
　両眼が殺気に満ちて、ぎらぎらと輝く。

　……おれはただ呆然と、両者の対決を眺めていた。

　なんで。
　どうして。

　湊斗景明。
　あんたがここにいるんだ。

　そりゃ、あんたは事件の調査をしてたんだ。
　<RUBY text="はんにん">鈴川</RUBY>に行き着いたって不思議じゃない。

　でも、今この場に現れてあんた、どうすんだよ!?
　あれ武者だぞ!?　見りゃわかると思うけど。いや、
ほんとにわかってんのか!?

　あんたは何もできないだろ！
　こんな化物に対して！

　だってあんたは、野木山のチンピラヤクザにすら、
立ち向かえなかったじゃないか。
　土下座して謝った腰抜け野郎じゃないか。

　カスヤクザとは戦えなくて、武者とは戦えるなんて
道理があるわけないだろう！
　あんたはとっとと逃げ出してなきゃおかしいんだよ！

　なのに、
　なのに、
　なんで。

　あんたはまたおれの前に立つんだ!?
　おれたちを守るように！　その背中を見せて！

　なんでそれができるんだよッ!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0210950b56">
（あぁ……でも、確か）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　確か――そう。
　<RUBY text="・・・・">あの言葉</RUBY>を教えてくれたのは。

　あの言葉を、おれの前で口にしたのは。
　確か、この――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210960a00">
「抗う強さも耐え忍ぶ<RUBY text="つよ">靭</RUBY>さもなく、ただ八つ
当たりのように凶行を働いた鈴川令法。その
罪状は既に明白。
　だが貴様の処断に警察の名は借りない」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210970b57">
「何ぃ……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
　す、と湊斗景明は左腕を差し上げた。
　天を刺す手刀。

　それが示すもの。
　――いつからそこにいたのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0210980b57">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵暗転", 10000, "#000000");
	DrawTransition("絵暗転", 250, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	PrintGO("上背景", 15000);

	CreateTextureSP("絵背景100", 10, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");
	SetShade("絵背景100", MEDIUM);

	Zoom("絵背景100", 0, 5000, 5000, null, true);
	Move("絵背景100", 0, @0, @1000, null, true);

	CreateTextureSP("絵村正", 100, Center, Middle, "cg/st/resize/3d村正蜘蛛_正面m.png");
	Move("絵村正", 0, @0, @25, null, true);
	Request("絵村正", Smoothing);
	Rotate("絵村正", 0, @0, @0, @180, null,true);



	CreateMask("絵マスク１", 200, 0, 0, "cg/data/effect_01_00_0.png", false);
	SetAlias("絵マスク１","絵マスク１");

	CreateColorEXadd("絵マスク１/もや", 200, "#BBBBBB");
	Fade("絵マスク１/もや", 0, 300, null, true);

	SetAlias("絵マスク１/もや","絵マスク１/もや");

//プロセスの定義
	CreateProcess("プロセスもや", 5000, 0, 0, "Moyamoya");
	SetAlias("プロセスもや","プロセスもや");

//プロセススタート
	Request("プロセスもや", Start);

	DrawDelete("上背景", 250, 100, "slide_02_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
　蜘蛛がいた。
　それは大きな大きな、紅い蜘蛛。

　天井へ張り付いて、見下ろしている。
　複眼に妖しい<RUBY text="ひかり">輝</RUBY>を瞬かせ。

　肌の朧な光沢は、肉が放ち得るものではない。
　それは鉄。鋼鉄の肌。

　鋼鉄の大蜘蛛。
　頭上に逆座する<RUBY text="けしょう">化生</RUBY>を見ず、湊斗景明は<RUBY text="な">銘</RUBY>を<RUBY text="とな">唱</RUBY>う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_戦闘.png");

	SetBacklog("　　　　　　　　「村正」", "voice/ma01/0210990a00", 景明);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0210990a00">
　
　　　　　　　　「<RUBY text="ムラマサ">村正</RUBY>」

</PRE>
	SetTextEXC();
	Request("@text0800", NoLog);
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(150, @-100,@-576,"cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStC(0,true);
	FadeDelete("絵村正", 300, false);
	Move("@StC*", 1000, @0, @+576, Dxl1, true);

//◆ガリーン。村正、鎧パーツに分離

	CreateColorEXadd("フラ", 10000, "#FFFFFF");

	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);

	Fade("フラ", 300, 1000, null, true);

	PrintGO("上背景", 15000);
	CreateColorSPadd("フラ", 10000, "#FFFFFF");

	DeleteStC(0,true);

	OnBG(100,"bg019_廃校教室_01.jpg");
	FadeBG(0,true);

	Delete("プロセスもや");
	Delete("上背景");

	FadeDelete("フラ", 1600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
　蜘蛛が弾ける。弾けて散る。
　黒い男の周囲を舞う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0211000b56">
（有り得ない）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　今、見ているものの意味。
　今、始まっている事実。

　おれはそれを理解していた。
　理解しながら、信じることができなかった。

　紅い鉄が踊る直中、片手が再び、ゆるりと流れる。
　――<RUBY text="ソウコウノカマエ">装甲ノ構</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0211010b56">
（有り得ない……！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　こんなことは有り得ない。
　有り得ないことなんだ。

　武者とは六波羅。暴虐の支配者。
　大和には六波羅以外に武者はいない。

　もしいたとしても。
　それは六波羅とは別の、六波羅と同様の悪魔に過ぎ
ない。

　武者とは悪。
　武者とは鬼。
　力ずくで弱いものを貪り食う獣。

　力ある者は己の欲のためにのみそれを揮う。
　他の使い途など彼らは知らない。

　それが事実。
　それが真実。

　だから――
　そんなものは、いない。

　正義のために戦う武者など、
　力なき者を守ってくれる武者など、
　そんなものはどこにもいない！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0211020b56">
（いない、のに……
　なぜ！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　なぜ、あんたは、そこにいる!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

/*

//◆左手で顔を覆う。片目は覗く
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStC(300,true);

//	CreateSE("SE01","se特殊_陰義_発動03");//ダミー注意
//	MusicStart("SE01",300,1000,0,500,null,true);
	OnSE("se特殊_陰義_発動03",1000);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0211030a00">
「<RUBY text="オニ">鬼</RUBY>に逢うては鬼を斬る。
　<RUBY text="ホトケ">仏</RUBY>に逢うては仏を斬る」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);


//◆左手を前へ伸ばす
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStC(0,true);

	FadeDelete("絵板写", 300, true);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0211040a00">
「ツルギの<RUBY text="ことわり">理</RUBY>ここに在り」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

*/

//◆ガキーン
//◆武者・三世右衛門尉村正

	#av_村正=true;

	SetVolume("@mbgm*", 30, 0, null);

	CreateColorSPadd("フラ", 10000, "#FFFFFF");
	MovieSESet(16000,"mv景明装甲","se特殊_mv用_景明装甲");
//	MovieSEStart2(300,1000);
	MovieSEStart(2000);

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

	SetVolume("@mbgm*", 2000, 0, null);

	DeleteStA(0,true);
//	StC(1000, @120,@0,"cg/st/3d村正標準_立ち_通常.png");
	StC(1000, @0,@0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStC(0,true);

	CreateColorSP("絵上暗転", 5000, "#000000");
	CreateTextureSP("絵上村正", 5100, -490, -1400, "cg/st/resize/3d村正標準_立ち_通常l.png");

	OnSE("se特殊_鎧_装着05",1000);

	Move("絵上村正", 6000, @0, -600, DxlAuto, false);
	FadeDelete("フラ", 2000, true);

	WaitAction("絵上村正", null);

	WaitKey(1000);

	CreatePlainSP("絵スクリン", 6000);

	Delete("絵上*");

	FadeDelete("絵スクリン", 1000, true);


/*カットイン演出保留==================================================

	CreateWindow("絵Ｗ１", 2000, 0, 40, 1024, 288, true);
	Fade("絵Ｗ１", 0, 0, null, true);

	CreateTextureSP("絵Ｗ１/ＣＩ１", 2100, 0, 0, "cg/st/resize/3d村正標準_立ち_抜刀.png");
	Move("絵Ｗ１/ＣＩ１", 0, @-750, @-760, null, true);
	Move("絵Ｗ１/ＣＩ１", 0, @-60, @0, null, true);


	CreateColorSP("絵Ｗ１/絵暗転１", 2000, "#888888");
	CreateTextureSPsub("絵Ｗ１/絵暗転２", 2010, -220, 0, "cg/ef/ef001_汎用移動.jpg");


	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,650,null,false);
	Fade("絵Ｗ１", 0, 1000, null, true);
	Move("絵Ｗ１/ＣＩ１", 600, @60, @0, Dxl2, false);
	DrawTransition("絵Ｗ１", 300, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", true);

*/==================================================================

	WaitKey(1000);

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0211050a00">
「鈴川令法。弱さに溺れた惨めな外道。
　当方<RUBY text="ムラマサ">村正</RUBY>、ただ一身の都合によって貴様を
討伐する」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0211060b57">
「――――!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ガシャーン。
	PrintGO("上背景", 15000);
	CreateColorEXadd("絵フラ", 15010, "#FFFFFF");

	CreateSE("SE01a","se戦闘_動作_空上昇01");
	MusicStart("SE01a",0,1000,0,1500,null,false);

	OnSE("se戦闘_破壊_建物02",1000);

	Fade("絵フラ", 200, 1000, null, true);
	Delete("上背景");

	WaitPlay("SE*", null);
	WaitPlay("OnSE*", null);

}

..//ジャンプ指定
//次ファイル　"ma01_022vs.nss"


.//プロセス用=========================================================

..//煙モヤ
function Moyamoya()
{
	while(1)
	{
	Fade("@絵マスク１/もや", 3000, 100, null, true);
	Fade("@絵マスク１/もや", 3000, 300, null, true);
	}
}


