//<continuation number="580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_016.nss_MAIN
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
	#bg056_建長寺三門前_02=true;
	#bg077_建朝寺得月楼前_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_017.nss";

}

scene md03_016.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md03_015.nss"


//◆bg056_夕
//◆bg077_夕


	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg056_建長寺三門前_02.jpg");
	FadeBG(0, true);


	Delete("上背景");
	FadeDelete("黒",1500,true);

	WaitKey(1000);

	OnBG(101, "bg077_建朝寺得月楼前_02.jpg");
	FadeBG(2000, true);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160010a02">
「村正」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　呼び止められ……一拍置いて、私は振り返った。
　勿体をつけたのでも、何かに気を取られていたので
もない。

　単にぼんやりとしていただけだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SoundPlay("@mbgm17", 0, 1000, true);

	StR(1000, @0, @0, "cg/st/st一条_通常_制服.png");
	FadeStR(300, true);


	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160020a01">
「……なに？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160030a02">
「訊きたいことがある」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　一条という娘だった。
　他に誰の姿もない廊下を、自然体の歩みで向かって
くる。

　……実のところ、彼女からのこうした接触を予期し
ないでもなかった。
　彼女の顔の皮膚は、内心を完全に隠せるほど厚くは
ないようだったから。

　私への猜疑心が透けて見えていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160040a02">
「雪車町一蔵ってやつを知ってるか」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160050a01">
「……ええ」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160060a02">
「そいつと、あと署長さんがあたしに教えて
くれた。
　――村正の劒冑は呪われていて、敵を一人
斬ると味方も一人斬らないとならなくなる」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160070a02">
「だから湊斗さんはこれまで、悪党だけじゃ
なくて、何の罪もない人を幾人も殺してきた
んだって」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160080a01">
「――――」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160090a02">
「答えろ。
　それは本当のことか」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160100a01">
「…………」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160110a01">
「ええ」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160120a02">
「…………」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160130a01">
「本当よ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆正宗・天牛虫
	StCR(990, 230, -91, "cg/st/3d正宗天牛虫_正面.png");
	Move("@StMR*", 300, 150, @0, DxlAuto, false);
	FadeStCR(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　それは前触れもなく現れた。
　否、あったのか――空気を焼く少女の憤怒が、その
甲鉄を呼んだというのなら。

　巨大な、鋼の<RUBY text="かみきりむし">天牛虫</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160140a01">
「貴方……劒冑を持っていたの？」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160150a02">
「……ッ……」

//【一条】
<voice name="一条" class="一条" src="voice/md03/0160160a02">
「嘘だ……
　あの人が、そんなことするわけがっ！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160170a01">
「……」

{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160180a02">
「本当なのかよ！
　湊斗さんは、おまえを使って……本当に、
子供まで殺したのか!!」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160190a01">
「……事実よ。
　でも、誤解しないで」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160200a01">
「御堂が……湊斗景明が殺したんじゃない。
　私が殺したの」

//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160210a01">
「彼は私に利用されただけ、で――」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160220a01">
「――――」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160230a02">
「……？
　何だよ。続きはどうした」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160240a01">
「………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　違う。

　そうじゃない。
　そうでは――なかった。

　あの日の誓い。

　私たちは互いを認め合った。
　互いの意思を。

　だからもう、否定してはならない。
　彼の意思を。その承認が、彼の罪をも認めるものだ
としても。

　村正の殺戮は彼の罪だ。
　
　
　そして勿論、私の罪だ。

　<RUBY text="・・・・">私たちの</RUBY>罪だ。

　私たちの意志で為した、私たちの罪なのだ。

　憐憫の情と自己の罪悪感に囚われて、彼の罪だけを
否定してはならない。
　そんなことを彼は望まなかった。

　認めよう。

　彼の意思と責任を認めよう。
　己の意思と責任を認めるように。

　私たちは二つで一騎の武者なのだから。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160250a02">
「おい」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160260a01">
「訂正していい？」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160270a02">
「あぁ？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160280a01">
「私たちが殺した。
　私と御堂、二人の意思で」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160290a02">
「…………」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160300a02">
「何だそりゃ……責任逃れのつもりか？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160310a01">
「いいえ。
　貴方が村正の罪と責任を問うのなら、私は
応える用意がある」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160320a02">
「ここで<RUBY text="や">戦</RUBY>ってもいいってんだな」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160330a01">
「貴方がそう望むのは貴方の自由」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160340a02">
「なに？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160350a01">
「私は逃げるけど」

{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160360a02">
「応えるんじゃねえのかよ」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160370a01">
「これが応えよ。
　私は貴方に手向かいしない」

//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160380a01">
「でも……いま死ぬわけにはいかないから。
　逃げるの」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160390a02">
「勝手言いやがって。
　てめぇは相手の都合なんて考えずに何人も
殺してきたんだろ……」

{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160400a02">
「虫が良すぎるって思わねぇのか」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160410a01">
「……思う。
　だから貴方は、私を殺していい」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160420a01">
「仕手なしの劒冑と完全な武者なら、勝負は
見えてる。
　けど……私は足掻くから」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160430a01">
「成功の見込みがほとんどなくても、逃げて
生き延びるために足掻く。
　ええ、そうね……私たちに殺された人間が、
死ぬ前にそうしたようにね」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160440a02">
「…………」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160450a02">
「なんで、今は死ねない？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160460a01">
「することがあるから」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160470a02">
「どんな」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160480a01">
「湊斗景明の意思を取り戻す」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160490a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　そう。

　彼の意思を認めるのなら――
　今の状態を許してはならない。

　今こそ彼の意思は本当に奪われている。

　心の形を変えられている。
　彼自身の意思決定によらず、外からの干渉で。

　取り戻すのだ。
　彼の意思の自由を。

　彼の劒冑、彼の半身たるを誓った私が。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160500a02">
「――」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160510a01">
「――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　後方に飛び下がる機を窺う。
　戦うのではなく逃走に徹するなら、蜘蛛の形の方が
有利かもしれない。

　しかし変形にはわずかな時間が要る。
　今それをすれば、致命的な隙に――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆正宗消去
	OnSE("se人体_動作_跳躍01", 1000);

	Zoom("@StMR*", 150, 0, 3000, null, false);
	DeleteStCR(150,true);


	SetFwC("cg/fw/fw村正_不機嫌.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160520a01">
「……？」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160530a02">
「……てめぇの言う通りなら……」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160540a02">
「てめぇと湊斗さんの、二人の意思で重ねた
罪だってんなら、片方だけ裁いても仕方ない」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条去る

	OnSE("se人体_足音_歩く08", 1000);

	DeleteStR(300,true);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160550a01">
「……綾弥一条」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160560a02">
「<RUBY text="あるじ">仕手</RUBY>を取り戻してくればいい」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160570a02">
「その後で――決着をつけてやる」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160580a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);


}

..//ジャンプ指定
//次ファイル　"md03_017.nss"