//<continuation number="1380">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_010.nss_MAIN
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
	#ev128_病床の光_c02=true;
	#ev128_病床の光_d02=true;

	#bg052_湊斗家道場_03b=true;
	#bg053_湊斗家の庭_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_011.nss";

}

scene ma05_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_009.nss"

//◆翌朝。町
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　おそらく、わざわざ狙ったわけではないのだろう。

　彼らが俺の行動予定を知っていた筈はないのだ。
　偶然、<RUBY text="・・・・・">かち合った</RUBY>だけなのだと思う。

　しかし、彼らが俺の到来に気づいた後も平然と作業
を続行したことについては、悪意の所在を避けて説明
のしようなどない。
　内一名に関しては特に。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆山賊団
	StL(1000, @50, @0,"cg/st/st首領_通常_制服.png");
	FadeStL(300,true);
	SoundPlay("@mbgm22",0,1000,true);

	SetFwC("cg/fw/fw首領_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100010b31">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　何を言うでもなく、彼女は艶然と微笑んでこちらを
眺めている。
　女性的魅力の発露に対して不快感のみ覚えるという
のは、初めての体験だった。

　幾つかの想念を頭蓋の内側で錯綜させたすえ、一言
を吐き捨てる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100020a00">
「本家まで行く手間が省けた。
　有難いことだ」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100030b31">
「んーん？　そこの平民。
　何か言ったかしらぁ？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100040a00">
「別に。
　貴方には全く関わりないことだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　そう、全く関係ない。
　本家へ報告に行く必要が霧消したことなど。

　米屋から大量の穀物を運び出している山賊ら。
　彼らの脇をすり抜けて本家まで赴き、「山賊事件は
解決しました」などと胸を張ろうものなら、俺は最高
の<RUBY text="ピエロ">道化師</RUBY>になりおおせるだろう。

　生憎、そういった就職志望をしたことはない。
　滑稽を売りにして生きる道を選べぬ以上、俺はろく
でもない現実をろくでもないままに戦うのみだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100050a00">
「一応、確認はしておきます。
　昨日の約束は覚えておいでか」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100060b31">
「もちろんです。
　侍に二言なし。あの約定はきちんと守って
いますとも」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100070a00">
「守っている？
　では、この有様は何事か」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100080b31">
「くっふっふ。
　約束は、町に手出しをしないよう部下達に
命令する……でしょう？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100090a00">
「……」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100100b31">
「でも、あら残念。
　アタシが命令しても、この者達を従わせる
ことはもうできないのよ」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100110a00">
「それはどういう？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　……既に、察しがつかないではなかったが。
　得意満面の女に先を促す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100120b31">
「一磨！」

{	StCL(1000, @-120, @0,"cg/st/st首領弟_通常_制服.png");
	Move("@StML*", 300, @60, @0, null, false);
	FadeStCL(300,false);
	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100130b32">
「はぁい、姉さん」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100140b31">
「……つい今朝がた、我が<RUBY text="いちがを">一ヶ尾</RUBY>家の家督を
この一磨に譲っちゃいましたの。
　今のアタシは隠居の身」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100150b31">
「おわかりかしらぁー？
　アタシがやめろと命じても、兵にとっては
一磨の命令の方が大事。一磨がやれと言った
らやるしかないのよねぇ」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0100160e082">
「へへ……
　そういうわけだ、若いの」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100170a00">
「…………」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0100180e080">
「御隠居、申し訳ありません！
　オレらも背きたくはないんですが、ご当代
直々の命令とあっちゃあ、ねえ」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100190b31">
「いいのよー。
　采配は家長が一手に握るもの。身内が余計
な口出しをして良い結果を生んだ例など過去
にありません」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100200b31">
「一磨！
　アタシの事は気にしないで、存分におやり
なさい！」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100210b32">
「わかったよ、姉さん！」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100220b32">
「で、次はどうすればいいの？」


{//◆がすっ。
	CreateSE("SE01","se戦闘_攻撃_殴る04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵白", 2000, "#FFFFFF");
	Wait(10);
	Shake("@StML*", 600, 2, 0, 0, 0, 1000, DxlAuto, false);
	Fade("絵白", 300, 0, null, false);
	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100230b32">
「ご、ごめん……」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100240b31">
「そぉいうわけなのぉー、湊斗景明。
　期待に添えられず御免なさいね！」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100250b31">
「でも、<RUBY text="・・・">約束は</RUBY>ちゃんと守ったのよ？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100260a00">
「…………」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100270b31">
「…………」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100280a00">
「……」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100290b31">
「くふっ」

{	FwC("cg/fw/fw首領_高笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100300b31">
「おーっほっほっほっほっほっほっほっほっ
ほっほっほっほっほっほっほっほっほっほっ
ほっほっほっほっほっほっほっほっほっほっ
ほっほっほっほっほっほっほっほっほっほっ」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100310b31">
「ほっほっほっほっほっほっほっほっほっほ
っほっほっほっほっほっほっほっほっほっほ
っほっほっほっほっほっほっほっほっほっほ
っほっほっほっほっほっほっほっほっ――」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0100320e080">
「昨日のタムラグランプリ聴いた？」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0100330e082">
「聴いた聴いた。
　ちょっと音の入りが悪かったけど、どうも
サンダーボルトっていう新型騎が近々」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100340b31">
「そこ！　緊張感漲る局面でラジオの話とか
しない！」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0100350e080">
「……だって笑ってる時間長ぇんだもん……」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0100360e082">
「待ってる間ヒマなんだよなー。いつも」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100370a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　溜め込んだ息を、大きく吐き出す。
　内心の整理には、それで足りた。

　……元々昨日の約束に、万全の信頼など寄せていな
かった。
　破られるのは、言ってしまえば、予測のうちだ。

　それにしても、こうも早く、こうも呆気なくとは、
流石に思いもしなかったか。
　しかも、このような――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100380a00">
「小狡い。
　器が知れる」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100390b31">
「失礼な。知恵というものよ。
　ま、何とでも好きにお言いなさい」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100400a00">
「下種。
　下劣。
　下郎」

{	FwC("cg/fw/fw景明過去_怒りb.png");}
//◆「きょうりょうあくらつひれつげどうねいじんかん
//◆ぶつちくじゅうだろくぐまいもうまいあんめいもう
//◆じゃこものくせものていぞくだらく、ぼうはちやか
//◆らのごまのはい」
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100410a00">
「狭量悪辣卑劣外道佞人奸物畜獣駄六愚昧蒙
昧暗迷妄者小人曲物低俗堕落、亡八輩の護摩
の灰」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100420b31">
「…………」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100430b32">
「姉さん、頬が震えてるよ。虫歯？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆がす、げし
	CreateSE("SE01","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵白", 0, 1000, null, true);
	Wait(10);
	Shake("@StML*", 600, 3, 0, 0, 0, 1000, DxlAuto, false);
	Fade("絵白", 300, 0, null, false);

	SetFwC("cg/fw/fw首領弟_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100440b32">
「い、痛いよ姉さん……」

{	FwC("cg/fw/fw首領_高笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100450b31">
「ほ、ほっほっ、ほっ。
　負け犬の遠吠えは聞き苦しくってよぉー？
湊斗景明！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100460a00">
「何とでも言えと言ったのは貴方だ」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100470b32">
「……それに、負けたのは姉さんだし……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆どかばきげし
	CreateSE("SE01","se戦闘_攻撃_殴る02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵白", 0, 1000, null, true);
	Wait(10);
	Shake("@StML*", 600, 4, 0, 0, 0, 1000, DxlAuto, false);
	Fade("絵白", 300, 0, null, false);

	SetFwC("cg/fw/fw首領弟_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100480b32">
「すごく痛いよ姉さん!?」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100490b31">
「えーい、お黙り！
　いいこと、湊斗！」

{	FwC("cg/fw/fw首領_怒り.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100500b31">
「アタシは負けてなどいなくってよ！
　小賢しい手妻に揚げ足を取られただけです。
ええ、あのような姑息な策謀など！　大丈夫
が用いるものではありません」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100510b31">
「にも拘わらず、当然のように勝者ぶるとは。
　恥というものをお知りなさいな！」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100520b32">
「さっきは知恵がどうとか言ってたよ姉さん」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


//◆げしげしげしげしげし
	CreateSE("SE01","se戦闘_攻撃_殴打連撃01_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵白", 0, 1000, null, false);
	Wait(10);
	DeleteStA(0,true);
	Fade("絵白", 300, 0, null, false);

	SetFwC("cg/fw/fw首領弟_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0100530b32">
「うわぁーん！」

{	FwC("cg/fw/fw首領_高笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100540b31">
「アタシはいいの！　アタシは、ねっ！
　おーっほっほっほっほっ――」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100550a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　胸を反らす首領――元首領なのか、名目上は――を
前に、もはや思う事は一つきりだった。
　これ以上、話しても無駄だ。

　つまりはここで時間を費やす意味もない。
　俺は道を引き返すために、身を翻した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100560a00">
「……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100570a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣閃
//◆避け
	SetVolume("SE*", 100, 0, null);
	OnSE("se戦闘_攻撃_刀振る01",1000);
	CreateColorSP("絵斬", 5500, "#FFFFFF");
	StR(1000, @0, @0,"cg/st/st景明_通常_社員a.png");
	FadeStR(0,true);
	Wait(10);
	Fade("絵斬", 600, 0, null, false);
	Move("@StR*", 400, @60, @0, AxlDxl, false);
	DrawDelete("絵斬", 200, 1000, "slide_08_00_1", true);
	WaitAction("@StR*", null);
	WaitKey(600);

	StL(1000, @0, @0,"cg/st/st首領_戦闘_制服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw首領_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100580b31">
「ふん。
　やっぱり、多少はできるようね……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100590a00">
「何の真似だ……！」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100600b31">
「何の？
　馬鹿ね、平民」

{	FwC("cg/fw/fw首領_怒り.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100610b31">
「仮初めにも武人たる者が、おまえのような
下郎を相手に不覚を取らされて、そのままで
済ませておけるはずがないでしょう？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100620a00">
「ならば、腹でも切れ！」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100630b31">
「それもそれ。
　けど、これもこれ」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100640b31">
「おまえの首を取った方が手っ取り早いの！
　アタシの気持ちも収まるしね！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100650a00">
「この……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣閃
//◆避ける
	OnSE("se戦闘_攻撃_刀振る01",1000);
	CreateColorSP("絵斬", 5500, "#FFFFFF");
	Wait(10);
	DeleteStA(0,true);
	Fade("絵斬", 600, 0, null, false);
	DrawDelete("絵斬", 200, 1000, "slide_05_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　面罵してやりたかったが、殺意漲る白い刃に晒され
ながらではそれもままならない。
　当たり前だが、こちらは空手だ。

　今は兎にも角にも、逃げの一手だった。
　呼吸を測り、機を掴んで大きく飛び下がる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0100660b31">
「お待ちなさい！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100670a00">
「……っ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SEL01","se人体_足音_走る01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateColorSP("絵黒", 2000, "#000000");
	DrawTransition("絵黒", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", false);
	Move("@StL*", 600, @-120, @0, Axl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　すぐさま走り出す。
　足音が追ってくるが――程なく引き離せるだろう。

{	SetVolume("SE*", 3000, 0, null);}
　相手は武装の上、そもそも体格が違う。
　駆け合いで負ける要素は何もない。

　足音はやがて罵声に変わった。
　
　だが、雑言を吐き捨てたいのはこちらの方だった。
あの女首領と、そして昨夜の自分自身に。

　――何が、武人の矜持か！
　そんなもの、どこにもありはしない……！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆昼
//◆夕
//◆病床の光・発作
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureEX("絵演", 1100, Center, Middle, "cg/ev/ev128_病床の光_c02.jpg");
	CreateTextureEX("絵ＥＶ", 1000, Center, Middle, "cg/ev/ev128_病床の光_c02.jpg");
	OnBG(100,"bg001_空a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1500, true);
	WaitKey(500);
	OnBG(100,"bg001_空a_02.jpg");
	FadeBG(1500,true);
	WaitKey(500);
	SoundPlay("@mbgm14",2000,1000,true);
	Fade("絵ＥＶ", 1500, 1000, null, true);


	SetNwC("cg/fw/nw光.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【光】
<voice name="光" class="光" src="voice/ma05/0100680a14">
「カッ――――――――!!」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100690a00">
「光……！
　落ち着け、落ち着いてくれ……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆どすんばたん
//◆めきっ。ぼきっ。
	CreateSE("SE01","se人体_衝撃_転倒03");//ダミー注意
	CreateSE("SE01b","se人体_動作_締める01");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵演", 0, 500, null, true);
	SetBlur("絵演", true, 3, 500, 100, false);
	FadeFR2("絵演",0,500,300,0,0,20,Dxl3, false);

	SetNwC("cg/fw/nw光.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【光】
<voice name="光" class="光" src="voice/ma05/0100700a14">
「キ――――――――…………
　――――」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100710a00">
「ひ、光……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆どすんばたん
//◆ぐきっ。
//◆病床の光発作・差分。歯が割れたり更に凄惨に

	CreateSE("SE01","se人体_動作_室内暴れる");
	CreateSE("SE01b","se人体_体_骨軋む01");
	CreateSE("SE01c","se擬音_粘着質_ゲル潰れる01");
	CreateTextureEX("絵演２", 2100, Center, Middle, "cg/ev/ev128_病床の光_d02.jpg");
	CreateTextureSP("絵ＥＶ２", 2000, Center, Middle, "cg/ev/ev128_病床の光_d02.jpg");
	OnSE("se人体_動作_物音立てる01",1000);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵演２", 0, 500, null, true);
	FadeFR2("絵演２",0,500,300,0,0,30,Dxl3, true);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	FadeFR3("絵演２",0,1000,300,0,0,50,Axl3, true);
	MusicStart("SE01c",0,1000,0,1000,null,false);
	FadeFR2("絵演２",0,500,300,0,0,40,Axl3, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100720a00">
「……やめろ……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100730a00">
「止めてくれ！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100740a00">
「お前が壊れる！
　光!!」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0100750a14">
「ク、カ――――――――――――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//――――――――――――――――――――――――

//◆夜
//◆道場
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	WaitKey(1000);
	FadeDelete("絵暗転", 1000, true);
	WaitKey(1000);
	OnBG(100,"bg052_湊斗家道場_03b.jpg");
	FadeBG(1000,true);

//◆しゃきーん
//あきゅん「SE：要望：セラミック刀を抜いたような高音で静かな音しゅきーん」
	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,1500,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　灯明を消した道場の中、白刃をするりと抜く。

　刃渡り二尺七寸少々、文は直刃。
　濃州関物、新々刀と思われる。
　無銘。

　出征にあたって養父から譲り受けた軍刀を、除隊の
後、打刀拵に戻したものだ。
　刃味は上々。藁束であれ青竹であれ、容易く斬れる。

　……人の骨肉も。
　試した覚えはないが、斬れるだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100760a00">
（最早、仕方ない）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　覚悟を固める。
　人として、どうにも違和感と畏れを禁じ得ない考え
を肺腑の中央に落とし込む。

　斬るのだ。

　山賊団の首領。
　その弟。
　他にも<RUBY text="かしらだ">頭立</RUBY>つ男がいるなら、その者をも。

　そうして山賊を将なき烏合の衆とし、離散せしめる。
　……この期に及んで、打つ手は其処に尽きる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆庭
	CreateTextureEX("絵背景100", 100, -300, -460, "cg/bg/resize/bg053_湊斗家の庭_03l.jpg");
	Move("絵背景100", 1000, -350, @0, null, false);
	Fade("絵背景100", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　<RUBY text="はは">養母</RUBY>の戒めを忘れたわけではなかった。
　しかし、――無理だ。

　あのような者どもを、殺さずして下す方策など無い。
　約束を結び、その上で勝負し打ち勝ったすえ、約束
を反故にされてしまうのでは、どう仕様があるという
のか。

　彼らは自分が勝つまで負けを認めないだろう。
　そうしても、約束破りのリスクが彼らには何も無い。
違背に対して、こちらは実力をもって制裁を加える事
ができないのだ。

　当たり前である。
　もし<RUBY text="パワーバランス">力関係</RUBY>がそうではなかったなら、そもそもこの
町がいいように食い物にされている理由もない。

　根本的に彼らの武力が町を圧倒しているという事実
がある以上、これを覆さぬ限りはどのような手も虚し
かった。
　賭け仕合など試みた己が、今は酷く愚かしく思える。

　一体何を根拠にして、山賊にまで身を落とした武士
――しかも前身ときたら裏切り者の六波羅だ――が、
力への驕りよりも士としての矜持に精神の領域を広く
与えているなどと思ったのか。

　……余りにも馬鹿馬鹿しい。
　約束を守るだけの誇りが、それだけの人がましさが
残っていたならば、どうして飢獣の如き略奪で生計を
立てようなどと考えるのだ。

　最初から、悟っていて然るべきだった。
　彼らが拠って立つ暴力を、同じく暴力をもって打ち
崩す以外に解決の道はない、と。

　だから斬る。
　山賊どもの中核を潰して追い散らす。

　……養母の示した道も、誤りだとは決して思わない。
　殺さずして勝つ。確かに武とは、本来そうあらねば
ならぬものだろう。

　だが、その理想が通用するのも相手が真っ当な人間
であればこそだ。
　畜生同然の輩に理は通じない。彼らに通じるのは力
の論理のみ。強いか弱いか、それだけだ。

　いや、果てしない努力を費やせば、あるいは正しき
武の理とて通じるのかもしれないが。
　――そんな時間は無い。

　俺には無い。
　
　光には無い！

　一刻を争う今、理想を追っている余裕は無いのだ。
　だから――養母の命に背く。

　許しは乞えない。
　義絶状を認め、自室へ残してきた。

　――愚子、畜生を制するに己もまた畜生たらざるを
得ず。仇討無用。
　
　簡潔な文面に留めたが、伝えるべきは伝わるだろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
	CreateColorEX("絵暗転", 5500, "#000000");
	CreateSE("SE01","se人体_動作_一歩");
	CreateSE("SE02","se人体_動作_一歩");
	MusicStart("SE01",0,500,0,1000,null,false);

	Fade("絵暗転", 1500, 1000, null, true);
	Move("絵背景100", 0, -1100, -600, null, true);
	WaitKey(1000);
	MusicStart("SE02",0,500,0,1000,null,false);
	FadeDelete("絵暗転", 1500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　足音を忍ばせ、庭を通り抜ける。
　養母は勘が鋭い。このような時、突如として現れて
も不思議ではない。しかし今は好機だった。

　先程、来客があった。
　養母は客間で応対している。その脇も抜けねばなら
ないが、対話の最中であれば、物音を立てぬ限り感付
かれる心配はないだろう。

　俺は細心の注意を払って、足を進めた。
　袋に納めているとはいえ、真剣持参なのだ。もしも
養母の目に触れたなら誤魔化しようはない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100770a00">
（……客は、御本家か）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　微風に乗って流れてくる声で察する。
　また、山賊問題のことでねじ込みに来たのだろうか。
あるいは光の髪上げの儀の件かもしれない。

　どちらにせよ養母には胸の痛い話題だろう。
　そう思うと案じられたが、この際は奇貨と思うしか
なかった。本家を相手にしている最中では、さしもの
養母もこちらに気づく余裕はなかろう。

　事実、庭をほぼ踏破しても誰何の声はなかった。
　安堵と自責に、軽く吐息する。

　通用門はもう目と鼻の先だ。
　改めて、ゆっくりと一歩を踏み出し――<k>俺は耳朶を
鋭く打つ声にその場で足を止めていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100780b52">
「冷たい女だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆背景をあらかじめ大きく取っておき、ここで母屋の
//◆方へカメラを移動？
	Move("絵背景100", 2500, 0, -381, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　吐き捨てるような声音だった。
　同時に、嘲るような。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100790b52">
「貴様のことを湊斗のお袋さまなどと呼んで
いる連中に、そのやりようを教えてやりたい
ものだな。
　景明に、敵を殺すなと命じただと？」

{	FwC("cg/fw/fw統_沈思.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0100800b46">
「……」

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100810b52">
「馬鹿を……！
　それでは景明が一方的に殺されるのを待つ
ばかりではないか。奴が殺さぬからといって、
山賊どもも同じようにする理由はなかろう」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0100820b46">
「そりゃそうだね……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100830b52">
「あの手合いには、こちらも力を見せ付けて
やる以外に刃を納めさせる方法などないのだ。
　抑止力というものだ。こちらにも貴様らを
殺すだけの力があると、教えねばならんのだ」

//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100840b52">
「奴らに通じるのは言葉でも道理でもない。
　力だけだ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0100850a00">
「…………」

{	FwC("cg/fw/fw統_悲哀.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0100860b46">
「だから、殺す。
　……殺したらそこで全部終わりだよ、本家。
戦いがじゃなくて平和がね」

//【統】
<voice name="統" class="統" src="voice/ma05/0100870b46">
「誰かを殺せば報復に誰かが殺される。その
報復に殺せばまた誰かが報復に殺される。
　後はその繰り返しだよ。泥沼さ……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100880b52">
「だからどうした。
　先に奴らを殺し尽くしてしまえば良いだけ
の話だ。こちらの方が数は多い。恐れるには
及ばん！」

{	FwC("cg/fw/fw統_悲哀.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0100890b46">
「殺して、殺されて、それを散々繰り返して。
　……その最後に平穏が戻ったとして、何か
意味があるかい？」

//【統】
<voice name="統" class="統" src="voice/ma05/0100900b46">
「犠牲に見合うほどの意味がさ……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100910b52">
「平和を勝ち取ったという誇りが残る。
　無意味と云うか？　貴様は」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0100920b46">
「言わないけどね。
　誰も殺さずに平和を守る事ほどの価値じゃ
ない」

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100930b52">
「……夢物語だ。馬鹿め。
　そんな夢のために、貴様は景明の命を捨て
させようというのだ」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0100940b46">
「……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100950b52">
「まったく、冷酷な女よ。
　仮にも母親のする事とも思えぬ。所詮は血
の縁のない義理の息子、どうなろうと知った
事ではないというわけか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　繰り返される、本家の非難。
　
　それに対する養母の答えこそ、非難に相応しい冷厳
さで満ちていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【統】
<voice name="統" class="統" src="voice/ma05/0100960b46">
「景明に不殺を命じたのは、武人としての事。
　厳しいのは当然だね……」

{	FwC("cg/fw/fw本家_驚き.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0100970b52">
「何？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0100980b46">
「<RUBY text="ほこ">戈</RUBY>を止めると書いて武の一文字。
　それが、楽なもんなわけはないさ」

//【統】
<voice name="統" class="統" src="voice/ma05/0100990b46">
「景明は敵の命じゃなく、悪意を断つために
戦う必要がある。
　口で言えば一言でも、やるとなったらどれ
ほど苛酷か……あんたに言われるまでもない」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101000b46">
「諸葛孔明は蛮王の孟獲を屈服させるために
七度勝って七度許した。
　それだけのことを、景明もしなくちゃなら
ないだろ」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101010b52">
「…………。
　正気か、統」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101020b46">
「寝言にでも聞こえるかい、本家？
　でもそれくらいしないと心の刃は折れない
だろうね……鉄の刃は一度で折れる。けれど
そいつは武じゃあない。ただの力だ」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101030b46">
「力は次の<RUBY text="いくさ">戦</RUBY>を呼ぶばかり。正しい武だけが
戦を終わりにできる。
　本家。あんたとわたしが景明に命じたのは
そういう事だよ」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101040b52">
「死ぬに決まっておるぞ……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101050b46">
「死は武人の<RUBY text="さだめ">運命</RUBY>のうち。
　<RUBY text="あのこ">景明</RUBY>にはその覚悟がある……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101060b52">
「……立派な言い草だ。
　武人の鑑だな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　老人がそう思っていないことは、口調で知れた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101070b52">
「母親としては、何も思うところはないのか。
　武道の者として子を死地に投げ捨てて……
それきりか」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101080b46">
「そうだねぇ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　どこか眠たげな声。
　それは養母の、いつもの声だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【統】
<voice name="統" class="統" src="voice/ma05/0101090b46">
「母親としては、一緒に死んでやるくらいか」

{	FwC("cg/fw/fw本家_驚き.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101100b52">
「…………何だと？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ドクン。鼓動
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　――――統様!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【統】
<voice name="統" class="統" src="voice/ma05/0101110b46">
「あの子に言ったんだよ。おまえが死んだら、
おまえを死なせた奴を全員殺すってね。
　その最後の一人はわたし……当たり前だろ」

//【統】
<voice name="統" class="統" src="voice/ma05/0101120b46">
「あんたが言うように、あの子を死地へ追い
やったのはわたしなんだから。
　観客を気取ってるわけにゃいかないね……」

//【統】
<voice name="統" class="統" src="voice/ma05/0101130b46">
「一蓮托生さ。
　わたしの命は景明の道に委ねた。あの子が
その道に斃れたらわたしも死ぬ。……その時
は本家、光のこと頼むよ」

{	FwC("cg/fw/fw本家_驚き.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101140b52">
「……貴様、本気か。
　それで良いのか」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101150b46">
「言ったろ。死は武人の運命のうち。
　良いも悪いもない」

//【統】
<voice name="統" class="統" src="voice/ma05/0101160b46">
「戦いに敗れたら、武人は死ぬ。
　それだけのことさね」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101170b52">
「統……」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101180b46">
「<RUBY text="ころさず">不殺</RUBY>って言ってる本人が死んだんじゃ<RUBY text="かっこ">格好</RUBY>
つかないからね。やめときたいもんだけど。
　まっ、うちの子はデキるやつだから大丈夫
だろー」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101190b52">
「景明を信じて託すと云うのか」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101200b46">
「うん」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101210b52">
「……儂とて奴には信を置くところがある。
　でなくば冗談にも山賊退治を命じたりなど
せん」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101220b46">
「あぁ。あんたも見るとこは見てくれてるな。
　母親としちゃ、嬉しいことだ」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101230b52">
「だが、兵事はなべて運不運ぞ。
　例え景明に事を成す力があろうと、うまく
ゆくとは限らん！」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101240b46">
「わかってるさ」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101250b52">
「ならばなぜ懸けられる……！
　息子と自分の命を」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　――何故。
　何故、養母は懸けられる？

　何故……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【統】
<voice name="統" class="統" src="voice/ma05/0101260b46">
「同じ話の繰り返しになるけどね」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101270b52">
「……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101280b46">
「<RUBY text="・・・・・・">それしかない</RUBY>からさ、本家。
　そうするしか、山賊との諍いを収める道は
無いんだよ……」

{	FwC("cg/fw/fw統_悲哀.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101290b46">
「殺し合いが始まったら、後は無限の連鎖だ。
いつまでも続く。怨恨に果ては無いからね。
　終わらせるには、それがどんなに困難でも、
殺さない方法を取り続けるしかない」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101300b46">
「あんたが条件くっつけたせいで、景明には
<RUBY text="タイムリミット">時間制限</RUBY>がついて、余計厄介になっちまった
みたいだけどねー……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101310b52">
「……それは……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0101320b46">
「ただの皮肉だよ。光の状態が差し迫ってる
のはあんたのせいじゃない。
　むしろ景明と約束してくれたことには礼を
言っときたいくらいだ」

//【統】
<voice name="統" class="統" src="voice/ma05/0101330b46">
「そんなものなくたって、わたしがそろそろ
始めるつもりだったからね。山賊問題の解決。
　事がこう転んで一緒に光の件も片付けられ
そうになったのは、ま、いいことだ」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0101340b52">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆庭？

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　――<RUBY text="・・・・・・">それしかない</RUBY>。

　山賊との諍いを収め……
　光を救うには……
　
　それしか、ない。

　……そうだ。
　何故、気づかなかったのか。

　頭の中の何処かで、昂ぶっていたもの――焼けた石
にも似た何かが、ふと取り除かれたかの心地だった。
　脳漿の澱みが晴れ、意識が澄む。

　数瞬前には見失っていた事柄が、今は手に取るよう
にわかった。
　……敵の頭株を殺して、それでどうなる？

　どうなるというのだ。
　確かに、山賊団の統制は失われるだろう。

　しかし、それからどうなる。
　何処かへ逃散する？　……そんな保証はない。それ
は単なる楽観に過ぎない。

　統制がないだけに一段と厄介な集団と化し、今より
も遥かに無思慮にして無差別な略奪を始める事はない
などと、どうして言えようか。
　むしろその方が可能性は高いのではないか。

　かような事態を未然に防ぐには、どう仕様がある。
　……いっそ頭株だけと云わず、山賊団を全滅させて
しまうか。

　馬鹿な。
　そんな力が、俺のどこにあるだろう。

　無責任にも、中途で斃れるに決まっている。
　そして、後には大きな災いを――町と山賊団の間に
絶滅的な敵意を――残す。

　何も解決しない。
　誰一人、救われない。

　解決するには――<k>
　
　やはり、殺してはならないのだ。

　山賊の頭目の命を奪わず、
　その悪意だけを奪わねばならない。

　容易くはなかろう。
　いや至難であろう。本家の言う通り、夢物語という
ものかもしれない。

　しかし、養母は既にその道へ一命を賭している。
　自らは動かず、ただ見守る立場でありながら。

　当の俺にこそ、その覚悟が無かった。
　心構えに甘さがあった。どこかで武の道の峻厳なる
を軽く見ていた。

　だが、今こそ<RUBY text="はら">心胆</RUBY>を据えよう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0101350a00">
（統様）

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0101360a00">
（お許しを）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_起きる02",1000);
	Move("絵背景100", 1000, 0, -756, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　俺は庭土の上に平伏した。
　母屋の方角へ頭を下げる。

　そして、心中に誓約を刻む。

　――戈を止めると記して武。
　この道を全うする。

　誰も<RUBY text="あや">殺</RUBY>めず、事を収める……
　養母も光も、失わないために！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 1500, "Black");

	Fade("絵色100", 500, 1000, null, true);

//◆道場
	OnBG(1000,"bg052_湊斗家道場_03b.jpg");
	FadeBG(0,true);
	Delete("絵背景100");

	FadeDelete("絵色100", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　その夜は道場で眠った。
　この覚悟を、忘れたくなかったのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆夜空へフェード？
//◆ウェイト
	SetVolume("SE*", 3000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);
	CreateTextureEX("絵背景", 1100, Center, InBottom, "cg/bg/resize/bg001_空a_03.jpg");
	Fade("絵背景", 2000, 1000, null, false);
	Move("絵背景", 6000, @0, 0, DxlAuto, true);
	WaitKey(1000);

	SetFwC("cg/fw/fw統_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【統】
<voice name="統" class="統" src="voice/ma05/0101370b46">
「景明ーーー!!
　なんじゃこりゃーーーーーーー!!」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0101380a00">
「……しまった」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　そして夜半――養母の絶叫で叩き起こされ、大泣き
されたうえ折檻された。
　うっかり、絶縁状の処分を忘れていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_011.nss"