//<continuation number="1260">



chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_019vs.nss_MAIN
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
	#bg020_山脈坑道_01=true;
	#bg022_山林a_01=true;
	#bg020_山脈_01=true;
	#bg005_山中_01=true;

	#ev110_変てこチェイス=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_020vs.nss";

}

scene ma02_019vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_018a.nss"
//前ファイル　"ma02_018b.nss"


//◆合流
	PrintBG("背景０", 30000);
	CreateColorSP("絵暗転", 1500, "#000000");
	OnBG(100,"bg020_山脈坑道_01.jpg");
	FadeBG(0,true);
	Delete("背景０");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0010a01">
《……御堂……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0020a00">
（村正？）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　望外の朝食を終え。
　姉妹を家に帰らせ、残していってくれた茶を啜って
一息ついたとき、哨戒に出ていた村正からの<RUBY text="れんらく">金打声</RUBY>は
あった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16",0,1000,true);
	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0030a00">
（変事か）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0040a01">
《怪しい男を発見。
　足音を立てずにこっちへ来て》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0050a00">
（承知）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040a]
　弥源太老に目礼して、その場を立つ。
　老人はそれだけで察したのか、無言のままに頷きを
返してきた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 5000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040b]
　目には見えず形もない、村正との連結を追う。
　……裏手の細い山道を下り、木々の中へ踏み込んで
いる。

　それほど、奥まで導かれることはなかった。
　すぐに木の陰へ潜んだ村正と、その先の人影を発見
する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0060a00">
（あれか）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0070a01">
《ええ。
　それと……もうひとつ》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0080a00">
（ん――）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　人影はこちらへ背を向けている。
　何か、手元に書き付けている様子だった。

　その紙切れを傍らの樹木へ差し出す。
　枝の上からするりと長い腕を伸ばし、受け取ったの
は――鋼鉄の<RUBY text="マシラ">猿</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0090a00">
（月山従三位！）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0100a01">
《猿だけに、なかなか大した隠形能力よ。私
もすぐには気付かなかった。
　けど……あの男は月山の仕手じゃない》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0110a00">
（……ああ。
　あれは、おそらく……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　猿はすぐさま飛んだ。木から木へと跳躍し、樹海の
奥へたちまち去ってゆく。
　男の方は筆具をしまい込むと、その場にしゃがんだ。
山歩きで緩んだ靴紐を締め直しているようだ。

　……要するに、男は代官の偵察役。
　報告をまとめて連絡役の月山に託したのだろう。

　となれば――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0120a01">
《どうする？
　月山の後をつけてみる？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0130a00">
（気付かれずに追跡することは可能か？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0140a01">
《……当然、と言えないのは悔しいけれど。
　この森は完全に向こうの庭。ただ追うだけ
でも難しいでしょうね……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0150a01">
《隠密裏に、というのはどう考えても――》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0160a00">
（無理、無茶、無謀か）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　なら仕方がない。
　月山を尾行して代官らのもとまで案内させることが
できるなら万々歳だが、尾行に気付けば月山はこちら
を<RUBY text="・・">まき</RUBY>にかかるに決まっている。

　それに食いつけたとしても、月山にしてみれば尾行
を引き連れたまま主のもとへは戻れまい。
　つまりは<RUBY text="いたちごっこ">鼬遊戯</RUBY>。こちらが何より惜しんでいる時間
をただ空費するだけの結果になる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0170a01">
《いっそ、ここで月山を仕留める？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0180a00">
（あれに追いつくのがまず問題。
　そして首尾良くいったとしても、代官らが
警戒して一層深く潜んでしまうようなことに
なれば、本末転倒も良い所だ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0190a01">
《……そうね。
　ごめんなさい。つまらないことを言った》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　硬い響きが混じる。
　それに気付かぬふりを装って、俺は続けた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0200a00">
（欲はかくまい。
　あれが坑道の様子を代官に伝えてくれるの
なら、それはこちらの予定通りだ。このまま
見送るだけで充分、手出しは無用）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0210a01">
《ええ……》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0220a00">
（だが、）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　視線を散らす。
　周囲を確認。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0230a00">
（斥候をこれ以上放置しておいても益はない）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　距離を測る。
　およそ一〇メートルか。やや遠い。が、数歩ばかり
気付かれずに接近することができれば、奇襲に手頃の
間合となる。

　男はまだ靴紐を結んでいる最中だ。得物であろう杖
は傍らへ置いている。
　絶好の機会。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0240a00">
（敵の戦力を減らしておくことにする。
　村正、太刀を送れ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0250a01">
《諒解》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　村正の牙が一対、消失する。
　代わって右手にずしりとした重さ。

　鍔を鳴らすような遊びは控え、静かに肩へ担ぐ。
　そのまま踏み出す。一歩。

　二歩。
　三歩。
　四歩――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 100, 0, null);

	CreateSE("SE01","se人体_動作_跳躍01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("絵ＥＦ50", 5000, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	DrawTransition("絵ＥＦ50", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0183]
　跳んだ。
　担いだ刀を袈裟に一閃、刃を返して峰打ちにしつつ、
男の肩口へ叩き込む――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆袈裟一閃
//◆切り上げ一閃
	PrintGO("上背景", 15000);
	CreateColorSP("絵暗", 10, "#000000");
	CreateColorEX("絵暗２", 110, "#000000");
	Delete("上背景");

	OnSE("se戦闘_攻撃_刀振る02",1000);

	CreateSE("SE01","se戦闘_攻撃_刀振る01");

	SL_rightup(@0, @0,1500);
	Rotate("@slashLU*", 0, @0, @0, @30, null,true);
	Request("@slashLU*", Smoothing);

	CreateTextureSP("絵ＥＦ100", 100, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	DrawTransition("絵ＥＦ100", 200, 0, 500, 100, null, "cg/data/slide_04_00_0.png", false);

	Wait(150);

	Fade("絵暗２", 0, 1000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_rightupfade2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0189]
　――――――――!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆跳び下がる景明
//◆すぱっと軽く斬られ
	PrintGO("上背景", 10000);
	CreateColorSP("絵ブラ", 1500, "#CC0000");

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

	OnSE("se戦闘_攻撃_刀刺さる02",1000);

	Wait(200);

	OnSE("se人体_血_たれる01",1000);

	Delete("上背景");
	FadeDelete("絵ブラ", 500, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0260a00">
「……っ……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0270a01">
《御堂!?》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0280a00">
「……、大事なし！
　掠り傷だ…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　腿を軽く撫でられた程度。
　傷と言えるほどのものでさえない。

　が――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st雪車町_通常_私服.png");
	FadeStR(500,true);

	Wait(200);

	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fw雪車町_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0290a12">
「……うへぇ。
　勘弁してくだせぇよ。あんた、いつの間に」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　仰天した様子で目を<RUBY text="しばた">瞬</RUBY>いている男。
　嘗て二度だけ、顔を見交わす程度の遭遇をした事が
ある――否、三度か。

　この男。
　今……<RUBY text="・・・・・・・・・・・・・・">俺の一撃を前転して避けながら</RUBY>、<RUBY text="・・・・">抜刀して</RUBY>、
<RUBY text="・・・・・・・">斬りつけてきた</RUBY>……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0300a01">
《気付かれていたの……!?》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0310a00">
（――いや）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　男の足元を見る。
　右足の靴紐が解けかけ、脱げかけていた。

　<RUBY text="・・・・・・・・・・・・・・">気付いていなかったのだ</RUBY>。
　男は確かに不意を打たれたのだ。

　<RUBY text="しか">而</RUBY>して――この反応！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st景明_戦闘_私服.png");
	FadeStL(300,true);


	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0320a00">
「……こういう芸のできる人間はほかに一人
しか知らない。
　あれは確か三年前だったか。俺の妹が同じ
ようなことをやって見せた」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0330a12">
「……へっ、へ……」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0340a00">
「お前で二人目だ。
　野木山組の雪車町一蔵」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　声音から戦慄が滲むのを抑えきれずに、告げる。
　痩せこけた筋者の頬が薄寒い笑みを刻んだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0350a12">
「覚えて頂いてたんで。
　そいつぁ、光栄です。警察の旦那」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0360a00">
「偶々だ。別段覚えようと思って覚えたわけ
でもない。
　だが今後当分は忘れないだろう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　じりじりと間合を取ろうとする雪車町。その手には
刀――<RUBY text="・・・・">仕込み杖</RUBY>の中身。
　追随し、間合を保つ。逃がすつもりはない……が、
焦って踏み込めば隙を晒す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0370a00">
「随分と世話になったことでもある」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0380a12">
「……へ。
　さぁて、あたしが旦那にそれほど大した事
を致しましたかねぇ……？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0390a00">
「一昨日、空から叩き落して貰ったばかりだ。
　生憎と地獄の底までは落ち切れず、かよう
に健在だが」


{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0400a12">
「へ、へ、へ……。
　お気づきでしたか」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0410a00">
「無論の事。
　その声を聞き違えるのは難しい」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0420a12">
「よく言われます……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　間合の<RUBY text="せめ">鬩</RUBY>ぎ合いは膠着。
　だが、分はこちらにある。

　この雪車町なる男、剣技だけを問うなら、おそらく
<RUBY text="・・">あの</RUBY>光にも匹敵する。
　互角の状況で<RUBY text="や">遣</RUBY>り合って、勝てるものかどうか……
それはわからない。

　だがこの状況は互角ではなかった。
　靴紐の緩んでいる雪車町は足回りが悪い。これでは
到底、十全の技を振るうことはできないだろう。
　いずれ、こちらが有利になる。

　雪車町がこの状況を崩そうと思うなら、劔冑の勝負
に持ち込むことだが。
　……周囲にその姿はない。鎧櫃も見当たらない。

{	CreateSE("SE01","se戦闘_乗り物_バイク_アイドリング_L");
	MusicStart("SE01",1500,600,0,800,null,true);}
　しかし。
　山からの喧騒に混じって聞こえる、この<RUBY text="アイドリング">唸り</RUBY>は……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 6000, 0, null);

	SetFwC("cg/fw/fw雪車町_警戒.png");

//おがみ：↓願いたい
//嶋：修正【090930】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0430a12">
「困っちまいましたねぇ。
　<RUBY text="・・">ここ</RUBY>までやるほどの義理はないんですよ、
あたしゃ。<RUBY text="タマ">命</RUBY>賭けての斬った張ったはご勘弁
願いたいところでして……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0440a00">
「こちらの事情は別。
　各個撃破の機会は逃せない。命までは無用、
だが手足を一本封じておきたい」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0450a12">
「で、しょうねぇ。
　見逃してくれってぇのはちょっと、ムシが
良過ぎますか……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0460a00">
「劔冑を使うか」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0470a12">
「へ、へ。
　そうしたら、旦那はどうなさる？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0480a00">
「俺も劔冑を使い、斬り伏せるまで」


{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0490a12">
「へへぇ。
　村正……ですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　彼の前で名乗った覚えのないその名を、雪車町は口
にした。
　あの乱破者から聞きでもしたのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0500a12">
「しかしね……
　そいつぁ、いけねぇでしょう……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0510a00">
「……」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0520a12">
「お代官は、あたしを偵察に寄越しゃあしま
したがね。確認みたいなもんで。あんたがた
が坑道を埋め潰そうとしてるってことにゃ、
もうお気付きですよ」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0530a12">
「そこで轟音立てて、あたしと旦那が派手に
空で遣り合い始めたらどうなります。
　あたしの加勢に来る？　まさかね……代官
殿は勿論、山の作業を潰しに行きますよ」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0540a12">
「そしたら、へへ。どなたが代官殿と小太郎
爺さんの相手をするんで？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0550a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　この男、どこまでも巧妙……
　口舌の戦も一流か！

　雪車町の状況分析は正鵠を得ている。
　今ここで騎航戦闘を繰り広げれば、まさに言われた
通りの結果を招く危険が高い。

　そこまで読みながら、この男が即座に装甲騎航して
逃げようとしないのは……こちらが各個撃破に固執し、
彼を屠った後で舞い戻ろうなどと甘い選択をする可能
性をも考慮しているからに違いない。

　一昨日のあの時、互いを見交わしたのは一瞬のこと
に過ぎなかったが。
　雪車町の劔冑はおそらく軍用の数打。<RUBY text="あし">速力</RUBY>の勝負で
こちらを振り切って逃げられる確証はないのだろう。

　実際、捕捉して斬り墜とす自信はあるが……
　山を無防備にするリスクは冒せない。
　
　武者戦闘という選択肢は封じられたも同然！

　……舌先一つでこちらの決戦力を封じてのけ、<RUBY text="か">且</RUBY>つ
その成果に驕らず慎重な手を打ち続ける。
　この男、場数の踏み方が違うらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0560a00">
「……委細、指摘の通り。
　だが、ならばこのまま決着をつけるまで」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0570a12">
「そいつも、」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_後ずさり01",1000);
	Move("@StR*", 200, @0, @5, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　雪車町が足を動かす。
　右足――脱げかけた靴を――！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 500, 0, null);
	SetFwC("cg/fw/fw雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0580a12">
「お許しくだせぇ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


//おがみ：ツバの音
//◆ボイス「ぺっ」。唾吐く音
//◆瞬間ブラックアウト
	OnSE("se人体_動作_唾吐き",1000);
	CreateColorSP("絵暗転", 2000, "#000000");

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0590a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(0,true);

	FadeDelete("絵暗転", 300, true);

	SoundPlay("@mbgm25",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　唾――――
　下からと見せて上!!

　辛うじて首を傾け、視界を塞がれるのは避けたが。
　この半秒の間に、雪車町は距離を取っている！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0600a00">
「味なっ！」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0610a12">
「御免なすって！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 1500, Center, Middle, "cg/bg/bg022_山林a_01.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景100", 200, 1500, 1500, Dxl2, false);
	FadeDelete("絵背景100", 200, false);

	CreateSE("SE02","se戦闘_攻撃_振る04");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(500);
	CreateSE("SE01","se戦闘_乗り物_バイク_アイドリング_L");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　追う。
　脚のリーチはこちらが上だ。この程度の距離ならば
充分に追いつける。あと五歩あれば――

　しかし。
　その五歩の前に、雪車町は<RUBY text="・・">それ</RUBY>へ到達していた。

{	MusicStart("SE01",1500,1000,0,1000,null,true);}
　木の陰へ潜ませていた――<k><RUBY text="モノバイク">単輪自動車</RUBY>！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 2000, 500, null);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0620a01">
《……劔冑!?》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0630a00">
「劔冑だ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　そう。あれは劔冑。
　海軍の八八式艦載騎をベースに開発された、陸軍制
式の九〇式竜騎兵。
　待騎時にはバイクの形態をとる。

　その使い勝手の良さから今なお現役の地位を保って
いる傑作だ。派生騎、後継騎も多く存在する。
　先刻からの<RUBY text="・・">唸り</RUBY>はやはりこれだったか……！

{
	SetVolume("SE01", 1500, 0, null);
	CreateSE("SE02","se戦闘_乗り物_バイク_発進");
	MusicStart("SE02",0,1000,0,1000,null,false);
}
　素早く跨り、アクセルを踏む雪車町。
　既にエンジンの回っている車は即座に走り出した。

　林間をすり抜け、山道へ――！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0640a01">
《御堂！　装甲を――》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0650a00">
「却下！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　森の間の曲がりくねった細い山道というフィールド
で、高速だが小回りの利かない騎航武者と速度は劣る
が扱いのいいモノバイクの優劣ははっきりしている。
　又、相手が応じて装甲し騎航戦になっても不都合。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0660a01">
《なら、見逃すしかないっていうの……！》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0670a00">
「――否」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　雪車町の企図においてはそうだろう。
　確かにもはや、こちらは打つ手を封じ切られたかに
見える。雪車町の望む通り歯軋りして背を見送る以外
にないと見える。一見。

　だが、まだ――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0680a00">
「村正。
　<RUBY text="・・・・">このまま</RUBY>追うぞ！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0690a01">
《――――諒解！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆しゅぴーん。
//◆高速移動
//あきゅん「演出：仮入れだから超適当」
//あきゅん「演出：ここから先はFwしか触ってないです」

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
//	SetVolume("@mbgm*", 100, 0, null);

	PrintGO("上背景", 15000);
	SetBlur("上背景", true, 3, 500, 50, false);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg022_山林a_01.jpg");
	Rotate("絵背景50", 0, @0, @180, @0, null,true);
//	OnBG(100,"bg020_山脈_01.jpg");
//	FadeBG(0,true);

	CreateTextureSP("絵ＥＦ100", 110, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	OnSE("se人体_動作_跳躍02",1000);
	CreateSE("SE10","se戦闘_乗り物_バイク_走行_L");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	Zoom("上背景", 200, 2000, 2000, null, false);
	Zoom("絵ＥＦ100", 900, 1200, 1200, Dxl2, false);
	FadeDelete("上背景", 200, true);

	Wait(500);

	DrawDelete("絵ＥＦ100", 150, 100, "circle_01_00_1", true);


	SetFwC("cg/fw/fw雪車町_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0700a12">
「――――!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　何か異様な気配を感じたのだろう。
　不意に振り返った雪車町は、はっきりと頬肉を引き
攣らせた。

　距離――二〇メートル弱。
　微妙に距離を増減させつつ追尾する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆蜘蛛ＶＳモノバイク。何これチェイスオフロード編
//あきゅん「演出：仮入れだから超適当」
	SetFrequency("SE10", 3000, 1200, null);

	CreateTextureEX("絵ＥＶ100", 110, Center, Middle, "cg/ev/resize/ev110_変てこチェイス_l.jpg");
	Move("絵ＥＶ100", 0, @400, @200, null, true);
	SetBlur("絵ＥＶ100", true, 3, 300, 100, false);

	CreateTextureEX("絵ＥＶ200", 100, Center, Middle, "cg/ev/ev110_変てこチェイス.jpg");
	Zoom("絵ＥＶ200", 0, 2000, 2000, null, true);

	OnSE("se戦闘_動作_空突進02",1000);
	CreateSE("SE01","se戦闘_動作_空突進04");
	CreateSE("SE02","se戦闘_銃器_複数構える02");
	CreateSE("SE03","se乗物_汽車_走行01_L");
	MusicStart("SE01",0,1000,0,1000,null,false);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵ＥＶ100", 200, 1000, null, false);
	Move("絵ＥＶ100", 600, @10, @10, null, true);
	Move("絵ＥＶ100", 600, @-40, @-30, null, true);
	MusicStart("SE03",500,1000,0,1000,null,true);

	Fade("絵ＥＶ200", 0, 1000, null, true);
	Move("絵ＥＶ100", 500, @-370, @-180, Dxl2, false);
	Zoom("絵ＥＶ100", 500, 1000, 1000, Dxl2, false);
	Zoom("絵ＥＶ200", 500, 1000, 1000, Dxl2, true);
	FadeDelete("絵ＥＶ100", 500, true);


//	Wait(500);

	SetVolume("SE03", 2000, 0, null);
	SetVolume("SE10", 3000, 500, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0502]
　山道を疾走するモノバイクを眼下に見下ろし、
　赤色の蜘蛛が樹上を渡る。

　猿飛の技は月山猿の専売特許に<RUBY text="あら">非</RUBY>ず。
　村正蜘蛛もこの程度の芸は可能！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0710a01">
《速度を上げる！
　振り落とされないで！》

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0720a00">
「承知！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se戦闘_銃器_複数構える02");
	CreateSE("SE03","se乗物_汽車_走行01_L");

	CreateTextureEX("絵ＥＶ100", 110, Center, Middle, "cg/ev/resize/ev110_変てこチェイス_l.jpg");
	Move("絵ＥＶ100", 0, @400, @200, null, true);
	SetBlur("絵ＥＶ100", true, 3, 300, 100, false);

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef003_汎用移動.jpg", false);

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	FadeF4("絵ＥＶ100", 200, 1000, 1000, 0, 0, Axl3, false);
	Wait(800);
	FadeDelete("絵ＥＶ100", 200, true);
	SetVolume("SE03", 1000, 0, null);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　手足に力を込め、村正の背に乗る己を固定する。
　移動の仕方が仕方だ。視界の変転は<RUBY text="めまぐる">目紛</RUBY>しい。だが、
騎航になれた身にすればどうという程のこともない。

　標的の姿を視認し、太刀を構えて接触に備える。

　こちらを見た雪車町の顔は、前方へ戻される前に一
刹那、逡巡の色を見せていた。
　迷ったのだ。おそらく――装甲すべきか否かを。

　だが後背から迫られるこの位置関係、装甲の一瞬に
切り伏せられることも有り得ると踏んだに違いない。
　雪車町の選択はアクセル全開。このまま逃げ切る、
そのつもりだ。――ならば良し！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	Zoom("絵背景100", 0, 1300, 1300, null, true);

	Zoom("絵背景100", 300, 1000, 1000, Dxl2, false);

//適当に演出
	SetFrequency("SE10", 3000, 1300, null);
	SetVolume("SE10", 3000, 1000, null);
	Fade("絵背景100", 500, 1000, null, true);
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0526]
　緩い右折から短い直線へ。
　流石にここではバイクが優った。距離がじりじりと
開く。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景200", 1000, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	Zoom("絵背景200", 0, 1300, 1300, null, true);

	Zoom("絵背景200", 300, 1000, 1000, Dxl2, false);

//適当に演出
	SetFrequency("SE10", 2000, 1000, null);
	Fade("絵背景200", 500, 1000, null, true);
	Delete("絵背景100");

	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0527]
　――だが道はすぐに長いカーブへ。
　バイクの速度が落ち、一方まるでお構い無しの蜘蛛
がじわりと追いすがる。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景300", 1000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Zoom("絵背景300", 0, 1300, 1300, null, true);

	Zoom("絵背景300", 300, 1000, 1000, Dxl2, false);

	Fade("絵背景300", 500, 1000, null, true);
	Delete("絵背景200");

	SetFrequency("SE10", 3000, 1300, null);
	SetVolume("SE10", 3000, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9527]
　しかし手の届く距離まで迫る前に、またしても直線
が来る……！

　直線では先方。
　曲線では当方。
　一進一退の図式――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景300", 500, true);

	SetVolume("SE10", 2000, 500, null);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0730a01">
《埒が明かない……！》

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0740a00">
「今から明ける。
　村正、糸を飛ばせ。<RUBY text="・・・">槍と橋</RUBY>、同時にだ」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0750a01">
《……！　諒解！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_生物_蜘蛛の糸吐く01",1000);

//◆村正糸
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	Zoom("絵背景100", 0, 1500, 1500, null, true);

	Zoom("絵背景100", 300, 1000, 1000, Dxl2, false);
	Fade("絵背景100", 150, 1000, null, true);

	Delete("絵背景300");

	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0538]
　鉄の蜘蛛が鉄の糸を放つ。
　幾条も――虚空を裂いて。その速度は矢にも劣らず、
山道を走破するバイクを凌ぐ。

　二〇メートルの間隙が白線で繋がれる。
　バイクの乗り手の背を貫く――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0760a12">
「……ッ！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　しかし、雪車町なる筋者はやはり尋常ではなかった。
　決定的なその一瞬に背後を仰ぎ見、迫り来る脅威を
認識――刹那。

　右手が翻った。
　その中にハンドルごと保持されていた仕込みの白刃
が、宙空に幾何学模様を描く。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆剣撃。ひょんひょん。
	OnSE("se戦闘_攻撃_刀振る03",1000);
	CreateColorEXadd("絵色100", 2000, "WHITE");
	CreateTextureSP("絵背景100", 1100, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureEX("絵背景200", 1100, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");

	Zoom("絵背景100", 300, 1100, 1100, Dxl2, false);
	Shake("絵背景100", 300, 0, 2, 0, 0, 500, null, false);

	FadeDelete("絵色100", 300, true);

	Wait(300);

	Zoom("絵背景200", 300, 1100, 1100, Dxl2, false);
	Shake("絵背景200", 300, 2, 2, 0, 0, 500, null, false);
	Fade("絵背景200", 100, 1000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("絵背景100");

	Zoom("絵ＥＶ200", 0, 1300, 1300, null, true);
	Zoom("絵ＥＶ200", 300, 1000, 1000, Dxl2, false);
	FadeDelete("絵背景200", 300, false);

//―――――――――――――――――――――――――――――――――
―――――
<PRE @box0>
[text0552]
　寸断。
　断線。

　……それはもはや、悪魔的なまでの<RUBY text="ブレイドアーツ">刀剣技芸</RUBY>。
　単輪自動車の乗り手は遂に姿勢を崩すことさえなく、
背後からの強襲を切り払って見せた。

　有り得ない所業。
　
　だがしかし、俺は彼の剣技を光に擬していたのだ。

　<RUBY text="・・・・・・・・・・・・・・・・・・・">有り得ないことが有り得る程度は想定の内</RUBY>！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0770a00">
「村正――巻き込め！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//おがみ：SE：糸吸う音
	OnSE("se特殊_生物_蜘蛛の糸吐く01",1000);
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	Zoom("絵背景100", 0, 2500, 1500, null, true);
	Rotate("絵背景100", 0, @0, @180, @0, null,true);


	Zoom("絵背景100", 300, 1010, 1010, Dxl2, false);
	Fade("絵背景100", 100, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　合図を送る。
　応えて、村正が糸を<RUBY text="・・・">吸った</RUBY>。

　雪車町に切り払われた鉄糸ではない。
　バイクを越えて更に飛び、木々へ絡みついた糸を。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0780a12">
「……っ、だぁ――!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　病的な男が青褪める。それ以上顔色の悪くなること
があるとして、だが。
　その顔が接近した。急速に――否。近付いているの
はこちら。

　前方に固定した糸で自らを牽引し、
　村正が宙を飛ぶ。

　その速度は糸の放出時とほぼ同等。
　<RUBY text="すなわ">即</RUBY>ち、バイクの疾走を圧倒する――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進07",1000);


//◆迫撃って感じ
	CreateTextureEX("絵背景200", 1100, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	Zoom("絵背景100", 300, 2000, 2000, Axl3, false);
	Zoom("絵背景200", 300, 1100, 1100, Dxl3, false);
	Shake("絵背景200", 300, 0, 2, 0, 0, 500, null, false);
	Fade("絵背景200", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0593]
　接触の一瞬。
　ここに至って、雪車町一蔵はなお不屈だった。

　仕込み杖を再び構え、後方の敵襲を横殴りの一閃で
迎撃する。
　その速度、俺の首を狙う正確さ、正に一流の剣。

　だが――
　背後から襲われるという絶対的不利は、卓抜の剣腕
をもってしても覆し得ない！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_攻撃_刀振る03",1000);

	CreateColorEXadd("絵色100", 2000, "WHITE");
	CreateTextureSP("絵背景100", 1100, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景200", 1100, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景300", 1000, Center, Middle, "cg/bg/bg020_山脈_01.jpg");

	Zoom("絵背景100", 300, 1100, 1100, Dxl2, false);
	Shake("絵背景100", 300, 0, 2, 0, 0, 500, null, false);

	Fade("絵色100", 300, 0, null, true);

	Wait(300);

	Zoom("絵背景200", 300, 1100, 1100, Dxl2, false);
	Shake("絵背景200", 300, 5, 3, 0, 0, 500, null, false);
	Fade("絵背景200", 100, 1000, null, true);
	Fade("絵背景300", 0, 1000, null, true);

	Delete("絵背景100");
	Delete("絵背景50");


	FadeDelete("絵背景200", 300, false);
	Wait(150);

	Fade("絵色100", 0, 1000, null, true);
	OnSE("se戦闘_攻撃_鎧_剣戟03",1000);
	FadeDelete("絵色100", 300, true);

//◆剣撃
//◆剣撃
//◆ガキーン。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0598]
　俺の放った一刀が、雪車町の剣撃を打ち弾く。
　肉体ごと――乗騎ごと。

　押し崩す。
　……車輪が滑った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆スリップ
	CreateSE("SE01","se戦闘_乗り物_バイク_スリップ");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFrequency("SE10", 3000, 800, null);
	SetVolume("SE10", 3000, 500, null);

	Wait(300);
	SetFwC("cg/fw/fw雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0790a12">
「かッ――へっ、ははァ！　畜生ォ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　モノバイクが横転する。
　そのまま、山肌の斜面を――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 2000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);


	CreateColorEX("絵色100", 15000, "BLACK");
	CreateTextureEX("絵背景100", 1100, Center, Middle, "cg/bg/bg020_山脈_01.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	CreateSE("SE01","se戦闘_乗り物_バイク_横転");
	CreateSE("SE02","se人体_動作_水中飛び込み01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 1500, 2000, 2000, Axl3, false);
	Shake("絵背景100", 1500, 0, 10, 0, 0, 1000, Axl2, false);
	Fade("絵色100", 1500, 1500, null, true);

	Wait(1000);

	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(2500);

//◆ずしゃーごろごろ。
//◆どぼーん。川へ落ちました。
//◆チェイス終了。

//◆山道
//あきゅん「演出：仮入れ、超適当」
	PrintGO("上背景", 15000);

	OnBG(100,"bg020_山脈_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);


	SetFwC("cg/fw/fw景明_困惑.png");

	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0800a00">
「……水音？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0810a01">
《……川へ落ちたみたい。
　悪運の強い男ね》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　村正を止め、山道に降り立って見下ろす。
　山間を流れる小川と、そこへ半身を沈ませた男の姿
があった。<RUBY text="バイク">劔冑</RUBY>は見当たらない。周囲の痕跡から見る
に、どうも更に下方へ転がり落ちていったようだ。

　雪車町の体に酷い外傷はなかった。水場に落ちた事
でいくらか衝撃が和らげられたのだろう、この高さを
転落したにしては奇跡的なほどだった。
　村正が呆れるのも頷ける。

　意識を失っているのか、身動きする様子はない。
　しかし良く見れば、右手の指先だけが何かを求める
ように這っていた。川べりの土を虚しく掻いているが。
　……少し離れた木の幹に、突き立った仕込みの刃。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0820a01">
《どうするの？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0830a00">
「命に別状は無さそうか」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0840a01">
《ええ。あのままうっかりと寝返りを打って
溺死したりしない限りは平気でしょう。
　骨折もしていないようだけど……予告通り、
手足を何本か貰っていく？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0850a00">
「……いや、いい。あの様子なら打撲で数日
は動けまい。
　無力化には成功したと言って良いだろう。
これ以上は不要」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0860a01">
《それもそうね》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0870a00">
「坑道へ戻るぞ。
　あまり長い間留守にしていたくない」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0880a01">
《ええ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　……日は間もなく天頂。
　そろそろ正午の時刻になる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆転換
//あきゅん「演出：仮入れ、超適当」
	ClearWaitAll(2000, 1000);

	Wait(1000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg005_山中_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm24",0,1000,true);

	StR(1000, @0, @0,"cg/st/stふき_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660a]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs0890b05">
「こら、ふなー！　待ちなさーい！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

	StL(1000, @0, @0,"cg/st/stふな_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwふな_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660b]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs0900b06">
「こっちー！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,true);

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660c]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs0910b05">
「こっちじゃないの！
　じっちゃまが言ってたでしょっ、今お山は
危ないんだから、寄り道しないで帰らないと」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs0920b06">
「すごいおときこえた！」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs0930b05">
「それが危ないことかもしれないんだってば
……もー！　ねーやの言うこと聞きなさい！」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs0940b06">
「みっけー！」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs0950b05">
「見っけじゃなくて――
　……え？　なに？」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs0960b06">
「にんげん！
　おとこ！」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs0970b05">
「……え？　え？」


//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs0980b05">
「…………」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs0990b05">
「きゃー！
　あわわ、大変……どうしようどうしよう」


//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1000b05">
「あの、あのあの、大丈夫ですか!?」


{	NwC("cg/fw/nw雪車町.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1010a12">
「…………」


{	OnSE("se人体_動作_３回叩く",1000);
	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs1020b06">
「おーい。おーい。
　いきてるー？」

//◆ぺちぺち

{	FwC("cg/fw/fwふき_衝撃.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1030b05">
「ふ、ふなー！
　やめなさーい！」


{	NwC("cg/fw/nw雪車町.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1040a12">
「……っ……」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs1050b06">
「おきた」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1060b05">
「え？　え？
　あ、あのー、もしもし？」


{	NwC("cg/fw/nw雪車町.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1070a12">
「……、はっ……」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1080b05">
「ど、どうしよう？
　とりあえず川から出してあげた方がいいの
かな……」


{	OnSE("se人体_動作_３回叩く",1000);
	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs1090b06">
「おいちゃーん。
　どしたー？」

//◆ぺちぺち

{	FwC("cg/fw/fwふき_衝撃.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1100b05">
「ふなー！」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1110a12">
「……へ、へへ……」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs1120b06">
「おいちゃん？」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1130b05">
「あ、あの大丈夫ですか？
　どうしたんですか？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1140a12">
「へへ……。
　やぁ、なに……大したこっちゃありません
よ。気にしないでおくんなさいまし……」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1150b05">
「そ、そう言われても……
　相当えらいことになってるような」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1160a12">
「へ、へ……
　あたしは……しがないちんぴらの、小悪党
でしてねぇ」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1170b05">
「はぁ」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs1180b06">
「ちんぴら……
　わるもの？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1190a12">
「……へい。だもんで……
　善玉の野郎に退治されちまったんでさぁ」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs1200b06">
「ふーん」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1210a12">
「へへ……そりゃあねぇ……世の中、こうで
なきゃあ…………。
　悪党は退治される……でないと、<RUBY text="・・・・">どっちも</RUBY>、
張り合いってもんがないじゃありませんか」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1220a12">
「へ……へへっ…………」


{	NwC("cg/fw/nw雪車町.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1230a12">
「…………」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs1240b06">
「あ。ねたー」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1250b05">
「う、うーん……何だかよくわからないけど。
放ってはおけないよね……。
　よしっ。ふな、手伝って」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs1260b06">
「はぁーい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma02_020vs.nss"


