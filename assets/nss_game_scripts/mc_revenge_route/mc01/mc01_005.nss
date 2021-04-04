//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_005.nss_MAIN
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
	#bg075_横須賀軍港_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_コブデン=true;

	$PreGameName = $GameName;

	$GameName = "mc01_006.nss";

}

scene mc01_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb01_003_1.nss"

//◆以下のテキストは共用部分"mb01_003.nss"なため使用しない

//◆ＣＧ：新聞紙面
//◆↓英雄編と共用。食い違いのないよう注意
/*
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);	
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/ev/ev168_新聞.jpg");
	SoundPlay("@mbgm34",0,1000,true);
	Delete("上背景");
	FadeDelete("黒幕１",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
　　　　　　　　　〝元帥、薨去〟

〝本日六時、幕府申次衆より、正三位六衛大将領足利
護氏殿下の薨去が発表された〟

〝薨去の日時、また死因等について、説明は一切ない。
　普陀楽城本丸には護氏殿下の御嫡孫であらせられる
四郎邦氏殿下が入られ、政務を代行される予定である
との伝達があったのみである〟

〝混乱の渦中にある各界では、京都の陰謀、進駐軍の
暗躍、岡部の残党による復仇等々、様々な風説が飛び
交い、また先日の奉刀参拝以来の八幡宮封鎖との関連
も取り沙汰されているが〟

〝どの説も根拠というほどのものはなく、憶測の域を
出ていない〟

〝ただ消息筋の情報によれば大将領殿下の健常は全く
疑うべくもなかったとのことであり、これが正しいと
すると病死とは考えられず、薨去にはやはり人為的な
何事かが関与したものとみられる〟

〝また、この発表を受けた進駐軍総司令部では――〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト。ウェイト

	FadeDelete("絵背景50", 1000, true);
	SetVolume("@mbgm*", 1000, 0, null);
	WaitKey(1000);


*/

//◆横須賀軍港。夜
//◆横書きボックス
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100, "bg075_横須賀軍港_03.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SoundPlay("@mbgm35",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　彼を指して、殊更に不満の多い男であったとは言え
ないだろう。

　ある日突然紅茶を飲む自由を奪われたなら憤慨した
であろうが、紅茶ではなく珈琲なら我慢もしたろうし、
年下の妻が密通したと聞けば剣を抜くとしても、彼女
が美形俳優を戴く劇場へ足繁く通う位なら許容できた。

　人並み程度の寛容さは備えた男だったと言って良い。
　彼の周囲の人間はやや異なる意見を示したかもしれ
ないが、それは必然的な見解の相違というものだ。

　少なくとも彼自身は、日々の些細なあれこれについ
ていちいち不満を述べ立てたいなどと思ってはいない。
　伝統ある<RUBY text="ジェントリ">英国騎士</RUBY>としての自負というものがある。

　だがその自負は寛容を心掛ける事と同時に、不当な
弾圧に対しては手袋を投げつける事をも命じていた。
　度の過ぎた寛容の精神は単に卑屈であって、騎士の
名誉とは決してそぐわないからだ。

　敬してやまぬ父親が彼の過ちに怒り、鉄拳を振るう
なら涙と共に受け入れよう。
　愛してやまぬ妻が彼の長い不在を嘆き、平手打ちを
見舞うなら抱擁で応えよう。

　しかし彼の財産を略奪した盗賊に帰りのタクシー代
まで世話してやる<RUBY text="いわ">謂</RUBY>れがあろうか？
　あるはずはない。盗賊の背中に贈るべきはナイフの
一投、それに尽きる。

　だから彼は、自分の正しさを全く疑わなかった。

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/stコブデン_通常_制服.png");
	FadeStR(300,true);

	SetFwH("cg/fw/fwコブデン_怒り.png");

	#voice_on_コブデン=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050010b04">
「急げ！　もたもたするな」


{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／共犯Ａ】
<voice name="ｅｔｃ／共犯Ａ" class="その他男声" src="voice/mc01/0050020e049">
「……巡回はしばらく来ませんよ。
　十五分ごとに基地をひと回りする決まりに
なっちゃいますが、あいつらの時計は秒針が
四周しないと分針が進まない仕組みですから」


{	NwH("cg/fw/nyＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／共犯Ｂ】
<voice name="ｅｔｃ／共犯Ｂ" class="その他男声" src="voice/mc01/0050030e050">
「そこの海に落として錆びつかせちまったん
でしょうね。きっと」


{	FwH("cg/fw/fwコブデン_怒り.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050040b04">
「下らんお喋りはいい！
　横浜にいた頃の部下を思い出して苛々する」


{	FwH("cg/fw/fwコブデン_通常.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050050b04">
「さっさと済ませてくれ……。
　潮風が身に染みる。部屋に戻って毛布でも
かぶりたい」


{	NwH("cg/fw/nyＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／共犯Ｂ】
<voice name="ｅｔｃ／共犯Ｂ" class="その他男声" src="voice/mc01/0050060e050">
「そりゃ、俺達だって同じですがね」


{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／共犯Ａ】
<voice name="ｅｔｃ／共犯Ａ" class="その他男声" src="voice/mc01/0050070e049">
「……本当にやっちまっていいんですか？
　バレたら軍籍剥奪程度じゃ済まねえだろ、
これ」


{	FwH("cg/fw/fwコブデン_通常.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050080b04">
「ふん。ばれるものか。
　巡回が一時間に一度しか来ないと言ったの
はお前達だぞ」


//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050090b04">
「六波羅の間者から単なる愉快犯まで、入る
気になれば誰でも入れるということだろうが？
　内部の人間が殊更に疑われたりはしない」


{	NwH("cg/fw/nyＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／共犯Ｂ】
<voice name="ｅｔｃ／共犯Ｂ" class="その他男声" src="voice/mc01/0050100e050">
「まぁ……ねぇ？」


{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／共犯Ａ】
<voice name="ｅｔｃ／共犯Ａ" class="その他男声" src="voice/mc01/0050110e049">
「こうやって爆薬仕掛けてる現場を押さえら
れなければ、ね……」


{	FwH("cg/fw/fwコブデン_怒り.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050120b04">
「だから急げと言っている」


{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／共犯Ａ】
<voice name="ｅｔｃ／共犯Ａ" class="その他男声" src="voice/mc01/0050130e049">
「へい、へい」


{	NwH("cg/fw/nyＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／共犯Ｂ】
<voice name="ｅｔｃ／共犯Ｂ" class="その他男声" src="voice/mc01/0050140e050">
「今更ナシにもできませんから、やりますが。
　……どうも割りに合わねぇ気がしてきたな」


{	FwH("cg/fw/fwコブデン_通常.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050150b04">
「<RUBY text="ロンドン">首都</RUBY>の郊外に牧場を一つ買える程度の報酬
では不足か？」


{	NwH("cg/fw/nyＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／共犯Ｂ】
<voice name="ｅｔｃ／共犯Ｂ" class="その他男声" src="voice/mc01/0050160e050">
「不足ってこともないですが」


{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／共犯Ａ】
<voice name="ｅｔｃ／共犯Ａ" class="その他男声" src="voice/mc01/0050170e049">
「脛に傷を持ったまま軍隊で生きていくこと
を考えますとね」


{	FwH("cg/fw/fwコブデン_通常.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050180b04">
「軍に格別の愛着があるわけでもあるまい？
折を見て退役してしまえ。
　私もそうする」


//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050190b04">
「こんな異国で鄙びた海を見続ける毎日など
もう御免だ。もう充分だ。もう勘弁してくれ。
　金は手に入れたんだ。後は一日も早く本国
へ戻って妻と平穏に暮らす以外に望みもない」


{	FwH("cg/fw/fwコブデン_怒り.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050200b04">
「ああ、だから私はそうするともさ。
　そうして何が悪いというのだ？　<RUBY text="ヨコハマ">司令部</RUBY>の
腐れ野郎ども！」


{	SetVolume("@mbgm*", 1000, 0, null);
	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc01/0050210b03">
「……無論、貴官がただそうするだけなら、
別に不満は無いんだがね。
　我々、腐れ野郎どもとしても」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ライトが。ホワイトアウトホワイトイン？
//◆ＧＨＱ兵。包囲

	OnSE("se日常_建物_照明点灯",1000);
	WaitKey(500);
	OnSE("se特殊_雰囲気_兵士包囲", 1000);

	CreateColorSPadd("絵色白", 19900, "#FFFFFF");
	CreateTextureSPadd("ライツ", 100, @0, @0, "cg/data/circle_04_00_1.png");

	Wait(12);

	DeleteStA(0,true);
	FadeDelete("絵色白", 1000, true);


	WaitKey(1000);
	SetVolume("@OnSE*", 1000, 0, null);
	OnSE("se戦闘_銃器_複数構える02",1000);

	SetNwH("cg/fw/nyＧＨＱ兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／共犯Ａ】
<voice name="ｅｔｃ／共犯Ａ" class="その他男声" src="voice/mc01/0050220e049">
「…………あーあ」


{	NwH("cg/fw/nyＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／共犯Ｂ】
<voice name="ｅｔｃ／共犯Ｂ" class="その他男声" src="voice/mc01/0050230e050">
「……まぁ、ねぇ？
　こんなことになるんじゃないかとは……ね」


{	FwH("cg/fw/fwコブデン_唖然.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050240b04">
「――――――――」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	SetVolume("@OnSE*", 1000, 0, null);


	OnSE("se人体_足音_歩く01_L",1000);
	CreatePlainSP("絵板写", 1500);
	WaitKey(300);
//◆キャノン
	StL(1000, @0, @0, "cg/st/stキャノン_通常_制服.png");

//★ inc遠藤 立ち絵に逆光を追加。不格好か。
//081/076
	CreateStencil("S1", 1000, 120, InBottom, 128, "cg/st/stキャノン_通常_制服.png",false);
	SetAlias("S1","S1");
	CreateStencil("S1/S2", 1000, 120, InBottom, 128, "cg/st/stキャノン_通常_制服.png",false);
	SetAlias("S1/S2","S1/S2");
	CreateColorSP("S1/S2/C1", 1200, "#000000");
	SetShade("S1/S2", EXTRAHEAVY);

	FadeStL(0, false);
	Fade("S1/S2/C1", 0, 700, null, false);
	FadeDelete("絵板写", 300, true);

	SetVolume("@OnSE*", 1000, 0, null);

	SoundPlay("@mbgm36",0,1000,true);


	SetFwH("cg/fw/fwキャノン_通常b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc01/0050250b03">
「コブデン中佐。
　前々から、貴官には忠告が必要だと思って
はいた」


{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc01/0050260b03">
「正々堂々たることは騎士の美徳であって、
夜盗の美徳ではない、と。
　……犯罪やろうってのにろくろく隠蔽工作
もしないんだからな。どういう神経なんだ？」


{	FwH("cg/fw/fwコブデン_唖然.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050270b04">
「クライブ・キャノン……」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc01/0050280b03">
「まっ、貴官の騎士道精神のお陰でこうして
水際阻止が間に合ったんだから、文句言えた
筋合いじゃないがね。
　ついでだ、投降も潔く頼む」


{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc01/0050290b03">
「貴官の希望はおおむね叶えられるだろう。
　本国へは帰れる。奥方との対面もできる。
静かに平穏に過ごすことも」


{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc01/0050300b03">
「ただ、口を利くことと体を動かすことと金
を使うことはもうできなくなるかもしれない
が」


{	FwH("cg/fw/fwコブデン_唖然.png");}
//【コブデン】
<voice name="コブデン" class="コブデン" src="voice/mc01/0050310b04">
「……………………」

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　彼は自分の正しさを確信していた。
　だから――突きつけられた現実を受け入れるには、
長い時間が必要だった。

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);
}

..//ジャンプ指定
//次ファイル　"mc01_006.nss"