//<continuation number="830">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_010.nss_MAIN
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
	#bg094_宮中庭_01=true;
	#ev001_銀星号事件イメージ１=true;
	#bg054_湊斗家祭殿b_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_011.nss";

}

scene md01_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_009.nss"

//◆宮中、庭から？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg094_宮中庭_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　そこは雅やかで、されど落ち着いた佇まいだった。
　何処かの御殿の、内庭……そんな風情だ。

　その場で、俺――村正は平伏している。
　前方の<RUBY text="きざはし">段階</RUBY>には誰かが立ち、こちらを見下ろしてい
る様子であった。

　人は、それきり。
　辺りに気配はあるが、遠ざけられているようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ネームプレート「？」
	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100010b47">
「そなたが村正の孫……三代目か」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100020a01">
「は……っ、はい。
　へ、陛下に置かれましては――」

{	NwC("cg/fw/nwその他.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100030b47">
「良い。今は公衆の前でも朝議の場でもない。
　慣れぬ言葉遣いは無用にいたせ」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100040a01">
「は、はい……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……陛下。
　では、この御方は帝か。おそらく南朝の。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ネームプレート「帝」
	SetNwC("cg/fw/nw帝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100050b47">
「既に聞いておろうが……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100060a01">
「……」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100070b47">
「村正、そなたの家門は――これを断絶する。
　一切の継承は許さぬ」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100080b47">
「劒冑鍛冶右衛門尉村正は、そなたをもって
終えよ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100090a01">
「…………。
　承知して、おります」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100100a01">
「我が一門の犯したる罪……招きたる災いの
程を思えば……
　祖先に遡り、一族係累鏖殺の憂目に遭おう
とも恨み言は申せませぬところ」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100110a01">
「陛下の御慈悲に……感謝いたします……」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100120b47">
「……うむ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　家門断絶。
　中世の価値観においてその一事がどれほどの重みを
持つのか。現代人には知る由もないことだ。

　ただ、村正の両手の震えと……
　白砂の上へしたたり落ちる雫から、推し量るしかな
かった。

　全ては罪のため。招いた災いのため。<k>
　
　<RUBY text="・・">災い</RUBY>。
　村正の心にその実相が映り、俺の心にも写る。

　俺は知った。
　南北朝時代最後の惨劇――そこに秘められた真実を。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆大災厄。ev001？
	CreateTextureEX("絵演", 4000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateSE("SEL01","se背景_ガヤ_合戦01");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	Fade("絵演", 1600, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　――――たった一つの事故が何もかも狂わせた。

　始祖村正を贈られた北朝軍の主将は、当時、堅牢な
権力基盤を有しているとは言い難い状況にあった。
　支配者というよりも、諸将の利害調整役という立場
に近かった。

　政治の才に優れた実弟の力を借りて、<RUBY text="ようよ">漸</RUBY>う軍をまと
めていたのである。
　些細な情勢の変化、利害関係の変動から敵意を買い、
昨日までの部下に盾突かれることも一切ではなかった。

　それは彼が村正を手に入れてまだ程ない頃のことで
ある。
　出陣前の慌しさに紛れて刺客が主将の側まで近付き、
不意に襲い掛かった。

　戦慣れした主将は反射的に抜刀し、刺客を斬り――
　殺してしまったのだ。

　村正の戒律が持つ拘束力は絶対である。
　敵を殺した彼は自分の意思によらずして刃の向きを
返し、傍らに立つ味方を斬り伏せた。

　公私両面で彼を支えてくれていた、最愛の弟を。

　……その日から、北朝軍は狂気の集団と化した。
　発狂した主将が〝精神同調〟の波を無差別に放散し、
全軍に<RUBY text="おの">己</RUBY>が狂気を蔓延させたのである。

　狂将率いる狂兵の群れを迎えて――
　二世村正を持つ南朝方の主将は、狂気の『波』から
味方を守るため、先んじて全軍を自分の精神影響下へ
置くよりほかに手立てがなくなった。

　かくして前例のない地獄的な闘争が地上に発現する。

　一方は、手当たり次第何もかも破壊し殺し尽くさん
とする魔獣の群れ。
　一方は、敵兵を一人殺す都度、肩並べて戦う友をも
一人ずつ殺してゆく悲愴の軍団。

　末世の相そのものであった。
　この世において人間の生命は秋の田の稲穂のように、
無造作に刈り取られ、三途の川の向こうへ流された。

　どれほどの人が死に、どれほどの村が滅んだか……
　正確に知る者など誰もいない。知ろうとする意欲を
持つ者もいなかったろう。

　乱の最中、人々はただ生き延びるために必死であり、
乱が果てた後は、世間の惨状にただ呆然とするばかり
であった。

　神懸かりの力を<RUBY text="ふる">揮</RUBY>った始祖村正と北朝主将に南朝の
将とその麾下十三騎が挑み、遂にこれを討ち果たして
乱の源を断った時――曰く「いまや大和では人よりも、
死肉を食らう犬猫の方が栄えている」……。

　ある法師の嘆弁である。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	SetVolume("SE*", 1000, 0, null);
	FadeDelete("絵演", 1000, true);

	SetNwC("cg/fw/nw帝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100130b47">
「村正よ……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100140a01">
「……」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100150b47">
「そなたら一門に悪心がなかったことは良く
わかっている。
　乱世を収めたかったのであろう……」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100160b47">
「元を糺せば、民の苦難も顧みず戦を続けた
朕の罪こそ重い……。
　もそっと早く、北朝と和しておれば、この
ような仕儀とはならなんだ」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100170a01">
「…………」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100180b47">
「いずれ朕の罪は天の罰するところとなろう」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100190b47">
「が……それでも村正よ、朕は<RUBY text="しゃしょく">社稷</RUBY>を預かる
者として、国土に災禍をもたらしたそなたら
を許すわけにはゆかぬ。
　わけてもそなたの祖父と母は……」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100200b47">
「始祖村正は粉々に砕かれ、既に跡形もない。
　楠木の二世村正は深く傷ついたが……まだ
滅びておらぬ……」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100210b47">
「これを……このままにはしておけぬ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100220a01">
「……！」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100230b47">
「近いうちに砕き、鋳潰す……。
　さよう心得よ」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100240a01">
「……お、お待ちを……
　陛下！」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100250b47">
「……」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100260a01">
「どうか……その儀ばかりは！」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100270b47">
「二世村正を潰すなと云うか」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100280a01">
「蝦夷にとり、劒冑となるは本望。
　<RUBY text="いくさば">戦場</RUBY>にて斃され、土に朽ちるもまた本望」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100290a01">
「さ、されど……
　ひとたび劒冑となりながら、戦なき場所で
鉄屑に戻され棄てられるは――蝦夷として、
鍛冶師として、死にも堕獄にも勝る痛哭！」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100300b47">
「……そうか。
　そうであったのう……」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100310b47">
「だが戦で葬るには、今一度、あの恐ろしき
劒冑を誰かに<RUBY text="まとわ">装甲さ</RUBY>せねばならぬ……。
　さようなことを、朕が許せると思うてか」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100320a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100330a01">
「武の器は戦場にて朽ちねばならぬもの……
　それが叶わぬならいっそ封印され、永劫の
眠りにつき、忘れ去られるを望むものにござ
います」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100340a01">
「どうか、陛下……！
　この首を献じて、お願い申し上げます」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100350b47">
「……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100360a01">
「先ほど、陛下はお認め下さいました……。
　祖父と母に悪心は無かったと。乱世に幕を
引きたかっただけなのだと」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100370a01">
「その通りなのです！
　我が<RUBY text="おや">祖</RUBY>が、何を誤っていたとしても、その
願いだけは……正しかった筈なのです……！」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100380a01">
「<RUBY text="はは">二世</RUBY>が劒冑として最も卑しき最期を遂げれ
ば……その<RUBY text="ねがい">理念</RUBY>までも汚されてしまいます！」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100390b47">
「…………」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100400a01">
「土に埋めて頂いても構いません。
　海に沈めて頂いても構いません」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100410a01">
「ですがどうか、鋳潰しだけはお許しを……」

{	SetVolume("@mbgm*", 2000, 0, null);
	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100420b47">
「……」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100430b47">
「土に埋めても、掘り返されるやもしれぬ。
　海に沈めても、引き上げられるやもしれぬ」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100440b47">
「そうして、村正の劒冑が大和に還り……
　再び、地上を地獄に変えるやもしれぬ」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100450a01">
「……っ」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100460b47">
「村正よ。
　首を献ずるとの言葉に、嘘はあるまいな」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100470a01">
「は――はい！」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100480a01">
「御寛恕を賜れるのであれば、いつなりと」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100490b47">
「宜しい。
　ならば三世村正、そなたに命ずる」

{	SoundPlay("@mbgm14",0,1000,true);}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100500b47">
「劒冑を打て」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100510a01">
「……!?」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetNwC("cg/fw/nw帝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100520b47">
「そなたの母に比肩する劒冑となるのだ」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100530b47">
「そして、母と共にいずこかの山陰で眠れ。
　願わくば永劫」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100540b47">
「だが……そなたを共に封ずる理由は、ほか
でもない。
　わかるであろうな」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100550a01">
「……」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100560b47">
「将来、何者かが封印を破り、二世村正を手
にした時。
　そなたもまた、<RUBY text="あるじ">仕手</RUBY>を求めよ」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100570b47">
「そして母を監視するのだ。
　そなたの祖父が願った通り、世に和を導く
力として用いられるなら良い。だがもし当世
と同様、災いの武者となり果てし時は――」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100580b47">
「そなたが二世村正を討たねばならぬ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100590a01">
「…………」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100600b47">
「それができぬと申すなら、やはり二世村正
は潰すほかにない」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100610b47">
「答えよ、三世。
　そなたは母を討つことができるか……？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100620a01">
「で――できます！
　必ずや、御諚の通りにいたします！」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100630b47">
「良かろう」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100640b47">
「ならば、繰り返し言い置くぞ。
　劒冑となったそなたが武人と結縁するは、
母が解き放たれた時のみ」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100650b47">
「その時が訪れるまでは、何者とも帯刀の儀
を執り行ってはならぬ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100660a01">
「はい」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100670b47">
「今ひとつ。
　祖父の秘法をもって劒冑となれば、そなた
もあの忌むべき<RUBY text="わざ">能</RUBY>を備えるのであろう」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100680b47">
「人の心を侵す〝波〟を操るのであろう」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100690a01">
「……はっ……」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100700b47">
「朕はあれこそが、そなたの祖父の、唯一の
過ちであったと……そう思えてならぬ」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100710b47">
「そなたの祖父は急ぎ過ぎたのだ。
　願いは正しくとも……人心を強引に従える
やりようは、余りに性急であった」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100720b47">
「ゆえに……ああなった……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100730a01">
「…………」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100740b47">
「村正よ。命じておく。
〝波〟の使用は、朕の名をもって禁ずる」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100750b47">
「如何なる理由があろうとも、この禁を破り
し時は、そなたはもはや朕の臣ではない。
　朝敵、逆賊である」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100760a01">
「……!!」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100770b47">
「良いな。
　この儀、しかと命じたぞ！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100780a01">
「はっ……！」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100790b47">
「……うむ……」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100800b47">
「祈っておるぞ、千子右衛門尉村正。
　そなたと母が、二度と目覚めぬよう……」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100810b47">
「長き刻の果て、解き放たれることがあって
も……その時こそは、そなたの祖父の願いを
叶えるために使われるよう」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100820b47">
「そなたと母が相争うことなどなきよう……
　天地神明に祈っておく」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100830a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 2000);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 100, "#000000");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　……そうして、村正の<RUBY text="ゆめ">過去</RUBY>は終わる。

　村正は劒冑と成り――
　母と共に、一人の武士に託され、山奥の地にて封じ
られる。

　白銀の女王蟻と深紅の蜘蛛。
　二領の劒冑は長い長い刻を、眠りの裡に過ごした。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：光と銀星号
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想背景", 7000, Center, Middle, "cg/bg/bg054_湊斗家祭殿b_02.jpg");
	StL(8100, @0, @0,"cg/st/st光二年前_通常_私服.png");
	StR(8000, @0, @0,"cg/st/3d銀星号_立ち_通常b.png");
	Rotate("@StR*", 0, @0, @180, @0, null,true);
	Request("@StR*", Smoothing);
	FadeStA(0,true);
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);
	Fade("絵白転", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　――――――――あの日まで。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵白転", 400, 1000, null, true);
	ClearWaitAll(2000, 5000);

}

..//ジャンプ指定
//次ファイル　"md01_011.nss"