//<continuation number="1090">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_010.nss_MAIN
{

	CP_AllSet("村正");

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
	#bg035_鎌倉サーキット俯瞰a_01=true;
	#bg039_競技場客席a_01=true;

	#ev113_サーキット貴賓席_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_ホットボルト=true;

	CP_AllDelete();

	$PreGameName = $GameName;
	$GameName = "ma03_011.nss";

}

scene ma03_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_009.nss"


//◆鎌倉サーキット
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm22",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　<RUBY text="アーマーレース">装甲競技</RUBY>の端緒は現在からおよそ三十年前まで遡る。
　発祥は<RUBY text="ブリテン">大英連邦</RUBY>。競馬や幾つかのモータースポーツ
がそうであるように、この競技もまた女王の国の貴族
たちの遊戯から始まった。

　かつては何処の国にあっても劔冑は神聖性を帯びて
見られ、国家の帰趨を占う戦争以外の場で用いるなど
論外であった。
　が、新式（量産型）劔冑の誕生がその観念を変える。

　この世で最も速い存在である武者による競走という
発想は大喝采をもって迎えられ、紳士たちはどうして
こんな素晴らしい競技をもっと早く考え付かなかった
のだろうと首を傾げつつ、情熱に従って形式を整えた。

　装甲競技はかくして誕生する。
　英国本土を原点に、ドーバー海峡を越えるまで一年、
欧州全土へ普及して統合団体が結成されたのはその約
三年後。

　大和における歴史は二十年ほど前に幕を開け、忽ち
熱狂的な支持を受けて大いに隆盛する兆しを見せたが、
折しも世界は戦雲の最中。大戦への突入と共に軍事へ
寄与しない事業の多くは強制縮小の憂き目に遭う。

　装甲競技もその例から漏れず、戦時中は自粛を余儀
なくされ、事実上潰滅の状態にあった。
　終戦後、時が経過すると共に復興を望む声は高まり、
権力層の中にも同調する者があって、団体が再興……

　昨年初頭にはこの鎌倉サーキット場が落成。
　今年――興隆四一年に至って遂に、国内統一規格の
大和ＧＰ開催が決定した。

　その第一回が、今……<k>
　
　始まっていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆予備予選。適当に演出入れるか。
//◆観客席

	OnBG(100,"bg039_競技場客席a_01.jpg");

	CreateSE("SEL01","se背景_ガヤ_サーキット02_L");
	MusicStart("SEL01",500,1000,0,1000,null,true);
	CreateSE("SEL02","se背景_ガヤ_サーキット01_L");
	MusicStart("SEL02",500,800,0,1000,null,true);

	FadeBG(1000,true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100010a02">
「……このどこかに銀星号がいるんですか？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100020a00">
「それはまず無いだろう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　客席から伸び上がるようにして辺りを見回す一条の
声に応じつつ、襟元を軽くくつろげる。
　会場の熱気は相当なものだった。群れをなす人々、
そしてその興奮が、秋風を払って夏を呼び戻している。

　今、コース上を疾走する騎影の中に一流と目される
選手の姿はない。彼らの登場は明日以降になる。
　にも拘わらずこの盛況。

　装甲競技の復興がいかに望まれていたか、草レース
に毛を生やした程度の大会しか催されない昨日までの
状況がどれほど不満を集めていたか。
　手に取るような確かさで窺い知れた。

　この種の競技の愛好者が有する熱意は信仰にも近い
ものがある。関心のない人間には異常と映るほど。
　しかし、選手へエールを送る人々の表情に不健全な
何かはなかった。純粋な歓喜だけがあった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100030a00">
「人々は皆、興奮はしているが正常だ。精神
汚染を受けている様子はない。
　それに銀星号の劔冑は真打。サーキット場
に潜むのは困難だ」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100040a02">
「どうしてです？」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100050a03">
「あら。
　一条さんはサーキットは初めて？」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100060a02">
「ん？　まあ。
　あんまり興味もなかったし。こうして見る
と、結構面白そうだけど」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100070a03">
「装甲競技に使われるのは新式、数打の劔冑
と決まっていますの。
　真打がサーキットを走るなんて、まず有り
得ませんのよ」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100080a03">
「勝てませんから」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100090a02">
「なんでだよ。
　劔冑は数打より真打の方が上なんだろ？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100100a03">
「戦闘能力ならそうです。
　でも、これは速さを争う装甲競技」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100110a03">
「新式には<RUBY text="レーサークルス">競技用劔冑</RUBY>という、レース専用の
規格がありますけれど……
　旧式にそんなものがあるとお思い？」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100120a02">
「……そりゃそうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　そういう事だった。
　こと装甲競技においては、数打は真打に優越する。

　だからといって出場を禁止されているわけではなく、
実際、真打で参加する<RUBY text="すきもの">数奇者</RUBY>の武者が稀にいるが……
　良い成績を挙げた例は皆無だ。

　サーキット場において真打は絶対的少数派であり、
参加していれば目立たぬ筈がなかった。増して白銀の
銀星号。
　<RUBY text="レーサー">装甲騎手</RUBY>の中に紛れ込めるとは到底思えない。

　……<RUBY text="もっと">尤</RUBY>も。
　性能面の問題に限っていえば、おそらく銀星号なら
充分に競技参加資格を得られるのだろうが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100130a02">
「じゃあ、湊斗さん。ここにいるのは……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100140a00">
「必然、〝卵〟を植えられた寄生体となる。
　村正の感覚によれば<RUBY text="・・・・・・・・・・">匂いが揺れ動いている</RUBY>
らしい」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100150a00">
「これは〝卵〟の場合、孵化が遠くない事を
意味する。あまり余裕は無さそうだ」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100160a02">
「村正？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100170a00">
「俺の劔冑だ」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100180a03">
「そういえば初めて聞きました。
　随分と不吉っぽい名前ですのね？」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100190a04">
「きっと鍛冶師が<RUBY text="ピカレスクマニア">悪漢嗜好</RUBY>だったのでござい
ましょう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　ただ単に<RUBY text="オリジナル">真物</RUBY>なだけです。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100200a03">
「その感覚は確かなんですの？
　銀星号の力の気配がここにあるという」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100210a00">
「過去の経験からみて信用に値します。
　このサーキット場、あるいは周辺のどこか
に寄生体がいることは間違いないでしょう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　<RUBY text="ローラー">虱潰し</RUBY>作戦でどうにかできる範囲でないのが困り物
ではあるが。
　いつもの事だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100220a04">
「もう少し特定はできませんので？
　この辺りは気配が強い、というような」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100230a00">
「どうも<RUBY text="・・・・・・">そういうもの</RUBY>ではないらしく。
　ごく漠然とした位置推定以上の事は不可能
なようです」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100240a02">
「……それだと見つけようがないんじゃない
ですか？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100250a00">
「いや。寄生体は、村正が目撃すればそれと
看破することが可能だ。
　だから今村正はコースを俯瞰できる場所に
いる。これで参加騎は全てチェックできる」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100260a00">
「だがそれだけでは万全ではない。レースに
使われない<RUBY text="Ｔクルス">練習騎</RUBY>という可能性もある。
　そちらは肉眼で調べるしかないだろう」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100270a02">
「なるほど……
　わかりましたっ」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100280a03">
「とりあえずはどうしましょう？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100290a00">
「そうですね。
　ひとまずは、様子を」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　方針が定まった以上、今すぐにでもピットを覗いて
コースに出ていない騎体を調べて回りたいところだが、
それは無理な話だ。
　関係者以外は立ち入り禁止と決まっている。

　警察の名もここでは通用しない。
　警備員は旭の紋章など見ても会釈さえするかどうか。

　この大和ＧＰ、戦後初の国内統一選手権の主催者は
<RUBY text="・・・">六波羅</RUBY>なのだ。
　彼らの息が掛かった場所で無理を通せる筈もない。

　何か手立てを考えなくてはならないが――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100300a02">
「ところで、今は何やってるんだ？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100310a03">
「予備予選です。
　あまり実績のない、言ってしまえば二流の
選手たちを<RUBY text="・・・">ふるい</RUBY>にかけているところ」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100320a04">
「今日の予備予選で上位の成績を収めた選手
が、明日シード選手たちと共に本予選を飛ぶ
のでございますよ」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100330a02">
「成績ってのはどうやって出すのさ。
　なんか、みんなてんで勝手に飛んだり休ん
だりしてるようにしか見えねーけど」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100340a03">
「予選は周回タイムを競いますの。
　位置についてよーいどん……で一斉に走り
出すのは決勝レースだけなんです」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100350a02">
「へぇ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　気の無さそうな声の割りに、一条の視線はコース上
へ吸い寄せられていた。
　性格的に、この種の競技を嫌うところは持たないの
だろう。そういう印象を受ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100360a04">
「しかし予備予選にしては良い<RUBY text="はしり">騎航</RUBY>を見せる
者もおりますねぇ。
　ことに今ヘアピンを曲がった選手などは、
なかなか」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100370a00">
「あれは……横森鍛造の<RUBY text="ハウンド">猟犬</RUBY>ですね。
　ヨコタンワークスはシード登録されている
筈ですから、セミワークスでしょうか」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100380a03">
「その割りには大胆な改造を施してしまって
いるような。サスは別物の移植ですし。
　どこぞのお大尽のプライベートチームかも
しれませんね？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100390a02">
「……あっ、抜かれた。
　すげぇな今の。右に行くと見せかけて、左
から一気に押し込んだのか？　火花が散って
たぞ」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100400a04">
「おお、あれは<RUBY text="ポリス">警察</RUBY>チームではございません
か。ようやく調子が出てきた様子」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100410a00">
「タムラの<RUBY text="ホットボルト">火箭</RUBY>ですか……
　旧式騎をよく使っています」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100420a03">
「あれは騎手とメカニックが優秀であれば今
でも第一線で戦える騎体ではなくて？
　重量の大きさは厄介ですけれど……」

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100430a02">
「強そうじゃねぇか」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100440a04">
「さようでございますな。加速性に疑問符は
つくものの、騎体がぶつかり合う乱戦に強い
のは事実。
　レースが荒れれば有利になりましょう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("フラッシュ白", 15000, "Black");
	Fade("フラッシュ白",500,1000,null,true);

	#av_ホットボルト=true;
	CreateColorSP("黒幕", 1000, "Black");
	CreateTextureSP("絵背景100", 1500, 0, -364, "cg/st/resize/3dホットボルト_立ち_通常l.png");
	Request("絵背景100", Smoothing);

	Move("絵背景100", 5000, -261, -364, AxlDxl, false);

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　装甲競技において他騎への攻撃はもちろん反則行為
だが、体当たりは許容範囲とされている。
　重装甲（比較的、だが）のタムラ・ホットボルトが
旧式でありながら未だ生き残っていられる所以だ。

　とはいえ所詮、過去の騎体。
　直線の伸びを欠く上、旋回性能でも最新騎に大きく
劣るときては、騎手はじめスタッフ陣の奮闘で上位へ
食い込めはしても勝つまでには至らない。

　……などと考えているそばから、ストレートで一度
は抜いたハウンドにコーナーであっさり抜き返されて
いる。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateColorEX("フラッシュ白", 15000, "Black");
	Fade("フラッシュ白",500,1000,null,true);

	Delete("黒幕");
	Delete("絵背景100");

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100450a03">
「相変わらず、嫌がらせかと思うほど曲がら
ない騎体ですね」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100460a00">
「あのアンダーステアは病気です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　ポリスチームも願わくば買い換えたいところだろう。
　無論、今の警察局でそんな予算が下りる筈もなし。
チームの維持が許されているだけでも奇跡なのだ。

　眼下の予備予選で、目立った活躍を見せているのは
その二チームだけのようだった。
　意識を別の方向へ向ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100470a00">
（村正。どうだ？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0100480a01">
《異常なし。
　今日の競技に参加している劔冑は全部見た
と思うけど、どれも違う》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0100490a01">
《みんなただの劔冑<RUBY text="・・・">もどき</RUBY>よ》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100500a00">
（そうか）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　村正は数打劔冑、特に競技用劔冑に対してそういう
表現を用いることがある。
　古来の劔冑鍛冶として思うところがあるのだろうか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100510a00">
（客席は確認したか）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0100520a01">
《まだよ……必要あるの？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100530a00">
（一応、念の為だ。
　視覚情報を転送しろ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0100540a01">
《諒解》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆モニター展開
//◆サーキット俯瞰。右見て左見て

	SetVolume("SEL01", 600, 300, null);
	SetVolume("SEL02", 600, 200, null);

	CreateColorEX("黒幕", 10000, "Black");
	Fade("黒幕",0,1000,null,true);
	DrawTransition("黒幕", 500, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	CreateTextureSP("絵背景100", 6000, 0, 0, "cg/bg/resize/bg035_鎌倉サーキット俯瞰a_01_l.jpg");
	CreateColorSPmul("絵色100", 7000, "RED");
	Fade("絵色100", 0, 400, null, true);



	Cockpit_AllFadeMura(100,720,0);

	DrawTransition("黒幕", 500, 1000, 0, 100, null, "cg/data/slide_05_00_0.png", true);
	Delete("黒幕");

	BezierMove("絵背景100", 5000, (@0,@0){@-100,@-100}{@-200,@-300}(@-300,@-400){@-300,@-350}{@-350,@-325}(@-300,@-300), null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　…………？

　あれは――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆少し視界移動。停止
	Move("絵背景100", 500, @+100, @+100, Dxl1, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　周囲から妙に浮いた一角がある。
　あれは……貴賓席か。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＧ：貴賓席。茶々丸と貴婦人。
//◆貴婦人の顔は目深にかぶった帽子、あるいは立てかけられた日傘で見えない

	SetVolume("SEL01", 500, 0, null);
	SetVolume("SEL02", 500, 0, null);

	PrintGO("上背景", 30000);

	CP_AllDelete();

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	CreateTextureEX("絵ＥＶ50", 5000, Center, Middle, "cg/ev/ev113_サーキット貴賓席_a.jpg");
	Fade("絵ＥＶ50", 0, 1000, null, true);

	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　一般観客席と同様に老若男女様々だが、一概に品の
良い身なりをしている。
　スポンサーや招待客、その関係者らに違いない。

　武者の姿も見える。
　だがその劔冑は今サーキットを駆け抜けているもの
とは全く違う。より重厚、より無骨。

　軍制式の竜騎兵だ。
　貴賓席の護衛だろう。<RUBY text="テロリスト">凶徒</RUBY>、そしてレースには付き
物の事故に備えて配されているのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100550a00">
（村正？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0100560a01">
《<RUBY text="シロ">異常なし</RUBY>》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100570a00">
（承知）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　……あの中に<RUBY text="クロ">標的</RUBY>がいれば、ある意味、話はとても
簡単だったのだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100580a03">
「…………？」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100590a02">
「どした？」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100600a03">
「あ、いえ……
　少し日にあてられたかしら」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆客席に戻り
	FadeDelete("絵ＥＶ50", 1000, true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100610a00">
「大丈夫ですか。
　何でしたら、日陰に」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100620a03">
「いえいえ、ご心配なく。
　ちょっとよろめいただけですから」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100630a00">
「しかし、日射病に罹ってから悔やんでも後
の祭り。
　大事をとられた方が良いと思います」

{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100640a03">
「あん、景明さまったら。
　そんな優しいお言葉で、わたくしを物陰に
連れ込もうとなさるなんてっ」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100650a03">
「いったい、何をなさるおつもりですの？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100660a00">
「頭を冷されてはどうかと思ったまでですが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　別の意味込みで。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100670a02">
「わかんねぇやつだな。
　年増は無理すんなって言ってんだよ、湊斗
さんは！」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100680a03">
「あらま、いちいち引っ掛かることを言わず
にはいられない反抗期真っ盛りのお嬢さん。
　でもわたくしはめげません。これも本当の
家族になるための試練ですもの」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100690a03">
「ねぇ、あなた？
　わたくし、綾弥ちゃんがあなたの連れ子だ
なんてことちっとも気にしませんから！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100700a00">
「はぁ」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100710a02">
「勝手な設定作ってんじゃねぇよ!!
　あと、苗字にちゃん付けするなっ!!」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100720a04">
「暑苦しい集団でございますねぇ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　本当に。

　周囲の視線から逃避がてら、時計台に目を向ける。
　予備予選の終了時刻が近付いていた。

　どうするべきか。
　一観客の身では調査にも限度がある。ごく低い水準
で。十全に近い調査を行うには、この競技場における
行動の自由を確保しなくてはならない。

　ここで自由に動ける人間というとまず大会役員……
次いでスポンサー、参加チームの順だろうか。
　そのいずれかに紛れ込むことが望ましい。

　さて。
　そうなると、手は――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
	ClearWaitAll(1000, 1000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm21",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310a]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100730a03">
「……さよ」

{
	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,false);
	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100740a04">
「は」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100750a03">
「あちらをご覧なさいな」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100760a04">
「貴賓席でございますか？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100770a03">
「その……右端のほう。
　堀越の姫君がいらっしゃいます」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100780a04">
「なんと。茶々丸さまですか!?
　おやまあ、お懐かしい……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100790a03">
「先刻のセレモニーで紹介されていなかった
ところからして、お忍びなのでしょうねぇ」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100800a04">
「噂に違わぬ、型破りな御方のようで」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100810a03">
「隣に……あれはどなたかしら。
　御婦人がいらっしゃるけど」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100820a04">
「おそらく<RUBY text="ゆうつづのつぼね">長庚局</RUBY>なる方でございましょう。
茶々丸さまの寵愛並々ならぬ女官とか。
　女官とは仮の姿、あれは卑賤の出とされる
茶々丸さまの母なのだと云う者もおりますね」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100830a03">
「……母親。
　もしそうなら、あれは蝦夷の方――とっ、
これは禁句でしたね」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100840a04">
「ま、公然の秘密というものでございますが。
　堀越公方殿が<RUBY text="ハーフドワーフ">半蝦夷</RUBY>であることは」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100850a03">
「それにしても、少しばかり不都合ですね。
　顔を会わせないように気をつけた方がいい
のかしら？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100860a04">
「それは、さほど気にせずとも平気でござい
ましょう。お嬢さまとかの姫君は、あちらが
ご幼少のみぎりにほんの数度お会いしたきり
のはず」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100870a04">
「ご記憶ではございますまい」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100880a03">
「そうね。
　ならばったり出会って気まずい空気に……
なんてことにもならなくて済むかしら」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100890a04">
「あの御方とはどう接したものか、いささか
迷ってしまいますからねぇ。
　獅子吼殿なら話は簡単なのですが」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100900a03">
「<RUBY text="・・・・">他の方々</RUBY>は出方が読めません。
　友好的ということはまず無いでしょうけど」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100910a04">
「差し当たって、こちらからわざわざ喧嘩を
売りに行く必要はございますまい」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100920a03">
「そうね……。
　あまり気にしないことにしておきましょう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1000, 1000);

//◆貴賓席

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");

	CreateTextureEX("絵ＥＶ50", 100, Center, Middle, "cg/ev/ev113_サーキット貴賓席_a.jpg");
	Fade("絵ＥＶ50", 0, 1000, null, true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0100930a07">
「…………？」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0100940a07">
（あれ？　この<RUBY text="しんごう">音声</RUBY>……）

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0100950a07">
（どこかで…………）

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0100960a07">
「おい。それよこせ。
　そのオペラグラス」

{	NwC("cg/fw/nw従者.png");}
//【ｅｔｃ／従者】
<voice name="ｅｔｃ／従者" class="その他男声" src="voice/ma03/0100970e116">
「はっ」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0100980a07">
「…………」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0100990a07">
（はーん？）

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0101000a07">
（大鳥姉妹の姉がいますよ？
　なんでやねん）

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0101010a07">
（あー……
　獅子吼の機嫌を悪く<RUBY text="・・">した</RUBY>のはあれか？）

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0101020a07">
（ありえる話だーねー……）

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0101030a07">
（……んー？）

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0101040a07">
（隣にいるのは……）

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0101050a07">
（…………あれま）

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0101060a07">
「にゃふ」

{	FwC("cg/fw/fw長庚局_通常.png");}
//【長庚局】
<voice name="長庚局" class="長庚局" src="voice/ma03/0101070b44">
「……？」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0101080a07">
「<RUBY text="おひめ">御姫</RUBY>、御姫っ。
　ちょっと面白いことになりそうな感じ」

{	FwC("cg/fw/fw長庚局_通常.png");}
//【長庚局】
<voice name="長庚局" class="長庚局" src="voice/ma03/0101090b44">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_011.nss"