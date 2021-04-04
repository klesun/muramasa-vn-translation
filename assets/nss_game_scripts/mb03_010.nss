//<continuation number="790">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_010.nss_MAIN
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
	#bg027_普陀楽評議の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_011.nss";

}

scene mb03_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_009.nss"

//◆普陀楽
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg027_普陀楽評議の間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm24",0,1000,true);

	Wait(500);
	SetFwC("cg/fw/fw雷蝶_焦り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100010a08">
「――というわけなのよっ！
　わかった!?」


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100020a07">
「…………」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100030a06">
「…………」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100040a08">
「……ちょっと。
　何で黙るのよ！」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100050a07">
「あー……何だ。その。
　つまり、おめーの話を総合すると」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100060a07">
「エクスカリバーは<RUBY text="エクス">ＥＸ</RUBY>カリバーン……？」


{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100070a08">
「あんたは何を聞いてたッ!?」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100080a06">
「……童心和尚を殺したのは舞殿宮、だと？」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//嶋：修正（なのっ）【090930】
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100090a08">
「そ、そう！　そうなのよっ！
　これは幕府への挑戦よ！　危機よ！」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100100a08">
「麿たちの軍勢を結集して対抗しないと。
　いえ、この際、大宰府の足利幸行も呼んで
……借りをつくることになるけど仕方ないわ。
あと室町探題には朝廷を押さえさせて」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100110a07">
「お茶のおかわりいるー？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100120a06">
「貰おう」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100130a08">
「聞いてってば！」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100140a06">
「聞いてやる。
　だが茶くらい飲ませろ。貴様の妄想夢物語
に付き合うのはかなりの骨だ」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100150a07">
「うむ。できればダイジェスト版にしてくれ」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100160a08">
「妄想でも夢でも物語でもないってーの!!
　舞殿宮は六波羅を滅ぼすつもりなのよっ！
その手始めに童心様を亡き者にしたのっ！」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100170a08">
「いえ……もしかしたらお父様を殺めたのも！
　そうよ！　そうに違いないわ！」


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100180a08">
「これが危機でなくて何なのッ!?」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100190a06">
「被害妄想だ」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100200a07">
「仮想戦記？」


{	SetComic(@0,@0,9);
	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100210a08">
「違うっつーのぉ！
　キーーーーーーーーーーッ!!」


{	DeleteComic();
	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100220a06">
「……」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100230a07">
「あのさぁ。
　親王がどーやって、そんなことすんのさ？
あのおっちゃん、身辺警護の兵隊も自前じゃ
持ってないんですけど？」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100240a08">
「だっかっらっ、隠し持ってたのよ！
　信じられないけど、そう考えなきゃ説明が
つかない」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100250a08">
「間違いなく、武者もいる……。
　うぅ、どれほどの戦力を抱えてるのかしら」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100260a07">
「へぇ」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100270a06">
「ほぅ」


{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100280a08">
「真面目に聞けぇ!!」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100290a07">
「聞いてるよ。
　……どう思う？」


{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100300a06">
「さて。
　<RUBY text="・・・・・・・">説明がつかない</RUBY>、とのことだが？」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100310a07">
「ああ。
　そう言ったな」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100320a08">
「え？」


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100330a07">
「なんでそう考えなきゃ説明つかねーんだろ。
　それこそ大宰府の反逆とか、ＧＨＱの陰謀
とか、もっとフツーに有りそうな推測は何ぼ
でも立てられんのにな？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100340a06">
「実に不可解な話だ」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100350a08">
「――――！」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100360a07">
「<RUBY text="・・・・・・・">舞殿宮がやった</RUBY>って部分だけは確信がある
みたいに聞こえるぜ？　雷蝶クン」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100370a08">
「あ……いえ、それは……ね。
　麿の手の者が、情報をつかんだから」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100380a07">
「ならそこから言やあいいだろーに。
　なんで筋道立てて話さないんだ？」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100390a08">
「そ、そうね。麿としたことが。
　ちょっと動転していたみたい」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100400a06">
「それにしても大したものだ。
　まだ城内の混乱すら収まっていない有様だ
というのに、既に貴様はそこまで真相に確信
を持てるだけの情報を揃えているとは」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100410a06">
「余程に優秀な諜報班を抱えているのだな？」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100420a08">
「え、ええ……」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100430a07">
「知らなかったにゃー。
　厩衆より優秀なんでね？　常闇もこれじゃ
面目丸潰れだ」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100440a06">
「教えを乞いたがるだろうよ」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//嶋：修正（今は）【090930】
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100450a08">
「そっ、そんなことは今、どうでも良くて！
　舞殿宮への対処を考えましょう！」


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100460a08">
「向こうが実力行使で来ている以上、こちら
もそうする以外にないわ。
　どこからどれだけの兵力が出てくるかわか
らない。今動かせる限りの軍を建朝寺へ――」


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100470a07">
「おめーがやれ」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100480a08">
「……は？」


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100490a07">
「小弓軍管区の兵を集めな。
　それで親王襲って殺してこい」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100500a08">
「麿……が？
　麿の軍だけで？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100510a06">
「そうだ」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100520a08">
「な、何でよ」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100530a07">
「あー？
　親切のつもりなんだけどなぁー？」


//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100540a07">
「あてらの軍で攻めたら、親王をどーすっか
わかんないよ？
　殺さないかもしれない。<RUBY text="・・・・・・・・">ちょっと話を聞い</RUBY>
<RUBY text="・・">たり</RUBY>するかも」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100550a06">
「そうだな。
　どうやって普陀楽城襲撃などという暴挙を
成し遂げたのか……とか、な」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100560a08">
「!!」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100570a07">
「どーする？」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100580a08">
「ぐっ……
　な――何のことかわからないけどわかった
わよ」


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100590a08">
「麿の手勢で片付けましょう……」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100600a07">
「手早くな。
　そう長くは待たねえから」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100610a06">
「一週間だ。
　その刻限を過ぎたら――」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100620a06">
「堀越と篠川の両軍は、<RUBY text="・・・">反逆者</RUBY>の処分を行う」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100630a08">
「――――」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100640a08">
（ど……どうして……）


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100650a08">
（どうしてこんな事に……）

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆一度フェードアウト
//◆フェードイン
	ClearWaitAll(2000, 1000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg027_普陀楽評議の間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	Wait(1000);
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm20",0,1000,true);

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100660a07">
「やるかね？　あいつ」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100670a06">
「やるしかなかろうさ。
　馬鹿も馬鹿なりに計算くらいはする。俺と
貴様を同時に敵に回して勝てるとは思うまい」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100680a07">
「……馬鹿かぁ。
　あいつは馬鹿とは少し違うね。ただ、大き
過ぎる服を着たから頭が隠れて前が見えなく
なったってだけでね」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100690a06">
「それこそ馬鹿の証明だろうが」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100700a07">
「違うとは言わねーけど」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100710a06">
「貴様は雷蝶を余り嫌わなかったな」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100720a07">
「ん。まーね。
　あいつ裏も表も無いしね……正しくは裏と
表が筒抜けなんだけど。そういう阿呆は嫌い
じゃない」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100730a07">
「だから、後始末もあてがやっとくよ」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100740a06">
「……そうか」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100750a07">
「六波羅も終わりだな」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100760a06">
「終わらせはせん。
　俺がいる限り」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100770a07">
「へぇ。まだやる気なんだ、獅子吼。
　てことは時王も連れてく？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100780a06">
「そのつもりだ。
　鎌倉は貴様の好きにするがいい」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100790a07">
「そっか。
　んじゃー……綺麗にやっちまうか」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_011.nss"