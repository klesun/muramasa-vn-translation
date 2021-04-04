//<continuation number="890">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_033.nss_MAIN
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

	$GameName = "mc02_034.nss";

}

scene mc02_033.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_032.nss"

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm35",0,1000,true);
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/ev/ev173_鍛造雷弾保管器.jpg");
	Delete("上背景");

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330010a00">
（…………）


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330020a03">
（つまらないことを考えてらっしゃる？）


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330030a00">
（……船の何処かに、<RUBY text="パラシュート">落下傘</RUBY>の備えくらいは
あると思われます。
　大尉殿、この場は自分にお任せ頂き――）


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330040a03">
（そんなものを探している暇があると思われ
ますの？）


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330050a00">
（しかし……）


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330060a03">
（しかしは無し）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330070a00">
（……されど大尉殿。
　此度の試みはそもそも、自分の進言が原因
です。始末はこの身一つで負うのが筋）


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330080a03">
（大和の将来の在り方について、思うところ
を聞かせてくださったのは景明さま。
　それを聞いて、こうすることを決めたのは
わたくし）


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330090a03">
（景明さまが言われるような筋なんてござい
ません）


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330100a00">
（……しかし）


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330110a03">
（しかしは禁止）


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330120a00">
（…………。
　それで……宜しいのですか）


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330130a03">
（良い悪いの話ではありませんの。
　わたくしは<RUBY text="・・">大鳥</RUBY>）


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330140a03">
（この国のためにすべきことをする。それは
わたくしの義務なのです。
　血が命ずる定めです）


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330150a00">
（……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　もはや返す文句はなかった。
　これ以上、翻心を求めるのは侮辱。

　尊ぼう。
　彼女が有する、血の誇りを。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330160a03">
（景明さまこそ。
　わたくしに付き合わなくてはならない義理
などなし、お逃げになっても結構ですのよ）


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330170a00">
（冗談は糸目だけにして頂きたい）


//◆ガーン・ショック
{	OnSE("se擬音_コミカル_ガーン01", 1000);
	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330180a03">
（――――）


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0330190a04">
（……プッ）


{	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330200a03">
（笑われた!!）


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330210a00">
（失礼。
　しかし大鳥大尉、自分の身命は既に貴方の
掌中へお預けしております）


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330220a00">
（大尉がこの空に散られるのならば、自分も
従うまでの事）


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330230a03">
（……景明さまには景明さまの使命がお有り
でしょうに。
　銀星号のことをお忘れになったの？）


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330240a00">
（全く、忘れておりません。
　ですので大尉、この場は是が非でも無事に
切り抜けて頂きたい）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330250a00">
（大尉殿が生き延びて下されば、自分もあれ
の追跡を続けられます）


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330260a03">
（…………）


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0330270a04">
（まっ、そういうことですかなァ。
　なるたけ死なないように頑張るといたしま
しょう、お嬢さま）


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330280a03">
（え、ええ。そうね）


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0330290a04">
「――という次第で内緒話タイムは終了いた
しました。
　こっそり背後に回ろうとなさるのはおやめ
になった方がよろしいですよ」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0330300e141">
「うっ……」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330310b03">
「そうか。
　あと三秒あれば、どうにかなったんだが」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330320a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆すたっ。上からキャノン出現

	OnSE("se人体_動作_跳躍01", 1000);
	WaitKey(550);
	OnSE("se人体_衝撃_転倒01", 1000);
	StL(1100, @0, @0,"cg/st/stキャノン_通常_制服.png");
	FadeStL(200,false);
	Move("@StL*", 150, @0, @30, Dxl2, true);
	Wait(200);
	Move("@StL*", 100, @0, @-30, Axl1, true);
	SoundPlay("@mbgm36", 0, 1000, true);

	SetNwC("cg/fw/nw竜騎兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0330330e141">
「ちゅ――中佐！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　その男は、<RUBY text="・・・">上から</RUBY>降ってきた。
　――天井から。

　いつの間に、どうやって、そんな所へ現れたのか。
　彼の味方さえ絶句している。全く関知の外だったの
だろう。

　平然と構えているのは永倉老だけだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1100, @0, @0,"cg/st/st香奈枝_通常_制服a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330340a03">
「――――」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330350b03">
「ご苦労さん。
　後は俺が引き受ける」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0330360e141">
「……はッ！」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330370b03">
「さぁて。
　……大鳥大尉に永倉軍属、そして湊斗景明
か」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330380a00">
「……」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330390b03">
「どうやってここへ？　なんて聞くだけ馬鹿
らしいな。
　どうして、なんてのは尚更か」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330400a03">
「あら。決め付けはよろしくありませんこと
よ、キャノン中佐。
　人生は意外性の連続ですもの♪」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　嘆息混じりの呟きに、軽口で応える大鳥大尉。
　……いや、軽口ではない。これは時間稼ぎの手管。

　相手を対話に引き込んで、時間を使わせる<RUBY text="はら">肚</RUBY>なのだ。
　
　しかし――後方に退いた素朴な将校とは違う。この
キャノン中佐に、そのやり方が通じるか……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330410b03">
「ふん？　まぁそうだな。
　じゃあ意外性に期待してみるか」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330420b03">
「お三方、ご来船の目的は？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330430a03">
「朝の散歩に。
　たまには空でというのも一興かと思い立ち
まして」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330440b03">
「それは健康的なことだ。
　しかし、大して面白くもなかったろう？」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330450a03">
「これから面白くする予定ではありませんの？
　中佐」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330460b03">
「どういうことかな」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330470a03">
「花火大会をなさるんでしょう？
　風の噂で耳にしましてよ」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330480b03">
「……<RUBY text="・・・">風の噂</RUBY>、か。
　ヘイジョージ、天国から見てるか？　お前
さんが江ノ島でくたばっちまって以来、うち
の課の情報管理はこんなザマだよ」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330490a00">
「……」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330500b03">
「花火ね。
　確かにでかいやつを一つ、打ち<RUBY text="・・・">落とす</RUBY>予定
だが」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330510b03">
「見たいなら事前に申し込んで欲しかったな。
　せっかくの客だ、こっちだって最高の席を
用意して差し上げたいが……急に来られちゃ
そうもいかない」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330520b03">
「客人に礼を欠くのは紳士の恥ってものだ」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330530a03">
「非礼はこちら。どうかお気になさらず。
　それにわたくしどもは、見物に参ったわけ
ではありませんし」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330540b03">
「ほう？
　他に何か目的が？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　驚くキャノン。
　あえて確認するまでもなく、その驚きは顔の表面に
おける筋肉運動であるに過ぎなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330550a03">
「ええ。
　実は、花火に水を掛けてしまおうかなーと
思いまして」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330560a03">
「このように」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　香奈枝嬢が片手で、いつでも爆弾を斬り割れる位置
にいる俺を示す。
　返答は、大仰なゼスチャーと大袈裟な悲鳴だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330570b03">
「おいおい。勘弁してくれ！
　そんなことをされたら、折角の花火が使え
なくなってしまうじゃないか！」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330580a03">
「そうしたいんだと申し上げたら？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330590b03">
「なんてこった。
　君は理解者だと信じていたんだがな……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330600a03">
「そうですね。少なくとも完全な反対はして
おりませんでした。
　けれど、考えが変わってしまいましたの」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330610b03">
「どんな風にだい？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330620a03">
「<RUBY text="ジョンブル・ゴー・ホーム">帰れ英国紳士</RUBY>☆」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330630b03">
「……<RUBY text="エクスクリュージョニズム">攘夷主義</RUBY>なんて流行らないぞ」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330640a03">
「来るだけなら歓迎もできますけれどね。
　土足で踏み込んだ挙句に表札まで書き換え
るつもりのお客さんには、笑顔を向けるのも
限度がございましてよ」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330650b03">
「しかしそれはあなた一人の決意ではないな、
<RUBY text="レディ">貴婦人</RUBY>？
　誰かに<RUBY text="そそのか">唆</RUBY>されたんだろう」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330660b03">
「そこの彼かな？
　君の笑顔を俺から奪った憎い奴は」


{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330670a03">
「ご明察。でも唆したなんて人聞きの悪い。
　わたくしと景明さまは真実の愛で結ばれて
おりますのよ！」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330680b03">
「騙される女はいつも同じことを言う」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0330690a04">
「そうですねぇ」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330700a00">
「確かに」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0330710e141">
「うん」


{	FwC("cg/fw/fw香奈枝_驚き.png");}

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330720a03">
「なんでこんなところでそろって同意!?」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330730b03">
「貴婦人、君の要望はでき得る限り聞き入れ
よう。俺は狭量な男ではないつもりだ。
　こちらへ戻ってくる気はないか？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330740a03">
「未練でしてよ、中佐。
　女の気持ちは移ろいはしても、過去に戻り
はしないものなのです」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330750a03">
「それが殿方との違い」


{	FwC("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330760b03">
「なんてことだ。
　もう取り返しはつかないのか！」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330770b03">
「許し難い男だな、湊斗景明。
　決闘を申し込むしかなさそうだ」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330780b03">
「さて、白手袋はどこへやったか……」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330790a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　金髪男性のおどけた挑発の視線を、俺は沈黙のまま
見詰め返した。
　言うべき――言葉がない。

　それは既に、香奈枝嬢も同様だった。
　永倉侍従も。

　全員、異常に気付いていた。
　
　――何故だ？

　<RUBY text="・・">何故</RUBY>？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330800b03">
「……チ。
　引っ張れるのはここまでか」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330810b03">
「だが、まあ――充分だろう。
　君らにここから脱出するだけの力があった
としても……今からではどうにもならない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm21", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　進駐軍中佐が肩をすくめる。
　
　何故。

　何故、彼はこちらに時間を<RUBY text="・・・・">稼がせる</RUBY>？
　何も……疑念を示さずに。

　爆弾を投下させたくないこちらにとって時間を稼ぐ
事が勝利条件ならば、爆弾を投下したい彼の勝利条件
は時間を切り詰める事。
　即刻に爆弾を取り戻さねばならない筈だ。

　だというのに。
　
　
　……この矛盾を解く鍵は、勝利条件の逆転にある。

　時間を稼ぐ必要があったのは、こちらではなかった。
　<RUBY text="・・・・">彼だった</RUBY>。そういう事だ。

　つまり。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330820a03">
「……さよ……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0330830a04">
「魚座は運勢昇り調子とあったのですが……
　は。そういえば山羊座は運気絶滅でござい
ました！」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0330840a04">
「まさか？」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330850a00">
「……自分です……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　現状理解も、既に遅い。
　時間は過ぎ去ってしまった。

　挽回の<RUBY text="チャンス">機会</RUBY>は――――無い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330860b03">
「君らはいい所に目をつけた。
　だが……ほんの少し、辿り着くのが遅かった
な」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　キャノン中佐が小さく笑う。
　それは傲慢な勝利宣言ではなかった。

　言葉通りの、敗者へ向ける慰めがそこにあった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330870b03">
「それは<RUBY text="ザ・ガジェット">鍛造雷弾</RUBY>の保管器だ。
　もう空っぽの」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330880b03">
「中身は既に船を出た」


{	FwC("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330890b03">
「君達は……
　<RUBY text="・・・・・・・・">間に合わなかった</RUBY>んだ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEX("黒幕１", 15000, "BLACK");
	Fade("黒幕１",1000,1000,null,true);
	DeleteStA(0, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　
　　　　　　　　　午前八時二分

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＴ−０９（爆装）
//◆鍛造雷弾投下
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 18990, "#000000");
	Delete("上背景");

	CreateWindow("絵窓", 19000, 0, 0, 1024, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateColorSPadd("絵窓/絵演色", 19010, "#FFFFFF");

	CreateTextureSP("絵背景", 100, -30, -2520, "cg/bg/bg201_旋回演出背景市街地_01.jpg");

	CreateSE("SE01","se日常_建物_牢獄扉開く01");
	MusicStart("SE01",0,1000,0,600,null,false);

	Wait(200);
	Zoom("絵窓", 800, 1000, 1000, DxlAuto, true);

	CreateSE("SE02","se戦闘_動作_空中待機_L");
	MusicStart("SE02",2000,1000,0,1000,null,true);

	Wait(600);

	Delete("絵色黒*");
	FadeDelete("絵窓/絵演色", 2000, true);
	Delete("絵窓*");

	CreatePlainSP("絵板写", 19900);
	Wait(10);
	Delete("絵効果*");
	Delete("絵背景*");
	Delete("絵色黒*");

	CloudZoomSet(1110);
	CloudZoomStart(400,800,800,300,400);
	CloudZoomVertex(0,0,-800,null,false);

	CreateTextureSP("絵背景", 200, Center, Middle, "cg/bg/resize/bg026_普陀楽山塞a_01m.jpg");

	CreateTextureSP("絵背景空", 100, Center, InBottom, "cg/bg/resize/bg204_横旋回背景_01tl.jpg");
	SetVertex("絵背景空", center, bottom);
	Zoom("絵背景空", 0, 1000, 1500, null, true);

	Move("絵背景", 3000, @0, 0, null, false);
	FadeDelete("絵板写", 300, true);

	Wait(700);

	CloudZoomVertex(3300,0,800,null,false);
	Move("絵背景空", 3000, @0, 4551, Dxl2, false);

	FadeDelete("絵背景", 1000, true);
	WaitAction("絵背景空", null);

	Move("絵背景空", 400000, @0, -8526, null, false);

	CreateTextureSP("絵演立絵", 1110, Center, Middle, "cg/st/3dユーウォーキー_騎航_通常.png");
	Request("絵演立絵", Smoothing);
	Rotate("絵演立絵", 0, @0, @0, @-70, null,true);
	Zoom("絵演立絵", 0, 750, 750, null, true);
	Shake("絵演立絵", 2160000, 2, 2, 0, 0, 1000, null, false);
	Move("絵演立絵", 0, @200, @-1100, null, true);

	FadeDelete("絵板写", 600, true);

	CreateSE("SE03","se戦闘_動作_空急降下01");
	MusicStart("SE03",1000,1000,0,1000,null,false);

	Move("絵演立絵", 4000, @-200, @1200, Dxl2, false);

	Wait(2000);

	Move("絵演立絵", 30000, @-80, @-300, Dxl2, false);

	Wait(2000);

	CreateSE("SE04","se戦闘_動作_空上昇01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	Wait(200);
	Move("絵演立絵", 400, @0, @1200, Axl3, false);

	Wait(2000);

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc02_034.nss"