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

scene mb03_019.nss_MAIN
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
	#bg076_建朝寺境内_02=true;
	#bg032_八幡宮奥舞殿内b_01=true;
	#bg002_空a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_020.nss";

}

scene mb03_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_018.nss"

//◆夕空
//◆ＳＥフェードイン。銃声、悲鳴
//◆建朝寺
//◆銃声、剣戟、悲鳴。
	PrintBG("上背景", 30000);
	CreateTextureSP("絵演背景", 4000, Center, 0, "cg/bg/resize/bg002_空a_02.jpg");
	OnBG(100,"bg076_建朝寺境内_02.jpg");
	CreateSE("SEL01","se背景_ガヤ_戦場の風景04");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	FadeBG(0,true);
	Delete("上背景");
	WaitKey(2000);
	Move("絵演背景", 3000, @0, @-568, AxlDxl, false);
	FadeDelete("絵演背景", 3000, true);

	WaitKey(1000);


//◆親王の座所
//◆署長
	SetVolume("SE*", 3000, 500, null);
	OnBG(100,"bg032_八幡宮奥舞殿内b_01.jpg");
	FadeBG(3000,true);

	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(300,true);

	SetVolume("SE*", 3000, 0, null);

	SetFwC("cg/fw/fw署長_冷厳.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0190010a11">
「……宮殿下……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190020a10">
「……おう。
　ご苦労さんやったねえ。菊池」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0190030a11">
「……お先に参ります。
　殿下はどうか、ゆるりとお越しあれ」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190040a10">
「うん……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がく。ばた。署長死亡
	CreateSE("SE01b","se人体_衝撃_転倒03");
	Move("@StR*", 300, @-10, @30, Dxl1, false);
	DeleteStR(300,true);
	MusicStart("SE01b",0,1000,0,1000,null,false);


//◆ウェイト
//◆近付く足音
	WaitKey(2000);

	CreateSE("SE02","se人体_足音_歩く08");
	MusicStart("SE02",2000,1000,0,750,null,false);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190050a10">
「…………」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190060a10">
「まさかおまさんが来るとは思わんかったわ。
　堀越の」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190070a07">
「雷蝶の方が良かったか？
　<RUBY text="プリンス">皇子様</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸
	SetVolume("SE*", 100, 0, null);
	StL(1000, @30, @0,"cg/st/st茶々丸_通常_制服a.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);
	SoundPlay("@mbgm20",0,1000,true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190080a07">
「お呼びでないとは残念なり。
　でもどっちだってたいしてかわんない気が
するけどにゃー？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190090a10">
「……そやな。
　わしは負けた責任とって、死ぬだけや」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190100a07">
「うむ。
　よりによって雷蝶と組んで、あげく野郎を
操り損ねてるようじゃどーしょーもねえわ」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190110a10">
「……」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190120a07">
「手を急ぎすぎたな、宮様。
　敗因はそこだろ」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190130a10">
「返す言葉もないわ。好きに言えばええ。
　次はもっとうまくやったるし」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190140a07">
「次ね……」


{	FwC("cg/fw/fw親王_笑い.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190150a10">
「ギャグや、ギャグ。
　冷たい目で見んな」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190160a10">
「菊池も待ってるし。
　さっさと首刎ねてくれんか」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190170a07">
「あんたの忠実な鎌倉署長か。
　そのおっちゃんなら、おめーが生き延びて
目的遂げるのを望むんでないの？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190180a10">
「…………。
　性格悪いやっちゃなァ」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190190a07">
「そお？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190200a10">
「わざわざ未練を残させたいんか」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190210a07">
「いーや？　違うよ。
　そうしたいなら、そうさせてやろうかって
話」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190220a10">
「…………」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190230a07">
「あれ？　躍り上がって喜ばないの？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190240a10">
「……もうちょっと聞いてからにするわ。
　で、その条件は何や」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190250a07">
「なんも？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190260a10">
「……」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190270a07">
「タダで安全なとこまで送り届けてやるよ。
　横浜でいいだろ？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190280a10">
「ＧＨＱ……？」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190290a07">
「そっ。
　今のあいつらはおめーに利用価値を見出す
よ」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190300a07">
「帝室の<RUBY text="かわりだね">変種</RUBY>、お調子者で人気者の親王サマ。
　国民を味方につけるにゃ格好の材料だ」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190310a10">
「……それも売り込むツテがあればの話やろ。
　わし、ＧＨＱにはほとんど人脈ないよ」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190320a07">
「案ずるな迷える子羊。
　横浜基地前に放り出してそれきり、なんて
こたしねーよ。茶々丸さんのアフターケアは
万全なのだ」


//◆ＧＤＧは「グリューネドラヘ・ゲゼルシャフト」と読む
{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190330a07">
「ちゃんと仲介者を紹介してやる。
　<RUBY text="ＧＤＧ">緑龍会</RUBY>っつって、まぁわりと怪しげな連中
がいるわけだが。ＧＨＱの要人に顔が利く」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190340a10">
「……<RUBY text="グリューネドラヘ">緑龍</RUBY>……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190350a07">
「あとはおめーの手腕次第。でも簡単だろ？
　向こうのメリットははっきりしてんだ」


//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190360a07">
「あんたが大和を代表して進駐軍支持を表明
すれば国際連盟の非戦派も黙る。
　ジョンブルどもは背中を気にせず<RUBY text="あてら">六波羅</RUBY>と
戦えるって寸法だな」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190370a07">
「大歓迎間違いなし。
　三食昼寝にハーレム付きは固いぜ、旦那」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190380a10">
「……そんで。
　おまさんはどうなるんや」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190390a07">
「そりゃもちろん、獅子吼と一緒に悪戦苦闘。
　もー足掻きに足掻いて足掻きまくる」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190400a07">
「ＧＨＱに<RUBY text="・・・">切り札</RUBY>まで投入させる」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190410a07">
「でも最後は負けるね。
　どだい、市民に見捨てられた軍がいつまで
も<RUBY text="も">保</RUBY>つわけねーし……」


{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190420a07">
「六波羅は滅びてあても死んでおしまい。
　大和国は平和になりましたとさ。めでたし
めでたし」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190430a10">
「……理想的やね」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190440a07">
「だろ？
　じゃ、そういうことでいい？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190450a10">
「返答か。
　そやな。それなら」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190460a10">
「断る。
　ここで死ぬわ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆ずる。
//◆茶々丸アップ
	SetVolume("@mbgm*", 100, 1, null);
	CreateSE("SE01","se戦闘_破壊_金属");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @0, @60, Dxl2, false);
	DeleteStL(300,true);

	StCL(1000, @0, 0,"cg/st/resize/st茶々丸_通常_制服a_l.png");//ダミー注意
	Move("@StML*", 300, @0, @-384, Dxl3, false);
	FadeStCL(300,true);

	SetFwC("cg/fw/fw茶々丸_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190470a07">
「音声だけではよくわからないと思いますが、
あては今ずっこけました」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190480a10">
「なんで解説？」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190490a07">
「いや、そのスダレで見えてないかと思って」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻る
	Move("@StML*", 300, @-30, @0, null, false);
	DeleteStCL(300,true);

	StL(1000, @-30, @0,"cg/st/st茶々丸_通常_制服a.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,false);
	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190500a07">
「つか、なんでさ。
　文句なしにいい話でないの」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190510a10">
「そやな」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190520a07">
「<RUBY text="ブリテン">大英連邦</RUBY>の属国になるのはヤってこと？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190530a10">
「嫌やな。
　でも、それが大和のみんなにとって最善の
道なら仕方ないとも思うえ」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190540a07">
「じゃ、何が不満よ？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190550a10">
「取引になってないからや」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190560a07">
「……んー？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190570a10">
「おまさんは何も得しないやないか。
　そう、言うてはった通り。進駐軍はわしを
歓迎するやろ。六波羅は追い詰められるやろ。
首領株のおまさんは死ぬやろう」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190580a10">
「おまさんは失うだけや。
　何も手に入らない」


{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190590a07">
「うむ。なんて無欲な足利茶々丸。
　百年後にはお札になってるかもしれんね」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190600a07">
「で、それがなんかまずいの？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190610a10">
「まずいわ。えろうまずい。
　くれるもんだけくれて何も要求せん奴ての
はな、本物の聖人か。でなければ」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190620a10">
「<RUBY text="・・・・・・・・・・・・">最後に何もかも奪っていく</RUBY>、本物の悪魔や」


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190630a07">
「――――――――」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190640a10">
「……茶々丸。
　おまさんの望みを聞かせてもらおか」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190650a10">
「本当に何も無いなら、そう言うとええ。
　<RUBY text="・・・・・・・">そのツラのまま</RUBY>言えたら、信じたるわ」


{	SetVolume("@mbgm*", 3000, 0, null);
	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190660a07">
「…………」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190670a10">
「……望みは？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆茶々丸
//◆無表情→笑顔？

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190680a07">
　　　　　　　　　「<RUBY text="ワールド">世界</RUBY>
　　　　　　　　　　<RUBY text="エンド">終焉</RUBY>」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190690a10">
「――――!?」


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190700a07">
「……あばよ、宮様。
　おめー使うのが一番いいと思ったんだけど。
しゃあね、別のやりかた考えるわ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ちゃきん
//◆一閃……の途中で
	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	WaitKey(500);
	CreateSE("SE01b","se戦闘_攻撃_刀振る01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateMovie("絵動画一閃", 4000, Center, Middle, true, false, "dx/mv剣戟_左から右.ngs");
	Wait(300);
	Request("絵動画一閃", Pause);


//◆銃声割り込み。ばきゅーん
//◆血
	SetVolume("SE01*", 100, 0, null);
	CreateSE("SE02","se戦闘_銃器_拳銃発砲01");
	CreateSE("SE02b","se人体_血_たれる01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#000000");
	CreateTextureSP("絵演", 4100, Center, Middle, "cg/ef/ef004_汎用血雫.jpg");
	Delete("絵動画*");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	Wait(100);
	FadeDelete("絵色白", 200, true);

	WaitKey(1000);
	DeleteStA(0,true);

	FadeDelete("絵演", 1000, true);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190710a10">
「…………」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190720a07">
「…………」


{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0190730a11">
「…………」


{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190740a07">
「……おい。ちょっと待て。
　そこのおっさん」


{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0190750a11">
「……悪いな……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190760a10">
「菊池……」


{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0190770a11">
「致命傷なのですが……ね。
　当たり所が変に悪かったのか……なかなか
息が絶えてくれず……」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0190780a11">
「まだ生きています、などと言うのも恥ずか
しく……
　黙って死を待っていたのですが……」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0190790a11">
「まぁ……せっかくの余命なので。
　<RUBY text="・・・・">悪魔退治</RUBY>だけ、しておきました」


{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190800a07">
「……心臓の真上……ど真ん中か……。
　これじゃ虎徹でもどーにもなんねーな……」

//◆笑い
{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190810a07">
「……ひっでぇー。
　こんなオチ、ありかぁ……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばったり
	CreateSE("SE01","se人体_衝撃_転倒03");
	Move("@StL*", 300, @0, @60, null, Axl1);
	DeleteStL(300,true);
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw署長_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0190820a11">
「……」


{//◆がちゃ。銃が落ちる音
	CreateSE("SE01","se戦闘_金属_拳銃落ちる");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190830a10">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆複数の足音が近付く。どたどた。
	CreateSE("SE01","se人体_足音_踏み込み01_L");
	MusicStart("SE01",2000,1000,0,1000,null,true);

	WaitKey(2000);

//◆夕空
	SetVolume("SE*", 3000, 0, null);
	PrintGO("上背景", 30000);
	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 3000, true);

	WaitKey(1000);

//◆銃声連続
//◆フェードアウト
	CreateSE("SE01","se戦闘_銃器_拳銃銃撃戦01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	WaitKey(1000);
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_020.nss"