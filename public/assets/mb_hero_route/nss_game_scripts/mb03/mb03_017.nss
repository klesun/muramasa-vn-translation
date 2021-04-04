//<continuation number="390">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_017.nss_MAIN
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
	#bg074_喫茶店の店内_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_018.nss";

}

scene mb03_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_016vs.nss"

//◆フェードイン
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg074_喫茶店の店内_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm23",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0170010a00">
「ご無事ですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　装甲を解いて不運な一家に近付く。
　三人とも呆然たる様子だった。

　しかし幸い、子供の掠り傷のほかには怪我もない。
　縄を解き、猿轡も外す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw店主.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／人質男】
<voice name="ｅｔｃ／人質男" class="その他男声" src="voice/mb03/0170020e139">
「貴方がたは……
　いや、これは一体どういう――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　口が自由になるや男性は言い募り、そして言い淀む。
　何から尋ねれば良いのか困ったのだろう。

　彼の意は理解ができたが、俺も返答には詰まった。
　何をどう説明すれば良いものやら。

　望むらくは黙って立ち去りたかったが。
　何の故もなく巻き込まれてしまった人々に、そんな
不義理もできない。納得して貰えるかは別として誠意
は尽くすべきだろう。

　しかしどうしたものか――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170030a02">
「すいません。戦争です」


{	NwC("cg/fw/nw店主.png");}
//【ｅｔｃ／人質男】
<voice name="ｅｔｃ／人質男" class="その他男声" src="voice/mb03/0170040e139">
「はっ？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170050a02">
「六波羅と。あたしたちの。
　潰し合い、やってます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　物凄まじく端的な説明を、一条がした。

　意味は明快。
　誤解の余地は皆無。
　納得させる要素は絶無であった。

　男性の混乱に拍車が掛かったのは顔色でわかる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw店主.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／人質男】
<voice name="ｅｔｃ／人質男" class="その他男声" src="voice/mb03/0170060e139">
「戦争って。そんな……
　確かに軍がやたら動き回ってるけど」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170070a02">
「すぐに始まります。
　いえ、もう始まってるんですけど」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170080a02">
「関東で……大和全土で。戦争が、すぐに。
　だから、決めた方がいいです。あなた達は。
いえ誰も彼も。みんな」


{	NwC("cg/fw/nw店主.png");}
//【ｅｔｃ／人質男】
<voice name="ｅｔｃ／人質男" class="その他男声" src="voice/mb03/0170090e139">
「決める？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170100a02">
「誰の仲間になって誰と戦うのか。
　それとも戦いを避けて逃げるのか」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170110a02">
「でないと、<RUBY text="・・・・・">こういう事</RUBY>になってしまいます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　一家を戒めていた縄、子供の傷、斃された竜騎兵ら。
全てを示して、一条はそう言った。
　
　正しい。

　一条は要点しか語っていない。
　端的に過ぎ、受け入れるのは困難だ――が。それは
全て真実であり、忘れようも誤解のしようもないほど
簡明である。

　今は納得が得られなくてもいい。
　世情の緊張はいずれ彼らに『戦争』の事実を理解さ
せる。そして一条の言葉を思い出すだろう。いま何を
すべきなのか、その忠告を受けていたと知るだろう。

　――戦うのか。逃げるのか。
　確かにそれは誰もが考えねばならないことだ。何も
決断しないままただ巻き込まれて命を失わぬために。

　一家の相手は一条に任せることにして、俺は視線を
転じた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0170120a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　喫茶店の冷たい床を<RUBY text="つい">終</RUBY>の寝台とする彼ら。
　今川雷蝶に仕えていた九人。

　同情の念は、格別ない。
　彼らは他者の生命を弄んだ。彼らなりにそうすべき
理由があったとしても、それは許されぬ行為である。
結果として己の生命を失ったのはむしろ当然だ。

　そう思う。
　同じ理由で、憐憫の情もない。

　一条を責める想いもなかった。
　彼らが死に値する罪を犯していたなら、一条は単に
その執行を担ったに過ぎないのだと思う。

　他に解決方法があったとも考え難い。
　武者は手足を断たれても行動を続行できる耐久力と、
その手足を再生させる回復力の所有者だ。殺さず戦闘
力だけ奪うのは容易ならぬ事である。

　一条がもしそうしようと試み、そして失敗していた
ら、人質は即座に殺されていただろう。
　敵の急所を狙って一撃必殺に仕留めた一条の判断は
間違っていない。そう断定できる。

　つまり、何も悔やむ事はない。
　恥じる事もない。
　省みて、思い悩むべき何事もない。

　そう云える。
　云えるのだ。
　
　一条と一家の対話は続いていた。

　……どういうわけか相手は両親のどちらでもなく、
男児に代わったらしい。
　一家の内で最も順応力が高かったのがその子だった、
という事だろうか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw子供.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170130e138">
「せんそう？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170140a02">
「うん」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170150e138">
「なんで？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170160a02">
「悪い奴らを許せないから」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170170e138">
「ろくはら？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170180a02">
「そう。よく知ってるな」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170190e138">
「おおさか……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170200a02">
「……大阪虐殺？」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170210e138">
「みんなしんだ。
　すごくやけた」


//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170220e138">
「それで、こっちきたの」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170230a02">
「…………{	WaitKey(1200);}そうなんだ」

{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170240e138">
「あいつらと、たたかう？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170250a02">
「うん」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170260e138">
「なんで？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170270a02">
「それが正義だって信じるから」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170280e138">
「……せいぎ」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170290a02">
「真っ直ぐ正しく生きること。
　悪いやつらを許さないこと」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170300e138">
「こわくない？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170310a02">
「そうだな。
　ちょっとな」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170320e138">
「でも、たたかう？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170330a02">
「うん」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170340e138">
「なんで？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170350a02">
「そいつが、勇気」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　一条は微笑んで、子供の胸をつついた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170360a02">
「ここんとこにあるやつ」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170370e138">
「……それがあれば、わるいのと、せいぎで、
たたかえる？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170380a02">
「そう」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170390a02">
「悪いやつらがのさばる世界を……
　正しく変えられる」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　……………………………………。

　一条は正義を語り。
　子供はそれを聞き。
　床には死体が転がっている。

　何も悔やむ事はなく、
　何も恥じる事はなく、
　思い悩むべき何事もない。

　
　　　　　　　……本当にそうか？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_018.nss"