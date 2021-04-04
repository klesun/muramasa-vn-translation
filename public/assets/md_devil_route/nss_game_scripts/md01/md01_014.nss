//<continuation number="100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_014.nss_MAIN
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
	#bg001_空a_02=true;
	#bg013_鎌倉俯瞰a_02=true;
	#bg094_宮中庭_01=true;
	#bg002_空a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_015.nss";

}

scene md01_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_013.nss"

//◆鎌倉市街
//◆乱雑に飛ぶ村正
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateSE("SE01","se人体_動作_跳躍01");
	OnBG(100,"bg001_空a_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	WaitKey(300);

	CreateSE("SE01b","se人体_動作_跳躍03");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	OnBG(100,"bg013_鎌倉俯瞰a_02.jpg");
	Zoom("@OnBG*", 0, 1500, 1500, null, true);
	FadeBG(0,true);

	Zoom("@OnBG*", 150, 1000, 1000, DxlAuto, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);
	SoundPlay("@mbgm31",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　屋根から屋根。
　梢から梢へと跳ね渡る。

　当ては何もない。
　ただ、立ち止まっていたくなかった。

　日没にはまだ間のある時間帯だ。こんな乱雑な移動
をしていては人目につくだろう。
　
　しかし――どうでもいい。

　今はこのまま馳せ回り、身にまといつく何かを振り
払いたい。
　……その何かは外皮ではなく内面に張り付いたもの
で、いくら駆けようが剥がれはしないと悟っていたが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140010a01">
（認められる――わけが、ない）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　俺の意思を認めてくれ、と。
　自分の意思で戦い、責任を負うことを認めて欲しい
と……それだけを望んだ<RUBY text="あるじ">仕手</RUBY>に、完全な拒絶を返した。

　彼は私の意志を認めると言ってくれたのに。
　あの錆びた錠前のような頑固者が。なのに。
　
　けれどどうしても、それは認められないのだ。

　<RUBY text="ニッカリ">青江</RUBY>との交戦中、彼が私の過去を見たように、私も
昔日の彼を見ていた。
　だから知っている。

　彼は本来、小さな町で穏やかに暮らす人間であった
ことを。
　その生活を奪ったのが、私と先代――二領の村正だ
ということを。

　村正の存在さえなかったなら、彼は平穏な日々を命
尽きるまで続けられたのだ。
　……五百年前、私が愚かなことを願わなければ！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140020a01">
（母様を、見捨てるべきだった。
　見捨てなくてはいけなかった）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/bg/bg094_宮中庭_01.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　帝の御意に服し、破壊させておけば良かったのだ。
　それがどれほど屈辱的で、無念で、蝦夷の劒冑鍛冶
として受け入れ難い仕儀であろうとも。

　肉親の情など、川に流して。
　鍛冶師の矜持など、犬に食わせて。
　
　何となればこの手で、<RUBY text="はは">二世</RUBY>を潰すべきだったのだ！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140030a01">
（それができなかったばかりに！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
〝銀星号〟は出現した。
　南北朝の昔の悪夢が、この興隆という時代において
<RUBY text="よみがえ">黄泉帰</RUBY>ってしまった。

　これは、私の決断一つで防げたことなのだ。
　生前の私の柔弱な心が、この災いを――無数の死を
招いた。

　銀星号との戦いはつまり、私の過ちに対する決着に
ほかならない。
　それを己のものとして背負うと言う<RUBY text="かれ">景明</RUBY>の意思など、
どうして認められよう。

　妖甲千子村正一門の愚行に巻き込まれただけの彼が、
苛酷な闘争に苦しみ魂までも傷つくことを、どうして！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140040a01">
（認められるわけないじゃない……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　私の犯した過ちはほかにもある。

　善悪相殺。あの戒律。
　あの呪い――<k>認めよう、理想はどうあれ事実は呪い
でしかない！――<k>を、なぜ受け継いでしまったのか。

　せめてあれさえなかったなら、景明の手で殺させる
人間の数は<RUBY text="・・">半分</RUBY>で済んだ。
　苦しみもいくらか和らいだろう。

　自分は始祖や二世とは違う。二世が災厄の運び手と
なった時、これを制圧するためだけに誕生した劒冑だ。
　祖父の理想を実現する鍵であったあの戒律は、私に
とって不要のものだった。

　それでも継いだのは――<k>そうするしかなかったから。

　善悪相殺の掟は、村正という劒冑の付録ではない。
　<RUBY text="しんがね">心鉄</RUBY>に根差すもの、つまり根本理念だ。

　これを取り除くなら、鍛造行程を<RUBY text="・・・">すべて</RUBY>見直さなく
てはならない。
　祖父と母、そして祖母と父。一門の探究の総決算で
あるそれを、独力で一から立て直さねばならないのだ。

　できる話ではなかった。

　仮にできたとしても、そうして造られる劒冑は並の
出来で、二世村正の力には抵抗し得ない――〝卵〟に
汚染される――であろう。
　それでは役目を果たせない。

　千子村正流の鍛造法で劒冑となり、善悪相殺の戒律
を継ぐのは避けられないことだった。
　
　それは……事実だ、が。

　しかしそのことを抜きにしても、私の心には、戒律
を受け継ぎたい気持ちが確かにあった。
　戒律を、一門の理想を継ぎたかった。

　祖父達が悩み苦しみ抜いた末に見つけ出した理想が、
無為に散ってゆくのを、許せない思いがあった。
〝独善〟の撲滅、争いなき世界への希望を、後の世に
伝えても良いだろうと――私はそう思っていたのだ。

　……無責任な情念。
　……どこまでも自侭な考え。

　どのみち選択の余地がなかった件ではある。
　けれどその裏に、そんな甘い願いがあったことを、
私は記憶している。

　だから許せない。

　呪いに縛られ、好意や敬意を抱いていた人々に刃で
報いてゆく彼の苦悶――その心の断末魔に触れるたび、
こうなる可能性からあえて目を背けて安い夢に浸った
過去の自分自身が、どうしても許せない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140050a01">
（だから……せめて）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　認めてはなるまいと思うのだ。
　この戦い、この殺戮が、彼の意思のもとで行われて
いるなどとは、決して。

　これは私一人の<RUBY text="いくさ">戦</RUBY>……

　私の意志で招いた、私の罪だ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛ぶ
//◆キーン。なんか共鳴っぽい演出
//◆急停止
	OnSE("se人体_動作_跳躍03",1000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);
	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(0,true);
	DrawDelete("黒幕１", 150, 100, "zoom_01_00_1", true);

	CreateSE("SE01b","se特殊_雰囲気_共鳴01");//ダミー注意
	MusicStart("SE01b",0,1000,0,1500,null,true);
	CreateEffect("絵ブラー１", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵ブラー１","絵ブラー１");
	Request("絵ブラー１",Passive);
	SetBlur("絵ブラー１", 3, true, 400, 100);

	Fade("絵ブラー１", 0, 500, AxlDxl, true);
	Zoom("絵ブラー１", 300, 1500, 1500, Dxl1, false);
	FadeDelete("絵ブラー１", 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140060a01">
「――――ッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キーン。
	CreateSE("SE02","se特殊_雰囲気_共鳴01");//ダミー注意
	MusicStart("SE02",0,1000,0,1200,null,true);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　……<RUBY text="けはい">香気</RUBY>！
　銀星号か、その〝卵〟を受けた寄生体か。二世村正
の力を宿したものが近くにいる。

　強い――濃い。
　故意に発散しているのかと思えるほど、いま感じる
気配は濃密だ。

　急ぐ必要があるのかもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140070a01">
《みど――》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140080a01">
（…………）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　頭の向きを翻し、牢獄の<RUBY text="かれ">景明</RUBY>のもとへ戻りかけて。
　……最早そうするべきではないのだと、思い出した。

　これ以上、彼と一緒には戦えない。
　彼の意思を認めることはできず、支配し隷従させる
こともできなかったのだから、もう…………無理だ。

　行くなら、一人で行かねばならない。

　……いや。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140090a01">
（一人でいい）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　思えば、自分一人の戦いに他人を巻き込むという事
がそもそも大きな誤りなのだ。
　いくら劒冑には仕手が必須であろうと。

　その程度の常識、村正の業をもってすれば覆せる。
　覆す――覆してみせる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆村正帯電
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se特殊_電撃_放電01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 0, 600, null, true);
	WaitKey(10);
	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
磁場展開<k>収束形成<k>特定指向<k>特定解除<k>反復展開<k>反復展開<k>
指向修正<k>収束形成<k>骨格擬装<k>修正<k>修正<k>修正<k>修正<k>収束形成<k>
神経擬装<k>修正<k>全面削除<k>神経擬装<k>修正<k>修正<k>修正<k>指向修正<k>
筋肉擬装<k>修正<k>修正<k>総括整理<k>確認<k>違法騎化工程編成完了

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140100a01">
（私は――独りで戦える！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　
　　　　　　　　　　　起動

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆違法変身
//◆武者・村正
//◆飛翔
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	CreateTextureSP("絵立絵", 1000, Center, Middle, "cg/st/3d村正標準_騎航_通常.png");
	Move("絵立絵", 2000, @128, @0, DxlAuto, false);
	FadeDelete("絵フラ", 1000, true);

	WaitPlay("SE*", null);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラッシュ白", 5000, "#FFFFFF");
	Move("絵立絵", 300, @-512, @0, Axl2, false);
	Fade("絵フラッシュ白", 200, 1000, null, true);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_015.nss"