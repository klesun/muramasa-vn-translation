//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_002.nss_MAIN
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
	#ev257_大和北方地図_c=true;
	#bg040_孤島全景_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_003.nss";

}

scene md06_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_001.nss"

//◆マップで松前大島の位置を示し
//◆bg040a

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	CreateTextureSP("前地図EX", 2900, Center, Middle, "cg/ev/ev257_大和北方地図_b.jpg");
	DrawTransition("前地図EX", 1000, 0, 1000, 100, null, "cg/data/blind_02_01a_1.png", true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

	WaitKey(1000);

	CreateTextureEX("地図", 3010, -562, -518, "cg/ev/resize/ev257_大和北方地図_cl.jpg");
	CreateTextureEX("地図ex2", 3000, -562, -518, "cg/ev/resize/ev257_大和北方地図_bl.jpg");
	Move("地図*", 5000, -218, -49, DxlAuto, false);
	Fade("地図ex2", 1000, 1000, null, true);

	Delete("前地図EX");

	WaitAction("地図", null);

	Fade("地図", 0, 1000, null, true);
	DrawTransition("地図", 1000, 0, 1000, 100, null, "cg/data/blind_02_01a_1.png", true);

	WaitKey(1000);


	PrintBG("上背景", 30000);

	OnBG(100, "bg040_孤島全景_01.jpg");
	FadeBG(0, true);

	FadeDelete("上背景", 1000, true);
	SoundPlay("@mbgm34", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　傭兵帝国。聖堂騎士団。軍隊派遣会社……
　通称〝武帝〟。

　その集団は北曾西南、渡島半島から西へ海を隔てて
五〇キロ程の、松前大島を根城とする。
　海産物の豊富な環境であるが、彼らは漁業に関心を
示すことがなかった。

　彼らの生業は戦争である。

　近隣を切り従え、領土を広げようとするのではない。
　そうした侵略を望む者に、又はその侵略を防ごうと
する者に、雇われて戦うのだ。

　彼らは理非を問わない。国家を問わず民族を問わず
宗教も主義主張も一切問わない。
　契約条件が満たされるか否か。雇用の諾否を決する
のはその一事のみである。

　条件はやや、特殊なものであったが。
　金銭面から見る限り、彼らが雇用者へ提供する戦力
は値に対して全く破格と云えたろう。

〝武帝〟の戦闘力の中心は、<RUBY text="ブラッドクルス">真打劒冑</RUBY>を有する武者が
担う。

　高速徹甲弾、発振砲等、対竜騎兵用狙撃兵器の発達
に伴って数打劒冑と真打劒冑の力関係は劇的な逆転を
遂げた。
　最新の兵器は、真打の古い<RUBY text="ＯＳ">統御機能</RUBY>では扱えない。

　白兵戦を表芸とする真打武者にとって、栄光は過去
のものとなった。
　数打劒冑を雑器、安物、紛い物と、嗤っていられた
時代は永遠に過ぎ去ったのだ。

　それでも彼らの多くは騎士階級、つまり前線で戦う
よりも指揮統率を任務とする者であったから、軍隊に
居場所を全く失ったわけではない。
　最強の実戦力とは見做されなくなっただけである。

　しかし、最強戦力たる自負こそは彼らの軍指揮権に、
延いては階級意識に正当性を与える根拠であったため、
数打武者の台頭に耐えられず、逃げるように軍籍から
離れた者は少なくなかった。

　そんな<RUBY text="はぐ">逸</RUBY>れ武者を〝武帝〟は受け入れ……
　そして、彼らに<RUBY text="アイデンティティ">自己認識</RUBY>を取り戻させた。

　正面戦闘の優位を数打に譲ろうと、真打武者は未だ
強猛な存在には違いない。
　彼らの多くは高い性能、熟練の技術、豊富な経験を
兼ね備える。

　一騎で重戦車の隊列を相手取り、砲兵陣地を砕くも
困難としない。
　いや最新の竜騎兵さえ、状況と戦術を選んで格闘戦
に持ち込めば互角以上に戦える――むしろ圧倒できる。

　運用の仕方を誤らねば、多大な戦果を挙げ得るのだ。
　
　つまり〝武帝〟はそうして、両者の要望に応えた。
誇りを求める武者と、力を求める依頼者の。

　俄かに出現した孤島の傭兵団が短時日で名を成した
所以はここにある。

　広く知られてゆくにつれ、〝武帝〟への依頼は数を
増やした――その陰惨な契約条件にも関わらず。
　大和で、大陸で、あるいは更に遠方で。彼らは頼ま
れるまま数多の戦闘に加わり、勝利と死を積み重ねた。

　大和や露帝がこの剣呑な不法占拠者を松前大島から
追い出そうと兵を繰り出すこともあったが……
　その試みは毎回、あたかも<RUBY text="・・・・・・・・・・・">重力の働きが狂ったかの</RUBY>
<RUBY text="・・・">ような</RUBY>異様な嵐に阻まれ、頓挫している。

　海上交通を妨げる意図が見えないこともあり、昨今
は両国も〝武帝〟の存在を消極的に承認しつつあった。
　非公式には――時として積極的に利用することさえ
も。

　かくして傭兵帝国は極東に立つ。
　混沌窮まる情勢の渦中を縦横無尽に駆け巡り、戦い、
殺し――そうする中で更に武威を高め、存在感を高め、
名の持つ圧力を高めながら。

　頼り縋る者を日毎に増やしながら。
　忌み嫌う者をも、同じ速さで増やしながら。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_003.nss"