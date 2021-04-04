//<continuation number="1370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_046.nss_MAIN
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
	#bg105_城門付近内側_02=true;
	#ev231_茶々丸変身_a=true;
	#ev231_茶々丸変身_b=true;
	#ev231_茶々丸変身_c=true;
	#ev231_茶々丸変身_d=true;
	#ev231_茶々丸変身_e=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_047vs.nss";

}

scene md04_046.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_045b.nss"

//◆フェードイン。城内bg105_夕

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg105_城門付近内側_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm16", 0, 1000, true);

	Wait(500);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……周囲状況を再認識する。

　ここは普陀楽城。
　今は――銀星号の力で引き起こされた混乱の渦中に
ある。

　殺し、
　殺し、
　殺し、
　殺す。

　絶望的な闘争空間。

　――止めなくては、ならない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(300,false);


	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460010a01">
「…………そうだ。
　伝えないと」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460020a00">
「？　何をだ」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460030a01">
「大鳥香奈枝から、貴方に伝言があるの」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460040a00">
「……大尉殿から？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　その名を聞くのも久々だった。
　大鳥大尉……綾弥一条…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460050a01">
「何だか眉唾な話なんだけど。
　……そのまま言うからね」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460060a00">
「ああ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460070a01">
「進駐軍は決戦兵器鍛造雷弾を使う。
　その兵器はこの城塞を全滅させる……とか
何とか」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460080a00">
「――――」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460090a01">
「御堂にはわかる？
　私には正直さっぱりなんだけど」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStL(300, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　首を傾げる村正に、しかし俺は返答するどころでは
なかった。
　
　そうだ……鍛造雷弾！

　この普陀楽城を一掃する威力を有する最終兵器。
　進駐軍の勝利のため――否。緑龍会の目的のために、
間もなく投下される……。

　そんな法外な兵器が本当にあるのか、実在を疑う気
持ちもあった。
　しかし、全く別のルートから――あの大鳥大尉から
同じ情報がもたらされたとなると……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460100a00">
「実在する」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460110a01">
「……御堂？」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460120a00">
「その兵器は本当に存在するのだ、村正。
　そして、もうすぐここに落とされる……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460130a01">
「…………」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460140a00">
「させてはならん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　今、最優先事項はそれだ。
　最も近く最も大規模な破滅はそれだ。

　だが、どうやって防ぐ？

　爆弾の投下は、飛行艦か竜騎兵が行うのだろう。
　それを――迎撃する？

　…………無理だ。

　爆弾の威力が桁違いなら、投下を行う飛行体は相当
の高度を取ると考えられる。
　迎え撃つならその空域へ行き着かねばならない。

　しかし今、低空域には銀星号の複製集団が陣取って
いる。
　力任せの突破などできる話ではなかった。

　仮に迂回するなり隙を突くなりの方法で抜けられた
としても、その次は投下の護衛隊と交戦し撃退しなく
てはならない。
　まさか護衛がいないという事はないだろう。

　駄目だ。
　賭けるには成算が低過ぎる。

　他の方法を考えなくてはならない。

　だがどんな方法がある？
　力で止められないなら、交渉か？

　進駐軍司令部に押し掛けて指揮官に直談判？
　
　……現状の解決策としては夢想的過ぎる。

　他に、他に何か手は――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460150a01">
「御堂、伝言にはあと少し続きがあるの」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460160a01">
「実はこれも、何だか意味がよくわからない
んだけど……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460170a00">
「言ってくれ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　藁にすがる思いで、先を促す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460180a01">
「この作戦を防ぐには……
　六波羅幕府を消滅させるしかない」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460190a00">
「……？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460200a00">
「それはどういう意味だ？」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460210a01">
「わからないってば。
　あと……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460220a01">
「鍵は足利四郎邦氏、ですって」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460230a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　足利四郎邦氏――護氏の嫡孫。六波羅の総大将。
　あの少年を鍵にして、六波羅を消す……？

　大尉は何を考えていたのだろう。
　確かに進駐軍は城それ自体より住まう六波羅を潰し
たいのだから、六波羅が無くなれば爆弾を落とす必要
も無くなる理屈だが。

　裏に潜む緑龍会の意図に六波羅の有無は関係ないに
せよ、彼らは進駐軍を支配しているのではなく巧妙に
誘導しているに過ぎない以上、進駐軍側の都合を無視
はできまい。――幕府が消えれば計画は頓挫する。

　しかし、幕府などというものをそう簡単に生んだり
消したりできる筈もない。
　
　大尉の伝言は端的過ぎて、真意が見えなかった。

　おそらく、現代情勢に疎い村正に一から十まで説明
する手間を惜しんで要点のみ伝えさせたのだろうが。
　その配慮も今は恨めしい。

　――――いや。待て。<k>
　
　<RUBY text="・・・・・・・・">足利四郎邦氏が鍵</RUBY>？

　総大将である彼を暗殺しろと？
　いや違う……違う。そうではない。

　彼は六波羅を背負って立つには余りに若く、現在は
実権を有していない。
　彼がいなくなっても六波羅は滅びない。

　だから、殺すのではない。
　彼は、<RUBY text="・・・">生かす</RUBY>。

　彼の存在は六波羅の実機能面において重要ではなく、
消え去っても幕府の致命傷とはならないだろう。
　だが、彼は幕府を滅ぼす事はできるのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460240a00">
「村正、行くぞ」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460250a01">
「どこへ？」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460260a00">
「天守閣。
　足利邦氏殿下のもとへ」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460270a00">
「彼を説得し、大政奉還を宣言させる」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　<RUBY text="・・・・">政権返上</RUBY>。
　国家統治機構としての六波羅の終焉を表明するよう
願う。

　足利邦氏は名目上の幕府元首に過ぎない。
　だが名目上でも首長であるからには、その名のもと
公的宣言がなされれば、重大な意義を持つだろう……
少なくとも、実権を握る者に否定されるまでの間は。

　進駐軍は六波羅を不当な政府と断定し、この排除を
名分として兵を動かした。
　だから――彼らの言う通りにしてやるのだ。先手を
打って、六波羅自身の行動で。

　そうなっては進駐軍は戦闘続行する理由を<RUBY text="な">失</RUBY>くす。

　黙殺するのは勿論、可能だ。
　だがその場合、正義の戦争という看板の喪失、大和
国民の心象への悪影響、国際社会の批判等々、失う物
が多過ぎる。

　それは進駐軍を動かす者――大英連邦であれ新大陸
独立派であれ――にとって受け入れ難いはずだ。
　戦争利益を全て失いかねない。

　この方法なら、鍛造雷弾投下を止められる！
　足利邦氏の口で六波羅体制の終結を宣言させれば！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460280a01">
「…………。
　で、できるの？　そんなこと」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460290a00">
「やってみなくてはわからん。
　考えた中では、これが一番成功する望みが
ありそうだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　宣言の実施は……軍の広域回線を使えば済む。
　隠蔽工作など不可能な広範囲に宣言を伝えられる。

　難点は、やはり説得か。

　ここしばらくを普陀楽城で暮らしたが、俺の身分は
所詮一介の竜軍中佐、殿上人たる足利邦氏に会う機会
など無かった。
　当然、言葉を交わした事もない。

　……つまり。
　俺は初対面の貴人の所へ押し掛けて、無茶な要求を
通さなくてはならないわけだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460300a00">
「やらねばならん。
　……自信の有無を問われると困るが」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460310a01">
「……私も努力するから。
　どこまで役に立てるかわからないけど」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460320a00">
「頼む」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460330a07">
「頼まなくていいって。
　その<RUBY text="ぶきっちょ">不器用</RUBY>がそんな場面で役に立つかい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸

	StR(1000, @0, @0, "cg/st/st茶々丸_通常_制服b.png");
	FadeStR(500, true);

	SoundPlay("@mbgm19", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　横手からの声に、振り向く。
　ようやく糸の戒めを振り払い、彼女が立ち上がって
いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460340a01">
「茶々丸！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460350a07">
「やってくれた。
　おめー、本当にやってくれやがったな」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460360a07">
「……村正……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460370a01">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　足利茶々丸の声は、怨念という心理を純粋に信号化
したようなものだった。
　それを真正面から吹き付けられ、村正が硬直する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460380a07">
「堀越で……始末しとくべきだった……！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460390a07">
「いや、八幡宮で潰しとくんだった！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460400a07">
「ドジ踏んだよ。
　おかげでこのザマだ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460410a01">
「……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460420a07">
「はは……嗤える」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460430a07">
「世話ねえや。
　余裕かましたあげく、奪われてんだもんな」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460440a07">
「……っ……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460450a07">
「面白過ぎるんだよ、てめェ!!」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460460a01">
「……貴方が先に奪ったんでしょう！」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460470a07">
「そーだよ。
　あてが先におめーから奪った」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460480a07">
「……その時に全部奪っときゃ良かったんだ。
　おめーの命なんてカスみてぇなもん、興味
のカケラもねえってんでほっといたばっかり
に……これだ」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460490a07">
「くそ、後悔なんて趣味じゃねえ！
　今からでもやってやる――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Move("@StR*", 200, @-20, @0, Dxl2, false);
	OnSE("se人体_動作_一歩",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　飢えた鴉も逃げ出すほどの凶気を込めて、茶々丸が
手を伸ばす。
　俺は反射的に、村正を庇うべく間へ割って入った。

　だが。
　その俺の前で、茶々丸が不意によろめく。

{
	DeleteStR(150, true);
}
　頭を抱えながら、膝を屈した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460500a07">
「ぢぃ……ッッ……！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460510a00">
「……？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460520a07">
「畜生……頭痛が……
　……最近は軽かったのに……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460530a07">
「急に元に戻ると……糞がっ……
　……響きやがる……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　頭痛……？
　
　余程の苦しみなのか。額を押さえる指はともすれば
肉を引き裂きそうだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460540a00">
「……茶々丸……？」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460550a07">
「…………」

{	FwC("cg/fw/fw茶々丸_照れ.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460560a07">
「……あ……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460570a07">
「……まだ、名前で呼んでくれるんだ……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460580a07">
「お兄さん」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @50, "cg/st/st茶々丸_通常_制服a.png");
	Move("@StR*", 600, @0, @-50, DxlAuto, false);

	FadeStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　ゆらりと。
　小さく笑って、茶々丸が再び立った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460590a07">
「良かった。
　中将閣下ー、に戻っちゃわなくて」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460600a00">
「…………。
　茶々丸、もうやめろ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460610a00">
「お前が何を求めているのか、それは知らん。
　だが犠牲とするものが大き過ぎる事だけは
わかっている」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460620a07">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460630a00">
「道義などは説かん。……頼む。
　やめて欲しい」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460640a07">
「……お兄さんのそういう、変に素直なとこ、
嫌いになれないんだよねー……」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460650a07">
「でも、聞けない。
　やめられないんだ。お兄さんのお願いでも」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460660a00">
「茶々丸！」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460670a07">
「だから邦氏の所にも行かせてあげられない」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460680a07">
「お兄さんの考えはいいとこ突いてるよ。
　確かに邦氏を利用すれば、今からでも鍛造
雷弾の投下を阻止できる……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460690a07">
「説得も、案外難しくないんじゃないかな。
　今の<RUBY text="ときおう">邦氏</RUBY>はちょっと情緒が不安定だからね。
幕府を潰してって頼まれたら、あっさりその
気になっちまいそうだ」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460700a07">
「……まさか童心坊主の悪趣味がこんなとこ
で祟るとはなァ……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460710a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0460720a00">
「何故、わざわざ教えた？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　希望を持たせるような事を。
　俺は自信を欠いていたのだから、そのままにして、
迷わせておけば良さそうなものだ。

　茶々丸が俺に対立するなら、そうして当然だろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460730a07">
「理由は三つ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460740a07">
「一つ、一応の備えはしてある。
　二つ、お兄さんはあてが止める」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460750a07">
「三つ。……あてはとことん、お兄さんには
甘いみたいだ。
　惚れた弱味ってやつかな」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460760a00">
「……」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460770a07">
「色男さんめ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460780a00">
「茶々丸。
　もう一度――」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460790a07">
「だめ。
　……困らせないで」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460800a07">
「お兄さんには<RUBY text="・・">選択</RUBY>の余地があったみたいだ
けど。
　あてには無いんだから」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460810a00">
「……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460820a01">
「御堂、行きましょう」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460830a00">
「村正」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460840a01">
「無理に戦う必要もない。
　装甲して、飛んでいけば済むことよ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460850a01">
「上の<RUBY text="あれ">複製</RUBY>が危険だけど……
　短い距離なら何とかなると思う」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　妥当な提案だった。
　天守閣まで騎航で行き着けなくても良い。茶々丸を
振り切るだけで良いのだ。

　妨害者がいなければ、後は走って目的地まで行ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460860a07">
「無能が」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460870a01">
「……何よ」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460880a07">
「おめーの言うことに従ったら、お兄さんは
あっさりあてに撃墜されてる。
　仕手を死なせる劒冑が無能でなくてなんだ
ってんだ？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460890a01">
「……ふん。
　貴方が<RUBY text="・・・">飛べる</RUBY>可能性は計算の内よ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460900a00">
「……？」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460910a01">
「でも所詮、武者とは騎航性能が比較になら
ないもの。
　注意は要るけど、問題にすることもない」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460920a07">
「それがおめーの計算か。
　採点してやる。……まぁ一〇点だな」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460930a07">
「ちなみに一億点満点だぞ」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460940a01">
「この……っ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460950a00">
「怒るな、村正。
　俺もお前の意見に問題点はないと判断して
いる」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460960a07">
「お兄さんがわからないのは仕方ないさ。
　でも<RUBY text="そいつ">劒冑</RUBY>がいまだに気付いてないってのは、
どんなもんかねー？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460970a01">
「何が言いたいのよ」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460980a07">
「いい加減わかれってのさ。
　あてが<RUBY text="・・・・">何なのか</RUBY>」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460990a01">
「そんなのわかってる」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461000a07">
「ほー？　言ってみ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461010a01">
「貴方は劒冑でしょう。
　茶々丸」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461020a07">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0461030a00">
「……何？」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461040a01">
「劒冑なのよ、御堂。
　この足利茶々丸はね！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461050a01">
「貴方が精神汚染された時……私が茶々丸の
<RUBY text="ちから">能力</RUBY>で押さえ込まれたのを覚えている？
　あの時に、もしかしてって思ったの」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461060a01">
「その気になって精査してみれば、やっぱり
何かおかしい。<RUBY text="・・・・・・・・・・">肉体が肉体らしくない</RUBY>。
　私と同じように」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0461070a00">
「…………」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461080a01">
「そう、私と同じ。
　ヒトの形態を持つ劒冑なのよ、茶々丸は」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0,150);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　堀越公方足利茶々丸が、劒冑？
　馬鹿な。有り得る話ではない。

　…………だが。
　
　茶々丸が幾度か見せた、奇怪な能力――――

　あれは断じて常人の備えるものではなく。
　つまりは――<k>劒冑の……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461090a07">
「あっはっはー」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461100a01">
「……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461110a07">
「とことん目の利かねェ駄鍛冶だな!!
　自信満々で外しやがる」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461120a07">
「あては劒冑じゃない」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461130a01">
「……嘘よ」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461140a07">
「生憎と本当だ。
　……劒冑になれていたら良かったけどな」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461150a01">
「ただの人だって言うの？
　そうじゃないのは、もう明らかよ」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461160a01">
「私の目を誤魔化せると思わないで」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461170a07">
「誤魔化しちゃいねえ。
　おめーが勝手に間違えてるだけだ」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461180a01">
「<RUBY text="・・・・・・・">心鉄を持つ人間</RUBY>がいるわけないでしょう！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461190a07">
「あほが。
　おめーの頭ん中にゃ、劒冑と人しかいねえ
のかよ!!」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461200a01">
「――――えっ？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆ＥＶ：茶々丸甲化

	CreateColorSP("黒幕", 25000, "WHITE");
	DrawTransition("黒幕", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("装甲", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_a.jpg");
	OnSE("se特殊_その他_部分除装", 1000);

	WaitKey(1500);


	FadeDelete("黒幕",1500,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　突如、奇怪な音が鳴り響いた。
　鉄骨を力任せに押し曲げるかの――

　音に乗り、茶々丸の肌が変化を始める。
　白い肉皮が別の何かへ。

　鈍い光沢を放つ硬質のものへ。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分：第一段階
	CreateColorEXadd("黒幕", 25000, "WHITE");

	Fade("黒幕", 50, 1000, null, true);
	CreateTextureSP("装甲２", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_b.jpg");
	CreateTextureEX("装甲", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_b.jpg");

	OnSE("se特殊_その他_部分除装", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Fade("黒幕", 500, 0, null, false);
	FadeF4("装甲", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("装甲", 300, false);


	SoundPlay("@mbgm10", 0, 1000, true);


	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0461210a00">
「甲鉄……!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　劒冑を呼び寄せた様子は全くなかった。
　そも眼前の変化は、武者の装甲とみるには余りにも
異質である。

　皮膚が甲鉄に<RUBY text="・・・・・・">覆われてゆく</RUBY>のではない。
　皮膚が甲鉄に<RUBY text="・・・・・・">変わってゆく</RUBY>のだ。

　村正の蜘蛛から蝦夷への変形を、逆回しに再現した
ならきっとこのようになるだろう。
　
　……やはり、茶々丸は劒冑だったのか!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461220a07">
「……ぐ……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分：出血と苦悶

	Fade("黒幕", 50, 1000, null, true);

	CreateTextureSP("装甲２", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_c.jpg");
	CreateTextureSP("装甲", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_c.jpg");
	OnSE("se特殊_その他_部分除装", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Fade("黒幕", 500, 0, null, false);
	FadeF4("装甲", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("装甲", 300, false);

	SetFwR("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461230a07">
「ア……ガァァ……」

{	FwR("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461240a01">
「……!?」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0,150);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　違う。
　村正とは決定的に違う点が一つある。

　村正の人型変形――肉体変成は、劒冑としての機能
の応用発現だ。
　術式を開発するまでは四苦八苦していたが、完成後
は何の支障もなく操っている。

　だが茶々丸は苦しんでいた。
　今、生き地獄の苦痛に苛まれていることが傍目にも
明らかであった。

　……血も流れ出している。
　手足から、腹部から、首筋から。

　村正の――劒冑の変形であれば、こんな事はない。

　何なのだ。
　この光景は!?

　生身の娘が鉄の人形へ変わってゆく。
　悶え苦しみ、血を流し、啜り泣いて。

　これは何だ。

　まるで気の狂った科学者の手で<RUBY text="・・">改造</RUBY>されているかの
ようではないか!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分：甲化進行。表情は凄絶な笑み
	Fade("黒幕", 50, 1000, null, true);

	CreateTextureSP("装甲２", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_d.jpg");
	CreateTextureSP("装甲", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_d.jpg");
	OnSE("se特殊_その他_部分除装", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Fade("黒幕", 500, 0, null, false);
	FadeF4("装甲", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("装甲", 300, false);

	SetFwR("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461250a07">
「ク……クク……」

{	FwR("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461260a01">
「…………茶々丸……」

{	FwR("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461270a01">
「貴方は、何なの」

{	FwR("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461280a07">
「あてはヒトとして生まれたツルギ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461290a07">
「ツルギとして造られたヒト」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461300a07">
「どちらでもあって、どちらでもない」

{	FwR("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461310a07">
「中途半端な合いの子だ」

{	FwR("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461320a01">
「……」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0461330a00">
「……茶々丸、お前は――」

{	FwR("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461340a07">
「蛆には腐肉を。蠅には糞を。
　百舌には蛙の串刺しを」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461350a07">
「今宵の虎徹は――血に飢えている」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分：甲化完了
	#aw_虎徹=true;

	Fade("黒幕", 50, 1000, null, true);

	CreateTextureSP("装甲２", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_e.jpg");
	CreateTextureSP("装甲", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_e.jpg");

	OnSE("se特殊_鎧_装着03", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	FadeDelete("黒幕", 2000, false);
	FadeF4("装甲", 200, 500, 1500, 0, 0, Dxl2, true);
	FadeDelete("装甲", 300, false);


	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0461360a00">
「……!!」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0,150);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　武者形態――――!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461370a07">
「お兄さん……あてはね……
{Wait(500);}
　――――――――――<RUBY text="リビング・アーマー">生体甲冑</RUBY>なんだ」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆シーン切り

//恐らくすぐ戦闘なので、BGM止めずにいます inc櫻井


}

..//ジャンプ指定
//次ファイル　"md04_047vs.nss"