//<continuation number="1430">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_017.nss_MAIN
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

	$GameName = "mc02_018.nss";

}

scene mc02_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_016.nss"

//◆基地
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "BLACK");
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg028_横浜ＧＨＱ基地_01.jpg");
	FadeDelete("上背景", 0, true);
	Fade("黒幕１", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　いずれあるべきと思っていた<RUBY text="イベント">出来事</RUBY>はその日、やや
唐突に訪れた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明の部屋
//◆キャノン＋兵士

	Fade("黒幕１", 1000, 1000, null, true);
	CreateSE("SEのっく", "se人体_動作_ドアノック01");
	CreateSE("SEあける", "se日常_建物_牢獄扉開く02");
	CreateSE("SEあるく", "se人体_足音_歩く_地下_L");
	MusicStart("SEのっく",0,1000,0,1500,null,false);
	WaitKey(1000);

	OnBG(100,"bg028_横浜ＧＨＱ基地_01.jpg");
	FadeBG(0,true);
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg030_ＧＨＱ監禁部屋_01.jpg");

	MusicStart("SEあける",0,1000,0,1500,null,false);
	WaitKey(500);

	MusicStart("SEあるく",0,1000,0,1500,null,false);

	FadeDelete("黒幕１", 1000, true);

	WaitKey(500);
	SetVolume("SE*", 1000, 0, null);

	StL(1000, @60, @0,"cg/st/stＧＨＱ兵士_通常_制服.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);

	StCL(1100, @-90, @0,"cg/st/stキャノン_通常_制服.png");

	Move("@StL*", 300, @20, @0, DxlAuto, false);
	FadeStL(300,false);

	Wait(100);

	Move("@StCL*", 300, @20, @0, DxlAuto, false);
	FadeStCL(300,true);
	Wait(300);


	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170010b03">
「クライブ・キャノン中佐だ。
　進駐軍総司令部参謀第二部に属している」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170020a00">
「湊斗景明です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　前触れ無しに突然、しかし礼儀正しくノックはして
から現れたその男。
　俺よりも十歳、あるいはもう少し上の年頃か。

　アングロサクソンとして典型的な容姿を備えている。
　が、江ノ島で相対したガーゲット少佐に比べれば顔
立ちはずっと凡庸で、印象に残る何物も無い。

　内面の鋭さといったものも、特に窺えなかった。
　
　何処にいても<RUBY text="モブ">群衆</RUBY>に溶ける、そんな男だ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se日常_物_椅子鳴る01",1000);
	DeleteStA(300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　儀礼的な握手が済むと、その中佐は自然な無遠慮さ
で椅子に座った。
　俺もそれに倣い、ベッドの上へ腰を下ろす。

　随行の兵士は銃口を天井へ向けたまま、男の背後に
佇立した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm35",0,1000,true);
	SetFwC("cg/fw/fwキャノン_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170030b03">
「何か、不自由していることはないかな？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170040a00">
「……不自由？」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170050b03">
「ああ。要望と言い換えてもいいが。
　あるだろう？　食事はパンより<RUBY text="ライス">米飯</RUBY>にして
くれとか、<RUBY text="タタミ">大和式絨毯</RUBY>が欲しいとか、<RUBY text="フジヤマ">富士山</RUBY>
が見たいとか、<RUBY text="ゲイシャ・ガール">芸者さん</RUBY>を呼べとか――」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170060a00">
「……そうですね。
　一つ、切実な不自由を抱えてはいます」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170070b03">
「遠慮なくどうぞ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170080a00">
「生まれた国が他国軍の進駐を受け、しかも
自分の身柄はその軍に囚われているのです。
　食事にも芸者にも格別不満はありませんが、
この不自由からは願わくば解放されたいもの」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170090b03">
「――」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170100b03">
「驚いたな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　少しぽかんとした後で、クライブ・キャノン中佐は
にやりと口元を歪ませた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170110b03">
「君はそんな、率直な物言いを好むのか？
　報告から受けていた印象といささか違うな」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170120a00">
「時と場合によります。
　虜囚という環境は婉曲な性質を養うに適切
であるとは言えません、中佐殿」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170130b03">
「ふぅん……？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170140a00">
「自制心を育むにも。
　誰かに諧謔を口にする機会は今の自分には
得難いもので、なかなか抑えが利きません」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170150b03">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　中佐は、今度は完全に絶句した。

　それから無理矢理に微笑もうとして失敗し、滑稽に
引き攣った形相となり、自分でも気付いたのか片手で
その顔を覆い隠した。
　……やがて指の間から含み笑いが洩れた。

　本当の笑いだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170160b03">
「……そうだ。言ってたな、あの<RUBY text="マタ・ハリ">娼婦</RUBY>。
　かなりの努力を払って精密に観察するなら、
やたらと愉快な<RUBY text="ひと">男</RUBY>でもあります、とか……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170170a00">
「……？」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170180b03">
「結構だ。
　いや、大いに結構だよ。俺に出来る範囲で
取り計らおうじゃないか」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170190b03">
「自由か……与えよう。
　差し当たっては君一人分。だがゆくゆくは
君の故国の分も」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170200b03">
「<RUBY text="ミスタ・ミナト">湊斗君</RUBY>？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170210a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　どうやら、話は本題へ入るようだ。
　俺は心持ち背筋を正した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170220b03">
「君は八幡宮の<RUBY text="プリンス">親王</RUBY>に従っていたと、報告を
受けているが……？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170230a00">
「はい。
　私的に雇用され、<RUBY text="エージェント">代行者</RUBY>のような事をして
いました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　この中佐が大鳥大尉から、あるいは別の経路から、
どこまでの情報を仕入れているのか。俺には知りよう
もない。
　真実ではなく嘘でもない、無難な回答が必須だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170240b03">
「なかなかの活躍ぶりだったらしい」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170250a00">
「恐縮です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　<RUBY text="・・">活躍</RUBY>というのが何を指すのか――その活躍を受けて
ＧＨＱが俺に対しどんな<RUBY text="リアクション">対応</RUBY>を取ったか、全て承知の
上で<RUBY text="そらとぼ">空惚</RUBY>ける。
　構わず、キャノン中佐は切り込んできた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170260b03">
「その能力を、今後は我々のもとで生かして
いく気はないか？
　君の最も建設的な可能性はそうすることで
開かれると、信じているんだが……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170270a00">
「……建設的」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170280b03">
「舞殿宮はもういない」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170290a00">
「……」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170300b03">
「<RUBY text="ブラフ">空手形</RUBY>で取引するつもりは無いよ。他でも
ない君の努力……あるいは別の理由によって、
舞殿宮は死を免れた。
　その点は認めておこう」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170310b03">
「だが当面、謀略ごっこを楽しむ余裕はない
はずだし、必然、君を有効に運用もできない。
　殿下が政治的行動力を取り戻す頃には……
生憎、もう介入の余地は無くなっている」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170320b03">
「今現在、情勢は激動の渦中にあるんだ。
　後世の人間の目にはきっと明らかだろうな。
当事者たる我々、今を生きる人間にはむしろ
捉え難いが……」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170330b03">
「君はどうかな。明日は今日の<RUBY text="コピー">複写</RUBY>だと思う
か？　平穏な日々が積み重なってゆくと？
　今日、京浜新聞の一面は動物園から脱走し
たカバの話だった。明日はパンダの出産か？」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170340b03">
「舞殿宮殿下の復権とその後の活躍を信じて、
半年か一年、雌伏の日々を送ってみるか？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170350a00">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170360a00">
「そこまでの楽観視は……
　残念ながら、自分には不可能のようです」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170370b03">
「だろうね」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170380b03">
「それなら話も進めやすい。
　故国の運命を憂うなら、湊斗君、ＧＨＱに
協力するべきだよ」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170390b03">
「我々は六波羅の悪政から大和を解放すると
約束できる……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170400a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　少し逡巡してから、俺は決断した。

　伏せられた<RUBY text="カード">手札</RUBY>の一枚をこちらの手で切る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170410a00">
「一度は抹殺するべく謀った相手を、今度は
味方に引き入れようと？」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170420b03">
「状況の変化だよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　進駐軍中佐は、特に悪びれる風でもなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170430b03">
「江ノ島の一件か……
　最終的に<RUBY text="モンスター">銀星号</RUBY>の出現で滅茶苦茶な結末を
迎えてしまったようだが」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170440b03">
「確かに、俺はあの島へ派兵した。
　六波羅の兵器開発と君、両方をひとまとめ
に処分しようとした部下の提案を容れてね」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170450a00">
「……ジョージ・ガーゲット少佐？」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170460b03">
「ああ。
　あの時点において、彼の意見は妥当だった」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170470b03">
「君は俺にとって、得体の知れない敵性分子
でしかなかったからだ。
　迅速な抹殺が必要だと考えたし、今も別に
判断を誤ったとは思っていない」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170480a00">
「……」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170490b03">
「しかし……現在、君は我々の基地の内部に
いる。未確認の敵性存在ではなくなった。
　そして、我々に対する病的なまでの敵意の
所有者でないことは態度から明らかだ」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170500b03">
「実際、こうやって理性的に会話することも
できる……。
　それがわかれば、こちらにもまた別の考え
方が生まれる」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170510b03">
「そういうことさ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　気安い言い草に、しばし黙る。
　……納得せざるを得ないようだった。

　元々、彼の手の翻しように深刻な憎悪を抱いていた
わけではない。反応を見たかっただけの事だ。
　その意味では、<RUBY text="・・・・">食えない</RUBY>男だという事実がわかった
に過ぎなかったが。

　気分を切り替えて、攻め口を転じてみる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170520a00">
「成程。中佐殿、貴方の立場からすれば尤も
なことです。
　納得できます……自分に対する措置に関し
ては」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170530b03">
「……というと。
　他に何か、納得できないことが？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170540a00">
「些か。
　そもそもの、貴方がたが自分を敵視するに
至った所以です」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170550b03">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170560a00">
「貴方がたは、〝悪しき大和武者〟を故意に
作り出し……人々の信望を進駐軍に集中させ
ようと企てておられた」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170570b03">
「……」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170580a00">
「この非道と言わざるを得ない措置について、
中佐殿のお考えは如何に」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　今度は――
　
　彼は一切、言質を与えようとしなかった。

　否定はしないが肯定もしない。
　曖昧な沈黙が流れる。

　……だが俺は、中佐が怒ってはいない一方で、別に
窮してもいないことを何とはなしに察していた。
　これはただ、会話の<RUBY text="・・">呼吸</RUBY>を計っているだけの沈黙だ。

　彼は返答をとっくに定めている……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170590a00">
「中佐殿」


{	FwC("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170600b03">
「……そう思うのなら。
　君はやはり、我々に協力するべきだな？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170610b03">
「いま君が言ったような方法より、はるかに
<RUBY text="スマート">穏健</RUBY>な手段を俺は考えているよ。
　それには君の惜しみない協力が必要となる」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170620a00">
「…………。
　わかりました。伺いましょう」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170630a00">
「クライブ・キャノン中佐。
　貴方は自分に何を求めておられるのです？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170640b03">
「六波羅と戦って欲しい。
　あの赤い劒冑を纏い――」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170650b03">
「<RUBY text="・・・・・・・・">我々と肩を並べて</RUBY>」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170660a00">
「…………」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170670a00">
「それはつまり」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170680b03">
「ああそうだ。
　<RUBY text="ヒーロー">英雄</RUBY>になって貰いたいんだ、君に」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170690a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SoundPlay("@mbgm36",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　思わず口の端が強張ったのを、彼は見逃さなかった
ろう。
　隠したかったが、隠し切れなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170700b03">
「……不本意かな？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170710a00">
「……感激の余り貴方の両手を握ろうとして
いないことは、御覧の通りです」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170720b03">
「残念だ。念入りに洗っておいたんだが。
　一応、話を最後までさせて貰ってもいいか
な」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170730a00">
「構いませんが、伺わずとも察しはつきます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　やや投げやりに云う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170740a00">
「大和国民を<RUBY text="・・・・">代表して</RUBY>、自分はＧＨＱに協力
するわけですか」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170750b03">
「まぁ……そんなところだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　若干決まり悪げに、キャノン中佐が苦笑する。
　要するに、ここでも手を翻そうと言うのだ。

　大和武者の評判を下げるのではなく。
　大和武者を持ち上げる。但し――彼をＧＨＱに取り
込んだ上で。

　進駐軍と共闘し、六波羅を相手に英雄的活躍をする
武者。
　……そんな存在が誕生すれば、世論の向かう方向は
決まったようなものだろう。

　単に進駐軍が六波羅を撃破するよりも遥かに、大和
の人心に及ぼす影響は強いに違いない。
　結局、進駐軍は外からの侵入者である。偏見は抜き
難い。が、両者の架け橋となる者が現れたなら――

　思わず嘆息が零れた。
　……本当にどこまでもアングロサクソンという生物
は合理主義精神の徒だ。目的を充足する為の最適解を
見つけ出す才能にかけて卓抜している。

　程々にしてくれと言いたくなる<RUBY text="まで">迄</RUBY>に。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170760a00">
「……」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170770b03">
「無理に大喜びしろとは言わないさ。
　だが、君にも志があるだろう？　舞殿宮の
手元で働いていたのなら」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170780a00">
「志、ですか。
　何に対しての？」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170790b03">
「世界では？
〝<RUBY text="パックス・ブリタニカ">大英の平和</RUBY>〟の完成は人類史から戦争なる
病害を撲滅し、一段階上の社会を生み出すだ
ろう。この高潔なる事業にこそ身を捧ぐべし」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170800a00">
「大き過ぎます。
　加えて言うなら、夢想的過ぎます」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170810b03">
「同感だ。言ってて歯が浮いた。
　大和一国に絞ろうか」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170820a00">
「大和の将来」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170830b03">
「ああ。
　このまま六波羅幕府に春を楽しませておく
のが最善だとは、まさか思うまい？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170840a00">
「ＧＨＱ――大英連邦に春を楽しませるのが
最善だと、そう信じろと？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170850b03">
「ふん。比較の問題だな？
　どちらが大和国民にとっても暖かいか」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170860b03">
「悩むほどの難題でもないと思うけどね」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170870a00">
「さて……。
　他国人の銃口にひれ伏すよりは、まだ自国
人の剣に、と考える向きもあるでしょう」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170880b03">
「実益よりも自尊心、か？
　それは美しいのかもしれないが、賢明とは
言いかねるな」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170890a00">
「賢明。
　独立国家の誇りを捨て、<RUBY text="クィーン">女王陛下</RUBY>の施しを
受ける身に甘んじる事が、賢明な選択という
ものですか？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170900b03">
「――――」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170910b03">
「君の言うことは……まぁ、理解できる」


{	FwC("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170920b03">
「が、得てして大衆とは君のように考えない
ものだ。
　誇りある苦痛より隷従しての安楽を望む」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170930b03">
「そうした人々に対する理解も……必要だと、
俺は思うがね……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170940a00">
「…………」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170950a00">
「諒解しました。それは良しとしましょう。
　実際、大英連邦に支配された各国の状況を
見れば、六波羅の統治よりも市民に対しての
配慮が深いことは明らかです」


//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170960a00">
「その上で申し上げますが。
　自分も、負け馬に乗るのは御免蒙りたい」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170970b03">
「ふむ？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170980a00">
「今のところ、中佐殿が提示された未来図は
<RUBY text="パイ・イン・ザ・スカイ">絵に描いた餅</RUBY>に過ぎないという事です。
　これまでのお話だけでは、とても命を賭す
真似などできません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　俺はあえて、打算的な態度を示した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170990a00">
「六波羅に対する勝算はお有りか。
　肝心なその点をお訊ねしたい」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171000b03">
「……進駐軍の現有戦力は、既に関東地方に
おける六波羅の全戦力を上回っている。
　その事実だけでは足りないか？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171010a00">
「更にフィリピンからの増援も加わる」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171020b03">
「<RUBY text="イエス">その通り</RUBY>」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171030a00">
「戦力差は成程、大きいでしょう。
　しかし勝敗がそれのみで決するというもの
でもない」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171040a00">
「何と言っても、大和は貴方がたにとっては
異郷の地だ」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171050b03">
「地の利で劣ることは認めよう……。
　だがそれだけの理由で戦力差は覆り、幕府
が我々に勝利し得ると、君は考えるのか？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171060a00">
「真逆」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171070b03">
「では？」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171080a00">
「貴方がたは開戦するに際し、絶対的な条件
を一つ設定する筈だと思うのです、中佐殿。
　即ち<RUBY text="・・・・">短期決戦</RUBY>」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171090b03">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171100a00">
「連盟軍を運営する各国……つまり金を出す
人々は、戦争の長期化を何より厭うでしょう。
　大戦に続いてまた年単位の戦争を、しかも
こんな極東の地で行えば、出費は莫大になる」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171110a00">
「下手をすれば国がいくつか<RUBY text="・・">倒産</RUBY>します。
　盟主たる大英連邦さえ傾きかねない」


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171120b03">
「……確かにね。
　我々の戦力は充分でも、戦力を稼動させる
ための財力は……潤沢とはなかなか言い辛い
状況にある」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171130b03">
「そう、だから我々は短期決戦を目指す。
　そして……実現するだろう」


{	FwC("cg/fw/fw景明_戦闘.png");}
//嶋：修正（六波羅軍）【090930】
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171140a00">
「六波羅が地の利を盾に取り、勝つよりも
<RUBY text="・・・・">負けない</RUBY>戦いに徹したとしても？」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171150b03">
「彼らの性質的に、なかなかその決断は下せ
ないと思うが？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171160a00">
「祖国を裏切り、貴方がたの軍門にひとまず
屈する恥辱にも耐えた六波羅です。
　必要とあらばどんな手段も躊躇いますまい」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171170b03">
「……なるほど」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171180a00">
「自分が六波羅の将帥であれば、貴方がたの
攻勢を支える一方で横須賀に兵を回します。
　横須賀は進駐軍にとって補給の要……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171190a00">
「ここを潰されれば、貴方がたの行動限界は
更に早まります。……物資は現地調達するに
も限度がある。
　動ける間に普陀楽を陥とすのはまず、無理」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171200a00">
「だからといって横須賀の防備を堅くすれば、
決戦の兵力が不足する。
　やはり短時日の内に幕府軍を駆逐するなど
夢物語になってしまう」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171210a00">
「……この上もし、フィリピンからの援軍が
海上で幕府艦隊に要撃されるようなことでも
あれば――」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171220b03">
「…………」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171230a00">
「貴方がたは大和占領どころか、生き延びる
方法をまず考えなくてはならない境遇に陥る。
　総じて……進駐軍はそう楽観できる状況に
はないと、自分には思えるのです」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171240a00">
「如何か。中佐殿」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171250b03">
「ふむ。
　まぁ……認めるさ」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171260a00">
「……」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171270b03">
「全般状況を鑑みるに、まずまず妥当な分析
だ。仮にいま、戦争の火蓋を切って落とせば、
君の言うように事態が推移する可能性は高い。
　我々が短期間で勝利を掴むのは困難だ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171280a00">
「その薄い勝算を濃くするために自分が求め
られているのなら、中佐殿……お眼鏡違いも
甚だしいと答えるほかありませんが」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　<RUBY text="・・・・">作られた</RUBY>英雄になるのでさえ荷が重いのに、<RUBY text="・・・">本物の</RUBY>
英雄などが務まる筈もない。
　……英雄。ただ一騎で戦場に立ち、六波羅軍を駆逐
してゆけば良いのだろうか。

　それは俺ではなく銀星号にでも依頼して貰いたい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171290b03">
「そんな無茶は言わない。
　極端な話、君は我々と一緒に戦線へ立って
くれるだけでいいんだ」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171300b03">
「戦力としては何ら期待していない。
　……君ほどの勇者にこう言っては、侮辱と
しか聞こえないかな？　だとしたら謝ろう」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171310a00">
「無用です。
　しかし、であれば貴方がたは独力で六波羅
を撃破せねばならない」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171320b03">
「するさ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　勝利は困難と言ったばかりの口で、キャノン中佐は
事もなげに断定した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171330b03">
「我々は勝利する。ごく短期間のうちに。
　損害は軽微であり、戦果は莫大だろう」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171340a00">
「……何の根拠もなく、そのお言葉を信じろ
と？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171350b03">
「根拠ね。
　そうだな……もっともだ」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171360b03">
「なら君は、根拠を得てから決断すればいい。
　……六波羅が事実上壊滅した後で、改めて
君を勧誘することにしよう」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171370b03">
「君の協力はそれからでも構わないんだ」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171380a00">
「…………？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171390b03">
「しかし……
　その時になっても尚、君が決断を下せない
ようなら――」


{	FwC("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171400b03">
「君は我々にとって必要な人間ではなくなる」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171410a00">
「…………」


{	FwC("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171420b03">
「良き未来は努力を積み上げた山の上に。
　破局の結末は怠惰が沈澱する沼の底に」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171430b03">
「必ずしもそうではないかもしれない。だが、
そう信じておくべきだ……人として生を全う
するつもりがあるならね。
　違うか？　湊斗景明」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc02_018.nss"