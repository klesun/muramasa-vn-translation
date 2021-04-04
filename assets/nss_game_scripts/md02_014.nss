//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_014.nss_MAIN
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
	#bg097_堀越御所内景明の部屋_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_015.nss";

}

scene md02_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_013.nss"

//◆食卓
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg097_堀越御所内景明の部屋_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm27", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　朝と違い、昼食の席には堀越公方の姿があった。
　年齢相応の健啖ぶりで、選り好みせず箸を動かして
いる。

　光はいない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140010a00">
「先刻、何か騒動があった様子ですが」

{	FadeStL(300,false);
	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140020a07">
「あー、あれ？
　大したこっちゃないよ。ただのこそ泥」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140030a07">
「なんか逃がしちまったみたいだけどね。
　まぁ、どうだっていい」

{	FadeStR(300,false);
	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140040a01">
「……そのこそ泥って。
　やたらとでっかい坊さんじゃないでしょう
ね？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140050a07">
「？　……違うけど。
　なんだ、あいつに会ったのか？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140060a01">
「ちょっとね。
　あれ、貴方のお友達？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140070a07">
「そう言われると、喧嘩売ってんのかてめえ
と返したくなる。
　そんな間柄です」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140080a01">
「気が合いそうなのに。
　性格の悪い者同士で」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140090a07">
「本気で喧嘩売ってんなてめえ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140100a01">
「食事中に騒ぐならあっち行って頂戴。
　鬱陶しいから」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140110a07">
「この足軽具足、誰の家で飯食ってるつもり
なんでしょうね……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140120a07">
「それで、あいつなんか言ってた？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140130a01">
「別に。
　癇に障る大笑いを聞かされただけよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　そう答えて村正が眉をひそめる一方、俺はひそかに
安堵していた。
　実はあの僧が騒動の原因なのではという一抹の懸念
をずっと拭えずにいたが、杞憂だったらしい。

　俺は堀越公方府に属す人間ではなく、彼が敵意ある
侵入者であったとしても捕まえる義務はないのだが。
　居候している立場、彼に有意義な助言を受けた事実
などを考え併せると、心中は複雑なものになったろう。

　助言。
　
　
　――――無我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140140a00">
「…………」

{	FadeStL(300,false);
	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140150a07">
「お兄さん、<RUBY text="さわら">鰆</RUBY>きらい？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140160a00">
「――は。
　いえ、そのような事はありません」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140170a07">
「そう？
　箸で挟んだまま固まってるから、よっぽど
嫌なのかと」

{	FadeStR(300,false);
	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140180a01">
「いい<RUBY text="かんざわら">寒鰆</RUBY>ね」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140190a07">
「今朝とれた直送品だ。
　味わって食いやがれ」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140200a01">
「もちろん。
　ふぅ、御飯が進む……」

{	FwC("cg/fw/fw村正_笑顔.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140210a01">
「お代わり貰える？」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140220a07">
「あ、はい」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆よそりよそり


	OnSE("se日常_食器_お茶準備_L", 500);
	DeleteStL(300,true);

	Wait(500);

	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	FadeStL(300,false);

	OnSE("se日常_物_茶碗を置く", 1000);


	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140230a07">
「どうぞ」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140240a01">
「ありがとう」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140250a07">
「じゃ、ねぇーーーーーーーーーーっ!!
　なんであてがおめーのごはんよそってやら
なきゃいけねえんだぁぁぁあああああああ!!」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140260a01">
「うるさいやつねー。
　はいはい、じゃあもう頼みません」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140270a01">
「御堂、お代わりいる？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140280a00">
「そうだな……貰おう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆よそりよそり

	OnSE("se日常_食器_お茶準備_L", 500);
	DeleteStR(300,true);

	Wait(500);

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,false);

	OnSE("se日常_物_茶碗を置く", 1000);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140290a01">
「はい」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140300a00">
「済まん」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140310a01">
「ふふ……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140320a00">
「どうした？」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140330a01">
「ううん。
　こういうのもいいなって、ちょっと思った
だけ」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140340a00">
「そうか……」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140350a07">
「地獄のように腹が立ちます!!」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140360a01">
「何なのよ貴方。
　頼めば怒るし頼まなくても怒るし」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140370a01">
「わがままいっぱい過ぎない？」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140380a07">
「違うわー！　あての怒りは正しい怒りじゃ！
　ねえ、わかってよ！　お願いだからわかっ
てよっ！」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140390a01">
「わかんないし」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140400a07">
「えーんえーん」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140410a01">
「この子どっか行かないかしら」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140420a07">
「おめーのさすがは劒冑と言わざるを得ない
冷血ぶりには茶々丸さんもたじたじですよ。
　つーか……あまりにもナチュラルな態度に
騙されて今の今まで気付かなかったが……」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140430a01">
「なに？」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140440a07">
「おめー、劒冑だろ!!
　なんで飯食ってんだよ!?」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140450a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　……気付かなかった。
　今の今まで。俺も。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_不機嫌.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140460a01">
「いいじゃない、食べたって。
　せっかく肉体化してるんだから」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140470a07">
「激しく無駄な気がするんだが」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140480a01">
「そうでもないのよ？
　こうやって摂取した栄養素は、熱量に変換
して私の心鉄にいくらか蓄えておけるし」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140490a00">
「そうなのか」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140500a01">
「もちろん、本物の肉体に比べたら変換効率
はあまり良くないけどね」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140510a07">
「具体的にはどんなもん？」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140520a01">
「米俵ひとつで、普通の人間が小皿一杯分の
御飯から得られる程度の熱量」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140530a07">
「謝れ！　お百姓さんに謝れ！
　そして二度と食うな!!」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140540a01">
「何よ。残したって無駄になるだけでしょう。
　もったいないじゃない」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140550a07">
「裏庭へ捨ててダンゴムシのエサにした方が
まだしも宇宙船地球号的には有意義ですよ!!」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140560a01">
「いやよね。こういう屁理屈を並べて意味も
なく人を傷つけるやつって」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140570a07">
「あては間違ってねぇーーー！
　絶対に間違ってねえーーーーーー!!」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140580a07">
「つーかあて、さっきから何度叫んでるんだ
畜生ーーーーーー!!」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140590a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　内心、堀越公方に同意せぬでもなかったが。
　言うと後難がありそうだったので黙っておく。

　それに実際問題として、多少でも熱量の蓄積が増す
なら、銀星号との力量差を埋める役に立つ。
　例え薄紙一枚分であろうと、近付く努力を怠るべき
ではなかった。

　特に今は。
　<RUBY text="おれ">仕手</RUBY>の努力が薄紙一枚分の成果すら挙げているとは
言い難い状況なのであるから。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140600a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　無我。
　
　無我の境地か……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw村正_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140610a01">
「御堂？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140620a00">
「……ああ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140630a07">
「なんかまた固まってたね。
　さっきから、どしたの？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140640a00">
「少々考え事がありまして」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140650a01">
「……あのいんちき坊主に言われたこと？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140660a00">
「からかわれた節があるのも事実だが……
　やはりあれは、忠告であり助言であったの
だと思う」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140670a01">
「…………」

{	FadeStL(300,false);
	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140680a07">
「置いてけぼりです……」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140690a01">
「ごめんなさい」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140700a01">
「そうね、御堂がそう思うなら……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140710a07">
「謝るだけかよ！
　説明してくれないのかよ！」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140720a01">
「貴方には関係ないもの」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140730a07">
「家主権限で、仲間外れ禁止を命ずる。
　いじめかっこわるい」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140740a07">
「というわけでお兄さん、何があったの？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140750a00">
「……は」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　真意が不明とはいえ、堀越公方は銀星号の支援者で
ある。
　その彼女に銀星号と戦う方法について相談するなど
ナンセンスの極みだろう。

　しかし、今はどんなに低い可能性でも逃したくない
心境だ。
　それに他人に説明することで考えが整理されるかも
しれない。

　……結局、俺は午前中の出来事を彼女に話した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト

	ClearWaitAll(1500, 3000);

}

..//ジャンプ指定
//次ファイル　"md02_015.nss"