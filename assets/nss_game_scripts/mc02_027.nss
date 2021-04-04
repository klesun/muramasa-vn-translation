//<continuation number="860">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_027.nss_MAIN
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

	$GameName = "mc02_028vs.nss";

}

scene mc02_027.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_026.nss"

	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateColorEXadd("白幕１", 15000, "WHITE");
	CreateTextureEXadd("移動", 16000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("移動",0,1000,null,true);
	Fade("白幕１",0,300,null,true);
	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg001_空b_01.jpg");
	Zoom("絵背景20", 0, 1050, 1050, null, true);
	Zoom("絵背景20", 50000, 1500, 1500, null, false);
	Shake("絵背景20", 50000, 3, 3, 0, 0, 1000, Dxl3, false);
	Delete("上背景");

	OnSE("se戦闘_動作_空上昇01", 1000);
	DrawDelete("黒幕１", 200, 1000, "zoom_01_00_1", true);
	FadeDelete("移動", 500, false);
	FadeDelete("白幕１", 1000, true);
	CreateSE("トンデマス", "se戦闘_動作_空走行02_L");
	MusicStart("トンデマス",0,1000,0,1500,Dxl3,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一丈四方の密室を脱し、<RUBY text="そら">虚空</RUBY>へ抜ける。
　閉塞から無限への急激な転移。

　解放を肌に味わい、置き捨てた牢獄を眼下にして、
合当理に給熱――速力を引き上げる。
　基地警備の竜騎兵がどれほど勤勉な<RUBY text="たち">質</RUBY>であっても、
<RUBY text="・・">内側</RUBY>からの強襲突破に対する反応は遅れる筈だった。

　無用の足踏みをしなければ振り切れるだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("トンデマス", 1500, 100, null);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/0270010a01">
《……それで御堂。
　結局、何がどうなったの？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270020a00">
「ああ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　俺は要点を<RUBY text="か">掻</RUBY>い<RUBY text="つま">摘</RUBY>んで劒冑に伝達した。
　これから為すべき事の確認も兼ね、俺自身、記憶を
反芻しながら。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	EfRecoIn1(18000,600);

	CreateTextureSP("絵背景30", 1000, Center, Middle, "cg/bg/bg028_横浜ＧＨＱ基地_03.jpg");
	Delete("絵背景20");

	StL(1000,@0,@0,"cg/st/st香奈枝_通常_制服c.png");
	StR(1000,@0,@ 0,"cg/st/st景明_通常_私服.png");
	FadeStR(0,false);
	FadeStL(0,true);

	EfRecoIn2(300);

	SoundPlay("@mbgm21",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270030a03">
「一一月二九日午前七時四五分……
　ここ横浜基地から<RUBY text="エアシップ">飛行艦</RUBY>が一隻、訓練航行
の名目で出撃します」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270040a03">
「この予定は既に幕府へ通達がされています
から、迎撃されることはありません。
　もちろん、万一の空襲に備えて警戒態勢は
布かれるでしょうが……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270050a00">
「飛行艦の型は？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270060a03">
「ヴィッカース・メイフライ<RUBY text="マークフォー・シー">四式Ｃ型</RUBY>。
　飛行艦の中では快速ですが、そのぶん小型
です」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270070a00">
「……収容可能な竜騎兵はせいぜい二十騎。
　その程度の戦力では例え普陀楽への奇襲を
成功させても、損害らしい損害など与えられ
ない」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270080a00">
「これは自明の理です。
　六波羅の警戒は形ばかりになるでしょう」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270090a03">
「ええ。おそらくは。
　当日、普陀楽には翌日に大将領宣下式典を
控えて幕閣首脳が参集しているはずですから、
やや警戒も強まるとは思いますけれど――」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270100a03">
「あくまで形式の域は出ないでしょうね。
　訓練飛行を装って要人暗殺<RUBY text="オア">／</RUBY>拉致コース、
なんて子供騙しにもほどがありますし」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270110a00">
「同感です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　たかだか二十騎ばかりがそんな雑な手法で仕掛けて
成功する筈はない。
　仮に防空隊が襲撃者を素通しにしたとしても、地上
の要人らにはそれぞれの警護団が付いているのだ。

　故に――
　二九日当日、六波羅は飛行艦が現れるや否や即座に
強襲して撃墜するという極めて無法かつ<RUBY text="・・">適切</RUBY>な対処を
行うことは決してないだろう。

　危険空域まで踏み入る敵艦を、欠伸交じりに彼らは
見過ごす……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270120a03">
「横浜から普陀楽城までは約二〇キロ。
　ヴィッカース級の巡航速度で……三〇分も
あれば到達できる計算です」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270130a00">
「しかし……それは直進した場合です、大尉。
　六波羅の注意を最大限減らす為、飛行艦は
迂回路を取るのではありますまいか？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270140a03">
「それが、そうもいかないらしくて。
　問題の爆弾の安全性に関しては、キャノン
中佐も完全な信頼は持てずにいるご様子なの
です」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270150a03">
「作戦所要時間は短縮したいお考え」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270160a00">
「……成程。
　ではそうする一方、爆撃に竜騎兵ではなく、
わざわざ足の鈍い飛行艦を用いるのも」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270170a03">
「同じ理由ですね……。
　なるたけ安定した環境で爆弾を運用したい、
と」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270180a03">
「無意味な所で暴発させて、鎌倉市民に特大
の花火をプレゼントしても仕方ありません。
　普陀楽城と数十万の軍兵を一撃で<RUBY text="・・">滅却</RUBY>する
ために用意された爆弾なんですから」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270190a00">
「――――」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270200a03">
「まだ、信じられませんか？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270210a00">
「なかなか……俄かには」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270220a00">
「……<RUBY text="フォージド・ボム">鍛造雷弾</RUBY>……。
　人間大の重量規模で、ＴＮＴ火薬一万トン
相当の爆破力？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270230a03">
「冗談にしか聞こえませんねー」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270240a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　全く笑わずに俺は頷いた。
　笑い飛ばせるものなら笑い飛ばしたかったのだが。

　香奈枝嬢もそれは同じだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270250a03">
「一体どういう原理でそんなトンデモ兵器が
実現したのかまでは調べがつきませんでした。
　ただ、昨日今日の発明ではなく……かなり
長期に渡って研究がされていたようで」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270260a03">
「そもそもの発端は、かのウォルフ氏による
爆弾の素材となる物質の発見なのだとか」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270270a00">
「……彼が」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270280a03">
「インド北西部の<RUBY text="マウンド・オブ・ザ・デッド">〝死者の丘陵〟遺跡</RUBY>で発掘
したそうです。
　その、<RUBY text="プルートニアノア">冥府鉱</RUBY>と名付けた重金属を」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270290a00">
「……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270300a03">
「まっ、謂れはともかく。
　徹頭徹尾ただひたすらに迷惑千万きわまる
シロモノが大和に持ち込まれてしまっている
ことは事実です」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270310a03">
「それとも景明さま。
　暇を持て余したわたくしが景明さまをから
かって笑うために一芝居打っているとお考え
になる？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270320a00">
「…………」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270330a00">
「それはそれで、ごくスムーズに納得が可能
なのですが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　過去の言動を振り返るに。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_凹む.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270340a03">
「……狼少年の悲哀……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270350a00">
「置いておきましょう。
　して大尉殿、具体的な爆撃手順については
掴んでおいでですか」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270360a03">
「推測交じりになりますが」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270370a00">
「お願いします」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270380a03">
「想定されている爆弾の破壊規模から考えて、
飛行艦が実際の投下まで行うとは思えません」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270390a03">
「低高度で投下すれば爆発に巻き込まれます。
　といって高高度からの投下では命中精度に
信頼を置けません」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270400a00">
「確かに……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270410a03">
「最終的にはやはり<RUBY text="ドラグーン">竜騎兵</RUBY>を頼ることになる
でしょう。
　それも足の速い――かつ、普陀楽の防空隊
に<RUBY text="・・・・・・">捕捉されない</RUBY>能力を備えた騎体……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270420a00">
「では、噂の」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270430a03">
「ＳＴ-〇九――<RUBY text="ステルスドラコ">隠形竜騎兵</RUBY>が初の実戦投入、
という運びになるのではありませんかしら。
　軍事史的にいろいろと意義の大きな作戦に
なって、結構ですこと」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270440a00">
「完成していたのですか？
　しかも、大和進駐軍に配備されていると？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270450a03">
「ええ、景明さま。これは確実な情報です。
　最終運用評価試験まで終えたＳＴ-〇九の
<RUBY text="・・">部隊</RUBY>が、<RUBY text="ここ">横浜基地</RUBY>には待機していましてよ？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270460a00">
「……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270470a03">
「それもこれもキャノン中佐の手腕……
　と申し上げたら、尻尾をお巻きになる？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270480a00">
「巻けるものなら巻きたいとは切に思います」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　大尉から聞いた話によれば、親王と養父はキャノン
中佐を向こうに回しての対局に<RUBY text="・・・・・">指し負けた</RUBY>とも言える
らしい。
　それもしかし、むべなるかな。

　湊斗景明が挑むには荷の勝ち過ぎる相手のようだ。
　勝機が有るとすれば……彼はおそらくこちらの事を
さして気に掛けていない、その油断を狙うくらいか。

　情けない話ではある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270490a00">
「来世は尻尾のある動物に生まれましょう」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270500a03">
「可愛がって差し上げましてよ。
　飛行艦は爆発の影響を受けないぎりぎりの
所まで近付いて、反転」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270510a03">
「その直前、<RUBY text="カタパルト">射出口</RUBY>から爆装したＳＴ-〇九
が出撃。
　俊足に物を言わせて立ちどころに普陀楽城
上空へ到達」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270520a03">
「<RUBY text="フォージド・ボム">鍛造雷弾</RUBY>を投下、そのまま速度を維持して
危険空域から離脱。
　爆弾は――地面に落ちるまでは待たない」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270530a03">
「空中の適切な位置で爆発。
　普陀楽城は外周部分だけ残して消滅。勿論、
邦氏殿下の大将領宣下式典のために集まって
いた将兵も完全鏖殺」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270540a03">
「六波羅は事実上滅亡。
　大和は主権国家の具体的根拠である軍事力
を喪失して、大英連邦の従属国に成り下がり
ます」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270550a00">
「………………」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270560a00">
「阻止するには」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270570a03">
「まず、景明さまのお考えをどうぞ」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270580a00">
「今直ちに行動を起こし、問題の爆弾を奪取、
解体もしくは回収不可能な場所へ投棄」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270590a03">
「非現実的です。
　鍛造雷弾の保管場所は見当が付いています
が、警備が厳しく、こちらの戦力で突破でき
るとは考えられません」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270600a00">
「運搬手段、<RUBY text="ヴィッカース">飛行艦</RUBY>を破壊」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270610a03">
「飛行艦なら他にもありましてよ。
　……全部叩き壊して回ります？」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270620a00">
「六波羅へ作戦を密告」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270630a03">
「やって損はないかもしれませんが、向こう
が話を鵜呑みにして必要な防御措置をとると
いう保証はまったくありませんね」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270640a00">
「……キャノン中佐の暗殺――いや、拘束」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270650a03">
「無意味です。
　作戦立案は中佐の独創であっても、実行は
誰にだってできますもの。別の将校が代理で
指揮を執るだけです」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270660a00">
「…………」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270670a03">
「他にはいかが？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270680a00">
「既に大尉殿の肚はお決まりの様子」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270690a03">
「はい、実は。
　ちょっと意地悪でしたかしら」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270700a00">
「水際阻止――と？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270710a03">
「秘密作戦の性質上、動員兵力はごく小規模
に留めざるを得ない……。
　小型の飛行艦が一隻、それに搭乗する兵員
が数十人、これで全てのはずです」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270720a03">
「さよを含めても総勢三人のわたくしたちが
勝利するには、この小部隊が空で孤立無援に
なる作戦行動中を狙うしかありません」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270730a00">
「道理」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270740a03">
「わたくしとさよはあらかじめ飛行艦に潜り
込んでおくことにしましょう。
　景明さまは鎌倉へ航行する船を途上で襲い、
突入してくださいませ」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270750a03">
「劒冑は使えるように取り計らっておきます」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270760a00">
「成程……。
　内と外から挟撃し、撹乱する」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270770a03">
「ええ。そうして爆弾を奪って解体するか、
相模湾へ投棄というあたりで。
　うかつに投棄もできない程どちくしょうな
代物だった場合には……仕方ありませんから」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270780a03">
「二人で絶海の無人島にでも行って、そこで
爆発させてしまいましょうか♪
　若い命はあえなく散り、けれど二人の愛は
永遠に。天空を貫く火柱は悲恋の<RUBY text="モニュメント">記念碑</RUBY>――」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270790a00">
「諒解です」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270800a03">
「……はい？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270810a00">
「貴方がそれを望まれるなら、自分に異存は
ありません。
　御供致します」

</PRE>
	SetTextEXC();
//	TypeBeginCI();//―――――――――――――――――――――――――――――
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――
//おがみ：セピア処理対応

	SetFwC("cg/fw/fw香奈枝_含羞.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270820a03">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270830a00">
「大尉殿？」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270840a03">
「い、いえ。
　……こほ」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270850a03">
「まぁ、そこまでせずとも済むでしょう。
　幕府を一発で掃討できるような機会は限ら
れます。宣下式典が終わるまで爆弾を確保し
ていられれば、ひとまず危機は去るかと」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270860a00">
「は……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
//おがみ：セピア処理対応
//	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆回想終了
	EfRecoOut1(300);
	SetVolume("@mbgm*", 1000, 0, null);

	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg001_空b_01.jpg");
	Zoom("絵背景20", 0, 1050, 1050, null, true);
	Zoom("絵背景20", 50000, 1500, 1500, null, false);
	Shake("絵背景20", 50000, 3, 3, 0, 0, 1000, Dxl3, false);

	Delete("絵背景30");
	CreateSE("SEトンデマス", "se戦闘_動作_空走行02_L");
	MusicStart("SEトンデマス",0,1000,0,1500,Dxl3,true);
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　
　　　　　　　　　午前七時四九分

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc02_028vs.nss"