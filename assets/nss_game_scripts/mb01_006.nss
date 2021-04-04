//<continuation number="900">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_006.nss_MAIN
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
	#bg058_曇空a_01=true;
	#bg034_署長宅茶の間b_01=true;
	#bg034_署長宅茶の間c_02=true;
	#bg059_蕎麦屋の店内_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_007.nss";

}

scene mb01_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_005.nss"

//◆空。荒れ模様
//◆署長宅
//◆雨ざーざー。
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(350,"bg058_曇空a_01.jpg");

	CreateSE("SEL01","se自然_水_雨音01_L");

	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 64;
	CreateEffect("絵効果雨", 360, 256, 0, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Rotate("絵効果雨", 0, @-60, @0, @0, null,true);
	Zoom("絵効果雨", 0, 3000, 3500, null, true);
	Fade("絵効果雨", 0, 500, null, true);

	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SEL01",2000,500,0,1000,null,true);
	FadeDelete("絵暗転", 2000, true);

	WaitKey(2000);

	OnBG(100,"bg034_署長宅茶の間b_01.jpg");

	CreateTextureEX("絵背景250", 250, Center, Middle, "cg/bg/bg034_署長宅茶の間c_02.png");
	CreateEffect("絵効果雨2", 200, 0, 150, 512, 288, "Rain");
	SetAlias("絵効果雨2","絵効果雨");
	Rotate("絵効果雨2", 0, @0, @0, @0, null,true);
//	Zoom("絵効果雨2", 0, 3000, 3500, null, true);

	SetVolume("SEL01", 3000, 200, null);

	Fade("絵背景250", 0, 1000, null, true);
	Fade("絵効果雨2", 0, 500, null, true);
	FadeBG(2000,false);
	FadeDelete("絵効果雨", 2000, true);

	Delete("絵効果雨");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　朝方から怪しげであった空模様は、昼近くになって
いよいよその本性を現していた。
　大粒の降雨は庭土を荒らし、日々の入念な手入れの
成果を無に帰せしめるべく躍起になっている。

{	SetVolume("SEL01", 5000, 300, null);}
　雷鳴も耳に届く。
　今はまだ遠いが、少しずつ近付いているようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　天の喧騒はしかし、どこか空虚で、憂鬱な思索へと
沈みたがる意識を引き止める役には立たなかった。
　話し相手になってくれる人もいない。

　署長は出勤中、<RUBY text="かさい">家宰</RUBY>の牧村さんは繁忙である。
　村正も日課の銀星号捜索に出向いていていない。雨
は劒冑の探査機能を妨害するが、銀星号の<RUBY text="けはい">香気</RUBY>を掴む
能力はまた別なので問題ないようだ。

　錆びを知らぬ劒冑は雨中の探索行も苦としないのだ
ろう。水滴を弾きながら暗い鎌倉を飛び回る蜘蛛の姿
の相棒を思って、俺は羨んだ。
　為すべき何事かがあれば、無為に悩まなくても済む。

　……戦ってきた。
　戦って、戦って、殺してきた。

　銀星号の〝卵〟に冒された武者を幾人となく斃した。
　そして同じ数だけ、俺の傍らにいたひとを殺した。

　善悪相殺。

　俺に課せられたこの<RUBY text="ルール">虐殺法</RUBY>は、まだ終わりを迎えて
いない。
　まだ、殺さなくてはいけない。

　次は誰を殺すのか。
　誰を敵とし、誰を味方とし、その両方を斬り伏せる
のか。

　敵はわからない。銀星号か、それとも最後の〝卵〟
預けられた誰かか。
　味方は――味方は、わかっている。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆黒
//◆一条
	SetVolume("SE*", 1200, 1, null);
	CreateColorEX("絵暗幕", 2000, "#000000");
	Fade("絵暗幕", 1700, 1000, null, true);

	StC(2100, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStC(300,true);

	CreateTextureEXmul("絵演", 2200, Center, Middle, "cg/anime/Left/blood_C_6.png");
	CreateTextureEXadd("絵演裏", 2050, Center, Middle, "cg/anime/Left/blood_C_6.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　彼女だろう。
　ひたむきに、正しい道を求めて進もうとする少女。

　その姿を、俺は憧憬している。羨望している。
　会うたび、見るたびに、その想いは募る。

　許されるなら、俺も彼女のように在りたかった。

　正しく。
　真っ直ぐに。
　ひた進む――――

　最早、俺には叶わない在り方。
　幾多の罪を、過ちを犯した俺は、それに縛られその
責任を負う生き方しか選べないから。

　綾弥一条を、俺は遠く、貴く想う。
　
{	CreateSE("SE01","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵演", 0, 800, null, true);
	Fade("絵演裏", 0, 1000, null, true);}
　だから、殺すだろう。

　次の敵を殺した時。
　彼女を――――

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆部屋
	CreatePlainSP("絵板写", 5000);
	DeleteStA(0,true);
	Delete("絵演*");
	FadeDelete("絵板写", 1000, true);
	FadeDelete("絵暗幕", 1000, true);
	SetVolume("SEL01", 3000, 200, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　灰色の部屋に一人。
　ぽつんと座していると、そんな事ばかりを考える。

　俺も外に出て、銀星号を探すか。
　
　何の意味もないことを承知で、そう決意しかけた時
だった。

　ふと、人の気配を覚えて庭へ目をやる。
　
　石像がそこに佇んで、俺を見ていた。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆庭（居間背景から切り取る）
//◆一条
//◆※最悪、居間背景の庭辺りに一条の顔グラとテキス
//◆トボックスを置くだけでもＯＫ
	CreatePlainSP("絵板写", 5000);

	Delete("絵背景*");
	Delete("絵効果*");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/resize/bg034_署長宅茶の間b_01l.jpg");
	Move("絵背景100", 0, @512, @0, null, true);
	CreateTextureSP("絵背景150", 150, Center, Middle, "cg/bg/resize/bg034_署長宅茶の間c_02l_ex.png");
	Move("絵背景150", 0, @512, @0, null, true);
	CreateTextureSP("絵背景200", 160, Center, Middle, "cg/st/resize/st一条_通常_制服m.png");
	Move("絵背景200", 0, @-212, @130, null, true);

//	OnBG(100,"bg034_署長宅茶の間b_01.jpg");
//	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
//	FadeBG(0,true);
//	FadeStL(0,true);


	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 64;
	CreateEffect("絵効果雨", 120, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 300, null, true);

//	Delete("絵板写");

	SetVolume("SEL01", 500, 350, null);
	FadeDelete("絵板写", 200, true);

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060020a02">
「…………」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060030a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　陰鬱な思索が幻を呼んだのかと、刹那はそう考えた。
　――違う。少女は実在だ。

　少女はそこにいて、そこに立ち尽くしている。

　物も言わない。
　表情もない。

　俺にすれば、歓迎すべき来客だ。
　しかし、声を掛けるのが躊躇われた。

　彼女特有の、苛烈なまでに真っ直ぐ前方へと向けら
れる眼光が、今は影を潜め、どこか靄のかかったそれ
に取って代わられている。
　その平板な瞳が石仏を思わせた。

　無機質なる仏像がその実、彫師の情念の丈をもって
打ち上げられているのと同じく、少女の揺れぬ双眸の
奥にも波濤があるのは容易に窺える。
　だが、その実相が見えない。

　初めて目にする一条だった。出会って最初の頃の、
俺を露骨に嫌悪していた姿とも違う。
　そして彼女もまた、初めて見るかのような目を俺に
向けているのだった。

　肌寒い。
　雨とも季節柄とも関わりなく、何かに凍える。

　それは恐れであったのかもしれない。
　
　――何を？　何を恐れるのか？

　氷雨に打たれる少女は音もなく、片腕を突き出した。
　それは銃を突きつける挙措に似ていた。

　手の中に、紙切れを握っている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060040a02">
「湊斗さん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　俺が何も言えぬうちに、少女は<RUBY text="ようよ">漸</RUBY>う口火を切った。
　目前の男が何を言おうとしていたとしても、封じて
喉奥に蹴り戻すだけの圧力をその声は備えていた。

　為す術もなく、息を呑む。
　気圧されていることを認めぬわけにはいかなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060050a02">
「あたしと――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　殺意か。
　憤怒か。
　悲悶か。

　今の一条はまさしく刃なのだと、気付く。
　激情を鍛え上げて出来た刃だ。

　誰かの胸に突き刺すための。

　誰かの、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060060a02">
「あたしと」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　俺を、
　刺すための――――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆フラッシュエフェクト。つまり稲光だ。
//◆画面が元に戻った瞬間、
	CreateTextureEXmul("絵背景160", 150, Center, Middle, "cg/bg/resize/bg034_署長宅茶の間c_02l_ex.png");
	Move("絵背景160", 0, @512, @0, null, true);
//	CreateTextureEXmul("絵背景210", 210, Center, Middle, "cg/st/resize/st一条_通常_制服m.png");
//	Move("絵背景210", 0, @-212, @130, null, true);

	CreateStencil("絵背景210",911,Center,Middle,128,"cg/st/resize/st一条_通常_制服m.png",false);
	SetAlias("絵背景210","絵背景210");
	CreateColorEXmul("絵背景210/色", 911, "#000000");
	Move("絵背景210", 0, @-212, @130, null, true);

	CreateColorSPadd("絵白", 145, "#FFFFFF");
	Fade("絵背景160", 0, 1000, null, true);
	Fade("絵背景210/色", 0, 800, null, true);
	Wait(50);
	FadeDelete("絵背景160", 1600, false);
	FadeDelete("絵背景210/色", 1600, false);
	FadeDelete("絵白", 1600, false);

	WaitKey(500);

	SetFwC("cg/fw/fw一条_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060070a02">
「映画を見に行きませんかッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雷の音。ごろごろごろごろごろ……
	CreateSE("SE01","se自然_雷_稲光02");
	MusicStart("SE01",0,800,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);
	WaitKey(1000);

	ClearWaitAll(2000, 2000);

//◆映画。
//◆次回作のＣＭでどうか。
//◆無ければジャンゴで良いな。
//◆もしくはなんか一発ネタ。

//あきゅん「演出：映画ネタダミー」


	CreateSE("SE01","se戦闘_攻撃_刀連撃02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	MoviePlay("dx/mv剣戟_チャキーンチャキキーン.ngs", true);

	SetVolume("SE*", 1000, 0, null);
	Wait(1000);

//◆蕎麦屋
//◆※刃鳴散らすの背景を使用
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg059_蕎麦屋の店内_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm27",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060080a00">
「……なかなか前衛的な<RUBY text="トーキー">発声映画</RUBY>だったな」


{	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060090a02">
「す、すいませんっ。
　あんな変なのだとは思わなくて……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　一条と連れ立って、北鎌倉の銀幕へ入り。
　天候のせいだろう、閑散としていた館内で二時間程、
スイカと長靴を接着剤で煮込んだような内容の映画を
鑑賞し。

　何とも曖昧な感慨に浸りつつ、遅い昼食をとるため
近場の蕎麦屋へ。
　今はその卓の一つで向かい合っている。

　一条の唐突な誘いにどんな意図があったのか、それ
はまだ訊いていない。
　関心はあったが、訊きそびれた。

　何であれ陰鬱な孤独からの救いは有難かったという
のも理由ではある。がそれ以上に、やはり今日の一条
はどこかおかしく、安直な問いかけを躊躇わせる空気
に包まれているのが大きかった。

　この時点においてもそうだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆蕎麦屋の娘・なまにくリファイン

	CreateTextureEX("絵背景蕎麦娘", 100, Center, -100, "cg/st/resize/st蕎麦屋の娘_通常_制服ex.png");

	OnSE("se特殊_鎧_鳩",1000);
	Move("絵背景蕎麦娘", 300, @0, @-100, Dxl1, false);
	Fade("絵背景蕎麦娘", 300, 1000, null, true);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st蕎麦屋の娘_通常_制服.png");

	FadeDelete("絵背景蕎麦娘", 300, false);
//	Move("@StL*", 300, @0, @0, AxlDxl, false);
	FadeStL(300,true);

	SetNwC("cg/fw/nw蕎麦屋の娘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060100e053">
「お客さん、ご注文は？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060110a00">
「一条、どうする」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060120a02">
「あ、はい。
　えーっと……冷やしたぬきまだやってる？」


{	NwC("cg/fw/nw蕎麦屋の娘.png");}
//嶋：修正（出しま）【090930】
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060130e053">
「まだも何も、そのような反人類的な代物を
うちの店では出してません」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060140a02">
「……いやちょっと待て。
　反人類的って何だ」


{	NwC("cg/fw/nw蕎麦屋の娘.png");}
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060150e053">
「はい？」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060160a00">
「何を言っているんだ一条」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060170a02">
「え……え？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060180a00">
「<RUBY text="・・・・・・・・・・・・・・">天かすを冷たい汁につけて食う</RUBY>などという
行為が人類に許されている筈もないだろう。
　アウストラロピテクスまで遡っても断じて
有り得ないぞ」


{	NwC("cg/fw/nw蕎麦屋の娘.png");}
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060190e053">
「ええ、まったく。
　今日のお連れさんは冗談がお上手で」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060200a00">
「は、自分も意外な一面を見た思いです」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060210a02">
「……えーと……」


{	NwC("cg/fw/nw蕎麦屋の娘.png");}
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060220e053">
「そういえば最近、変な噂を聞きましたよ。
　その冷やしたぬきとかいうやつを、本当に
作って客に出している店があるとか……」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060230a00">
「まさか。都市伝説でしょう。
　いや、<RUBY text="マクガフィン">はったり表現</RUBY>の一種かもしれません」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060240a00">
「どこかの冗談好きがあたかも実在のものの
ように語り、聞いた相手も調子を合わせて真
に受けてみせる。そのやり取りが面白いので
流行した……そんなところではありませんか」


{	NwC("cg/fw/nw蕎麦屋の娘.png");}
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060250e053">
「ですよね？　やっぱそうですよねー。
　やっ、わかってるんですけどね」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060260a00">
「貴方も冗談がお好きなようだ」


{	NwC("cg/fw/nw蕎麦屋の娘.png");}
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060270e053">
「あっはっはっ」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060280a02">
「…………」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060290a00">
「それで一条。
　冗談はさておき、注文をどうする」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060300a02">
「は、はぁ。
　じゃあ……普通のたぬきで……」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060310a00">
「そうか。良いところを選んだな。
　では、自分も同じものを」


{	NwC("cg/fw/nw蕎麦屋の娘.png");}
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060320e053">
「はい、たぬき二つ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_鎧_鳩",1000);
	Move("@StL*", 300, @-30, @0, Axl2, false);
	DeleteStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　威勢の良い声で受けて、店員が厨房へ引っ込む。
　初めてこの店の暖簾をくぐったのは十年ばかりも昔
になり、彼女とはその頃からの知己だが、あの快活さ
は当時からのものだ。

　あの声を聴くと、旨い物を食いたくなる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060330a02">
「いいものなんですか？
　ここのたぬき」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060340a00">
「ああ。
　最初にあれを食べた時は、少なからぬ衝撃
を受けた」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060350a02">
「……なんか、想像がつかないです」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060360a00">
「あれはもう十年前。
　俺がまだお前のように学生服を着ていた頃
だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　店内を眺めやる。今も昔も、同じ佇まい。
　<RUBY text="そこかしこ">其処彼処</RUBY>から記憶の種を拾い、俺はぽつぽつと言葉
を連ねた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060370a00">
「卒業旅行だった。
　仲間と一緒に鎌倉の名所を見て回った」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060380a00">
「五山を参詣し、八幡宮では実朝暗殺ごっこ
をし……それから丁度昼飯に良い時間だった
ので手近な蕎麦屋に入った。
　それが此処だ」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060390a00">
「実はその旅行で、俺は失敗を犯していた。
　手持ちの金が少なかったのだ」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060400a00">
「皆は違った。せっかくの旅行なのだからと、
多めに小遣いを持ってきていた。
　彼らはあてつけの如く、というかあてつけ
だったのだが、次々と高い品を注文した」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060410a00">
「今でも覚えている。
　<RUBY text="こながや">小長谷</RUBY>は山かけおろし蕎麦だった。尾崎も
同じだ。安藤はたしか、特選蕎麦の大盛りを
頼んでいたと思う」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060420a00">
「どれも百円以上の高額メニューだ。
　俺の所持金は総額で百円そこそこだった。
彼らは勿論それを知っていた」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060430a00">
「わかるか」


{	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060440a02">
「…………わ、わかりません」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060450a02">
（何を訊かれてるのかが……）


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060460a00">
「彼らは挑戦していた。
　この場で全財産をはたき、プライドを守る
だけの度量が、貴様にあるのかと」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060470a00">
「彼らの優越感に満ちた笑みは、俺に一つの
決断をさせるに充分だった。
　財布の中身は一二五円。それさえ確認すれ
ば、もう迷いなどなかった」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060480a00">
「俺はたぬき蕎麦を注文した。
　六〇円だった」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060490a02">
（……無かったんだ。度量……）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060500a00">
「彼らは注文の蕎麦が届くと、実に旨そうに
食べ始めた。
　たぬき蕎麦を待つ俺に、上辺だけの憐れみ
の言葉を掛けながらだ」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060510a00">
「敗者を貶める事にかけて彼らは達人だった」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060520a02">
「本当に仲間だったんですか？　その人たち」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060530a00">
「しかし、彼らは知らなかったろう。
　勝敗がわずかな時間で覆る運命にあったと
は」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060540a00">
「その転機は、俺の蕎麦が来た瞬間に訪れた」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060550a00">
「一目でわかった。
　すべてが逆転したことは誰の目にも明らか
だった」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060560a00">
「店を出た時、小長谷が呟いた。一番安いの
頼んだやつが一番旨いもの食いやがった、と。
　その横で尾崎は店の場所を必死に覚えよう
としていた」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060570a00">
「俺は勝者だった」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060580a02">
「…………。{WaitKey(2000);}<BR>　それで、あのー。結局、どんな蕎麦だった
んです？」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060590a00">
「うむ。
　そういうものだ」


{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060600a02">
「はい？」


{	OnSE("se特殊_鎧_鳩",1000);
	NwC("cg/fw/nw蕎麦屋の娘.png");}
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060610e053">
「あいよ、お待ちー！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆天かすがばちばちと弾ける音
//◆要は油が弾ける音なんだが。

	CreateSE("SE01","se日常_料理_揚げる02_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	WaitKey(1000);

	ClearWaitAll(1000, 2000);

//◆一度フェード。間を取って
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg059_蕎麦屋の店内_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw一条_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060620a02">
「……凄いですね。
　こんなの、初めて食べました」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060630a00">
「そうだろう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　つゆの中で天かすが<RUBY text="・・・・">ばちばち</RUBY>と弾けて踊っている、
そんなたぬき蕎麦は俺もここでしか食べたことがない。
　単に弾けさせるだけなら簡単そうに思えるが。

　味との兼ね合いが難しいのかもしれない。この店の
たぬきは活きの良い天かすと蕎麦との相性が抜群なの
だった。
　一条も満足そうにしている。

　これでいくらかでも口が軽くなれば良いのだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060640a02">
「でも、客の入りは良くないですね……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060650a00">
「ああ」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060660a02">
「こんなに美味しいのに。
　雨のせいでしょうか」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060670a00">
「それもあるだろうが……
　幕府の食糧増産計画の煽りでしばらく閉店
していたからな。最近まで」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　さして広くもない店内を見渡す。
　まだ昼飯時と云える時刻であるのに、客は二名だけ
だ。つまり俺達しかいない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060680a00">
「その間に客が離れてしまったのだろう。
　営業再開が知られればまた賑わう」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060690a02">
「そういえば、そうでした。
　うちの近所でも最近、閉まってためし屋が
再開したり新しく出来たりしてます」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060700a00">
「最大の反幕勢力だった岡部党も制圧され、
六波羅の統治は安定に向かっている。
　言うなればその恩恵だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　今後どうなるかは知れたものではないが。
　先日の大事変は政情の安定化と真逆の方向へ大きく
寄与するだろう――長期的視野に立っての評価はまた
別としても。

　悲観すればこの店とて、賑わう前にまた閉店という
<RUBY text="きすう">帰趨</RUBY>も有り得る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060710a02">
「恩恵ですか……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060720a00">
「……？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060730a02">
「有難がらなくちゃいけないんでしょうか。
　今までさんざん締め付けておいて、それを
ようやく少し緩めたってだけなのに」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　疑問の意は、文法上の形式のみに留まっていた。
　発言者の声音も、瞳も、自らの問いへの答えを既に
確固と見出している。

　ふと、怯みを覚えた。
　尖端恐怖症の心理に似ていたかもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060740a02">
「ふざけた話です」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060750a00">
「……それでも、やらないよりはましだ」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060760a02">
「ええ……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060770a00">
「食料規制の緩和は喜ばしい事に違いない。
　救われた人も多いだろう」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060780a02">
「そう思います。
　でも、あたしは<RUBY text="・・・・・">許しません</RUBY>」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060790a00">
「…………」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060800a02">
「別ですから。
　良いことをすれば、そのぶん過去の悪事が
帳消しになる、なんて決まりは無いです」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060810a00">
「……そうだな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　その通りだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060820a02">
「善は善です。
　悪は悪です」


//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060830a02">
「善は善で認められても、
　悪は悪で裁かれるべきです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　その通り。
　だから――俺は。

　自分を、
　決して――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060840a02">
「だからあたしは許しません。
　たとえ、表では悪と戦っていても」


//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060850a02">
「裏では自分が悪を為している。
　そんな人がもしもいたなら、絶対に」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	SetVolume("@mbgm*", 1500, 0, null);
	CreateColorEX("絵暗転", 5000, "#000000");
	Fade("絵暗転", 600, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　
　　　　　　　　　　　許さない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060860a00">
「…………」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060870a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　一条は俺を見ていなかった。
　顔を伏せて、卓上の板目に注視を向けている。

　ならば、今のは偶然であろうか。
　今の……<RUBY text="・・">一致</RUBY>は。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @30, @0,"cg/st/st一条_通常_制服.png");
	CreateSE("SE01","se日常_物_椅子鳴る02");

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060880a00">
「一条」


{	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,false);
	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060890a02">
「……そろそろ出ませんか。
　もう少し付き合ってください」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060900a02">
「一緒に、行って欲しい所があるんです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnBG(5000,"bg058_曇空a_01.jpg");
	CreateSE("SEL01","se自然_水_雨音01_L");
	MusicStart("SEL01",3000,1000,0,1000,null,true);
	FadeBG(1500,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　俺を見ぬままに、一条は視線を店外へ滑らせた。
　雨はまだ降り続いている。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(2000);
	SetVolume("SE*", 2000, 0, null);
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb01_007.nss"