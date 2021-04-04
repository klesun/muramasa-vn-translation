//<continuation number="1660">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_037.nss_MAIN
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
	#bg039_競技場客席a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_038.nss";

}

scene md02_037.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md02_036.nss"


//◆会場内
	PrintBG("上背景", 30000);
	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg039_競技場客席a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm25", 0, 1000, true);
	Delete("上背景");
	DrawDelete("黒幕１", 1000, 100, "blind_01_00_0", true);


	CreateTextureEX("むらまさ", 1000, @650, InBottom, "cg/st/st村正_通常_私服.png");
	Request("むらまさ", Smoothing);
	Fade("むらまさ", 300, 1000, null, false);

	StL(1000, -236, -913, "cg/st/resize/st茶々丸_通常_変装_b_l.png");
	SetVertex("@StL*", center, bottom);
	Zoom("@StL*", 0, 500, 500, null, true);
	Request("@StL*", Smoothing);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370010a01">
「それにしたって、唐突じゃない？
　今日になって急に」

{	FadeStL(300, false);
	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370020a07">
「あてにも都合があんのさ。
　……ほんとはもうしばらく伊豆でのんびり
してるつもりだったんだけど」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370030a07">
「そうもいかなくなってきたもんでね。
　遊べる間に、遊んでおくことにしたの」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370040a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　幕閣首脳、堀越公方の事である。
　政治的な事情だろう――考えてみればこんな人物が
地元で<RUBY text="くつろ">寛</RUBY>いでいる状況こそ奇妙なのだ。

　八幡宮事件の責任を取って謹慎中という話だったが、
それも鵜呑みにできたものではない。
　おそらく、全ては駆け引き。その駆け引きの成果が
顕れて、<RUBY text="かまくら">中央</RUBY>へ戻る必要が生じたのではなかろうか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370050a07">
「お」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370060a00">
「閣下？」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370070a07">
「あっちあっち。
　騎体が出てきたよ」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370080a07">
「ありゃ翔京かな？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370090a00">
「そうですね。
　見るからにアプティマ系列」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370100a00">
「……そのもの過ぎる気がしますが」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370110a07">
「工夫の跡が見えんね。
　まさか来年の国内戦をあれで行こうってん
じゃあるまいに」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370120a00">
「アプティマは名作ですが……
　流石に時代遅れかと」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370130a07">
「出し惜しみかな？
　ファンサービスってのがわかってねえ連中
だなぁ……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370140a01">
「あぷてまって、鎌倉の時にもいたやつ？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370150a00">
「そうだ」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370160a01">
「あれとは違うみたいだけど」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370170a07">
「どこが？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370180a01">
「合当理と一緒にくっついてる変なの」

{	FwC("cg/fw/fw茶々丸変装_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370190a07">
「<RUBY text="アフターバーナー">補助推進器</RUBY>？
　……あ、ほんとだ」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370200a00">
「<RUBY text="ミッドシップ">中心配置</RUBY>になっていますね。
　これは……騎体バランスに変化がありそう
です」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370210a07">
「地味に面白いことやってきたな。
　前言撤回」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370220a00">
「駆動方式もベルトかもしれません」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370230a07">
「有り得るね。
　そんな改造、前にもやってたし」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370240a00">
「やはりミッドシップとベルト駆動が今後の
主流になっていくのでしょうか」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370250a07">
「あてはチェーン駆動の方が好きだけどねー。
　伸びても詰めればいいしさ。ベルトだと、
伸びたらそれっきりやん？」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370260a01">
「……？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370270a00">
「テンション調整機構を実装した騎体も間も
なく現れると聞いていますが。
　しかし自分も、ベルトよりチェーンの方が
好みです」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370280a07">
「ロマンがわかるねお兄さん」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370290a00">
「はい」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370300a07">
「普通に考えて、ゴムより金属だよな」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370310a00">
「当然です」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370320a07">
「チェーンドライブ同盟結成」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370330a00">
「いえ。
　一番愛しているのはシャフト駆動です」

{	FwC("cg/fw/fw茶々丸変装_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370340a07">
「このタムラっ子がぁ!!」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370350a00">
「申し訳ありません」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370360a01">
「？　……？」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370370a07">
「て、言ってるそばからタムラ来たね。
　ありゃ何だろ？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370380a00">
「……新作のようです。
　全く見覚えがありません」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370390a07">
「んー……
　でもあれ、なんかに似てない？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370400a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370410a07">
「メインフレームが……
　あのアベンジに近いような」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370420a00">
「……言われてみれば」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370430a07">
「あの突飛な騎体構想を引き継いだのかよ。
　侮れねぇなータムラも」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370440a00">
「足回りは丸々変わっています」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370450a01">
「ねえ……」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370460a07">
「見た感じ、<RUBY text="やわ">柔</RUBY>そうな<RUBY text="サス">足</RUBY>だね」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370470a00">
「耐衝撃性は良さそうですが……
　あれではコーナーリングに問題が生じるの
では？」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370480a07">
「その辺を今日、テストする気なのかな」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370490a00">
「成程」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370500a01">
「……ねえ、御堂……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370510a00">
「むッ!?
　閣下、あちらを！」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370520a07">
「ん？　って、あれトミイやん。
　新規参入の賑やかしチームなんか別にどう
だって――」

{	FwC("cg/fw/fw茶々丸変装_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370530a07">
「何ィーーーッ!?
　ユーツ鋼ダブルデッキフレームにセンター
デフ、ベルト駆動だとぉーーー!?」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370540a00">
「しかもあれはトルクスプリッター！」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370550a07">
「完全装備かっ！
　あの会社のどこにそんな開発能力があった
んだ!?　あて、接着剤のいらない模型を作る
だけが能かと思ってたよ!!」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370560a00">
「これは完全に予想外です」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370570a01">
「…………おぉーい…………」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370580a00">
「騎体名は――〝<RUBY text="インフリンジャー">侵害者</RUBY>〟？
　今回の台風の目かもしれません」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370590a07">
「<RUBY text="レーサー">騎手</RUBY>次第でどこまで行くかわからんね。
　面白くなってきたぞー」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370600a00">
「はい、実に」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆茶々丸ズームアップ。
//◆合わせて村正はズームアウト。

	Move("@StL*", 300, -235, -670, null, false);
	Zoom("@StL*", 300, 750, 750, null, false);

	Move("むらまさ", 300, @50, @100, null, false);
	Zoom("むらまさ", 300, 800, 800, null, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370610a07">
「おっ。<RUBY text="ＡＹＭ">青焼金属</RUBY>の連中も来てる。
　なんか久々に見るけど」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370620a00">
「あれも新作でしょうか。
　一見、翔京アプティマに良く似ていますが
……」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370630a07">
「海外でテストしてたってやつじゃないかな」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆茶々丸ズームアップ＆村正ズームアウト
	Move("@StL*", 300, -234, -390, null, false);
	Zoom("@StL*", 300, 1000, 1000, null, false);
	Move("むらまさ", 300, @50, @0, null, false);
	Zoom("むらまさ", 300, 700, 700, null, false);

	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370640a07">
「あれ？
　そういやヨコタンはどーした？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370650a00">
「姿が見えませんね。
　不参加でしょうか」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370660a07">
「いやあ、来るって聞いてたよ？
　スーパーハウンドの最新型を投入するとか
何とか」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370670a00">
「最新型？
　それは真逆、以前に告知のあった――――」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370680a07">
「そうそう、あの――――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆茶々丸ズームアップ＆村正ズームアウト
//◆村正、超ミクロ化。そこだけライトアップ？
//◆ここ、へたれ絵とか使っても面白いかも。誰か描く？
	SetVolume("@mbgm*", 1000, 0, null);
	Move("@StL*", 300, -232, -80, null, false);
	Zoom("@StL*", 300, 1250, 1250, null, false);

	Move("むらまさ", 300, @50, @100, null, false);
	Zoom("むらまさ", 300, 500, 500, null, true);

//■ライトアップ　微妙 inc櫻井
	OnSE("se擬音_ギャグ_すっとび", 1000);
	CreateTextureEXmul("ライトアップ", 1000, @0, @0, "cg/data/beam_04_00_1.png");
	Fade("ライトアップ", 1500, 1000, null, true);
	WaitKey(2000);

//◆フェードアウト
	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1500, 1000, null, true);
	Delete("@OnBG*");
	Delete("でかちゃちゃ");
	Delete("むらまさ");
	Delete("ライトアップ");
	DeleteStA(0,true);
	OnBG(100, "bg039_競技場客席a_01.jpg");
	FadeBG(0, true);

	CreateSE("SE01L","se背景_ガヤ_サーキット02_L");
	MusicStart("SE01L",600,1000,0,1000,null,true);

	Wait(1000);

	FadeDelete("黒幕１",1500,true);

	Wait(1000);

	SoundPlay("@mbgm30", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　すっかり拗ねてサーキット場の裏に蜘蛛の巣を張り
始めた村正を<RUBY text="なだ">宥</RUBY>めすかし、どうにか機嫌を取って客席
へ連れて戻ると、レースは丁度開始したところだった。
　爆響を奏でて装甲騎手たちが駆け出している。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE01L*", 3000, 400, null);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370690a00">
「どうです？」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370700a07">
「翔京がいいスタート切ってんね。
　ほかはいまいち」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　気のなさそうな返事だった。

　足利茶々丸は、細めた眼差しをコースの上へ注いで
いる。
　しかし、見詰める――という程には熱中していない
様子であった。

　退屈している風ともまた違うのだが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_変装_b.png");
	StR(1001, @0, @0, "cg/st/st村正_通常_私服.png");

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370710a00">
「何か、ありましたか」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370720a07">
「んー？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370730a00">
「余り関心のないご様子」

{	FadeStL(300, false);
	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370740a07">
「や、そんなこともないけどね。
　楽しい勝負になってるし」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370750a07">
「ただ今日は、レースを観るより空気に浸る
つもりで来たから」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370760a00">
「空気に？」

{	FadeStR(300, false);
	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370770a01">
「……この？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　村正が妙な顔つきになるのも不思議はなかった。

　装甲競技の空気は独特である。
　無数の観衆、その歓声、熱気、コース上からは<RUBY text="バレル">翼筒</RUBY>
の響き――

　一言で言えば<RUBY text="やかま">喧</RUBY>しい。
　レースに熱中していればこそ騒音も不愉快ではなく
むしろ興奮を煽る媚薬となるが、レースを除けてその
空気だけ味わっても苛立たしいばかりではあるまいか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370780a07">
「静かでいい」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370790a00">
「…………」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370800a07">
「びみょーな表情になった」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370810a00">
「正直、コメントに困っています」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370820a01">
「貴方の冗談が面白くないのよ。将軍様」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370830a07">
「冗談は言ってない」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370840a01">
「じゃあ何？」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370850a07">
「詭弁」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370860a01">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370870a00">
「……詭弁？」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370880a07">
「静かって、どういうことかな」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370890a00">
「……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370900a01">
「音がしないことでしょ？」

{	FwC("cg/fw/fw茶々丸変装_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370910a07">
「だよな。
　でも、<RUBY text="・・・・・・・・・・">本当に何の音もしない</RUBY>なんてことが
有り得るか？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370920a01">
「それは――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　――無い、か。
　人間の可聴域かそうでないかの違いがあるだけで、
音は常に発生している。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370930a07">
「なら、静かってのはどういうことだろ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370940a07">
「余計な音が聴こえない……
　聞きたくもないことを聞かなくて済むのが
静かってことなんじゃない？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370950a00">
「……」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370960a07">
「だから、今はとても静か」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370970a07">
「レースの音とお兄さんの声しか聴こえない
もの」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370980a01">
「……私は？」

{	FwC("cg/fw/fw茶々丸変装_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370990a07">
「存在自体に無関心ですが」

//◆コミカル怒
{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371000a01">
「それはありがとうございます」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371010a00">
「成程。
　そういう意味で、静かと……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371020a01">
「御堂、そこは納得しなくていいのよ」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371030a07">
「そうそう。
　詭弁なんだからさ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　言って、足利茶々丸は笑った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371040a07">
「詭弁だよ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371050a00">
「……？」

{	FwC("cg/fw/fw茶々丸変装_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371060a07">
「……詭弁でしかねえ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//◆ウェイト
//◆レースＳＥがフェードアウト
	OnSE("se背景_ガヤ_歓声02", 1000);
	SetVolume("SE01L*", 1000, 0, null);

	WaitKey(1000);

	SetVolume("@OnSE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　予選が終了した。
　鮮やかなカラーリングの<RUBY text="レーサークルス">競技用劒冑</RUBY>がピットへ帰還
してゆく。

　次のレースが始まるまで、暫時の間があるようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_変装_b.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371070a07">
「昨日の話だけどさ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371080a00">
「昨日の？」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371090a07">
「英雄と魔王のおはなし」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371100a00">
「……は」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371110a07">
「どう？
　英雄、やってみる気になった？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　横目でこちらを窺いながら、足利茶々丸が問う。
　俺は二四時間前の一幕を思い出し、陰鬱に吐息した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371120a00">
「既にやってみました」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371130a07">
「？　やった？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371140a00">
「はい。昨日、閣下のお話を伺った後。
　光に会い、〝無我〟を以て挑んでみました
が」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　あの時、俺が無我の遥境の一端に触れたことは確か
だと思う。
　認識観の拡大が自覚されていた――ほんの一刹那に
しても。

　しかし、その結果たるや。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371150a00">
「かえって、これまで以上に光の<RUBY text="タイ">態</RUBY>を見失う
始末。
　至近距離に立っているというわかり切った
事実さえ疑い始めるほど……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371160a00">
「我ながら、無様を晒しました」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371170a07">
「……ふぅん？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371180a00">
「無我が英雄の往路であるなら、やはり自分
には相応しくないのでしょう。
　何やら、無我という世界に拒絶されたよう
な心地がしています」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371190a00">
「それとも単に、全く違うものを無我の観と
思い込んでいるのか……。
　いずれにしろ、諦めるほかないようです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　結論して、胸中に一種の安堵があった事は否めない。
　堀越公方には呆れられるか――と俺は思ったのだが、
実際の彼女の反応は違っていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371200a07">
「そうかな？
　もしかしたら、逆かもしれないよ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371210a00">
「……逆、とは？」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371220a07">
「お兄さんは、御姫の姿を見失ったわけじゃ
なくて……
　<RUBY text="・・・・・・・・・・">ようやく実像に触れた</RUBY>のかも」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371230a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　実像？
　あの、有とも無ともつかぬぼやけた<RUBY text="イメージ">認識</RUBY>が？

　……意味がわからない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1001, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371240a01">
「意味不明よ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　それまで黙っていた村正が代わりに言った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371250a07">
「そうか？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371260a01">
「……余計な口出しはすまいと思ってたけど。
　いい加減なことを吹き込んで御堂を惑わす
のはやめて頂戴」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371270a07">
「人にお願いする時は、頭を下げてプリーズ
って言うのが最近の流行なんだぞ」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371280a01">
「あらそう。それは教えてくれてどうも。
　じゃあついでにもう一つ教えて」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371290a01">
「鼻持ちならない小娘に言うことを聞かせる
時はどうしたらいいの？」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371300a07">
「はてさて。そんなやついましたっけ。
　愛らしい花のようなお嬢さんなら心当たり
もあるんだが」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371310a01">
「別に今ここで使うとは言ってないでしょう。
　使うけど」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371320a00">
「村正」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371330a01">
「……御堂もっ。
　人の話を聞くのはいいことよ。でも、相手
は選ぶべきだと思う」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371340a01">
「この中将様が銀星号の仲間だって事を忘れ
ないで」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371350a00">
「……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371360a01">
「――ごめん。
　やっぱり、今のなし」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371370a01">
「本当に余計な口出しだった」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371380a00">
「いや」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　村正の、もどかしい内心は良くわかった。
　堀越公方が俺の味方である筈はない。だというのに
彼女の話でいちいち悩んだり迷ったりする俺を見れば、
不安になるのも当然だろう。

　俺とても、そのおかしさに無自覚ではなかった。
　ただ……足利茶々丸の話は奇妙に聞き逃せない何か
が常にあって、どうにも耳に残るのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371390a07">
「うん。余計ってことはないな。
　捻りも工夫もないけど、まぁ妥当な忠告だ」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371400a01">
「……」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371410a07">
「でも間違いはいただけないね。
　あては御姫の味方じゃないって、言ったろ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371420a01">
「……それも込みで、全く信用できないって
思ってるのよ。私は」

{	FwC("cg/fw/fw茶々丸変装_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371430a07">
「あてのバストサイズが九五センチだっての
と同じくらい確かな事実なのに……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371440a01">
「それ、絶対に嘘でしょっ!?」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371450a00">
「……敵味方のことはともかく。
　閣下、先程の御意見は村正のみならず自分
にも意味不明です」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371460a00">
「光が実は蜃気楼か何かだというなら意味も
通りますが」

{	FwC("cg/fw/fw茶々丸変装_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371470a07">
「蜃気楼」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　堀越公方は味わうように、その一語を反復した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371480a07">
「蜃気楼ねぇ……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371490a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　少女は俺を見ていない。
　次のレースに備えるため会場スタッフが走り回る、
サーキットの方へ顔を向けている。

　それでもわかった。

　足利茶々丸は笑っている。
　皮肉にではなく。嘲るようでもなく。

　ただ、<RUBY text="・・・・・・・">出来の良い諧謔</RUBY>を聞いたおかしさを。
　……喉の奥でくつくつと、笑っている。

　俺は問い質さねばならなかった。
　何を知っているのか、と。

　今問えば、彼女は真実を口にするかもしれない。
　
　どうしてか、そう思う。

　問うべきなのだ。<k>
　
　……どうしてか、それができない。

　どうして？
　いや、疑問など無い。

　真実を得られるとわかっていて、問いを口にしない
のは、<RUBY text="・・・・・・・・・・">真実が欲しくないから</RUBY>に決まっている。

　俺は直観しているのだ。
　それを聞き、それを知れば、<RUBY text="おわり">最後</RUBY>なのだと。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_変装_b.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371500a07">
「お兄さんはやっぱり凄い。
　やっぱり……英雄の素質がある」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371510a07">
「無我の修行、続けるべきだよ。
　お兄さんは必ず英雄になれる」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371520a07">
「<RUBY text="おひめ">魔王</RUBY>に勝てる」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371530a00">
「……貴方は……」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371540a07">
「くふっ……ふふふ……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371550a00">
「……」

{	FwC("cg/fw/fw茶々丸変装_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371560a07">
「いいところなのにね。
　邪魔が入っちゃった」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371570a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　邪魔？

　サーキットを見る。
　……別に劇的な変化はない。レースの再開にはまだ
時間が掛かりそうだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw茶々丸変装_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371580a07">
「別口の英雄どもが来やがった」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371590a00">
「閣下？」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371600a07">
「お兄さんにはわからない？
　ちょっと遠いか……」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371610a07">
「じゃあ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　不意に、少女は手を差し伸べた。
　俺の胸に押し当てる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1001, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371620a01">
「？　何してるの」

{	FwC("cg/fw/fw茶々丸変装_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371630a07">
「おめーは黙ってな。
　そこのハエでも捕まえて食ってろ」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371640a01">
「貴方ね――」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371650a00">
「村正、少し待て」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371660a01">
「御堂？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　……何だ、これは。

　少しずつ来る、この――<k>
　
　
　音？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


//■暫定ホワイトアウト　inc櫻井
	CreateColorEX("ホワイトアウト１", 5000, "WHITE");
	Fade("ホワイトアウト１",3000, 3000, null, true);


}

..//ジャンプ指定
//次ファイル　"md02_038.nss"