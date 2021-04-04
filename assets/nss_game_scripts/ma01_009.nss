//<continuation number="350">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_009.nss_MAIN
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
	#bg014_鎌倉繁華街_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_010.nss";

}

scene ma01_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_008.nss"

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg014_鎌倉繁華街_01.jpg");


	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(0,true);
	FadeStR(0,true);

//◆飲み屋通り
	SoundPlay("@mbgm30",1000,1000,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);


	SetNwC("cg/fw/nwおっちゃん.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／おっさん】
<voice name="ｅｔｃ／おっさん" class="その他男声" src="voice/ma01/0090010e009">
「いや、それがものすごい速さでな。
　こう……バヒューン！　と」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090020b43">
「竹林の奥を？」

{	NwC("cg/fw/nwおっちゃん.png");}
//【ｅｔｃ／おっさん】
<voice name="ｅｔｃ／おっさん" class="その他男声" src="voice/ma01/0090030e009">
「ああ。竹の間をすり抜けるようにしてな。
　イタチか何かみたいなすばしっこさだった
が……」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0090040b33">
「が？」

{	NwC("cg/fw/nwおっちゃん.png");}
//【ｅｔｃ／おっさん】
<voice name="ｅｔｃ／おっさん" class="その他男声" src="voice/ma01/0090050e009">
「人間……だったんじゃねえかなぁ？
　そんな形してたしなぁ……でも人間の動き
じゃねえよなぁ、あれ」


//【ｅｔｃ／おっさん】
<voice name="ｅｔｃ／おっさん" class="その他男声" src="voice/ma01/0090060e009">
「猿だったのかもしれねえけど、多分あれは
……」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090070b56">
「…………」

{	NwC("cg/fw/nwおっちゃん.png");}
//【ｅｔｃ／おっさん】
<voice name="ｅｔｃ／おっさん" class="その他男声" src="voice/ma01/0090080e009">
「あー……いや。なんでもねぇ。
　うん。山から下りてきた猿かなんかだろ。
よくいるんだ、そんな間抜けも。竹の子でも
掘りに来たのかねぇ？　はは」

//【ｅｔｃ／おっさん】
<voice name="ｅｔｃ／おっさん" class="その他男声" src="voice/ma01/0090090e009">
「……もういいか？
　おじさんもその、忙しいからさ」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090100b56">
「はい……どうも。
　ありがとうございました」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,false);
	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　そそくさと歩き去っていく、この辺の店では常連の
おっちゃんを見送って。
　おれたちは黙ったまま、顔を見合わせた。

　竹林近くの飲み屋通り。
　三日前の夜について聞き込むうち、なにかおかしな
ものを見た人がいるという話を聞き、探し当てたのが
今の人だった。

　あのおっちゃんが最後に何を言おうとして中断し、
口を濁したのか。想像に難くない。
　
　――異様な迅速さで駆ける人影。

　それはつまり、人にして人ならぬもの。

　武者。

　そして武者とは六波羅に他ならない。
　六波羅に属さない人間の劔冑所持は禁じられている
のだから。終戦直後にＧＨＱが実施した劔冑狩り政策
によって、六波羅外の劒冑はほぼ全て没収されている。

　隠匿し没収を免れた人も、やがて摘発され――又は
反乱を起こして滅ぼされ、結局は命ごと劒冑を失った。
　一時期は各地で頻発したその手の事件も、もう種が
尽きたのだろう、最近はとんと聞かなくなっている。

　現在、少なくとも鎌倉周辺において、六波羅による
武者と劒冑の一元掌握は完璧だ。
　
　例外は……競技用劔冑くらいだが。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090110b43">
「……<RUBY text="アーマーレーサー">装甲騎手</RUBY>がたまたまここで練習してた
ってオチだと思う？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090120b56">
「確かにコーナーリングは鍛えられそうだが」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0090130b33">
「田中雷帝も心が広くなったもんねー。事故
が日常の<RUBY text="アーマーレース">装甲競技</RUBY>の練習場に竹林を提供する
なんて」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　有り得ない話だった。
　そもそも、装甲騎手は認可された競技場以外の場所
で装甲行動することを許されていない。

　……事態はほぼ明白。
　あのおっさんの見間違いでない限り、三日前の夜、
竹林には六波羅の武者がいたのだ。

　リツが姿を消した、その時に！

　奴隷貿易。
　腐臭のする言葉が後頭部にのしかかる。

　昨夜の段階ではまだ可能性の一つに過ぎなかった。
　だからその可能性が持つ恐ろしいまでの<RUBY text="・・・・・">どうしよう</RUBY>
<RUBY text="・・・">もなさ</RUBY>を直視はせずに済んでいた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_沈むa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090140b56">
（本当に……六波羅にさらわれたのか。リツ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　一挙に現実感の高まった推測を、誰もが脳裏に思い
浮かべているだろうに、一人として口にしない。
　その理由はさっきのおっちゃんと同じだった。

　<RUBY text="・・・・・・・・・・・">六波羅には刃向かえない</RUBY>。
　刃向かえないのに……立ち塞がるのか。それが。

　六波羅。
　もともと快くもなんともない存在だったが、かつて
ここまでその重さを感じたことは一度もない。

　食料制限、労役、臨時税。圧迫は絶え間なかったに
しても、おれたちにとってまあ耐えられる範囲のこと
だった。
　これまでは。

　今。圧倒的な暴力で、友人が奪われようとしている
――あるいは既に、奪われた。
　
　どうにかしなくてはならない。

　だがどうにもしようがない。

　六波羅には逆らえないのだ。
　六波羅は大和の最強者で、対抗できる力はどこにも
ない。

　正義の力はどこにもない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_怯え.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0090150b33">
「……どうすればいいの？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　上っ面の軽さを装うのにも疲れたのだろう。小夏が
とうとう、重苦しい声をこぼした。
　応える言葉など、おれにはない。

　どうすればいいのか。
　いもしない正義の神様の降臨を願うか。
　それとももう少し現実的に、災いの神様が六波羅に
祟りを下すことを願うか。

　どちらでもいい。
　大した違いはないのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090160b43">
「……竹林を調べよう。
　まずは事実の確認が」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090170b56">
「確認してどうすんだよ」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090180b43">
「雄飛……」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090190b56">
「どうにもできねえじゃんか……六波羅が敵
なら！　竹林調べて、武者がリツを拉致った
って証拠つかんで、それからどうするよ？
　六波羅に殴り込みでも掛けんのか！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　糞……ああ糞、最低だ。
　なに八つ当たりしてるんだおれは。
　馬鹿じゃねえのか。畜生が。

　事実の確認が必要だ。
　忠保は正しい。いつも通り。

　まだ決まったわけじゃないんだ。
　リツがどうなったのかを確かめなくちゃならない。

　だけど怖い。
　疑いようのない証拠をつかんで、それでも何もでき
ないことを知って、自分の無力を思い知るのが怖い。

　いまの段階で投げ出せば、リツはふらっとどこかへ
行ってしまっただけで、楽しくやっている……なんて
幻想にすがりつくこともできると。
　そんなことを考えている自分がいる。

　弱ぇ。
　ああ。
　情けなくて涙が出そうなほど弱ぇ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090200b43">
「雄飛」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090210b56">
「……悪い。そうだよな。
　まずは確かめるのが先決だ。わめき散らす
のはその後でいいや」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090220b56">
「竹林に行こう。
　爺さんの目をごまかして、なんとか」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090230b43">
「いや、違うよ。雄飛、あれ」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090240b56">
「ん？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　ぽんぽんぽん、と急かすように肩を叩いてくる手に
促されて、おれは俯けていた顔を持ち上げた。
　忠保と小夏は二人そろって一方向を見つめている。

　その視線を追う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090250b56">
「……あれは」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090260b43">
「あれ……じゃ、ないかな」

{	FwC("cg/fw/fw小夏_驚くa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0090270b33">
「あれ、よね」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);
	DeleteStL(300,true);

//<voice name="雄飛" class="雄飛" src="voice/ma01/0090280b56">
//<voice name="忠保" class="忠保" src="voice/ma01/0090290b43">
//<voice name="小夏" class="小夏" src="voice/ma01/0090300b33">

	CreateVOICE("雄飛","ma01/0090280b56");
	CreateVOICE("忠保","ma01/0090290b43");
	CreateVOICE("小夏","ma01/0090300b33");

	SetBacklog("「暗闇星人……」", "voice/ma01/0090280b56", 雄飛);
	SetBacklog("「暗闇星人……」", "voice/ma01/0090290b43", 忠保);
	SetBacklog("「暗闇星人……」", "voice/ma01/0090300b33", 小夏);

	MusicStart("雄飛",0,1000,0,1000,null,false);
	MusicStart("忠保",0,1000,0,1000,null,false);
	MusicStart("小夏",0,1000,0,1000,null,false);


	SetFont("@ＭＳ 明朝", 20, #FFFFFF, #222222, 500, RIGHTDOWN);
	CreateText("text01", 20001, 50, 20, 700, 500, "「暗闇星人……」");
	Fade("text01", 0, 0, null, true);
	Request("text01", PushText);
	Request("text01", NoLog);
	SetVertex("text01", 0, 0);
	SetAlias("text01","text01");
	Rotate("text01", 0, @0, @0, 90, null,true);
	Move("text01", 0, 317, 134, null, true);

	CreateText("text02", 20001, 50, 40, 700, 500, "「暗闇星人……」");
	Fade("text02", 0, 0, null, true);
	Request("text02", PushText);
	Request("text02", NoLog);
	SetVertex("text02", 0, 0);
	SetAlias("text02","text02");
	Rotate("text02", 0, @0, @0, 90, null,true);
	Move("text02", 0, 828, 134, null, true);

	SetFwR("cg/fw/fw小夏_驚くa.png");
	SetFwC("cg/fw/fw雄飛_驚くa.png");
	SetFwL("cg/fw/fw忠保_驚き.png");

	FadeFwR(200,false);
	FadeFwL(200,false);

//（雄飛）（忠保）（小夏）
//「「「暗闇星人……」」」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	Fade("text01",0,1000,null,false);
	Fade("text02",0,1000,null,false);}
//（雄飛）（忠保）（小夏）
「暗闇星人……」

/*
//◆声用一時退避
//◆同時発声
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090280b56">
「暗闇星人……」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090290b43">
「暗闇星人……」

//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0090300b33">
「暗闇星人……」
*/
</PRE>
	SetTextEXC();
	Request("@text0140", PushText);
	Request("@text0140", NoIcon);
	Request("@text0140", NoLog);
	TypeBeginEXIO();//―――――――――――――――――――――――――――――

	CreateColorEX("暗転", 10000, "#000000");
	Fade("暗転", 800, 1000, null, true);

	DeleteStR(0,false);
	DeleteStL(0,false);

//◆湊斗景明
	StC(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStC(0,true);

	FadeDelete("暗転", 800, true);

	Wait(1000);

	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　それは薄暗い男だった。

　良く見れば若々しいし、さらに良く見れば悪くない
顔立ちでもあるのだが、そんなことは地平線の彼方へ
置き捨てて第一印象はただ単に、暗い。

　触れるだけで、青春真っ盛りの若者がたちまち人生
に疲れた中年親父に変貌しそうなほどの<RUBY text="しょうしょう">蕭々</RUBY>さ。
　ほとんど悪魔的であった。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("暗転", 10000, "#000000");
	Fade("暗転", 800, 1000, null, true);

	DeleteStC(0,false);

	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(0,true);
	FadeStR(0,true);

	FadeDelete("暗転", 800, true);

	SetFwC("cg/fw/fw忠保_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090310b43">
「……どぉーうしよぉーか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　おかしなイントネーションで忠保が言う。
　この男には珍しく、腰が引けていた。

　だが無理もなし。近寄り難いまでの<RUBY text="ブラックオーラ">暗黒瘴気</RUBY>をこの
距離で既にひしひしと感じる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_沈む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0090320b33">
「声……かけてみる？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　わたしは絶対嫌だからねあんたらよろしく、という
ニュアンスを含んで小夏が言った。
　おれだってそんなの嫌なんだが。

　仕方ないので、妥協案を出す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090330b56">
「とりあえず……様子を見てみるか？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090340b43">
「異議なし」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0090350b33">
「賛成」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);
	DeleteStL(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　全員一致で、厄介な問題は先送りすることに決定。
　おれたちは距離を置いて、通行人がのけぞるほどの
黒い波動を放ちながら歩く男を追っていった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("暗転", 30000, "#000000");
	DrawTransition("暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearFadeAll(0, true);


}

..//ジャンプ指定
//次ファイル　"ma01_010.nss"

