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

scene md03_006.nss_MAIN
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
	#bg027_普陀楽評議の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_007.nss";

}

scene md03_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_005.nss"


//◆評議の間

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100, "bg027_普陀楽評議の間_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm34", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　評定の間には、六波羅幕府を主導する四将軍が参集
していた。
　それぞれ数人の幕僚を左右と背後に控えさせている。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆童心
	StL(1000, @100, @0, "cg/st/st童心_通常_私服a.png");
	FadeStL(300, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　<RUBY text="こが">古河</RUBY>公方、遊佐童心中将。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雷蝶

	StR(1000, @-50, @0, "cg/st/st雷蝶_通常_制服.png");
	FadeStR(300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　<RUBY text="おゆみ">小弓</RUBY>公方、今川雷蝶中将。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼

	StCL(1000, @-100, @0, "cg/st/st獅子吼_通常_制服.png");
	FadeStCL(300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　<RUBY text="ささがわ">篠川</RUBY>公方、大鳥獅子吼中将。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸
	StCR(1000, @100, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStCR(300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　<RUBY text="ほりごえ">堀越</RUBY>公方、足利茶々丸中将。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆消し

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　四者が掌握する権能は強大極まるものだ。
　進駐軍を唯一の例外として、彼らを掣肘できる勢力
は大和の大地の上に存在しない。

　四人が合意すれば、都市一つを滅却し去る事も可能
である。
　嘗て実際に行ったように。

　しかし、彼らが歩調を合わせて規模と意義の大きな
行動に出るためには、四者間の齟齬を解消ないし調整
する手順が必須となる。
　……それが今、開始されようとしていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060010a09">
「最優先事項は、邦氏殿下を大将領の地位に
就ける事。
　各々方、まずこの点はよろしいか？」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060020a08">
「ええ」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060030a06">
「異論はない。
　頭領不在のままでは、将兵の士気も綱紀も
低下する一方だ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060040a07">
「<RUBY text="おじじ">護氏</RUBY>の死亡発表からこっち、弛みっぱなし
だからなー。
　死因も何も説明なし、死んだとしか教えら
れないんじゃ、動揺して当然だろって話だが」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060050a08">
「正しく伝えた方が良かったかしらね」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060060a06">
「暗殺されたと思われるが詳しい状況は全く
不明、死体すら発見できていない、と？
　それこそ混乱の火種になろうよ」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060070a09">
「で、ござるのう」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0060080a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　謎めいた事件として扱われている大将領護氏失踪の
真相を、俺は勿論承知していたが、口にはしなかった。
　俺を含め、各公方の幕僚団はこの場に居並んでこそ
いるものの発言する権利は持っていない。

　仮にあったとしても言うわけがないが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060090a06">
「動揺を収める方法は一つ。
　邦氏殿下を戴いて新たな体制を発足させ、
旧体制の全てを過去に追いやるのだ」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060100a06">
「奉刀参拝の事件など……
　いやそもそも、足利護氏という男自体いな
かったことにしてしまえ」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060110a08">
「で、できるわけないでしょう!?
　そんなことっ!!」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060120a06">
「……馬鹿が。騒ぐな。
　過去の歴史を変えられんのはわかっている」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060130a06">
「俺が言っているのは、それくらいの意識で
今後に臨めという、気構えの話だ」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060140a08">
「わかってるから言ってんのよっ！
　全部無かったことにしろ!?　あんた、天下
を平定したお父様の業績を何だと思って――」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060150a09">
「雷蝶殿。雷蝶殿。
　ここはどうか、抑えてくだされ」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060160a08">
「我慢できることとできないことがあります！
　いくら童心様のお言葉でも、」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060170a09">
「お気持ちごもっとも。
　わかります。わかりますぞぅ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060180a09">
「されど獅子吼殿のご意見も、いささか暴言
とは申せ一理あり……今は昔日の栄光に酔う
時ではなく、明日の栄光が我らのものである
ことを万民に示さねばならぬ時でござるゆえ」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060190a08">
「それはそうですけれど……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060200a09">
「護氏公を<RUBY text="・・・・・">腫れ物扱い</RUBY>にするのは一時のこと。
　邦氏殿下の六衛大将領襲位が無事に行われ、
幕府の支配が再び確かなものとなったあとで、
改めて故人の栄誉を称えましょうぞ」

//【童心】
<voice name="童心" class="童心" src="voice/md03/0060210a09">
「その折には盛大な葬儀も執り行わねば」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060220a08">
「…………」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060230a09">
「兎にも角にも、まずは幕府体制の再建……。
　雷蝶殿ほどの御方であれば、ことの道理が
おわかりにならぬはずはござるまい」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060240a08">
「……はい」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060250a09">
「御了承、かたじけなく存ずる。
　いやいや安堵いたした。まずは我ら四人が
結束せねば、幕府を立て直すなど夢のまた夢
でござるからのう！」

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060260a09">
「はっはっはっはっはっ」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060270a08">
「…………」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060280a07">
「坊主必死だな」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060290a06">
「ああ。必死だな」

{	FwC("cg/fw/fw義清_不安.png");}
//【義清】
<voice name="義清" class="義清" src="voice/md03/0060300b21">
「入道様、頑張って」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060310a09">
「ふっふぅ。さぁて。
　では何事もなかったかのように仕切り直す
といたそう」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060320a09">
「邦氏殿下に大将領の位を襲って頂くには、
むろん朝廷の許しが必要でござる。
　そのための工作を、いま京都で室町探題が
進めているのでござるが……」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060330a08">
「何か支障でも？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060340a09">
「公家衆の態度が、どうもこう……
　暖簾に腕押し、糠に釘のようでしてなァ」

//【童心】
<voice name="童心" class="童心" src="voice/md03/0060350a09">
「今は帝が気鬱だの、吉日を選んでだのと、
言を左右にするばかり。
　具体的な言質を与えぬつもりらしいという
のが、室町よりの報告でござる」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060360a06">
「ふん。
　まぁ……予想されたことではないか？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060370a07">
「こっちが混乱の早期収拾を望むってんなら、
<RUBY text="・・・">あっち</RUBY>は逆のことを望むに決まってるしな。
　できるだけ今の状態を長引かせて、動揺を
拡大させたいんだろ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060380a07">
「そっから先の<RUBY text="ビジョン">展望</RUBY>がどの程度あるんだかは
知らんけど」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060390a09">
「各地の倒幕派と結び、一斉蜂起でもさせる
つもりか……。
　あるいは、進駐軍の介入に期待しておるの
か」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060400a06">
「<RUBY text="・・・・">その結果</RUBY>、大和がどうなるかまでは考えず
にか。
　無責任な策謀家どもならやりかねんな……」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060410a06">
「一つ、梃入れをしてはどうだ？
　和尚」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060420a09">
「いかようにでござろう？」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060430a06">
「俺が一軍を率いて上洛する」

{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060440a08">
「待たんかい！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060450a07">
「ガソリンの海に火のついた<RUBY text="マッチ">燐棒</RUBY>を投げ込む
よーなもんだなー」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060460a06">
「――ために篠川で準備を始めた。
　と、情報を流せばいい」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060470a09">
「脅しでござるか」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060480a07">
「見切られたらどうする？」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060490a06">
「その時は本当に上洛するまでだ。
　逆賊岡部頼綱追討の報告だの何だの、適当
に名目を見繕ってな」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060500a08">
「あんたそんなことして、平穏無事に済むと
思ってんの？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060510a06">
「平穏には済むまい。
　だがこのまま、公家衆に六波羅を侮らせて
おくよりはましだ」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060520a09">
「むゥ……」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060530a06">
「案ずるには及ばん。
　<RUBY text="おはぐろ">鉄漿</RUBY>どもの底など知れている」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060540a06">
「裏で絵図面を描いている奴らは別としても、
大半の公家が見ているのは目先の利害だけ。
　室町探題に渋って見せているのも、値上げ
交渉くらいの考えでしかなかろうよ」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060550a06">
「この機に少しでも待遇を良くさせたいのだ。
　脅しを掛ける一方、旨そうな餌をちらつか
せてやれば、たちまちこちらに靡いてくる」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060560a08">
「飴と鞭ってわけ？
　古典的ね」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060570a07">
「まっ、いいんでない？　古典的な手で。
　あの連中、頭の中身が千年前から変わって
ないしな」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060580a09">
「……なるほど。
　異論はござらんかな？」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060590a08">
「…………」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060600a09">
「では、この件は獅子吼殿にお任せいたそう」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060610a06">
「承知」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060620a08">
「これでうまくいけばいいけれど」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060630a07">
「うまくいったらいったで、次の問題だな」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060640a06">
「……進駐軍か」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060650a08">
「<RUBY text="ジュネーヴ">国連本部</RUBY>の諜報班から報告があったわね。
　ＧＨＱのロビー活動が実を結びそうだって」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060660a09">
「反乱鎮圧の様相が殊更に残虐性を誇張して
伝えられている、とのことでござったな。
　事実無根にはあらず、苦情を言えた筋合い
でもないが」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060670a07">
「国連決議が出るのも近いかね」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060680a06">
「対大和再宣戦――いや。
　対<RUBY text="・・・">六波羅</RUBY>宣戦布告か」

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060690a06">
「来るなら来ればいい……」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060700a09">
「もはやいつ戦端が開かれてもおかしくない
ということでござるのう。
　……むしろ、<RUBY text="との">先代</RUBY>が亡くなられた隙をすぐ
さま衝いてこなかったのが不思議なほど」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060710a07">
「政治の都合やら軍備の都合やらがあったん
だろ？
　あと、<RUBY text="こっち">六波羅</RUBY>が絶頂の時に叩き潰してこそ
ってのもあるだろうしな」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060720a08">
「その方が民衆の受けはいいわね」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060730a06">
「侮られたものだ」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060740a09">
「とすれば、開戦の狼煙が上がるのは、邦氏
殿下が大将領となられ幕府体制に再建の目処
がついた時」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060750a08">
「ほぼ同時……でしょうね。
　演出効果を狙うならそれが最高ですから」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060760a06">
「だろうな。
　そのつもりで我らも備えておく必要がある」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060770a06">
「もしも向こうが動かなかったら……その時
は好機だ。
　こちらから仕掛けて、一気に<RUBY text="ヨコハマ">進駐軍本部</RUBY>を
落とす！」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060780a09">
「……うむ……」

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060790a06">
「六年間の屈辱、一朝で晴らしてくれるわ」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060800a08">
「そう言うからには、順調なんでしょうね？
　あれの準備」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060810a06">
「当然だ。
　貴様などに心配される謂れはない」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060820a07">
「あぁ……<RUBY text="とらのこ">一七連隊</RUBY>ね。
　今のうちに一度見ておきたいな、あれ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060830a07">
「獅子吼、このあと篠川に戻るんだろ？
　あても一緒に行くよ」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060840a06">
「無用だ。
　貴様に心配される謂れもない」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060850a07">
「あるよー。アリアリ。
　あのプランに金と人員を一番出してるのは
あてなのでーす」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060860a07">
「世の中で一番エラいのは<RUBY text="スポンサー">金を出す人</RUBY>。
　これ常識。これ真理」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060870a06">
「…………。
　軍務はどうする」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060880a07">
「有能な副官に一任」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060890a06">
「……貴様か」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0060900a00">
「は」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　やにわに話を振られるも、動揺は見せず応答する。
　何もかも不意だった前回と違い、今度はあらかじめ
このような事も想定していた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060910a06">
「確かに、茶々丸よりは余程あてになりそう
だが……」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060920a07">
「そーだろーそーだろー」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060930a08">
「皮肉を理解しなさいよ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060940a09">
「しかし何にしても抜擢されたばかりの新任。
　茶々丸殿抜きで仕事をさせるのは、流石に
まだ荷が重いのではござらんかな」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060950a07">
「大丈夫だよね、中佐？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0060960a00">
「閣下の御期待に沿うべく奮励努力致します」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060970a08">
「…………」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060980a09">
「…………」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060990a07">
「む、イマイチな反応。
　もっと説得力のある言葉でアピールした方
がいいっぽいよ」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0061000a00">
「わかりました」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0061010a00">
「<RUBY text="このかた">堀越公方</RUBY>がいるとむしろ仕事の邪魔です」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0061020a07">
「わーいすごい説得力だー！」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0061030a07">
「旅に出ます。捜さないでください」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0061040a08">
「捜さないわ」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0061050a06">
「くっくっく……！
　そうか。それならいい」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0061060a06">
「期待しているぞ、湊斗中佐」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0061070a00">
「はッ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0061080a09">
「……では、議題を移すといたそう。
　倒幕派の動きについて報告があり申す」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0061090a09">
「最近、岡部残党らしき一派が――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md03_007.nss"