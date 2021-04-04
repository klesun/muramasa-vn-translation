//<continuation number="1280">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_002.nss_MAIN
{
	$TITLE_NOW=" ――――　第五編 宿星騎　―――― ";

	//★個別マクロ超速対応
	Conquest("nss/ma05_002.nss","SetHikaruHug",true);
	Conquest("nss/ma05_002.nss","HikaruHug",true);

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
	#ev008_赤子を抱える女 = true;
	#bg047_景明故郷町a_02 = true;
	#bg050_湊斗家門前_03 = true;
	#bg048_景明故郷オフィス_02 = true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_皆斗本家=true;
	#voice_on_湊斗統=true;

	$PreGameName = $GameName;

	$GameName = "ma05_003.nss";

}

scene ma05_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_001vs.nss"



//◆タイトル「第五編　宿星騎」
	PrintBG("上背景", 30000);
	CreateColorSP("絵黒幕１", 1500, "Black");
	Delete("上背景");

	CreateTextureEX("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/lg_第五編.png");
	Fade("絵テロ100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵テロ100", 2000, true);

	WaitKey(2000);

//◆光の「牢獄」
	PrintBG("上背景", 30000);
	CreateColorSPadd("絵白転", 1000, "#FFFFFF");
	FadeDelete("上背景", 1000, true);
	SoundPlay("@mbgm15",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　目覚めの場所は、いつも通り。
　暗い暗い、牢獄の中だ。

　牢獄……
　牢獄だ。

　手足を縛る、枷は無い。
　世界を隔てる鉄格子も、無い。

　それでも、ここは牢獄だ。
　このおれを封ずる檻だ。

　おれはずっとここにいて、
　同じ夢を見続ける。

　……今日も始まる。
　夢が始まる。

　大脳皮質から引き出された記憶が<RUBY text="リピート">再生</RUBY>される。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆顔の見えない女と赤子（統と光）
	CreateTextureEX("絵ＥＶ", 3100, Center, Middle, "cg/ev/ev008_赤子を抱える女.jpg");
	Fade("絵ＥＶ", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……おれは女に抱かれている。
　抱いているのは、母だ。

　母と向かい合ってもう一人、男がいる。
　――父だ。

　母は父に向かい、一言一言、突き刺すように告げる。

〝あなたは父親ではない〟

　母が言う。


〝この子の父親だと思ってはならない〟

〝この子はわたし一人の娘〟

〝この子に父親はいない〟

〝この子はあなたの娘ではない〟

　父は黙って聴いている。

　父に選択の自由などないことは表情で知れた。
　父はただ、決定を伝えられているだけなのだ。

　母は繰り返す。


〝この子に父親はいない〟

　――おれに父はいない。


〝あなたはこの子の父親ではない〟

　――このひとは、おれの父親ではない。


〝この子を……<k>愛してはならない〟

　おれは――
　このひとに愛されない。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆牢獄
	PrintBG("上背景", 30000);
	CreateColorSPadd("絵白転", 15000, "#FFFFFF");
	CreateColorSP("絵暗転", 100, "#000000");
	FadeDelete("上背景", 2000, true);
	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("絵白転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……夢が終わる。
　闇へ戻る。

　また、すぐに始まるだろう。
　ここでの時間はその繰り返しだ。

　父を放逐する母。
　娘と断絶される父。

　出生の直後、おれの両眼が――あるいは耳が、肌が
――見届けた光景。
　魂に刻まれた根源の記憶。

　<RUBY text="ミナトヒカル">湊斗光</RUBY>の父親が、
　母の手で奪い取られた瞬間。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆顔の見えない女と赤子（統と光）
	CreateTextureEX("絵ＥＶ", 2100, Center, Middle, "cg/ev/ev008_赤子を抱える女.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……これが、おれという<RUBY text="いのち">生命</RUBY>の原点。
　湊斗光の、始まりの記憶だ。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵白転", 15000, "#FFFFFF");
	Fade("絵白転", 2000, 1000, null, true);
	WaitKey(1000);
	ClearWaitAll(2000, 1000);

//◆故郷の町。群馬県あたりの片田舎
//◆オフィス。昭和二十年代風。どんなん？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町a_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg048_景明故郷オフィス_02.jpg");
	FadeBG(2000,true);
	SoundPlay("@mbgm29",0,1000,true);

	SetNwC("cg/fw/nw社員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女" src="voice/ma05/0020010e226">
「じゃあ部長。この書類はもう回しちゃって
構いませんね？」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0020020e238">
「いいよ。よろしく。
　おぅーい、湊斗くん！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020030a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆サラリーマン景明
	StL(1000, @-30, @0,"cg/st/st景明_通常_社員a.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetNwC("cg/fw/nw部長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0020040e238">
「納品リストは出来た？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020050a00">
「それなら、たった今……
　これです。確認お願いします」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0020060e238">
「はいよ。
　どれどれ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆書類ぺらぺら
	OnSE("se日常_物_紙をめくる01",1000);
	WaitKey(1000);
	OnSE("se日常_物_紙を置く",1000);

	SetNwC("cg/fw/nw部長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0020070e238">
「…………うん、問題なし。
　今日はもう上がっていいよ。定時過ぎてる
だろ？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020080a00">
「お心遣い痛み入ります。
　では、これで失礼致します」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0020090e238">
「はい、お疲れー」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女" src="voice/ma05/0020100e226">
「お疲れさまー。
　あ、湊斗先輩。倉庫に取引先からもらった
果物の箱があるから少し持っていって下さい。
統様と、光ちゃんに」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020110a00">
「有難う。
　二人とも喜ぶ」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0020120e238">
「田中ぁー。
　湊斗くん、オレのぶんはないのかって顔で
言ってるぞぉ？」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女" src="voice/ma05/0020130e226">
「言ってません。先輩はそんな意地汚くない
ですー。
　部長とは違いますもん」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0020140e238">
「うわ、ひでぇ」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女" src="voice/ma05/0020150e226">
「あ、でもご自分の分もちゃんと持ってって
下さいね、先輩。
　一杯ありますし、余らせて腐っちゃったら
もったいないですから」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020160a00">
「……有難う。
　頂いていく」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆町
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg047_景明故郷町a_02.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(500);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　欲張ったつもりはなかったが、それでも新鮮な果物
を詰め込んだ袋は結構な重さになった。
　紐が指先に食い込むので、時折左右の手で持ち替え
ながら歩く。

　夕暮れ時だけに、人出は多かった。
　家路につく子供や学生、あるいは夕食の買物にゆく
母親や娘。北関東の<RUBY text="ひな">鄙</RUBY>びた田舎町も、この時刻ばかり
は賑々しい。

　行き会う人間の四人に一人は顔見知りだ。
　会釈をし合ってすれ違う。

　時折、足を止めて短い世間話をすることもある。
　相手は大概、話好きなご近所の奥様方だ。

　話の内容がというより口を動かすこと自体が楽しい
様子の相手に、頷きながら相槌を返す。こちらとして
も別段、苦痛を覚えるような作業ではない。
　とはいえ話題の多くは楽しからぬものだった。

　興隆三九年、大和――
　この時空間が歴史書にどう記されるかなど知る由も
ないが、実際に生きる人間としては、早々に現在に見
切りをつけて未来を想いたくなる時代ではある。

　悲劇的な終戦からまだ四年。
　その悲劇の最後の一幕を演出した六波羅幕府は支配
の礎を固めるため、各地での弾圧暴挙に余念がない。

　公の場では決して語られない先年の大事件――大阪
虐殺は、それでも人々の心に生々しく焼き付いている。
　……逆らえばこの町もああなっちゃうんだろうねえ。
くわばら、くわばら。

　そう言って、三丁目の矢部さんは八百屋の方へ歩い
ていった。
　俺も家に向かって歩き出す。

　矢部さんの去り際の言葉は、大和全国、何処の誰も
が呟いているようなことだろう。
　だがこの町の人間が口にするそれは、ほかに比べて
緊張感が少しばかり違ったかもしれない。

　……町の<RUBY text="・・">現況</RUBY>を思えば、無理からぬことだが。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換。町並み
	CreateColorSP("絵暗転", 8500, "#000000");
	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	WaitKey(500);
	DrawDelete("絵暗転", 1000, 1000, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　そういえば、町の様子も少し変わった。
　ふと辺りを見回して、それに気付く。

　幕府は市民の勝手な移住を禁じているが、それでも
厳しい暮らしに耐えかねて夜逃げしてしまった人間も
少なくない。
　……少し前まで、この通りには犬を飼う家があった。

　前を通るたび、何匹もの犬達が吠え立てて、それは
喧しいものだった。
　今はもう聞こえない。忠実な犬は全て殺され、愛犬
家の家主はいつの間にか消えていた。

　……しばらく前まで、そこの公園には子供のための
遊具があった。
　今はもうない。<RUBY text="バリケード">防壁</RUBY>の資材にするとやらで持ち去ら
れてしまった。

　犬の吠え声と子供の歓声が消えた通り。
　たった二つが無くなっただけで、大きく変わってし
まったように思う。

　……いや。
　違った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 0, null);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020170a00">
（もう一つ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　無くなったものはもう一つあった。
　一番大きなものが。

　あいつがいない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020180a00">
（もし、これが。
　去年の光景だったら……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　俺はきっと、
　ここで――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg047_景明故郷町a_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	WaitPlay("@mbgm*", null);
	WaitKey(1000);

	CreateEffect("エフェクト１", 200, 0, 0, 1025, 576, "Sepia");

	FadeDelete("絵暗転", 2000, true);

	FadeDelete("エフェクト１", 500, true);


	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/ma05/0020190a14">
「景明！」

{
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020200a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光・過去バージョン
	StR(1000, @30, @0,"cg/st/st光三年前_通常_制服.png");
	Move("@StR*", 300, @-30, @0, DxlAuto, false);
	FadeStR(300,true);
	SoundPlay("@mbgm27",0,1000,true);

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020210a00">
「光。
　わざわざ迎えに来なくてもいいと、言って
いるだろう」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020220a14">
「うむ。聞いた。
　しかし承服した覚えはないな」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020230a14">
「妹が兄を迎えて、何がいけない」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020240a00">
「婦女子はみだりに外出しないものだ。
　お前ももう子供ではないだろう」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020250a00">
「それはそれとして、ただいま」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020260a14">
「その考えは古いぞ、景明。
　婦人団体から総攻撃ものだ！」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020270a14">
「それはともかく、おかえり」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一緒に歩く
	CreateSE("SEL01","se人体_足音_複数歩く01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	DeleteStA(300,true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020280a00">
「一概に決め付けて言っているのではない。
　だが、古来から続いた習慣には理由がある
ものだ。それを吟味もせず、ただ差別の一言
で否定する態度は俺には認めかねる」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020290a14">
「成程。それはもっともだ。
　しかしその理由とは、男は外で戦い、女は
家を守る……という、はるか古代の役割分担
に尽きる」

//【光】
<voice name="光" class="光" src="voice/ma05/0020300a14">
「現代ではもう意味があるまい。
　戦わぬ男もいるし、家庭を持たぬ女もいる」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020310a00">
「確かにそうなった。
　しかしそれが正しい事だとは、誰にも言い
切れないだろう。特に後者だが……」

{	SetVolume("SE*", 300, 0, null);
	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020320a00">
「佐伯さん。今晩は」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020330a14">
「こんばんは」

{	NwC("cg/fw/nw佐伯さん.png");}
//【ｅｔｃ／佐伯さん】
<voice name="ｅｔｃ／佐伯さん" class="その他女" src="voice/ma05/0020340e076">
「あら、湊斗さんちのご兄妹。
　こんばんはぁ」

//【ｅｔｃ／佐伯さん】
<voice name="ｅｔｃ／佐伯さん" class="その他女" src="voice/ma05/0020350e076">
「相変わらず、仲がいいのねぇ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020360a00">
「その割りには余り言うことを聞いてくれず、
困っていますが」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020370a14">
「うむ。仲はよい。
　だからそこで足を止めずに、気を利かせて
早く立ち去ってくれまいか。佐伯さん」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020380a00">
「こら、光！」

{	NwC("cg/fw/nw佐伯さん.png");}
//【ｅｔｃ／佐伯さん】
<voice name="ｅｔｃ／佐伯さん" class="その他女" src="voice/ma05/0020390e076">
「ほほほ！
　若いっていいわねぇ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆すたすた
	CreateSE("SE01","se人体_足音_歩く01_L");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,true);
	SetVolume("SE01", 6000, 0, null);
	WaitKey(1000);

	CreateTextureEX("擬似StL01", 100, Center, InBottom, "cg/st/st景明_通常_社員a.png");
	CreateTextureEX("擬似StR01", 100, Center, InBottom, "cg/st/st光三年前_通常_制服.png");
	Move("擬似StL01", 0, @-256, @0, null, true);
	Move("擬似StR01", 0, @256, @0, null, true);

	Fade("擬似St*", 300, 1000, null, true);


	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020400a00">
「……恥をかかせるんじゃない」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020410a14">
「ほんの軽口だ。
　佐伯さんには通じているさ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020420a00">
「まったく。
　やはりお前には、淑女になるための修行が
要るな」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020430a14">
「いらぬいらぬ、そんなもの！
　光には必要ない！」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020440a14">
「さっきのおまえの言を借りれば、光は家を
守る<RUBY text="たち">性質</RUBY>ではない。外に出て戦う方だ。
　武者修行の方がよほど性に合う」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020450a00">
「またそんなことを言う。
　お前は自分を知らんのだ」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020460a14">
「知っているとも」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020470a00">
「たった一つを除いてはな。
　光。お前は自分に<RUBY text="はなよめいしょう">白無垢</RUBY>がどれほど似合う
かを知るまい」

{	FwC("cg/fw/fw光三年前_唖然.png");}
//◆呆然
//【光】
<voice name="光" class="光" src="voice/ma05/0020480a14">
「……」

{	FwC("cg/fw/fw光三年前_照れ.png");}
//◆超照れ
//【光】
<voice name="光" class="光" src="voice/ma05/0020490a14">
「…………」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020500a00">
「俺は鮮明に脳裏へ思い描けるがな。
　それを見られぬと思うと……うむ。やはり
残念で仕方がない」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020510a14">
「……ま、まあ……
　そうだな……」

//【光】
<voice name="光" class="光" src="voice/ma05/0020520a14">
「景明が……おれを家に押し込めてくれると
いうなら。
　か、考えないでもない」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020530a00">
「ふむ……」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020540a14">
「……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020550a00">
「それはお前を実力で凌いで、男の代わりに
戦う必要をなくしてみせろということか。
　なかなかに難題だな……」

{	FwC("cg/fw/fw光三年前_のけぞり.png");}
//◆頭抱えてのけぞり
//【光】
<voice name="光" class="光" src="voice/ma05/0020560a14">
「…………」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020570a00">
「どうした光。
　まるで声にならない絶叫を発しているよう
な顔だが」

{	FwC("cg/fw/fw光三年前_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020580a14">
「えーい！　うるさい！
　もういいっ！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetHikaruHug();

	SetFwC("cg/fw/fw光三年前_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0178]
//【光】
<voice name="光" class="光" src="voice/ma05/0020590a14">
「てりゃあ！」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020600a00">
「うおっ!?」

//◆飛びつく光

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020610a00">
「こ、こら。
　首にぶら下がるなっ！」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020620a14">
「断る！」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020630a00">
「歩けないだろうが！」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020640a14">
「歩いてみせろ！
　そんなことで光に勝てるか！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020650a00">
「うぅむ……
　この格好でか……」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020660a14">
「そうだ。
　買い物にも行くぞ。晩飯の材料が足りない
のだ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020670a00">
「降りろっ！」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020680a14">
「いやだ！
　さあ行くぞ景明。まずは豆腐屋だ。続いて
八百屋、酒屋、魚屋と回る！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020690a00">
「町内一周ではないか！
　明日には俺は町中の笑い者だっ！」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0020700a14">
「はっはぁ！　それは大変だ！
　そうなっては嫁のなり手もおるまい！」

//【光】
<voice name="光" class="光" src="voice/ma05/0020710a14">
「よし、絶対にこのまま行くぞ！」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020720a00">
「勘弁しろというのにー！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆現実復帰
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg047_景明故郷町a_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);
	WaitKey(1000);
	FadeDelete("絵暗転", 2000, true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020730a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　肌寒い風を感じて、俺は一度身を震わせた。

　……帰ろう。
　もう、すぐに暗くなる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆湊斗家遠望
	ClearWaitAll(2000, 2000);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg050_湊斗家門前_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm19",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　町の中心部を離れて田園地帯に入り、そこも抜ける
とやがて林の中の広壮な屋敷が見えてくる。
　俺の家――と云うのは些か烏滸がましいか。兎も角
俺の暮らす湊斗の家だ。

　その大きさは、土地の余っている田舎という立地条
件と、近隣界隈に古来から事実上の――時には名実共
に――支配者として君臨してきた家系の分家筋である
ことに由来する。

　しかし、由来はあれど意味があるかは疑わしいもの
だった。
　大は小を兼ねるとは云うものの、一家<RUBY text="・・">三人</RUBY>の住処に
この広さは無駄が多過ぎて、不便なことが少なくない。

　いっそアパート暮らしでもした方がよほど楽なのだ
が……
　湊斗家にそんな振る舞いが許される筈もなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
//	CreateColorSP("絵暗転", 15000, "#000000");
//	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
//	WaitKey(500);
//	OnBG(100,"bg053_湊斗家の庭_03.jpg");
//	FadeBG(0,true);
//	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//◆本家当主
	StR(1000, @0, @0,"cg/st/st本家_通常_私服.png");
	FadeStR(300,true);


	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020740a00">
「……これは」

{	#voice_on_皆斗本家=true;
	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0020750b52">
「景明か」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　通用口をくぐろうとしたところで丁度その人に行き
当たり、俺は半瞬ばかり硬直した。
　ぎょろりと、気難しげな眼光を俺を<RUBY text="ね">睨</RUBY>む。

　……いつまでも固まっていて良いような相手ではな
かった。
　正面を譲って脇へ退き、深々と礼を<RUBY text="と">執</RUBY>る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020760a00">
「御本家。
　おいでとは存じませず、無礼を致しました」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0020770b52">
「よい。
　仕事帰りか」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020780a00">
「は」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0020790b52">
「少し、統と話をしてきた。
　後であいつから聞いておけ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020800a00">
「はっ」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0020810b52">
「……ではな、統。
　夜の会合までに、<RUBY text="わし">儂</RUBY>の言った事をよく考えて
おくのだぞ」

{	NwC("cg/fw/nwその他.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0020820b46">
「あー……うん。はい。
　ご足労頂いてどうもでした、本家」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0020830b52">
「ふん……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　戸口の方からの声に鼻を鳴らして答え、老人は歩き
去っていった。その足取りは歳相応で、やや危うい。
　だが送りましょうとは言い出せなかった。その手の
気遣いを喜ばぬ人であることは良くわかっている。

　あの人はあくまで豪強な王者を演出し続けるつもり
なのだろう。年波の寄りを否定して。
　車も使わず夜道をゆく背をしばし見送り、それから
俺は同じようにしていた人へと向き直った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st景明_通常_社員a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020840a00">
「……只今帰りました。
　統様」

{	#voice_on_湊斗統=true;
	StL(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStL(300,false);
	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0020850b46">
「はい、お帰り。
　今日もご苦労さん」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　どことなく眠たげな目元を和ませて、その女性――
湊斗家の長、<RUBY text="みなとすばる">湊斗統</RUBY>――が微笑む。
　二十年、見続けてきた笑顔だ……色彩の移り変わり
は様々に有るにしても。

　今はやや、疲労の色が濃い。
　俺を<RUBY text="ねぎら">労</RUBY>ってくれるのは嬉しいが、自分の身にも配慮
して欲しかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020860a00">
「……あまり、面白くないお話でしたか」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0020870b46">
「んー。そう見えるか。
　息子の目は誤魔化せんね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　後ろ頭を掻きながら視線を外し、白い女性は呟いた。
　その手が懐を探り、すぐ紙の小箱を取り出す。

　無意識に近いような動きで俺もポケットに手をやり、
マッチ箱を取り出して手早く火をつけた。
　この<RUBY text="はは">養母</RUBY>のために持っているようなものだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【統】
<voice name="統" class="統" src="voice/ma05/0020880b46">
「ありがと」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//あきゅん「SE：要望：紙が燃えるような感じのちりちりちりってタバコの音」
	CreateSE("SE01","se人体_動作_マッチ点火");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　俺の差し出した火に煙草を近付け、一息吸って煙を
吐く。
　心地良さげだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_韜晦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【統】
<voice name="統" class="統" src="voice/ma05/0020890b46">
「あー……生き返る。
　本家の前じゃ吸えないからねー」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020900a00">
「短い禁煙、お疲れ様です」

{	FwC("cg/fw/fw統_韜晦.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0020910b46">
「むぅ。可愛くないことを言ったな。
　景明も付き合いなさい。一本でいいから」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020920a00">
「はい。
　では、一本だけ」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0020930b46">
「よしよしいい子だ。
　<RUBY text="あいつ">亭主</RUBY>はわたしがこう言っても頑として受け
付けなかったからなー」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020940a00">
「吸ったら病み付きになるのが分かっている
から、吸わない……とのことでしたね。
　あの人らしい言いようです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　煙草を受け取って口に咥える。
　そうして、火を点けようとしたところで――いつの
間にか間近にあった養母の顔と目を合わせた。

　その目は笑っている。
　咥えた煙草の先端が、俺の煙草に接していた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【統】
<voice name="統" class="統" src="voice/ma05/0020950b46">
「……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020960a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　……この養母は、こうした悪戯を好む。
　困り物だった。

　養母が離れるのを待って、火のついた煙草から香気
を吸い込む。正直、<RUBY text="・">味</RUBY>はわからない。
　だが苦痛という程ではないし、断ると養母が拗ねる
ので、勧められた時には拒まないようにしていた。

　それに、疲労を抜く効果は確かに感じられる。
　俺は煙を吐きながら、大きく嘆息した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【統】
<voice name="統" class="統" src="voice/ma05/0020970b46">
「例の連中の件だったんだけどね」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0020980a00">
「はい」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0020990b46">
「本家はとにかく押せ押せの一点張り。
　あんな奴らをのさばらせておいてはこの町
の沽券に関わる……とまあ、こうだ」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021000b46">
「町に沽券なんてあんのかねえ？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021010a00">
「……まさか」

{	FwC("cg/fw/fw統_韜晦.png");}
//◆すぱー。
//【統】
<voice name="統" class="統" src="voice/ma05/0021020b46">
「ん〜」

{	FwC("cg/fw/fw景明_驚き.png");}
//◆すぱー。
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021030a00">
「それを、御本家の前で？」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021040b46">
「言っちゃった。
　いや、つい」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021050a00">
「……その場にいなくて良かったと思います」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021060b46">
「まあ、向こうももう慣れてるから。
　別に血管切れるほど怒りはしなかったよ」

//【統】
<voice name="統" class="統" src="voice/ma05/0021070b46">
「雷は落ちたけどね。
　耳塞いで寝てたらそれもすぐ収まったし」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021080a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　あの、平素に輪を掛けて険しかった目付きはそれが
原因か……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021090a00">
「……それにしても」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021100b46">
「ん？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021110a00">
「御本家は、本気なのでしょうか。
　奴らを実力で排撃するなど」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021120b46">
「さてね。半々じゃない？
　町の人間に弱気な姿勢は見せられないって
のも半分はあるだろさ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021130a00">
「では、実際に踏み切ることはありませんか」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021140b46">
「と思うんだけどね。
　やるやるって言い張ってるうちに、引っ込み
がつかなくなるって可能性もあるなぁ……」

//【統】
<voice name="統" class="統" src="voice/ma05/0021150b46">
「町のみんなは本家の葛藤までわからないから
ね。本家の言葉はそのまんま受け止める習慣が
身についちまってる。
　今はみんな中立か、消極的反対だけど――」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021160a00">
「そのうち御本家の語勢に負ける格好で、賛成
を口にし始める可能性が無きにしも<RUBY text="あら">非</RUBY>ず。
　……ですか」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021170b46">
「そうそう。そうなったら馬鹿馬鹿しいね。
　本当は誰も望んでないのに、無謀な<RUBY text="いくさ">戦</RUBY>を始め
なきゃならなくなる」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　あー馬鹿馬鹿しい、と繰り返してから、養母は空に
向かって嘆息した。
　綺麗に輪を描いた煙が一瞬だけ虚空を飾り、すぐに
消える。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021180a00">
「……そんな事態は避けたいものです」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021190b46">
「うん。お母さん頑張るよ。
　ま、わたしが防波堤になってる間は町の皆
が転ぶこともないだろさ。本家が恐いたって、
矢面に立たされなけりゃ知らんふりできるし」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021200a00">
「夜に会合があるとか」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021210b46">
「踏ん張りどころだねー。
　カミナリがわたし以外のところへ飛び火し
ないようにうまくやんないと」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021220a00">
「自分に何かできることは無いでしょうか。
　統様をお助けするために……」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021230b46">
「その台詞だけで母さんモエルから大丈夫。
　ま、とりあえずは力つけとこうか」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021240b46">
「飯にしようよ。
　風呂が沸いてるから、汗を流しておいで」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021250a00">
「はい。
　……光の食事は？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021260b46">
「眠ってるみたいだからね……
　起きるのを待とうか」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0021270b46">
「無理に起こすのも良くないだろうし」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0021280a00">
「はい……
　そうですね……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_003.nss"



.//プロセス用======================================================

..//光ハグ
function SetHikaruHug()
{
	CreateSound("ＰＳＥ", SE, "sound/se/se人体_動作_抱く01");
	SetAlias("ＰＳＥ","ＰＳＥ");
	CreateProcess("光ハグ", 5000, 0, 0, "HikaruHug");
	SetAlias("光ハグ","光ハグ");
	Request("光ハグ", Start);
	Request("光ハグ", Disused);
}

function HikaruHug()
{
	Move("@擬似StR01", 300, @-482, @0, Dxl2, false);
	Wait(300);

	Request("@ＰＳＥ", Play);

	Fade("@擬似St*", 600, 0, null, false);
	Shake("@擬似StL01", 300, 2, 0, 0, 0, 1000, DxlAuto, false);
	Shake("@擬似StR01", 300, 2, 0, 0, 0, 1000, DxlAuto, true);
	WaitAction("@擬似St*", null);
	Delete("@擬似St*");
	WaitPlay("@ＰＳＥ", null);
	Delete("@ＰＳＥ");
}