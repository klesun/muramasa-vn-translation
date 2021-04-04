//<continuation number="1350">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_005.nss_MAIN
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
	#bg022_山林a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_小太郎=true;

	$PreGameName = $GameName;

	$GameName = "ma02_006.nss";

}

scene ma02_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_004.nss"

//◆山中・無道
//◆長坂

	PrintBG("上背景", 30000);

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm35",0,1000,true);

	StR(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw長坂_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050010b45">
「…………」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050020b45">
「……っ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どさっ。膝を突く
//◆立ち絵消し

	OnSE("se人体_動作_後ずさり01",1000);
	DeleteStR(300,true);

	SetFwC("cg/fw/fw長坂_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050030b45">
「…………」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050040b45">
「ち……年を食ったかよ……俺も。
　あのような若造に……」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050050b45">
「……畜生が……」

{	#voice_on_小太郎=true;
	NwC("cg/fw/nwその他.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050060b35">
「ほっ、ほっ、ほっ。
　不覚であったのう。主らしくもない」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆小太郎
	StR(1000, @0, @0,"cg/st/st小太郎_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw長坂_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050070b45">
「小太郎！」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050080b35">
「怪我は大したことはないようだの。
　打ち身程度か。何より何より、主にもまだ
運があるということよ」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050090b45">
「…………」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050100b35">
「少し待て、薬をやろう。
　強壮剤もあるが如何する。呑むか」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050110b45">
「……。
　事情の説明はいらん様子だな？」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050120b35">
「見ておったからの」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050130b45">
「何もせずにか！」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050140b35">
「はてな。
　儂に何かできることがあったかの？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050150b45">
「空々しいことを抜かす。
　あの場に貴様がおれば、彼奴めを討ち取る
ことも容易かった筈だ！」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050160b35">
「否、とは言わぬがの。
　それで如何する？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050170b45">
「何……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050180b35">
「勢いに任せて巡察官とやらも斬ったかね？」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050190b45">
「……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050200b35">
「それはいかん。で、あろ？
　あの女を殺してしまったら我らは手詰まり。
主がいかにＧＨＱへ工作しておろうが無駄よ。
連中は体面のために主を処刑せずばなるまい」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050210b45">
「うぬ……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050220b35">
「それを思えば主が敗れたはむしろ不幸中の
幸いよ。むろん、殺されては元も子もない。
いざという際には手を出すつもりでいたが、
ほっ、主は自力で生還したではないか」


//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050230b35">
「儂ごときの手は無用であったということよ。
　だからのぉ、あまり責めてくれるな。儂も
些か腰が重いかもしれんが、主よりひと回り
余計に年を重ねておるでな。仕様がない」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050240b45">
「……抜かせ。
　まあいい。確かに今回は俺の失策であった。
貴様に当たったところで詮もないわ」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050250b45">
「しかし、この先は働いて貰うぞ」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050260b35">
「むろん。儂は主に雇われた身ゆえ、御用と
あらば承ろう。
　何をしようかの。歌を詠もうか。それとも
絵でも描こうかな」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050270b45">
「俺が貴様に<RUBY text="く">呉</RUBY>れている金は厚生年金か？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050280b35">
「冗談よ。凄むでない。
　残念なことに、我が家の家訓には無為徒食
という言葉がなくてのゥ。どうぞこの老骨に
鞭打って、こき使ってくれい」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050290b45">
「当たり前だ。恩着せがましいわ。
　貴様とて、ここでひと稼ぎせねば後がない
身であろう」


{	FwC("cg/fw/fw小太郎_笑い.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050300b35">
「ほっ。痛い所を突いてくれるの。
　まさに然りよ。主家と勤めとを失い、劔冑
までも一度は奪われた我が一族。怪しげな話
にでも食いつかぬことには、孫らが干上がる」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050310b45">
「口の減らぬ……。
　ふん。だがそう思うのならば、貴様らには
あの赤い武者を相手にして貰おうか」


{	FwC("cg/fw/fw小太郎_冷静.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050320b35">
「ほう……？　儂に譲るかね。あの村正を。
　これは意外。主ほどの気概ある男であれば、
借りは己の手で返さずにおかぬものと思うて
おったに」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050330b45">
「煽っているつもりか？
　言われずとも、できる事ならそうしている。
だが、翼を砕かれては如何ともならぬわ」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050340b35">
「飛べぬか」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050350b45">
「鍛冶師に直させぬことにはな。
　鍛冶か……ち。まさか<RUBY text="・">奴</RUBY>が俺の頼みを聞く
筈もなし。今頃は祝い酒でも呷っているか」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050360b35">
「休息をとればそのうち直ろう」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050370b45">
「貴様らの真打と一緒にするな。数打はそこ
まで便利に出来ておらん。
　自然修復など待っておっては、俺も貴様も
寿命が尽きるわ」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050380b35">
「やれ、それでは仕方もなかろうの。
　心得た。年寄りの冷水というものだがここ
は一つ、老いてなお盛んなりと言わせてくれ
ようかい」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050390b45">
「奴は俺の首を取らねば済まぬ様子だった。
すぐにも追って来よう。
　任せたぞ……<RUBY text="おいらく">老楽</RUBY>の身を貴様と二人、うら
寂しい森に沈めるなど御免なのでな」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050400b35">
「それはこちらも願い下げよ。言うてはなん
だが主の顔、墓の中まで付き合いたいような
代物ではないからのう」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050410b45">
「意見が合って結構だ。
　それはともかく、貴様……先程、聞き捨て
ならぬことを洩らしたな」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050420b35">
「とは？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050430b45">
「村正、と言ったか？」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050440b35">
「あの赤い劔冑のことだの」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050450b45">
「確かか」


{	FwC("cg/fw/fw小太郎_冷静.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050460b35">
「さて……。
　劔冑の目利きが儂の仕事ではないでなぁ。
見立て違いということもあろうよ」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050470b45">
「しかし、一目見て伝説が謳う村正と断定は
したわけか」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050480b35">
「……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050490b45">
「そういえばあの男、妙なことを尋ねてきた。
　銀星号のことを知らんか、などと……」


{	FwC("cg/fw/fw小太郎_冷静.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050500b35">
「ほーぅ……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050510b45">
「……露骨に惚けるではないか？
　俺の知らぬことを何か知っているようだ」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050520b35">
「はてな」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050530b45">
「貴様が俺の劔冑に施した妙な<RUBY text="・・・">仕掛け</RUBY>とでも
関わりのあることか？」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050540b35">
「……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050550b45">
「…………まあ、良い。
　いずれにしろ、事は厄介だ。あれが貴様の
言う通り勢州村正であろうと、なかろうとな」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050560b45">
「勝算はあるのか」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050570b35">
「ほっ。その心配は無用に願おうかの。
　妖甲村正であろうが名甲正宗であろうが、
この小太郎の前では同じ事。赤子にひとしく
無力で、可愛いものよ」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050580b45">
「随分と吼える。
　貴様らがそこまでの<RUBY text="わざ">術技</RUBY>を秘めていたとは、
この俺にして知らなんだぞ」


{	FwC("cg/fw/fw小太郎_自嘲.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050590b35">
「血の気の多い村の若い衆なぞを相手に使う
ようなものでもないからの。
　主のような練磨の猛者が敵ならば、出さぬ
ではないが……ほほ、見てみたいかの？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050600b45">
「……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050610b35">
「それとも……
　そちらの御仁が相手をして下さるかな？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


//◆ガサッ
	OnSE("se自然_草木_探る01",1000);

	WaitPlay("OnSE*", null);

	StL(1000, @0, @0,"cg/st/st雪車町_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050620a12">
「いやいや、いや……。
　そいつぁ勘弁して頂けませんかねぇ」


{	FwC("cg/fw/fw長坂_驚き.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050630b45">
「貴様……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050640b35">
「ほっ。
　久しいの、雪車町殿」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050650a12">
「へ、へ。
　どうも、ご無沙汰をしまして」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050660b45">
「……丁度いい。
　貴様に使いをやろうと思っていたところだ」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050670a12">
「はい、それはまあ、そうでしょうとも。
　大尉殿が仰りたいことは、ようくわかって
おります」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050680b45">
「一応言わせろ。腹に溜まる。
　貴様、民政局との<RUBY text="・・・">つなぎ</RUBY>は万全だと言って
いたのではなかったか!?　これで何処からも
邪魔は入らない、と！」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050690a12">
「えぇ、はい。確かにそう申し上げました。
　コブデン中佐にお引き合わせした折でした
っけねぇ……じかに話す機会も必要だろうと、
この雪車町の周旋で」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050700b45">
「だが実際はどうだ。巡察官だと!?
　あんなものを寄越させないための裏工作で
はないか……！　これでは何の意味もないわ。
コブデンは能無しか、それとも恩知らずか!?」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050710a12">
「お怒りはご尤も。大変ご尤もで。
　しかしですねぇ、大尉殿。コブデン中佐は
別に<RUBY text="・・・・・">ばっくれた</RUBY>わけでも、忘れてたわけでも
ないんでして……」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050720b45">
「約束通りのことはしたと？
　それでこの<RUBY text="ザマ">醜態</RUBY>か？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050730a12">
「通すべきとこにはちゃんと話を通しました
んで、はい。そいつぁ間違いないです。
　ただちょいと、予想してなかった穴が……
巡察官制度なんですがね。足を掬われまして」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050740b45">
「……」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050750a12">
「あれは民政局の人間が適当に割り振られて
行くやつで、占領地の実情を把握するための
巡察ってのが任務なんですが……
　表向きのことでしてねぇ」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050760a12">
「侵略者じゃありませんって格好つけるため
にあるようなもんでして。実際は有給休暇か
慰安旅行みたいなもんなんです。何もしない
のが暗黙の了解になってんですよ、巡察官は」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050770a12">
「そんなだから中佐も気にはしてなかったん
ですがねぇ。それでも大和人の中尉がここへ
巡察に出たって聞くと、使い走りに非公式の
伝言を与えて追わせたんですよ。こうして」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050780b45">
「貴様が？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050790a12">
「<RUBY text="さい">左様</RUBY>で。
　ただそれが、間に合いませんでね。着いた
時にはもう、あの巡察官が<RUBY text="・・・・・・">やっちまった</RUBY>後で
して……」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050800a12">
「後ほど中佐に連絡を飛ばしておきますが、
驚くでしょうねぇ。何もしないのが巡察官の
本分だっていうのに、まさか建前の方を押し
立てて暴れ回るお人がいようとは、いやはや」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050810b45">
「……。
　伝言とやらは、あの女に伝えたのか？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050820a12">
「えぇ、こちらへ来る前に。
　大尉殿との約束がどうのなんて言えません
から、単純に、何もしないで欲しいって意向
を伝えるだけの内容だったんですがねぇ……」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050830a12">
「それをいいことに、シラを切られちまいま
して。自分は巡察官の職務を果たすだけです、
とこうで。そりゃ正論ですからね。こっちと
しちゃ、返す言葉ってもんがない」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050840b45">
「……あの女は何者だ」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050850a12">
「詳しい話は存じませんがね。欧州のどこか
の軍から連盟軍に出向してるんだそうで。
　そいつは別に珍しくもなんともありゃしま
せんが……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050860b45">
「大和人なのだろう？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050870a12">
「その通りで。
　名前も大鳥香奈枝で大和人、もちろん大和
語に不自由はなし、と間違いのないところで
してねぇ。それがどうして欧州にいたやら」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050880b45">
「司令部での立場は強いのか？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050890a12">
「いぃえぇ、全然。主流の派閥にゃぁ属して
ないそうですからねぇ。大和人ならなんかで
役に立つこともあるだろうってんで、民政局
に席を与えられてるようなもんらしいですよ」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050900b45">
「……ふん。
　では今回の件は、単なる跳ねっ返りの独走
なのだな？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050910a12">
「そういうことですかねぇ……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050920b45">
「始末はどうつける？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050930a12">
「コブデン中佐に連絡を取って、召還命令を
出して頂きましょう」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050940b45">
「いつになる？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050950a12">
「こっちの連絡は明日中には着くとして――
電話がありゃ一発なんですがね。こんな村に
電線が引かれてるわきゃないですし――それ
を受けた中佐殿がすぐに動いてくれたとして」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050960a12">
「中佐から巡察官への連絡は、無線がある筈
ですんで。巡察官の方で居留守を決め込んだ
としても……ま、丸一日とは誤魔化せないで
しょう。その後は再び大尉殿の天下です」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050970b35">
「ここ数日が勝負ということだの」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050980b45">
「……わかった。宜しく頼む。
　思えば貴様には世話になりっぱなしだな。
ＧＨＱとの折衝に融資の仲介。幕兵以外の駒
も入用だろうと、小太郎を寄越してもくれた」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050990b35">
「そうだの。雪車町殿は儂にとっても、劔冑
を取り戻してくれたうえに儲け話の世話まで
してくれた恩人。感謝しておるよ」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051000a12">
「へへ。滅相もないことで」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051010b45">
「成功の暁には報いさせてもらおう」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051020a12">
「いやぁ、へへ……。
　お気持ちだけ、頂いておきましょうか」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051030b45">
「ほう。無欲な男だな。
　それとも……」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051040a12">
「へっ」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051050b45">
「俺が成功しようとしまいと<RUBY text="・・・・・・・">貴様らにはどう</RUBY>
<RUBY text="・・・・">でもいい</RUBY>のだと、そういうことか？
　ＧＨＱの使い走り……雪車町一蔵」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051060a12">
「へ、へ、へ……」


{	FwC("cg/fw/fw小太郎_冷静.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0051070b35">
「……」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051080a12">
「そう言っちゃ、身も蓋もありませんが……。
　まあ、要はそういうことですかねぇ」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051090b45">
「……鼻持ちならん奴め」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051100a12">
「恐れ入ります」


{	FwC("cg/fw/fw小太郎_笑い.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0051110b35">
「ほっ、ほっ、ほっ」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051120b45">
「ふん……。
　もう一つ聞いておきたいことがある」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051130a12">
「何なりと」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051140b45">
「赤い武者は見たか？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051150a12">
「いえ……話は聞きましたがね。
　ご災難だったようで」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051160b45">
「何者かわからんか？
　本人の言を信じるなら、六波羅でも進駐軍
でもないらしい」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051170a12">
「さぁて。
　心当たりってほどのもんでもございません
が……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051180b45">
「なんだ」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051190a12">
「先刻、巡察官殿に会いに行った折ですがね。
　<RUBY text="まえ">以前</RUBY>にちらりと顔を合わせたことのある、
警官と出くわしましたんで」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051200b45">
「……警官？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051210a12">
「やたら不景気な面した若い男なんですがね」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051220b45">
「どういう人間だ」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051230a12">
「さて、ねぇ。口も利いてないんで。
　ただ、あれはねぇ……あたしらなんかとは
どうも、生理的に合いそうにない野郎ですよ」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0051240b35">
「ほっ。と、いうと？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051250a12">
「<RUBY text="・・">善人</RUBY>です。
　真っ当な家で教育を受けてきたんでしょう
ねぇ」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051260b45">
「……はッ。
　それは確かに、合わんか」


{	FwC("cg/fw/fw小太郎_笑い.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0051270b35">
「ほほ。儂はともかくとして、主らはのう。
　互いに虫が好かぬであろうて」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051280a12">
「好きか嫌いかで言えば、別に嫌いじゃあり
ませんがねぇ。
　あたしゃ、<RUBY text="・・・">真面目</RUBY>に生きてる人間はみんな
好きなんで。善玉でも悪玉でも……ね」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0051290b35">
「今の世の中、誰もが真剣よ。遊びで生きて
いられる奴などおらんわさ。
　それで、雪車町殿。つまりはその男が武者
だ、と？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051300a12">
「……そう決めつけられるほどの材料はない
んですがねぇ。
　ただ、最初に会った時から思ってたんです
がね。あの男、<RUBY text="やっとう">剣術</RUBY>の方は相当使いますよ」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051310b45">
「武者であってもおかしくないほどに、か？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051320a12">
「えぇ」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051330b45">
「ふむ……。
　警察が武者を抱えているとは初耳だが……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0051340b35">
「念の為。
　雪車町殿、そやつの人相を教えて下さらん
かな」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051350a12">
「お安い御用で……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma02_006.nss"



