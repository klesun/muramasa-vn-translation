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

scene mc02_032.nss_MAIN
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
	#ev173_鍛造雷弾保管器=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_033.nss";

}

scene mc02_032.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_031end.nss"

//◆黒
//◆※以下、縦書きボックス統一で。横書きを挟むと煩雑
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "BLACK");
	Delete("上背景");
	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320010a04">
「ございましたな」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320020a00">
「……これが……？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320030a03">
「ええ。
　横浜基地の中で一度、遠目に見ました……
おそらく間違いはないかと」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆鍛造雷弾（保管器）
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev173_鍛造雷弾保管器.jpg");
	SoundPlay("@mbgm35", 0, 1000, true);

	FadeDelete("黒幕１",1000,true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　仏寺の鐘に似た<RUBY text="フォルム">外形</RUBY>。
　<RUBY text="たけ">丈</RUBY>は俺の背を上回る。

　見る限りは無骨な、単なる金属の塊だ。
　しかし禍々しい。寒々しい。正体を聞かされている
故の先入観もあろうが……それにつけても厭わしい。

　これが、
　
　――――<RUBY text="フォージド・ボム">鍛造雷弾</RUBY>。


{
//◆どたどた。足音
	OnSE("se人体_足音_兵士集合01", 1000);
}


　不意に背後で、幾つもの靴底が床を乱打した。
　はっとして振り返る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆兵士＆竜騎兵

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	//CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg081_飛行船船室Bc_01.jpg");
	DrawDelete("黒幕１", 200, 1000, "slide_01_02_1", true);

	OnSE("se戦闘_銃器_複数構える02", 1000);
	Wait(100);
	StL(1000, @-40, @0,"cg/st/3dユーウォーキー_立ち_抜刀.png");
	StC(1100, @-120, @0,"cg/st/stＧＨＱ兵士_通常_制服.png");
	Request("@StC*", Smoothing);
	Rotate("@StC*", 0, @0, @180, @0, null,true);
	StR(1000, @0, @0,"cg/st/st香奈枝_射撃_制服.png");
	FadeStL(300,false);
	Move("@StC*", 200, @20, @0, Dxl1, false);
	Wait(50);
	Move("@StL*", 200, @20, @0, Dxl1, false);
	FadeStR(200,false);
	FadeStC(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　十人弱の、武装した進駐軍兵士……
　彼らを率いて頭に立ち、竜騎兵もいる。

　逃げ場はない。完全に不利な状形だ。
　敵勢がこのまま布陣し、押し込んでくれば、こちら
は火力の差で制圧される他にない。

　甲鉄で身を守れる俺はともかくとして、大鳥大尉と
永倉侍従が生き延びるのは難しかろう。
　
　だが、そんな帰結を黙って待つ大尉ではなかった。

　現れた彼らが何をするよりも早く、銃口を定める。
　爆弾の巨躯へ向けて。

　兵士達が静止する。
　……顔に戸惑いが見えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320040a03">
「そうそう。
　そのまま動かずにいてくださいな」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320050e141">
「……何の真似だ？　招かれざる大和人！」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320060a03">
「これが何か、キャノン中佐から聞いていら
っしゃらないの？」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320070e141">
「……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320080a03">
「あら……でもそうか。警備隊にこんな機密
まで教えておく必要はありませんものね。
　けれど、危険物だってことくらいはご存知
でしょう？」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320090e141">
「……それは聞いている」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320100a03">
「危険も危険。
　これは今から普陀楽城に落として、みんな
根こそぎ消し飛ばしてしまう予定の新型爆弾
です」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320110e141">
「何だと!?」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320120a03">
「だから動かないでくださいまし。
　どなたかが一歩でも動いたら――ずきゅん
といってぼっかーん」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320130a04">
「我々全員、空の塵でございます。
　ヒンデンブルク号以来の大惨事として歴史
には記されましょうな」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320140e141">
「出鱈目を……！」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320150a03">
「真っ赤な嘘と、断定できる根拠はお有り？」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320160e141">
「……く」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320170a04">
「これは純然たる忠告として申し上げますが、
キャノン中佐にお伺いを立てられてはいかが
でしょう」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320180e141">
「……その必要はない！
　それが本当に貴様らの言う通りの爆弾だと
しても、銃弾の一発程度で起爆するようには
見えんぞ！」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320190a03">
「あらほんとう。
　そういうわけですから、景明さま」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320200a00">
「は」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320210a03">
「いざとなったらこの爆弾、叩き斬ってくだ
さいませ」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320220a00">
「――御意」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320230e141">
「何ぃ!?」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320240a04">
「親切なお人ですなー。
　大丈夫だと思ったならすぐ行動してしまえ
ばよろしいものを、わざわざこちらにご助言
くださるとは」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320250a04">
「先程の忠告の返礼でございますかな。
　英国紳士の名に恥じぬ見事な振舞いと申せ
ましょうぞ」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320260e141">
「ぐ……ぐぬっ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　笑顔でからかう老女に、歯軋りする竜騎兵。
　……キャノン中佐は船の防備を任せる人材に、機転
ではなく愚直さを求めたらしい。それはそれで正しい
判断なのだろうが、今はこちらに利していた。

　この単純な気質の将校が相手なら、大鳥主従はあと
百年でも鼻先であしらっていられるに違いない。
　
　そう思いながらも、俺は楽観を自制した。

　この状況を見誤ってはならない。
　あくまでも追い詰められているのは我々。死の淵に
立っているのはこちら側なのだ。

　あとほんの少し早く、爆弾を発見できていたら――
それが悔やまれる。
　こう追い込まれた格好では、解体も投棄もしようが
ない。……決着をつけられない。手詰まりだ。

　想いは同じか、不敵な優越感を見せ付けて敵集団の
足を止めている大鳥主従もその実、侮りや油断は毛筋
ほどもなかった。
　表情ではなく手足の細かな所作で、それがわかる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300, true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320270a03">
（景明さま？）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320280a00">
（はい）


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320290a03">
（このまま時間を稼ぎましょう。
　そうですね……一〇分ばかり）


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320300a03">
（それから爆弾の安全な返還と引き換えに、
わたくしたちの解放を要求するということで
いかが？）


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320310a00">
（一〇分で宜しいのですか）


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320320a03">
（それだけあれば、船はどうしたって普陀楽
上空を行き過ぎてしまいますもの。
　落としたくても、もう落とせません）


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320330a00">
（しかし飛行艦は<RUBY text="ホバリング">空中停止</RUBY>が可能です。
　それに、行き過ぎてしまってもまた戻って
くれば済む話では――）


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320340a03">
（六波羅も馬鹿ではなくってよ、景明さま。
　普陀楽上空で進駐軍の飛行艦がいつまでも
うろうろしていたら流石に怪しむでしょうし）


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320350a03">
（そんなリスクを無視して作戦を強行できる
キャノン中佐とも思えません）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320360a00">
（成程。道理です）


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320370a04">
（では、一〇分間……）


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320380a03">
（ええ。
　一〇分、この形を引き伸ばせればわたくし
たちの勝ち）


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320390a03">
（……これが実は爆弾と見せかけてこの船を
守る<RUBY text="フィギュアヘッド">船首像</RUBY>・超神ウパニチャッダー様でした
とかいうミラクルアンラッキーなオチが待ち
構えていなければだけど）


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320400a04">
（大丈夫ですよ、お嬢さま。
　星占いによると今月の魚座生まれは幸運に
恵まれるそうでございますから）


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320410a03">
（ほんと？）


{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320420a04">
（は。但し、恋愛運は未来永劫最低を極める
とのこと）


{	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320430a03">
（なんでよっ!?）


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320440a00">
（彼らが制圧に踏み切った場合は如何なさい
ますか、大尉殿）


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320450a03">
（その時はさっきお願いした通りになさって
くださいな）


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320460a00">
（本当に斬れと？）


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320470a03">
（運が有れば爆発もせず、爆弾が機能を失う
だけで済みます）

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320480a00">
（…………）


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320490a04">
（魚座の運勢に賭けますか）


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320500a03">
（運つたなく、爆発させてしまっても――
　この際、構いませんでしょ）


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320510a03">
（正規の手順による爆発ではありませんから、
威力も相当に目減りするはずです。
　加えてここは高空）


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320520a03">
（おそらく、地上に被害は及びません）

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0,150);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　地上には。
　
　
　……飛行艦の中にいる者に、逃げ場はない。

　大鳥香奈枝とその従者も。
　ここは空の只中。二人を逃がし、命を助けることは
不可能だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

}

..//ジャンプ指定
//次ファイル　"mc02_033.nss"