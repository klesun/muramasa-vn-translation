//<continuation number="690">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_008.nss_MAIN
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
	#bg056_建長寺三門前_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc01_009vs.nss";

}

scene mc01_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc01_007.nss"

//◆建朝寺前
//◆車の走行音＆停止音

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	OnBG(100, "bg056_建長寺三門前_01.jpg");
	FadeBG(0, true);

	CreateSE("SEL01","se乗物_車_停止01");
	MusicStart("SEL01",2000,1000,0,800,null,false);

	Delete("上背景");
	FadeDelete("黒幕１", 1000, true);


	WaitKey(6000);
	SetVolume("SEL01", 1000, 0, null);


	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080010a04">
「着きましてございます」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080020a03">
「ご苦労さま。
　……初めて見るけれど、立派なお寺ねえ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm18",1000,1000,true);
	OnSE("se乗物_車_ドア開閉01", 1000);

	CreatePlainSP("絵板写", 10000);
	StR(1000, @0, @0, "cg/st/st香奈枝_通常_私服a.png");
	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStA(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080030a04">
「まことに。
　こればかりは、大和でしか味わえぬ妙趣で
ございますなぁ」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080040a03">
「漢や<RUBY text="コーチ">交趾</RUBY>はまた違うものね。
　……傷をつけたらもったいないかしら」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080050a04">
「確か、中には国宝もございますし……。
　なるたけ建物に危害が及ばぬよう、注意さ
れると宜しいかと」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080060a03">
「そうね。
　なるたけ」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080070a04">
「すぐに向かわれますので？
　それとも、しばらくお待ちに？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080080a03">
「……待ちましょう。
　まとめて片付けてしまいたいもの」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080090a04">
「さようでございますか。
　では、お茶の用意をいたしましょう」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080100a03">
「お願いね」


//◆かちゃかちゃ。
{	OnSE("se日常_食器_お茶準備_L",1000);
	DeleteStL(300, false);
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080110a04">
「……あの御仁は、おいでになりましょうか
ねぇ」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080120a03">
「知らん顔はできないと思うけど。
　何と言っても景明さまですし」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080130a04">
「おわかりになると？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080140a03">
「もちろん。
　もうずっと、あの方のことばかり考えてる
んだから」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080150a03">
「今日これからのことだって、幾度も想像し
てみたのよ？
　因果を含めて剣を向けた時、あの方はどう
なさるのかしら……って」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080160a04">
「どうなさいますかな？　あの御方は……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080170a03">
「きっと無念の想いで一杯でしょうね……。
　なぜってあの方にはすべてが不本意なこと
だったに違いないもの」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080180a03">
「罪なんて犯したくなかった。
　だのに、報いを受けさせられる」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080190a03">
「……理不尽よね」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080200a04">
「哀れなものでございますな」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080210a03">
「けれど仕方ない。
　<RUBY text="・・・・・">わたくしが</RUBY>許さないのだもの」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080220a04">
「はい」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080230a03">
「どんな理由があっても許さない。
　<RUBY text="・">彼</RUBY>を殺したことは許さない」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080240a03">
「そうしなければ百万人が犠牲になっていた
としても許さない。
　救われた百万人が景明さまに味方するなら、
諸共に叩いて潰す」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080250a03">
「誰が決めたの……？
　彼の一つの命より、百万人の命の方が重い
だなんて」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080260a04">
「誰でございましょうねぇ……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080270a03">
「彼が自分でそう決めたのなら、いい。
　けれどそうじゃなかった。彼は自分の意思
で死んだわけじゃない。<RUBY text="・・・・">殺された</RUBY>のよ」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080280a03">
「他人に命の値打ちを決められて、殺された。
　だからわたくしは許さない」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080290a03">
「湊斗景明を許さないの」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080300a04">
「御意……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080310a03">
「わたくしがあの方の立場にあればまったく
同じことをしたとしても、ね」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080320a04">
「同じことを」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080330a03">
「ええ。
　景明さまもきっとそうなさったように……
何も教えず、力ずくで命を奪うでしょう」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080340a04">
「やむなき犠牲と、説いて聞かせはなさいま
せんか」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080350a03">
「虫のいい話だとは思わなくて？
　それってつまり、今からあなたを殺すけれ
どこれには理由のあることだから納得してね、
って頼むのと同じじゃない」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080360a03">
「殺された人は、殺されておきながら誰かを
恨むこともできなくなる。
　<RUBY text="・・・・・">殺した人は</RUBY>、<RUBY text="・・・・・・・・">殺しておきながら</RUBY>誰にも恨ま
れなくて済んでしまう」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080370a03">
「……そんなことがあっていいと思う？」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080380a04">
「なるほど……」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080390a03">
「だからわたくしね、景明さまには感謝して
いるのよ。
　だって、<RUBY text="・・・">恨める</RUBY>もの」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080400a03">
「あの方が我意一つで彼を殺してくれたから、
こんなにも復讐心を<RUBY text="たぎ">滾</RUBY>らせられる。
　こんなにも殺意を燃え立たせられる」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080410a03">
「彼が自分の意思で犠牲になっていたなら、
きっとどうしていいかわからなかった。
　気持ちのやり場が見つからなかった……」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080420a03">
「そうならなかったのは景明さまのおかげ。
　でしょう？　ばあや」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080430a04">
「…………」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080440a03">
「だから……優しく殺して差し上げないとね。
　痛みは感じさせずに。一撃で心臓を貫いて。
眠るように逝って頂きましょう」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080450a03">
「あの方の無念を、一顧だにしないで。
　慈悲なんて無しに。憎悪だけぶつけて」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080460a03">
「力任せに命を奪い取る。
　あの方の、ありったけの未練を浴びせつけ
られながら、それを踏みにじって殺す」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080470a03">
「そして――わたくしは恨まれるの。
　いつの日にかこの心臓も、わたくしがそう
したように、復讐の切先で貫かれる」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080480a04">
「それでよろしいのでございますね」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080490a03">
「それ<RUBY text="・">が</RUBY>いいのよ」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080500a04">
「……」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080510a03">
「それが復讐なのだもの。
　いつまでも果てしなく続く、殺意と憎悪の
円環……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080520a03">
「別の言葉で何と言うかわかる？　さよ」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080530a04">
「<RUBY text="ロウ・アンド・ジャスティス">　法と正義　</RUBY>」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080540a03">
「そう。
　やられた分はやり返す。やった分はやり返
される。人類普遍の一大律法」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080550a04">
「近年の倫理やら道徳やらは必ずしもそれを
正義と認めぬようでございますが。
　ま、倫理道徳など心の化粧。所詮は上っ面
のことでございます」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080560a03">
「ええ。
　心の真実はいつだって変わらない」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080570a04">
「変わりませぬ」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080580a03">
「貴顕たるもの、普遍の正義を体現して生き
なくてはね」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080590a04">
「はい」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080600a03">
「お茶は？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080610a04">
「ただいま」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, true);

//◆こぽこぽ。
	OnSE("se日常_水_注ぐ01",1000);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080620a03">
「いい香り」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080630a04">
「お嬢さま」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080640a03">
「なあに？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080650a04">
「楽しゅうございますか」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080660a03">
「ええ、とても」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080670a04">
「そのお愉しみは大切なものを失った哀しみ
と表裏一体でございます」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080680a03">
「そうね。
　……こういうのは何ていうのかしら？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080690a04">
「<RUBY text="カルマ">業</RUBY>と云うのですよ。
　人面獣心のお嬢さま」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc01_009vs.nss"