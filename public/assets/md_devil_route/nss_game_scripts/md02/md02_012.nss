//<continuation number="1260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_012.nss_MAIN
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
	#bg018_公方執務室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_013.nss";

}

scene md02_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_011.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg018_公方執務室_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm24", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",0,true);

//◆童心・質素な僧衣＋編笠＋錫杖
	OnSE("se日常_建物_扉開く01",1000);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120010a07">
「よぉ。托鉢か？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆しゃらーん

	OnSE("se擬音_シリアス_錫杖鳴る", 1000);


	SetFwC("cg/fw/fw童心変装_大笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120020a09">
「インシュ・アッラー！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120030a07">
「何でだよ!!」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120040a09">
「ふっふぅ。
　久しゅうござるな、茶々丸殿」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120050a07">
「久しいってほど経ってねぇ。
　あと、そろそろカサ取れよ」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120060a09">
「おぅ……これは御無礼仕った」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆編笠取る
	OnSE("se人体_動作_衣類脱ぐ01", 1000);

	StR(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	FadeStR(500,true);

	Wait(500);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120070a09">
「ほふぅ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120080a07">
「土鍋登場」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120090a09">
「茶壷くらいの風格はござらんかのう」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120100a07">
「あと十年よく磨くんだな。
　で、何の用さ？　古河の公方の童心坊主」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120110a09">
「元より承知しておいででござろう？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120120a07">
「いやぁさっぱりですね」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120130a09">
「お人が悪い。
　わかり申した、ではそれがしから……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120140a09">
「頃合でござる。
　普陀楽に、お戻りくだされぃ」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120150a07">
「あては鎌倉防衛の役目を怠って大将領殿下
の御身を危うくさせた抜け作ですよ。
　謹慎を解くには、まだちっと早くね？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120160a09">
「謹慎もなにも……そのような沙汰、幕府は
下しておりますまい。
　あくまで茶々丸殿が自発的になされた事」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120170a07">
「どのみち無罪放免とはいかねぇだろ。
　手間を省いただけのつもりでいるけど？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120180a09">
「いやいやいや。
　確かに、失態と申さば失態ではござろうが
……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120190a09">
「奉刀参拝の折、八幡宮にて何が起きたのか、
事件の概要さえ掴めぬうちに罰を云々しても
仕方がござらん」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120200a07">
「まだ全然？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120210a09">
「皆目。
　<RUBY text="との">大将領</RUBY>が八幡宮ごと消え去った――疑いの
余地なき事実が有るばかりでござる」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120220a07">
「ふーん」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120230a09">
「茶々丸殿の責任が問われるにしても、事の
次第が明らかにされた後の話。
　今は幕閣の動揺を引き締めるため、御貴殿
の力が必要でござる」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120240a07">
「用が済んだら罪状を決めて処分するってか」

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120250a09">
「はっはっはっ」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120260a07">
「あっはっはっ」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120270a07">
「全然面白くねえぞオイ」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120280a09">
「冗談でござる。
　どだい、有りもせぬ罪を問うなど馬鹿げた
話……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120290a07">
「あてに罪が無いって？」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120300a09">
「むろん」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120310a09">
「殿は武人であられた。
　そして武人が何者かに害されたのであれば、
それは本人の不覚というものであって他人の
失敗ではござらん」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120320a07">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_宥め.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120330a09">
「まったく、殿も醜態を晒してくれたわ。
　天下を制そうと、最期が骸の在処も知れず
ときては、竜頭蛇尾の生涯であろうに」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120340a07">
「薄情だな」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120350a09">
「……ふむぅ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120360a07">
「何さ？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120370a09">
「いやいや。
　少々驚いたのでござる」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0120380a09">
「そこで御貴殿がお怒りになられるとは、夢
だに思わなかったものでしてのう」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120390a07">
「……別に怒っちゃいねぇ」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120400a09">
「おや。
　これはそれがしの見立て違いか。申しわけ
ござらん」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120410a07">
「謝らなくてもいいけど。
　で、話はそんだけ？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120420a09">
「普陀楽に、登城して頂けますかな」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120430a07">
「獅子吼と雷蝶はそんなに手に負えねえか？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120440a09">
「有体に申せば」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120450a07">
「どっちも別に馬鹿じゃねえだろ。
　バカだけど」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120460a09">
「物の道理はわきまえておられるが。
　ご両所とも、対立する相手とは真っ向から
ぶつかる以外の選択をできぬ気性でござって
のう」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120470a09">
「いささか持て余しており申す」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120480a07">
「良く言うぜ。
　おじじがいた頃も、六波羅の手綱を実質の
ところで握っていたのはあんただ……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120490a07">
「今更御せないなんてこたねえだろ。
　頭の上の重石が取れて、やりやすくなった
くらいだろうが？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120500a09">
「おぅ、それは買いかぶりと申すもの……。
　童心坊主ごときにそんな器量はござらん！」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0120510a09">
「獅子吼殿と雷蝶殿の間を取り持つのに四苦
八苦するばかり、殿の失踪から案件は溜まる
一方でござるのにろくろく手も付けられず。
　これでは幕府は、瓦解を待つのみ――」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120520a09">
「天下万民のためでござる！
　茶々丸殿、どうか力をお貸しくだされ！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120530a07">
「要は獅子吼と雷蝶がいちいちうるさい<RUBY text="あんた">宿老</RUBY>
を敵視しはじめる前に、緩衝材としてうって
つけの奴を呼び戻しておきたいってんだな？」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120540a09">
「お茶はまだでござるかのう」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120550a07">
「出さねえよ。
　ったく、ムシのいい爺いだ」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120560a09">
「茶々丸殿……この通り、お頼み申す。
　御貴殿にしても、伊豆に引き篭もっていた
ところで面白いことは何もござるまい」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120570a07">
「そんなことないもんねーだ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120580a09">
「鎌倉防衛の責任については、自ら謹慎する
態度を見せられた、それだけで充分でござる。
　以後一切、誰にも追及はさせぬこと、この
遊佐童心がお約束いたす」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0120590a09">
「お求めとあらば、一筆残しましょうぞ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120600a07">
「…………」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120610a09">
「一つ、借りということで……
　いかがでござろうか？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120620a07">
「あんたに貸してもなぁ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120630a09">
「犬馬の労を厭いませぬぞ。
　それがし、家臣のつもりで茶々丸殿のため
に働きましょう」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120640a07">
「いらねえよ……こんなあからさまに腹黒い
家臣……。
　どこの斎藤道三だよ……」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120650a09">
「その申されようは心外でござる。
　ならば、それがしの誠意をご覧あれ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ばっ。しゃがむ
	OnSE("se人体_動作_一歩",1000);
	Move("@StR*", 500, @0, @50, DxlAuto, false);
	DeleteStR(200,true);
	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120660a07">
「……何する気だ？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120670a09">
「足を舐めさせて頂こうかと」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120680a07">
「金取るぞてめぇ!!」

{	StR(1000, @0, @50,"cg/st/st童心_通常_私服a.png");
	FadeStR(200,false);
	Move("@StR*", 500, @0, @-50, DxlAuto, false);
	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120690a09">
「うむぅ。難儀な御方よのう」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120700a07">
「もうこいつ殺しちゃおうかな……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120710a07">
「……ん？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120720a09">
「いかがなされた」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120730a07">
「童心坊。
　あんた、変なの連れてきてねーか？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120740a09">
「はて？」

{	SoundPlay("@mbm09", 0, 1000, true);
	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120750a07">
「あての方には、<RUBY text="・・・">こんな</RUBY>剣呑な奴に付け狙わ
れる覚えなんてないんだけどな。
　今のとこ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120760a09">
「……ほッ」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120770a09">
「これは、掛かってきよったかな」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120780a07">
「何だ？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120790a09">
「いや先日、普陀楽で<RUBY text="・・">遊び</RUBY>ましてのう。
　岡部の姫を肴に少々」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120800a07">
「……あー。報告は聞いてるよ。
　能舞台にかこつけて、なんか愉快なことを
やったんだって？」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120810a09">
「お聞き及びでござったか。
　いや、お恥ずかしい」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120820a07">
「たまには本気で恥じろよエロ坊主。
　<RUBY text="ときおう">邦氏</RUBY>も相当、いじめたらしいじゃねえか」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120830a09">
「教育のつもりでござるがのう」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120840a07">
「嘘こけ」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120850a09">
「くふ、ふっふぅ……。
　この悪趣味はそれがしの<RUBY text="ごう">業</RUBY>、どうしようも
ござらぬわ」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120860a07">
「で……コレか」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120870a09">
「鼠は出て来るのをただ待つより、餌で釣り
出して捕まえる方が上策でござってな。
　岡部の残党どもにしてみれば今は隠忍自重
の時、しかしそれを許しては我らには不都合」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120880a07">
「最初から挑発が目的だったっての？」

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120890a09">
「はっはっはっ！
　やってしもうた後で、そういうことにして
おけば獅子吼殿への弁明も立つと思ったまで
でござる」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120900a07">
「救えねぇー。
　それで、どうする？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120910a09">
「茶々丸殿のお手を煩わせるべき筋合いでは
ござらんな。
　のう……天井裏の御仁よ？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 4900, -240, 0, "cg/bg/bg018_公方執務室_01.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Move("絵背景100", 300, @0, 286, Dxl2, false);
	Fade("絵背景100", 300, 1000, null, true);

	SetFwC("cg/fw/fw童心_バサラ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120920a09">
「それがしが相手でなくば、おぬしとて張り
合いがあるまい！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


//◆ずばー。天井を刺す
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);

	FadeStA(0,true);
	Delete("絵背景100");

	EffectZoomDXadd(10000, 1000, 1000, "#FFFFFF", "cg/ef/ef009_汎用下上軌道.jpg", false);
	CreateTextureSPadd("演出", 10000, Center, Middle, "cg/ef/ef009_汎用下上軌道.jpg");
	OnSE("se戦闘_攻撃_刀振る02",1000);
	OnSE("se人体_衝撃_瓦礫ぶつかる01",1000);
	Wait(200);
	OnSE("se戦闘_攻撃_キック02",1000);
	FadeDelete("演出", 500, true);
	WaitKey(1500);
	FadeDelete("黒幕１",1000,true);

	StR(1000, @0, @50,"cg/st/st童心_通常_私服a.png");
	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");

	SoundPlay("@mbgm24", 0, 1, true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120930a09">
「……」

{	FadeStL(300,false);
	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120940a07">
「逃げたな」

{	FadeStR(300,false);
	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120950a09">
「手応えはあったが……
　なかなかにしぶとい奴」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120960a09">
「もっとも、この館から抜け出ることは叶う
まい」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120970a07">
「変な面倒持ち込みやがって」

{	SetVolume("@mbgm*", 3000, 1000, null);
	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120980a09">
「申し訳ござらん。
　これで、借り二つでござるな」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120990a07">
「あてはまだ鎌倉に戻るなんて言ってねーぞ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121000a09">
「茶々丸殿……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121010a07">
「もうちょっと待ってろ」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121020a09">
「むぅ？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121030a07">
「近いうちに戻る。
　時機を見てな」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121040a09">
「時機とは」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121050a07">
「そりゃこっちの話だ。
　ま、二ヶ月も三ヶ月も待てなんて言わねえ
から安心しろ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121060a09">
「……わかり申した。
　普陀楽にてお待ちいたす」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121070a07">
「あぁ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121080a09">
「では、それがしは御免仕る」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121090a07">
「帰れ帰れ。
　塩まいちゃる」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆すー。戸口開ける音

//	Move("@StR*", 1000, @50, @0, null, true);

	OnSE("se日常_建物_扉開く01",1000);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121100a09">
「茶々丸殿」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121110a07">
「まだなんかあんのか？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121120a09">
「将たる者、破滅に魅入られてはなるまいぞ」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121130a07">
「……」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121140a09">
「わからぬ。
　何がそこまで、茶々丸殿を絶望させている
のか……」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0121150a09">
「わかるのは、その瞳に破滅が巣食っている
ということのみ。
　深く……深く」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0121160a09">
「……これがいずれ、何をもたらすのか……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121170a07">
「そこなお坊さん」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121180a09">
「うむ……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121190a07">
「一つ相談があります」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121200a09">
「それがしでお役に立てるなら、何なりと」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121210a07">
「やにわに電波系だか遠回しな宗教勧誘だか
ものすごく遠回しな口説き文句だかさっぱり
わからんことをのたまい始めた奴がいるんだ
けど、こいつどうしたらいいですか」

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121220a09">
「ふわっはっは！
　それは石でも投げて追い払うしかあるまい
のう！」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121230a09">
「失礼」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//―――――――――――――――――――――――――――――

//◆童心、去る
	Move("@StR*", 1000, @50, @0, null, false);
	DeleteStR(300,true);

	Wait(500);

	OnSE("se日常_建物_扉閉める01",1000);

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121240a07">
「…………」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121250a07">
「糞坊主が」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121260a07">
「あては絶望なんかしてねえ。
　疲れてるだけだ……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md02_013.nss"