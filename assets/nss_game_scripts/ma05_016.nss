//<continuation number="1300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_016.nss_MAIN
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

	$GameName = "ma05_017.nss";

}

scene ma05_016.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_015.nss"


//◆山賊砦
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg055_山賊アジト_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm20",0,1000,true);

	SetNwC("cg/fw/nw山賊Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160010e083">
「準備できたか？」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160020e084">
「もうちょっと待て。
　<RUBY text="ホイ">自走砲</RUBY>の整備がまだ終わってない」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160030e083">
「いらねえだろ？　そんなの」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160040e084">
「いらねえけど。
　ずいぶん長いこと使ってないからな。試し
撃ちしといてもいいんじゃねえ？」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160050e083">
「それもそうか。
　まぁいいけど、早くしろよな。見つかると
面倒だ」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160060e084">
「おう」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160070b31">
「お待ちなさい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆首領
	StL(1000, @0, @0,"cg/st/st首領_通常_制服.png");
	FadeStL(300,true);

	SetNwC("cg/fw/nw山賊Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160080e084">
「うぇっ……」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160090b31">
「誰に、何を見られると面倒なの？
　おまえ達」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160100e083">
「いや、別に……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160110b31">
「銃に、車両に……
　自走砲ですって？」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160120b31">
「そんなものまで持ち出して、何をしようと
言うの？
　畑仕事の役には立ちそうもないわね？」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160130e084">
「……」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0160140e085">
「おぉい、まだかよお前ら！
　早くしないと御館に――<?>
{Wait(1000);}
げぇっ！」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160150b31">
「……」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0160160e086">
「あちゃ……」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160170b31">
「ひぃふぅみ……ぞろぞろと、まぁ。
　ますますもって剣呑だこと」

{	FwC("cg/fw/fw首領_怒り.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160180b31">
「そろそろ説明を貰おうかしら。
　群れをなして、武装して、何処へ何をしに
行くつもりだったの？」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0160190e085">
「……や……その、ま。
　ちょっと、食料の調達にでも」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160200e083">
「ぼちぼち蓄えが少なくなってきたんで……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160210b31">
「言ったでしょう。
　必要な物資は、アタシが町に掛け合って手
に入れてきます」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160220b31">
「けれどそれは、田畑の開発をいくらかでも
進めてから。
　我々が取り決め通りに働かないのに、町が
取り決めを守ってくれるわけがないでしょう」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160230b31">
「我々は物乞いではないのです」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160240e084">
「…………」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0160250e086">
「…………」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160260b31">
「……うんざり、という顔ね」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160270e084">
「いえ……」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160280b31">
「アタシもうんざりよ。
　同じ話をもう何回したのだか」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160290b31">
「でも、おまえ達がまだ理解できないという
なら仕方ありません。
　いいこと――」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160300b32">
「いいよ。
　うんざりだよ、姉さん」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆首領弟
	StR(1000, @0, @0,"cg/st/st首領弟_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw首領_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160310b31">
「……一磨」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160320b32">
「一体どうしちゃったのさ、姉さん。
　おかしいよ？　最近」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160330b31">
「おかしくなどありません。
　アタシはいつも通りよ」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160340b32">
「そう？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160350b31">
「ええ。
　方針を変更しただけ」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160360b32">
「湊斗って男に負けたから？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160370b31">
「……そうよ」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160380b32">
「なんで？
　どうだっていいじゃん、そんなこと」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160390b31">
「……アタシはこの中で一番強い。
　そうでしょう」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160400b32">
「うん」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160410b31">
「そのアタシに、あの男は勝った。
　そんな男があの町にいた」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160420b31">
「それがどうだっていいと？」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160430b32">
「うん」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160440b31">
「どうして？
　あなた、自分なら勝てるつもり？」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160450b32">
「勝てるよ？
　だって、<RUBY text="ねえさん">敵将</RUBY>を殺しもしなけりゃ人質にも
しないで逃がしちゃった、大甘の甘ちゃんで
しょ？　そいつ」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160460b31">
「……」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160470b32">
「多少は腕があったって、ただの馬鹿じゃん。
　闇討ちに掛ければ簡単に始末できるよ」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160480b32">
「残るのは、そんな馬鹿を使って僕らをどう
にかしようとした町の腑抜け連中だけ。
　今まで通り、山賊やっていけるよ」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160490b31">
「…………」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160500b32">
「でしょ？　姉さん」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160510b31">
「……そうかもしれない。
　でも、そのことはきっかけに過ぎないの」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160520b31">
「どのみち、山賊稼業を続けていたって先は
なかった。
　幕府がいつまでも放っておいてくれるわけ
がないもの」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160530b31">
「いずれ討伐される。
　それよりは、町の中に溶け込んで、時機を
待った方が賢明よ。そうじゃない？」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160540b32">
「そうかな？
　他にもやりようはあると思うけど」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160550b31">
「……言ってごらんなさい」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160560b32">
「大陸に渡るとかさ。
　金さえ積めば密航船くらい調達できるよ」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160570b31">
「……その金を、どこから持ってくるの」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160580b32">
「この町でかき集めればいいじゃん？
　足りなければ……そーだね。人間も捕まえ
ようよ」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160590b32">
「それで、<RUBY text="・・・">奴隷船</RUBY>に便乗させてもらえばいい。
　今、そういうの結構あるらしいよ？　需要
と供給が揃ってるから」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160600b32">
「大陸の都市では働き手が不足してて、国内
では貧乏な家が子供を持て余してる。
　奴隷商人は繁盛してるみたい。そいつらに
さ、<RUBY text="・・">商品</RUBY>をくれてやればきっと割引価格で」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぱーん。ビンタ。
	CreateSE("SE01","se人体_動作_ビンタ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 0, 1000, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, true);

	SetFwC("cg/fw/fw首領弟_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160610b32">
「……」

{	FwC("cg/fw/fw首領_怒り.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160620b31">
「恥をお知りなさい！
　おまえは家名に泥を塗るつもりですか！」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160630b32">
「……何さ。
　この間までの山賊と別に大して変わんない
じゃん」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160640b31">
「……」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160650b32">
「違う？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160660b31">
「ええ。そうね。
　大した違いはないわね」

{	FwC("cg/fw/fw首領_怒り.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160670b31">
「程度の問題よ。
　でも……その<RUBY text="・・・・">程度の差</RUBY>は無視できません！」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160680b31">
「卑し過ぎます」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160690b32">
「……」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160700e083">
「……ま、それでも。
　土いじりよりはマシかなぁ？」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160710b31">
「おまえ……」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160720e084">
「どっちが性に合うかっていえば……
　御舎弟の方ですかねぇ……」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0160730e080">
「……口が過ぎるぞ」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160740e083">
「けっ」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0160750e082">
「御館の命令に従って、間違いがあったこと
はねえだろ。
　今度もそうすりゃいいじゃねえか」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0160760e085">
「間違えてからじゃ、遅ぇんだよ」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0160770e080">
「おい……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160780b31">
「もう結構。
　おまえ達と議論する気はありません」

{	FwC("cg/fw/fw首領_怒り.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160790b31">
「命令に従いなさい。
　解散ッ！　武器を蔵へ戻して、作業に戻れ」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0160800e086">
「…………」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160810e084">
「…………」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160820b31">
「……おまえ達。
　アタシの言うことが聞けないというの？」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160830b32">
「聞くわけないじゃん。
　何言ってんのさ、姉さん」

{	FwC("cg/fw/fw首領_驚き.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160840b31">
「一磨？」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160850b32">
「大体、頭領面するのやめてよね。
　姉さんはもう、<RUBY text="・・">隠居</RUBY>なんだからさ」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160860b31">
「ッ！」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160870e084">
「へへ……
　そういや、そうでしたね」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160880e083">
「身内は余計な口出しをしないもんだとか、
聞いた気がするよなぁー。確か」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160890b31">
「…………」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0160900e085">
「……<RUBY text="・・">御館</RUBY>。
　どうぞ、御命令を」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160910b32">
「うん。
　じゃ、みんなで町に行こっか」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160920b32">
「もちろん完全武装でね」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0160930e086">
「了解！」

{	CreateSE("SEL01","se背景_ガヤ_ざわめく01_L");
	MusicStart("SEL01",1000,1000,0,850,null,true);
	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160940e083">
「はっはぁーーー!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆動き出そうとする連中
//◆しゃきん。首領が太刀抜いた。
	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StL(1000, @0, @0,"cg/st/st首領_戦闘_制服.png");
	FadeStL(300,true);
	SetVolume("SEL*", 3000, 0, null);

	SetFwC("cg/fw/fw首領弟_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160950b32">
「…………。
　何のつもり？　姉さん」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160960b32">
「邪魔だよ。
　どいてよ」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160970b31">
「……通しません」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160980b32">
「なんで？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160990b31">
「部下はアタシが抑えると約束したの。
　言葉で無理なら……力ずくでもそうする」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161000b32">
「ちょっと。
　本気？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0161010b31">
「冗談で太刀を抜けなんて、アタシは一度で
も教えた？」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161020b32">
「……」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0161030e082">
「ご、御舎弟。
　どうかこの場は、御館の言う通りに……」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0161040e080">
「お前らも退けよ！
　とにかく、一度武器を置けっ！」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161050b32">
「もういい」

{	SetVolume("@mbgm*", 1000, 0, null);}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161060b32">
「――尽忠報国」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆弟、装甲。九〇竜騎兵
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d九〇式指揮官_立ち_通常.png");
	FadeStR(0,true);
	FadeDelete("絵フラ", 1000, true);

	SetNwC("cg/fw/nw山賊Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0161070e080">
「御舎弟――!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずばー。山賊Ａ死す
	CreateColorSP("絵黒", 4000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_刀振る02");
	CreateSE("SE01b","se人体_血_血しぶき01");
	MusicStart("SE01",0,1000,0,850,null,false);
	SL_left2(5000,@0, @0,1500);

	MusicStart("SE01b",0,1000,0,800,null,false);
	SL_leftfade2(0);
	CreateTextureEX("絵演血", 5100, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Rotate("絵演血", 0, @0, @180, @0, null,true);
	Fade("絵演血", 0, 1000, null, true);

	SetNwC("cg/fw/nw山賊Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0161080e082">
「な、あっ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずばしゅ。山賊Ｂ死す
	Delete("絵演血");
	CreateTextureEX("絵演血", 5100, Center, Middle, "cg/ef/ef006_汎用血しぶき.jpg");
	Rotate("絵演血", 0, @0, @180, @0, null,true);
	CreateSE("SE01","se戦闘_攻撃_刀振る02");
	CreateSE("SE01c","se人体_血_血しぶき01");
	SL_rightdown2(5000,@0, @0,1500);
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_rightdownfade2(0);
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Fade("絵演血", 0, 1000, null, true);
	Wait(10);
	CreatePlainSP("絵板写",6000);
	Delete("絵黒");
	Delete("絵演血");
	StR(1000, @0, @0,"cg/st/3d九〇式指揮官_立ち_抜刀.png");
	FadeStR(0,true);
	Wait(500);
	FadeDelete("絵板写", 1000, true);

	SetFwC("cg/fw/fw首領_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0161090b31">
「…………!!」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161100b32">
「この劒冑はもう僕のだよ。
　そうだよね？　姉さん」

{	FwC("cg/fw/fw首領_怒り.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0161110b31">
「一磨!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぼく。殴った。
	CreateSE("SE01","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	DeleteStL(0,true);
	WaitKey(10);
	Delete("絵白転");

	SetFwC("cg/fw/fw首領_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0161120b31">
「……っ……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ばた。
	CreateSE("SE02","se人体_衝撃_転倒03");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nw山賊Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0161130e083">
「……」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0161140e084">
「……」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161150b32">
「ねえ」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0161160e083">
「は――
　はいッ!?」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161170b32">
「姉さんてさ。
　結構、<RUBY text="・・・">いい値</RUBY>で売れそうな気がしない？」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0161180e083">
「は……」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0161190e084">
「……はぁ」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161200b32">
「でも多分姉さん、男を知らないと思うんだ
よね。
　それじゃ価値半減だよ」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161210b32">
「だからさ。
　お前たち、教えてやってよ」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0161220e083">
「……はっ？」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0161230e085">
「えーっと。
　……いいんですかい？」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161240b32">
「いいよ。
　っていうか、命令」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161250b32">
「やっちゃって。
　溜まってるんでしょ？」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0161260e086">
「……そりゃまあ」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0161270e085">
「ねぇ……」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0161280e083">
「……まっ、御命令とあらば」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0161290e084">
「やっちまいますか」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0161300e086">
「やっちまおうや。
　遠慮なく」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_017.nss"