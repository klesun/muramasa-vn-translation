//<continuation number="1250">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_013.nss_MAIN
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
	#bg007_若宮大路a_01=true;
	#bg009_鎌倉住宅街a_01=true;
	#bg017_竹林_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_014.nss";

}

scene ma01_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_012.nss"



	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");
	SoundPlay("@mbgm22",1000,1000,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);


//◆大通り


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130010a00">
「……はい。その池谷和男くんが行方不明に
なった時のことについてお尋ねしたいのです
が」

{	NwC("cg/fw/nw安田さん.png");}
//【ｅｔｃ／安田さん】
<voice name="ｅｔｃ／安田さん" class="その他男声" src="voice/ma01/0130020e020">
「はー。そう言われてものー。
　ありゃいつのことだったかのぉー」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130030a00">
「約半年前。
　興隆四一年四月一九日土曜日です」

{	NwC("cg/fw/nw安田さん.png");}
//【ｅｔｃ／安田さん】
<voice name="ｅｔｃ／安田さん" class="その他男声" src="voice/ma01/0130040e020">
「んあー？
　そー言われてものー。ピンとこねーのー」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130050b56">
「安田のじいちゃーん！
　春の<RUBY text="やぶさめ">流鏑馬</RUBY>の前日だよー！」

{	NwC("cg/fw/nw安田さん.png");}
//【ｅｔｃ／安田さん】
<voice name="ｅｔｃ／安田さん" class="その他男声" src="voice/ma01/0130060e020">
「……おう！
　そうかそうか、流鏑馬の前の日だったの、
カズ坊がいなくなっちまったのは」

//【ｅｔｃ／安田さん】
<voice name="ｅｔｃ／安田さん" class="その他男声" src="voice/ma01/0130070e020">
「なんだぁ、あんたも最初からそう言えよ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130080a00">
「……失礼致しました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
　翌日。
　おれたちは湊斗さんをあっさり発見していた。

　あの人特有のやたら悪目立ちする気配のお陰である。
　なんとなくそれらしい空気を追っていたら一時間後
には当人を目撃。

　凄い話だった。
　おれたちが、ではない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130090a00">
「…………。
　自分に近付くのは危険だと、簡潔にご説明
したはずです。説明に不備、あるいは誤解を
招く箇所があったとは思えないのですが」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1020, @-30, @0,"cg/st/st雄飛_通常_制服.png");
	StC(1010, @-150, @0,"cg/st/st忠保_通常_制服.png");
	StCL(1000, @-150, @0,"cg/st/st小夏_通常_制服.png");

	FadeStL(300,false);
	FadeStC(300,false);
	FadeStCL(300,true);

	SetFwC("cg/fw/fw雄飛_快活.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130100b56">
「たまたまです！」

{	FwC("cg/fw/fw小夏_照れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130110b33">
「散歩中です」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130120b43">
「自分探しの旅の途中です」

{	FwC("cg/fw/fw雄飛_笑顔b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130130b56">
「や、そういえばこんなところで偶然ですね
湊斗さん」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130140a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

	DeleteStCL(300,false);
	DeleteStL(300,false);
	DeleteStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
　軽く額を押さえて、再び歩き出す湊斗さん。
　その後ろを少し離れてついていくおれたち。

　行く方向がたまたま同じなんだから仕方ない。
　たまたま。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("暗転", 1500, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg009_鎌倉住宅街a_01.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);


//◆住宅街

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]
　湊斗さんは学校周辺を回っていた。
　リツだけでなくこの近辺で失踪した人全般について
調査しているようだ。昨日言った通りのことを実行中
なのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130150a00">
「御免下さい」

{	NwC("cg/fw/nw駄菓子屋さん.png");}
//【ｅｔｃ／駄菓子屋さん】
<voice name="ｅｔｃ／駄菓子屋さん" class="その他男声" src="voice/ma01/0130160e161">
「うぉっ!?　なんじゃいあんたはァ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @20, @0,"cg/st/st小夏_通常_制服.png");
	Move("@StR*", 300, @-20, @0, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw小夏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130170b33">
「駄菓子屋さーん。大丈夫だからー。
　ちょっと話を聞いてあげてー」

{	NwC("cg/fw/nw駄菓子屋さん.png");}
//【ｅｔｃ／駄菓子屋さん】
<voice name="ｅｔｃ／駄菓子屋さん" class="その他男声" src="voice/ma01/0130180e161">
「おう、こなっちゃんじゃないか。
　なんだ、あの子の知り合いかい。あんた」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130190a00">
「……ええ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("暗転", 1500, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg009_鎌倉住宅街a_01.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);

//◆駅前

	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130200a00">
「卒爾ながら」

{	NwC("cg/fw/nw大村先生.png");}
//【ｅｔｃ／大村先生】
<voice name="ｅｔｃ／大村先生" class="その他男声" src="voice/ma01/0130210e166">
「ぬぅ!?　かなり致命的に怪しい男！
　貴様、さてはこの鬼柔道、材木座の泰三に
放たれた刺客か!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @-20, @0,"cg/st/st忠保_通常_制服.png");
	Move("@StL*", 300, @20, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0203]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130220b43">
「違いますー。大村先生ー。
　その人はただの怪しい人ですー」

{	NwC("cg/fw/nw大村先生.png");}
//【ｅｔｃ／大村先生】
<voice name="ｅｔｃ／大村先生" class="その他男声" src="voice/ma01/0130230e166">
「なんじゃ、ただの怪しい男か……。
　それで、わしに何か用かの？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130240a00">
「…………。
　はい。少々お伺いしたいことが――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	PrintGO("上背景", 30000);
	CreateColorSP("暗転", 1500, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);

//◆大通り

	StL(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130250a00">
「もし、そこの方」

{	NwC("cg/fw/nw女の子.png");}
//【ｅｔｃ／女の子】
<voice name="ｅｔｃ／女の子" class="その他女声" src="voice/ma01/0130260e122">
「うわーん！　恐い人に声かけられたー！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @-20, @0,"cg/st/st雄飛_通常_制服.png");
	Move("@StR*", 300, @20, @0, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw雄飛_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130270b56">
「あー、恐くない。恐くないぞう。
　ほれ、芋飴あげるから。ちょっとこの人の
おはなし聞いてあげような？」

{	NwC("cg/fw/nw女の子.png");}
//【ｅｔｃ／女の子】
<voice name="ｅｔｃ／女の子" class="その他女声" src="voice/ma01/0130280e122">
「わーい、ありがと雄飛にいちゃん。
　それで、なあに？　おじさん」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130290a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	PrintGO("上背景", 30000);
	CreateColorSP("暗転", 1500, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg009_鎌倉住宅街a_01.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);

//◆住宅街

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0291]
　何軒の家を回っただろうか。

　湊斗さんが立ち止まった。
　おれたちも足を止める。

　少しだけためらう素振りをみせた後、湊斗さんは<RUBY text="きびす">踵</RUBY>
を返してこちらへ向かってきた。
　おれの半歩前で立ち止まる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	StL(1020, @0, @0,"cg/st/st雄飛_通常_制服.png");
	FadeStR(300,false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130300a00">
「お話があります」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130310b56">
「実はおれもあります」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130320a00">
「では、お先にどうぞ」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130330b56">
「ありがとうございます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0331]
　ぺこりと一礼して、息を吸う。
　それから告げた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_快活.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130340b56">
「湊斗さん、警官に向いてないスね」


//◆ガーン
{	OnSE("se擬音_コミカル_ガーン01",1000);
	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130350a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0351]
　あ。落ち込んだ。
　どうも自覚はあったらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130360a00">
「……そのご指摘には返す言葉を持ちません。
　自分の非才を痛感するばかりです」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130370b43">
「いやぁ、才能の問題ではないような」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0371]
　忠保に賛成。

　地元民ではない湊斗さんは捜査にも色々と難儀する
だろう、そこをフォローできれば……くらいに考えて
いたのだが。
　それどころの問題ではなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_呆れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130380b33">
「こう言うと自惚れてるみたいでイヤだけど、
わたしたちがいなかったら、ほとんどの人に
話聞けてないような……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130390a00">
「いえ。まったくもってその通りでしょう。
　それを踏まえて、お伺いします」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130400b56">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0401]
　ちょっと居住まいを正す。
　往来の真ん中だが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130410a00">
「新田雄飛さん。
　来栖野小夏さん。
　稲城忠保さん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0411]
　湊斗さんは昨日頭をぶん殴られた直後に一度聞いた
だけのはずの名前を、完璧に覚えていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130420a00">
「貴方がたは、飾馬律さんの捜索を中止する
つもりはないのですね？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130430b56">
「ありません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0431]
　きっぱりと答える。
　この点は揺るぎなかった。

　が、これで終わっては人を説得などできない。
　おれは続けるべき言葉を頭の中から探した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130440b56">
「湊斗さんが正しいのはわかります。
　でも、それでもおれは……リツを探すこと
が間違ってるとは思えなくて。それは、おれ
たちがすべきことなんじゃないかって……」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130450b56">
「……すいません。巧く言葉になんないです。
　でもおれはリツを探すために何かしたいし、
そうするべきだとも思うんです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0451]
　あぁ。こんなことしか言えないのねおれって奴はァ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130460b43">
「僕も同意見です。
　いまのが意見としての体裁を整えていたか
どうかは議論の対象になるでしょうが、それ
はともかく」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130470b33">
「知性と教養の存在を根本から疑いたくなる
説明でしたけど、フィーリングとかそういう
ところでは同意できます」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130480b56">
「おまえら……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0481]
　ほんとうにイヤな奴らだな。

　湊斗さんは黙って聞いていた。
　やがて小さく、その口が動く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130490a00">
「<RUBY text="くぐつ">傀儡</RUBY>を操るは易く、士人を留めるは難し。
　全く是非もない」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130500b56">
「は？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130510a00">
「諒解しました。
　自分と同道されるのであれば今後は近接を
求めます。最前までの距離では保安の点でも
協力の点でも適切と言えません」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130520b56">
「……？　…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0521]
　湊斗さんの言い回しは、おれには少し消化不良気味
だったが。
　それはつまり、要するに。

　<RUBY text="ＯＫ">許可</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130530b56">
「よっしゃあ！」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130540b33">
「あー、はしゃがないはしゃがない。
　恥ずかしいから」

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130550b43">
「はっはっはっ、まあいいじゃないか小夏」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0551]
　言われるまでもなく自分で小恥ずかしいと思うほど、
おれは舞い上がっていた。
　
　嬉しい。

　この危なっかしいようで頼り甲斐もある風の、湊斗
景明という人と一緒にリツを探せるのが嬉しい。
　別に事態は何も進展していないのに、もうリツが目
の前にいるような気がする。

　忠保と小夏も似たような心地なのではないか。
　だから、口では何を言いながらも笑っているのだ。

　そう思う。
　おれはもう一度快哉を上げた。やれやれという顔で
二人が付き合ってくれる。

　……湊斗さんは決して、笑ってはくれなかったけど。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――




	SetVolume("@mbgm*", 2000, 0, null);

	PrintBG("上背景", 30000);
	CreateColorSP("暗転", 1500, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg017_竹林_01.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	Wait(2000);

	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);

//◆竹林

	SoundPlay("@mbgm30",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0555]
　それからまず向かったのは、竹林だった。

　付近の住人なら誰でも知っているが、別に何もない
単なる竹の林なので、外部から来た人間が簡単に探し
当てられるものではない。
　おれたちが先に立った。

　到着するやレーダーで観測していたとしか思えない
速度で登場した田中の爺さんも、喧嘩する相手くらい
は一応選ぶものらしい。湊斗さんが身分を明かすと、
嫌々ながらも立ち入りを認めてくれた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0,@0,"cg/st/st景明_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130560a00">
「<RUBY text="かくしゃく">矍鑠</RUBY>とした方です。感服しました」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130570b56">
「あれでも最近は多少おとなしくなってるん
ですよ。
　でも雷鳴の威力は相変わらずだな……まだ
耳がビリビリする」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130580b33">
「うぁー……わたしあれ久しぶりだったから
腰まで響いたよ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130590a00">
「素晴らしい肺活量でした。
　あのご老人はきっと長寿を保たれることで
しょう」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130600b43">
「まわりの人間の寿命がそのぶん削られると
思うとどうも祝福できないんですけどねぇ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130610a00">
「<RUBY text="いささ">些</RUBY>か郷愁を覚えます。
　自分の母も感情が激するとあのような怒声
を発するひとでした。酒が切れたと言っては
騒ぎ、お腹が空いたと言っては泣き」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130620a00">
「それを耳にするたび自分は安らかな心地に
なり、しばしばそのまま眠ってしまったもの
です」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130630b33">
「……だいぶ個性的な団欒風景のような……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130640a00">
「いつぞや、自分が瀕死の重傷を負ったおり、
その声に命を救われたことがあるのです。
　あれはそう、家に侵入した武装盗賊と遭遇
し、幼年の自分が窮地に陥った時でした」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130650b43">
「なるほど。その時、お母さんが怒声一発で
泥棒を追い散らして救ってくれたんですね」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130660b56">
「それは凄いなー」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130670a00">
「はい。あの時、自分はいつの間にか鼓膜が
破れて三半規管を損傷し割れたガラスが背中
に刺さり出血多量で失神していたようですが、
その程度で済んだのも母のお陰でしょう」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130680b43">
「いい話ですねぇ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130690a00">
「有難うございます」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130700b33">
「えーと……」

{	FwC("cg/fw/fw雄飛_怯えb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130710b56">
「あの……それってつまり……瀕死の重傷を
負わせたのはお母さんなのでは……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg017_竹林_01.jpg");

	Wait(1);

	FadeDelete("上背景", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0711]
　風が運ぶ川のせせらぎを聞きながら歩く。
　竹林の中はあまり、見通しが良いとは言えない。

　爺さんは外敵に備えるばかりで手入れをしていない
のか。伸び放題の竹は視界を妨げること甚だしい。
　足を使って調べることになりそうだった。

　と思ったのだが、その矢先。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130720b43">
「？　あれ」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130730b56">
「どした？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130740b43">
「あの、奥のほう。
　なんか荒れてない？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130750a00">
「……確かに」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0751]
　忠保が指す方を見やって、湊斗さんも同意する。
　おれの人並みの視力ではよくわからないが……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("暗転", 15000, "#000000");
	DrawTransition("暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(600);

	DrawDelete("暗転", 1000, 1000, "blind_01_00_1", true);


//◆転換

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0752]
　近づいてみれば、忠保の指摘は正しかった。
　一群の竹がまとめて切り払われている。

　相撲の土俵程度の空き地が出来ていた。
　その周囲に散乱するのは、切られた竹か。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130760b56">
「こないだ爺さんが言ってたのはこれか」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130770b33">
「あぁ。竹林が荒らされたってやつ？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130780b43">
「そう言えばそんなこと聞いたねぇ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0781]
　しかし、これをおれたちがやったというのは無理の
ある決め付けだろう。
　竹は素人目にも鮮やかな切断面で、日曜大工程度の
器材で可能なこととは思えない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130790b56">
「鉈かな？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130800b43">
「斧かもねぇ。
　どっかの不良が憂さ晴らしでもしたかな？」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130810b33">
「いるの？　そんな暇人」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130820b43">
「いるよ？　暇をなめてはいけないね小夏。
　貧困と憤懣と同じように、暇と退屈も犯罪
の温床たる資格は充分なんだって昔の人が」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130830a00">
「違う」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130840b43">
「え？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0841]
　竹の一つのそばに屈んでじっと見ていた湊斗さんが、
唐突に呟いた。
　その間も切り口から目を離さない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130850a00">
「……刃の入り方が<RUBY text="・・・・">鋭過ぎる</RUBY>。切り口が<RUBY text="・・">平坦</RUBY>
<RUBY text="・・・">過ぎる</RUBY>。
　得物は間違いなく刀……それも業物の部類」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130860a00">
「……地面に切り込みの跡か。
　つまり、打ち手は<RUBY text="・・・・・・・・・">力任せに切っている</RUBY>」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130870a00">
「それがどうして、こんな鮮やかな切り口を
つくる……？」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130880a00">
「刀の利だけでは足りない……。
　打ち手は<RUBY text="・・・・・・・">凡俗にして非凡</RUBY>」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130890a00">
「武者だ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0891]
　<RUBY text="・・・">武者だ</RUBY>。
　湊斗さんはそう、短くもはっきりと呟いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130900b56">
「じゃ……じゃあ！」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130910b33">
「おっちゃんが言ってた通り……
　あの夜、ここに六波羅の武者がいた」

{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130920b43">
「……って、ことになるのかな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0921]
　リツがこの竹林で姿を消したあの晩。
　武者がここにいた。

　<RUBY text="・・・・・・">つまりここは</RUBY>、<RUBY text="・・・・・・・・・・">リツが襲われた現場か</RUBY>!?

　慌てて周囲を見回す。
　
　何か――何かないか！
　手掛かりになるものは！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130930b56">
「足跡とか……！」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130940b43">
「……駄目だね。
　一昨日の明け方に降った雨で消されたかな」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130950b33">
「他にもなんかあるでしょ!?　持ち物とか」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130960b43">
「見当たらないけど……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130970a00">
「六波羅の武者ならば、技量未熟というのは
解せない。<RUBY text="ざ">戯</RUBY>れていたか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0971]
　端からその辺のことは諦めていたのか、湊斗さんは
動いていなかった。
　慌てるおれたちをよそに自問自答を続けている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130980a00">
「だがそれにしても……何処から現れた？
　騎航すれば襲撃も離脱も一瞬で済む。
　しかし目立つ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130990a00">
「この近隣で爆音、轟音の確認情報は？」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0131000b56">
「……えっ？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1001]
　数秒、気付くのが遅れた。
　今の問いはおれたちに向けられたものだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0131010b56">
「すごい音ですか？　いや、そういう話は」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0131020b43">
「聞かなかったですねぇ。
　もしそんなことがあったら、田中の爺さん
が大騒ぎしてると思うんですけど」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0131030b33">
「他人が立てる騒音にはやかましいもんね、
あの雷帝」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1031]
　そのせいでこの近くに住む人はうかつに子供も産め
ないという噂だ。
　嘘か真か、赤ん坊が生まれると騒がしい間は親戚の
家に居候したりもするとか。

　湊斗さんは反応を見せない。
　だが聞いてはいたようだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1040]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131040a00">
「<RUBY text="がったり">合当理</RUBY>を噴かしていない。
　やはり飛んではいないか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1041]
　ガッタリ？

　意味がわからなかったので尋ねようとしたが、忠保
に止められる。
　邪魔をするなってことね。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131050a00">
「では当該武者は如何に現れ如何に去った？」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131060a00">
「出現時……
　最初から装甲してやって来るはずはなし。
　<RUBY text="よろいびつ">鎧櫃</RUBY>を背負って侵入しても目立つ」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131070a00">
「<RUBY text="おんぎょう">隠形</RUBY>に優れる<RUBY text="ツルギ">劔冑</RUBY>を単独で潜行させ、己は
別個に侵入。内部で合流して装甲」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131080a00">
「犯行に及び」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131090a00">
「……そこからどうする。
　劔冑は来た時と同様に単独で離脱させれば
良い。だが現場に遺体はおろか血痕すらない
所から見るに被害者が拉致されたことは確実」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131100a00">
「被害者を連れて武者は如何にこの場を離脱
する？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131110a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1111]
　二、三分も、黙っていただろうか。
　おもむろに湊斗さんは立ち上がった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131120a00">
「……まだ情報が不足している模様です。
　近隣で情報収集を行いたく思います。特に
武者を目撃したという人物、その方に会って
詳しい話を伺いたい」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0131130b33">
「え？　あ……はい。
　それじゃ、飲み屋通りに行かないと」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131140a00">
「案内をお願いします」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1141]
　促されるまま、小夏が前に立って歩き出す。
　その後ろに湊斗さんが、そしておれと忠保が続いた。

　……実のところおれは、状況の進展をよく理解して
いなかったわけだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0131150b43">
（雄飛）

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0131160b56">
（ん？）

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0131170b43">
（やぁ。あの湊斗さん、思ってたよりも凄い
のかもしれないね）

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0131180b56">
（そうなのか？）

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0131190b43">
（武者と劔冑に関する知識が深いよ。
　僕に理解できたのは、武者が空から飛んで
やって来たのなら、その爆音で周囲の住民に
気付かれないはずがないって辺りまでだけど）

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0131200b56">
（あ、そうか）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1201]
　思い出した。
　<RUBY text="がったり">合当理</RUBY>ってのは確か、劔冑の後背部にある飛ぶため
の器具のことだ。

　稼働中は轟音を立てて煙を噴く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1210]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0131210b56">
（じゃ、武者はどうやって？）

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0131220b43">
（その点についてもある程度の推測は立った
けど、まだ疑問が残る……ってことみたい。
　そこを調べたいんじゃないかな）

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0131230b56">
（聞いてみちゃまずいかな、そのへん）

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0131240b43">
（やめとこう。今も考え中みたいだし、邪魔
になるよ。
　ただ言えるのは、この人はどうやら本当に、
真相を暴く力がありそうだってこと……！）

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0131250b56">
（そうか！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1251]
　自分が色々とできるぶん、他者への評価が実は結構
<RUBY text="から">辛</RUBY>い忠保が認めるのだ。
　重さが違う。

　やはりこの人に目をつけて無理にでも同行したのは
正解だったらしい。
　おれたちだけで捜査をしていたら、きっと今頃も、
虚しく焦燥感を抱えているだけだったろう。

　……武者がリツを拉致したのなら、六波羅との対決
という格好になるのは避けられない。
　だがそれでも、この人なら。どうにかこうにか手を
尽くして、リツを助け出してくれるんじゃないか？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);
	SetVolume("@mbgm*", 1500, 0, null);

	CreateColorSP("暗転", 1500, "#000000");
	DrawTransition("暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(2000);

	ClearFadeAll(0, true);


}

..//ジャンプ指定
//次ファイル　"ma01_014.nss"

