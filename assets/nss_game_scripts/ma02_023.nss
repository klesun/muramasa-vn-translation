//<continuation number="1240">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_023.nss_MAIN
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
	#bg005_山中_02=true;
	#bg004_鄙びた村a_02=true;
	#bg001_空a_02=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_024.nss";

}

scene ma02_023.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_022.nss"

//◆山道？
//◆車が止まる音

	PrintBG("上背景", 15000);
	CreateColorSP("絵暗転", 5000, "#000000");

	OnBG(100,"bg005_山中_02.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 0, true);

	CreateSE("SE01","se乗物_車_停止01");
	MusicStart("SE01",0,1000,0,1200,null,false);

	Wait(1000);

	FadeDelete("絵暗転", 2000, true);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetVolume("SE*", 200, 0, null);
	OnSE("se乗物_車_ドア開閉01",1000);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_制服c.png");
	StR(1000, @0, @0,"cg/st/stさよ_通常_私服.png");

	FadeStL(300,false);
	Wait(150);
	FadeStR(300,true);

	SoundPlay("@mbgm18",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230010a03">
「あらあら大変。
　ばあや、また同じ所に戻ってましてよー」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230020a04">
「はて、面妖な。
　お嬢さま、これはもしや<RUBY text="ばてれん">伴天連</RUBY>の魔術では
ございますまいか」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230030a03">
「孔明の計略かもしれなくてよ。
　それはさておき、これからどうしましょう」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230040a04">
「もう夕刻でございます。
　これ以上遅れては言い訳もなかなか難しく
なりましょう」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230050a03">
「そうね。そろそろ行きましょうか。
　……きっと、もう決着もついていることで
しょうし」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230060a04">
「同感でございます。
　そういえば、お嬢さま……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230070a03">
「はい？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230080a04">
「ウォルフ教授より依頼されておりました件
は……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230090a03">
「……あっ。
　すっかり忘れていました」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230100a04">
「あれやこれや、立て込んでおりましたから
ねぇ……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230110a03">
「あまり気に留めてもいませんでしたし。
　理由の説明もなしにほいよろしく、と頼ま
れてもねー。教授とは部署が違いますのに」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230120a04">
「さようでございますなぁ。
　大体そもそも、<RUBY text="・・・・">水質調査</RUBY>など、どうやった
ものやら」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230130a03">
「わかるわけがありませんのにね。
　まぁ一応、そのへんの小川から水は汲んで
おきましたし、これでどうにか誤魔化すこと
にしましょう」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230140a04">
「御意にございます。
　して……お嬢さま」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230150a03">
「なあに？」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230160a04">
「あの湊斗景明なる人物。
　どのように見定められました？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230170a03">
「……そうですね。
　一概には、まだ」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230180a04">
「見極めるには時期尚早と？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230190a03">
「ええ。
　まだ……彼が<RUBY text="・・">そう</RUBY>なのかは、何とも」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230200a04">
「は……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230210a03">
「けれど。
　……あれほど血生臭い人間は初めてです」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230220a04">
「さように、お感じになられましたか」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230230a03">
「死蝋で出来ているかのよう。
　最初に目を合わせた時、背筋に走った<RUBY text="おぞけ">怖気</RUBY>。
当分は忘れられそうにありません」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230240a04">
「……しかし。
　お嬢さま……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230250a03">
「ええ。あなたが考えていることはわかって
いるつもりよ、ばあや。
　彼は<RUBY text="・・・・・">まっとうな</RUBY>育ちの人間だと、そう言い
たいのではなくて？」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230260a04">
「……は。一言で言いますれば」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230270a03">
「わたくしも同感です。
　……だから、わかりませんの」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230280a04">
「……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230290a03">
「……もっと。
　彼のことを知らなくてはなりません」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230300a04">
「さようでございますね。
　……む？　お嬢さま」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230310a03">
「どうしたの？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230320a04">
「あちらをご覧下さいませ。
　さよの老眼ではしかと見えませぬが、あれ
は……人では？」


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230330a03">
「……あら、本当。
　なかなか凛々しいお顔の美少年……では、
ないのかしら？　女の子？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230340a04">
「こちらに走って参られますね……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	StCL(1000, @-30, @0,"cg/st/st香奈枝_通常_制服c.png");
	StL(1010, @90, @0,"cg/st/stさよ_通常_私服.png");

	Move("@StML*", 300, @-30, @0, Dxl1, false);
	FadeStCL(300,false);
	Wait(150);
	Move("@StL*", 300, @-30, @0, Dxl1, false);
	FadeStL(300,true);

	OnSE("se人体_動作_後ずさり01",1000);

	StR(1000, @30, @0,"cg/st/st一条_通常_制服.png");
	Move("@StR*", 300, @-30, @0, Dxl1, false);
	FadeStR(300,true);

	SoundPlay("@mbgm17",0,1000,true);

//◆一条

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230350a02">
「おいっ！」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230360a03">
「はい？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230370a02">
「その格好、あんた進駐軍の人だな？
　なんか武器持ってないか。銃とか剣とか。
無けりゃ鉄パイプでもいい」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230380a03">
「はぁ。
　銃でしたら、ここに」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230390a02">
「よし、助かる。
　それ貸してくれ」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230400a03">
「どうされますの？」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230410a02">
「あの山に六波羅の糞犬野郎がいるんだよ！
　今、警察の人が戦ってる。あたしは加勢に
行くんだ」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230420a03">
「……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230430a04">
「……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230440a02">
「犬どもを野放しにしてるのはあんたらだろ。
　あんたらの不始末をあたしが片付けてやる
ってんだ。文句ねえだろ。貸せよ」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230450a03">
「そう言われては、反論の言葉もありません
けれど……。
　この銃、わたくしの私物ではありますが、
一応軍の備品という扱いになっていまして」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230460a02">
「あぁん？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230470a03">
「民間の方に無断で貸与するわけにはいきま
せんの」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230480a02">
「貸しちゃダメなのか」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230490a03">
「はい。ダメなんです」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230500a02">
「じゃあそこに置いてくれ。盗んでくから。
　それなら問題ないだろ」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230510a03">
「あら？
　そういうことになるのかしら」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230520a04">
「お嬢さま、騙されかけておりますよ。
　もし、凛々しいお方」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230530a02">
「……うっ。
　また爺婆かよ……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230540a04">
「山で戦っている警察の御仁に加勢をなさり
たいとか。
　それは、その警官殿が望まれたことであり
ましょうや？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230550a02">
「……いや。
　それは……違う、けど」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230560a04">
「その方は逃げろと仰られたのでは？」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230570a02">
「……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230580a04">
「でしたら、その通りにされたが宜しいかと
存じますよ」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230590a02">
「けどっ！
　あの六波羅野郎は許せねぇんだっ！　この
まま逃げたら、あたしは――」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230600a04">
「ご自分の矜持のために、警官殿のご配慮を
無にされると？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230610a02">
「……い、いや。そうは……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230620a04">
「加勢が必要であれば、警官殿はそのように
仰られたのではないでしょうか。
　そう言わなかったということは、加勢など
無用と、そういうことではありますまいかな」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230630a02">
「……うぅ。
　けど、万一ってことも……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230640a04">
「あるとお思いですか？」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230650a02">
「……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230660a04">
「この婆めは、無いと思いますがねぇ。
　お嬢さまはいかがでございます？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230670a03">
「有馬温泉まで直通の鉄道が開通しました」


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230680a04">
「……その心は？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230690a03">
「<RUBY text="ありません">有馬線</RUBY>♪」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230700a04">
「華麗にスルーでございます。
　凛々しいお方、貴方さまも同じお気持ちで
はありませんか？」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230710a02">
「……ちっ。はいはい、そうだよ。
　あたしもそう思ってるよ！　<RUBY text="・・・・">あの武者</RUBY>は、
六波羅の犬侍なんぞにゃ負けないだろうって」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230720a02">
「くそ……
　爺婆はほんと食い合わせが悪いや」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230730a04">
「まあまあ、お若い方が腐られますな。
　紅茶でもお淹れしましょうか」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230740a02">
「いらねぇよ。
　しかし、あんたら。あの人のこと知ってる
口ぶりだな」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230750a04">
「ええ。存じておりますよ」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230760a03">
「協力して、その犬野郎と戦った間柄です」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230770a02">
「……そうだったのか？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230780a03">
「はい。
　今明かされる、衝撃の真実」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230790a02">
「けど、あんたら……無駄飯食らいのＧＨＱ
だろ？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230800a03">
「たまにはダイエットがてら働くこともあり
ましてよ。まぁ、その辺のお話は道々いたし
ましょうか。
　おうちはどちら？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230810a02">
「？　鎌倉だけど」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230820a03">
「お乗りなさいな。
　送って差し上げます」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230830a02">
「は？　いや、いいよそんなの。
　あたしは村に……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230840a03">
「あの方に協力したいのでしょう？
　なら、どうぞ」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230850a02">
「どういう意味だ？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230860a03">
「簡単に言いますと。
　夜道に迷って難儀していたあなたを助けて
いたという事にすれば、わたくしはもう少し
寄り道ができて、本部へ戻るのが遅れますの」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230870a03">
「そしてそれは、あの村や、景明さまを――
警察の人を助けることに繋がるのです」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230880a02">
「……さっぱりわかんねぇ」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230890a03">
「それも道々ご説明しましょう。
　さ」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230900a02">
「わかったよ。嘘はついてねぇみたいだし。
　……けど」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230910a03">
「はい？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230920a02">
「道に迷ったってのは無しだ。
　怪我でもしていたことにしてくれ」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230930a03">
「？　わかりました。
　では、参りましょう」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230940a02">
「よろしく。
　……へっくちっ！」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230950a04">
「おや、お風邪ですか？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230960a02">
「いや、そんな覚えはねぇけど……
　なんだろな。今、急に寒気がして」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230970a04">
「逢魔ヶ刻と申します。
　何か良からぬものが背筋を撫でていったの
やもしれませんねぇ……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230980a02">
「……不気味なこと言うな、婆さん。似合い
過ぎだっての。
　ったく……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230990a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

	DeleteStA(300,true);


//◆村
	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 5000, "#000000");

	OnBG(100,"bg004_鄙びた村a_02.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	Wait(2000);
	WaitPlay("@mbgm*", null);

	FadeDelete("絵暗転", 2000, true);

	SoundPlay("@mbgm32",0,1000,true);

	SetNwC("cg/fw/nw村人Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231000e156">
「静かになった……な」


{	NwC("cg/fw/nw村人Ｃ.png");}
//【ｅｔｃ／村人男Ｃ】
<voice name="ｅｔｃ／村人男Ｃ" class="その他男声" src="voice/ma02/0231010e158">
「……どうなったんだ？」


{	NwC("cg/fw/nw村人Ｂ.png");}
//【ｅｔｃ／村人男Ｂ】
<voice name="ｅｔｃ／村人男Ｂ" class="その他男声" src="voice/ma02/0231020e157">
「わかんねぇよ……」


{	NwC("cg/fw/nw村人Ａ.png");}
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231030e156">
「おい、誰か見に行ってこい」


{	NwC("cg/fw/nw村人Ｂ.png");}
//【ｅｔｃ／村人男Ｂ】
<voice name="ｅｔｃ／村人男Ｂ" class="その他男声" src="voice/ma02/0231040e157">
「お前行けよ！」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0231050e160">
「落ち着け、皆。
　騒がずに待とう。もう少しすればきっと、
警察の武者様が戻ってこられる」


{	NwC("cg/fw/nw村人Ａ.png");}
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231060e156">
「……戻ってこなかったら？」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0231070e160">
「…………」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0231080e160">
「戻ってくる」


{	NwC("cg/fw/nw村人Ａ.png");}
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231090e156">
「……」


{	NwC("cg/fw/nw村人Ｂ.png");}
//【ｅｔｃ／村人男Ｂ】
<voice name="ｅｔｃ／村人男Ｂ" class="その他男声" src="voice/ma02/0231100e157">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆きらーん。
	PrintGO("上背景", 15000);

	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");

	OnBG(100,"bg001_空a_02.jpg");
	FadeBG(0,true);

	Delete("上背景");

	SetVolume("@mbgm*", 300, 0, null);

	FadeDelete("絵フラ", 300, true);

	SetNwC("cg/fw/nw村人Ｃ.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／村人男Ｃ】
<voice name="ｅｔｃ／村人男Ｃ" class="その他男声" src="voice/ma02/0231110e158">
「あっ！」


{	NwC("cg/fw/nw村人Ａ.png");}
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231120e156">
「どうした」


{	NwC("cg/fw/nw村人Ｃ.png");}
//【ｅｔｃ／村人男Ｃ】
<voice name="ｅｔｃ／村人男Ｃ" class="その他男声" src="voice/ma02/0231130e158">
「彗星だ……」


{	NwC("cg/fw/nw村人Ｂ.png");}
//【ｅｔｃ／村人男Ｂ】
<voice name="ｅｔｃ／村人男Ｂ" class="その他男声" src="voice/ma02/0231140e157">
「彗星？」


{	NwC("cg/fw/nw村人Ａ.png");}
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231150e156">
「本当だ……」


{	NwC("cg/fw/nw村人Ｃ.png");}
//【ｅｔｃ／村人男Ｃ】
<voice name="ｅｔｃ／村人男Ｃ" class="その他男声" src="voice/ma02/0231160e158">
「……吉兆だよな？」


{	NwC("cg/fw/nw村人Ａ.png");}
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231170e156">
「凶兆じゃねえのか……」


{	NwC("cg/fw/nw村人Ｂ.png");}
//【ｅｔｃ／村人男Ｂ】
<voice name="ｅｔｃ／村人男Ｂ" class="その他男声" src="voice/ma02/0231180e157">
「お前なぁ！」


{	NwC("cg/fw/nw村人Ａ.png");}
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231190e156">
「い、いや、だってうちの爺いが昔――」


{	NwC("cg/fw/nw村人Ｃ.png");}
//【ｅｔｃ／村人男Ｃ】
<voice name="ｅｔｃ／村人男Ｃ" class="その他男声" src="voice/ma02/0231200e158">
「まあまあ……
　吉兆だと信じようぜ」


{	NwC("cg/fw/nw村人Ａ.png");}
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231210e156">
「ああ……」


{	NwC("cg/fw/nw村人Ｄ.png");}
//【ｅｔｃ／村人女Ａ】
<voice name="ｅｔｃ／村人女Ａ" class="その他女声" src="voice/ma02/0231220e155">
「……銀色……」


{	NwC("cg/fw/nw村人Ｂ.png");}
//【ｅｔｃ／村人男Ｂ】
<voice name="ｅｔｃ／村人男Ｂ" class="その他男声" src="voice/ma02/0231230e157">
「ん？」


{	NwC("cg/fw/nw村人Ｄ.png");}
//【ｅｔｃ／村人女Ａ】
<voice name="ｅｔｃ／村人女Ａ" class="その他女声" src="voice/ma02/0231240e155">
「あの彗星……
　綺麗な、銀色…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆黒
	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"ma02_024.nss"


