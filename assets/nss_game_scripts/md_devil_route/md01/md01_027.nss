//<continuation number="810">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_027.nss_MAIN
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
	#bg096_八幡宮地下岩窟_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_028.nss";

}

scene md01_027.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_026.nss"

//◆下宮
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg096_八幡宮地下岩窟_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　通路は不意に終わり、広々とした空間が現れた。
　奥には、地上のそれと良く似た祭殿。

　下宮である。

　……ここまで来てしまった。
　もはや決断せねばならない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270010a05">
「神々は、<RUBY text="ネノクニ">地底界</RUBY>に住まう。
　そんな神話もあるそうだ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270020a00">
「――――？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　やおら、大将領が口を開いた。
　独言ではないのなら、俺達に向けた言葉となろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270030a05">
「金色の神は地の底に眠り……
　いつか招きの時が来たならば、我らの世へ
現れると」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270040a05">
「蝦夷どもの信仰であったかな」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0270050a01">
「…………」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270060a05">
「どう思う」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270070a00">
「……はっ？」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270080a05">
「地の底に神在りとする信仰よ。
　かような祭殿がわざわざ地下に建てられて
あるを見れば……荒唐無稽な伝承もあながち
笑い捨てにしたものではないやもしれぬ」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270090a05">
「そう思わぬか」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270100a00">
「はっ。
　御意にございます」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270110a05">
「ふっふふ……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270120a00">
「……？」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270130a05">
「貴様はこの社の神官ではないか。
　素人考えを諾々と<RUBY text="い">容</RUBY>れ、一言も申さずでは、
立場に関わろう」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270140a00">
「……畏れ入ります」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270150a05">
「意見あらば、言うてみよ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270160a00">
「…………では。
　お許しを得まして」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270170a05">
「うむ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270180a00">
「一説によりますれば、八幡神の原本は渡来
の神であり……
　従って、新しき国を求める人々の守護神と
いう性格が存在するとか」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270190a05">
「ほう……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270200a00">
「その八幡信仰が、かような形で表現された
……とも考えられますかと」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270210a05">
「地下という異空間に造られた下宮は、八幡
神がもたらす新世界を象徴するもの。
　そういう事か」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270220a00">
「御意」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270230a05">
「流石に本職。
　良く存じておるのう」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270240a00">
「御前にて浅学をひけらかし、汗顔の至りで
ございます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　こんな事もあろうかと、八幡宮に関連する一通りの
知識を仕込んでおいた甲斐があった。
　一夜漬け学習も馬鹿にならないものだ。

　一瞬、肝の冷える場面であったが……
　どうにか凌いだ、か？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270250a05">
「抜かったな」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270260a00">
「――――」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270270a05">
「口答えめいた真似をするべきではなかった。
　本物の神官であれば、予がいかに水を向け
ようとただ縮こまるばかりで一言も無かった
だろうよ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270280a00">
「……ご無礼を――」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270290a05">
「それよりも致命的な失敗は、ここへ降りる
までの歩き方……
　距離の取り方であろうな」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270300a05">
「神官如きが、予の<RUBY text="・・・">斬り間</RUBY>を把握して自然と
外すなどという振舞いをいたす筈がないわ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270310a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　……しまった！
　身に染み付いた癖が出ていたのか!?

　何たる甘さか。
　暗殺の是非に気を囚われて、そんな危険は考慮すら
しなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270320a05">
「舞殿宮の下にも貴様のような武人がいたか」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270330a00">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270340a05">
「刺客の任を受けたは忠義からか？
　それとも褒賞に釣られたか？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270350a00">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270360a05">
「今更だんまりを決め込んでも遅かろう。
　何か囀ってみよ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270370a00">
「……ならば。
　六衛大将領殿下にお尋ねする」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270380a05">
「ほゥ？
　刺客が、予に問いを投げるか」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270390a00">
「王将たる者には、相手が何人であろうとも
答えねばならぬ問いが一つきりある」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270400a05">
「云うが良い」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270410a00">
「貴方は如何なる王者か」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270420a05">
「――――」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270430a00">
「この大和を如何にされる存念か。
　<RUBY text="くにたみ">国民</RUBY>を如何にされる存念か」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0270440a00">
「貴方は如何なる王なのか。
　……御答を賜りたい」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270450a05">
「ふっ、ふ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270460a00">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270470a05">
「生憎であったな、刺客。
　予はその問いに答を持たぬ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270480a00">
「何と？」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270490a05">
「予は<RUBY text="ひとえ">偏</RUBY>に覇者」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270500a05">
「全てを奪い、征服し、従える……。
　それが足利護氏よ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270510a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0270520a00">
「では貴方は……<RUBY text="・・・">統べる</RUBY>だけが目的だという
のか。
　治めることに関心はないと？」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270530a05">
「皆無、とは云わぬが。
　征服を進める手段よの……所詮」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　逆転している。

　この男は治政を行うために支配を望むのではない。
　支配を完成する手段として政治を行うのだ……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270540a00">
「ならば貴方の目的は既に達成されていると
いうことか」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270550a05">
「ふん……世迷言を云う。
　予が満足している筈はなかろう」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270560a05">
「今の大和には、六波羅の旗を仰がぬ奴輩が
白昼堂々と闊歩しておるではないか」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270570a00">
「……進駐軍？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270580a05">
「奴らを駆逐せぬ限り、予の覇業は成らぬ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270590a00">
「いずれ戦端を開くと……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270600a05">
「いずれ、などと気の長いことは云わぬ。
　すぐにもだ」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270610a05">
「これ以上、予の庭で白豚どもを肥え太らせ
ておくものか。
　海の向こうの畜舎へ送り返してくれる」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270620a00">
「勝算が立ちますまい」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270630a05">
「予は勝つ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270640a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270650a05">
「六年前とは違う。あの時は如何にしようと
勝つ目が無かった。
　だから恭順の道を選んだ」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270660a05">
「しかし今の六波羅は昔日のそれではない。
　今度は勝てる……国土は荒れ、民の半分は
犠牲となるやもしれんが、必ず勝つ！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270670a00">
「……馬鹿な」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270680a05">
「ふん……？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270690a00">
「民の半分？
　そこまでの犠牲を払っての勝利など、何の
意味もない！」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0270700a00">
「例え進駐軍を撤退せしめても、大和は自ら
崩壊する……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270710a05">
「で、あろうのぅ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270720a00">
「……!?」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270730a05">
「構わぬ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270740a00">
「何も残らぬ勝利をあえて欲する――と？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270750a05">
「残るとも。
　予が大和を制覇したという事実はな」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270760a00">
「…………」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270770a05">
「その後の事に興味は無い」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270780a00">
「大将領……
　貴方は……それだけのために」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	CreateSE("SE01","se人体_動作_後ずさり01");
	StC(1000, @0, @0,"cg/st/st護氏_通常_私服.png");

	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeStC(300,true);

	SetFwL("cg/fw/fw護氏_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270790a05">
「さて。
　下らぬ時を過ごしたな」

{	FwL("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270800a05">
「冥途の土産を、ちと弾み過ぎたか。
　まあ良いわ……ついでにもう一つ、栄誉を
くれてやろう」

{	FwL("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270810a05">
「<RUBY text="ヒゲキリ">鬚切</RUBY>！」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"md01_028.nss"