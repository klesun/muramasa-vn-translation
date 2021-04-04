//<continuation number="800">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_014.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_015.nss";

}

scene mc02_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_013.nss"


//◆景明の部屋
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "BLACK");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg030_ＧＨＱ監禁部屋_01.jpg");
	Delete("上背景");
	FadeDelete("黒幕１", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　幽閉生活というものはおおむね単調と孤独と閉塞の
三重奏に支配される。
　これは何処の世界のどんな時代でもまず変わらない
真理であろう。

　この状態がいつまでも続くとは思えないのだが……。
　俺がこうしてＧＨＱの基地内に囚われている事には、
香奈枝嬢の私的事情とは別にＧＨＱの事情がなくては
おかしい。無意味に虜囚を取る軍はない。

　その事情が、俺を愛玩動物よろしく檻に入れて餌を
与え続けること自体を目的としているとは考えられな
かった。
　必ず何らかのアプローチはしてくるだろう。

　しかし――それがなかなか訪れない。
　そんな日々において、単調さを崩してくれる要素の
到来は何であれ歓迎すべきものだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(700);

//◆香奈枝
	StL(1000,@-30,@0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140010a03">
「……ご一緒に散歩でもいかが？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140020a00">
「喜んでお供します。
　大尉殿」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140030a03">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se日常_建物_牢獄扉開く02",1000);
	WaitKey(800);

//◆基地内

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnSE("se人体_足音_歩く_地下_L",1000);
	WaitKey(1500);
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg028_横浜ＧＨＱ基地_01.jpg");
	DeleteStL(0,false);
	SoundPlay("@mbgm16",0,1000,true);
	SetVolume("OnSE*", 100, 0, null);
	DrawDelete("黒幕１", 1000, 1000, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　アングロ・サクソン族は他国に進出すると、そこに
<RUBY text="・・">自国</RUBY>を形成する――しばしばそう評される。

　それは華僑が中華街を造るのとは異なる。
　商業目的で他国に移住した彼ら華僑が築造する街は、
拠点であると同時に故郷の写し――安息の地であるが、
そこまでのものに過ぎない。

　拠点であり故郷である中華街は発展の限界を持つ。
　自分達の生活に必要充分な環境が完成すれば、それ
から更に規模を拡大していく事はない。

　アングロサクソンの都市は拡大する。
　際限なく。

　軍事的に占領した国では現地の文化文明を破壊また
は強奪しつつ自国の文化文明に沿って都市化する。
　交易関係を結んだ国へは、自国の文化文明を積極的
に輸出し、やがて都市の様相を自国化する。

　彼らは真の意味における征服者だ。
　アングロサクソン族の宗主国家といえる<RUBY text="グレート・ブリテン">大英連邦</RUBY>は
政治的に世界の過半を制しているが、文化的な版図は
きっと更に広かろう。

　無論、大和にとっても他人事などではない。
　国内の産業と文化を保護するため諸外国との交易に
制限を掛けていた徳川政体が遂に打倒されて以来百年。
今や市街には<RUBY text="モーターカー">自動車</RUBY>が行き交い、都市間は<RUBY text="レールロード">鉄道</RUBY>が繋ぐ。

　そうした変化に危惧を抱き、警鐘を鳴らす人間も、
『売国論』を著した<RUBY text="いしまさこんのしょうげん">石馬左近将監</RUBY>など少なからずいる。
　しかし、より多くの人々が変化を受け入れ、歓迎し、
一面において自国侵略の一助をなしているのだった。

　そしてそうなるからには、相応の理由が存在した。
　アングロサクソン族は合理主義に基づく発明に長け、
その文化の利便性は多くの方面で他文化の追随を許さ
ない。彼らが造る物は速く、<RUBY text="おおき">巨</RUBY>く、強い。

　だからこそ求められ、普及する。
　
　最も身も蓋も味も素っ気もない意味において彼らは
他に優越する種族なのである。

　優秀なる彼らは優秀な科学文明を持ち、その文明を
僻地へもたらす正義を信じ、正義ゆえに躊躇わない。
　アングロサクソン帝国の覇業が成るのは必然と云う
べきであろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	StL(1100,@-30,@0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140040a00">
「見事な軍事拠点です。
　おそらく、普陀楽城よりも総合的な機能に
おいては優るのではありますまいか」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140050a03">
「ええ……」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140060a00">
「大和古来の軍学に基づく築城ではどう工夫
してもここまで効率的な構造にはなりません。
　どうしたところで各所に細かい無駄が表れ
ます」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140070a00">
「六波羅が総力で当たっても、果たしてこの
基地を攻め落とせるかどうか。疑問です。
　とにかくまず横須賀と分断しないことには
……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140080a03">
「そうですね……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140090a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　世間話のつもりで話を振ってみたが、どうも香奈枝
嬢の反応はいつになく鈍い。
　生返事を寄越してくるばかりだった。

　捕虜でありながら遠慮もなく周囲を検分し批評する
態度が呆れを買ったのかとも思ったが、違うようだ。
　顔色を窺うに、そもそも話がまともに聞かれている
かどうかからして疑わしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140100a00">
「大尉殿」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140110a03">
「……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140120a00">
「もしや、御身体の具合でも……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140130a03">
「……え？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140140a03">
「あ、はい。わたくしもそう思いましてよ」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140150a00">
「やはり。ならば御自愛下さい。
　確かに無聊をかこつ自分には有難いお誘い
でしたが、大尉殿にそのような無理までして
頂くには及びません」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140160a03">
「え？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140170a00">
「すぐに戻りましょう。
　念のため、軍医に――」


{	StCL(1200,@ 80,@ 0,"cg/st/stさよ_通常_私服.png");
	FadeStCL(300,false);
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140180a04">
「まぁまぁ湊斗さま。
　そう慌てなくとも、大丈夫でございますよ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140190a00">
「しかし」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140200a04">
「お嬢さま？
　湊斗さまはお嬢さまが心ここにあらぬ態で
おられたのをご心配なさったのです」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140210a04">
「それでおからだの不調を問われたのですが
……何か、健康に思わしからぬところでも？」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140220a03">
「……あっ」


{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140230a03">
「いえ、申し訳ありません、景明さま。
　わたくし、この通りピンピンしておりまし
てよ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140240a00">
「本当ですか」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140250a03">
「ええっ、もー、どこもかしこもビンビンで
困っちゃいます。
　景明さま、ご覧になりたいの……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――
	

	SetFwC("cg/fw/fw香奈枝_含羞.png");
	SetComic(@0,@0,13);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140260a03">
「いやんっ、こんなところで！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――


	DeleteComic();
	SetFwC("cg/fw/fwさよ_疲れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140270a04">
「何を見せる気なんでしょーねこの痴女は」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140280a00">
「……そうですか。なら宜しいのです。
　安堵致しました」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140290a00">
「大尉殿、貴方は自分にとっても掛け替えの
ない<RUBY text="おひと">御人</RUBY>です。
　どうか御身体は大切にして下さい」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140300a03">
「え……ええ」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140310a03">
「…………」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140320a04">
「健康はともかく。
　何だか妙に調子が出ないご様子ですねぇ、
お嬢さま」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140330a03">
「そ、そんなことはなくってよ？
　わたくしはいつも通り」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140340a04">
「あまりそうは見えませぬが……」


{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140350a03">
「気のせいです！」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140360a04">
「しかし現在の時刻は三時、風向きは北北西、
大気中の電波濃度は六三％でございますよ？
　普段のお嬢さまなら直ちに怪鳥の如き奇声
を上げマイムマイムを踊り出されるはず……」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140370a03">
「ええわかってますちょっとお待ちなさい。
　時刻よーし風向きよーし電波よーし」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	DeleteStCL(200,true);

	WaitKey(500);


	Shake("@StL*", 1500, 6, 0, 2, 0, 1000, Dxl3, false);

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140380a03">
「クケーーーーーーーーーーーーーッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


	Move("@StL*", 200,@ 200,@ 0, Axl3, false);
	OnSE("se人体_動作_スライディング",700);
	DeleteStL(200,true);

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140390a04">
（……変だ……）


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140400a00">
（……変だ……）

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(150);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　何があったのか不明だが、今日の大鳥大尉は色々と
性能が低下気味らしい。
　まるで一週間徹夜して原稿を書き上げた直後の小説
家のようだ。

　心配ではあるものの、心配してもどうにもならない
気配が濃厚である。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000,@ 0,@ 0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,false);


	SetFwC("cg/fw/fwさよ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140410a04">
「まぁそのうち回復なさいましょう」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140420a00">
「は」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140430a04">
「それはさておき湊斗さま。
　ウォルフ教授に会われたとか？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140440a00">
「はい。
　部屋に招かれ、短時間ですが面談を」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140450a04">
「どのようなお話をされましたかな。
　むろん、差し障りのない範囲でお答え頂け
れば結構でございますよ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140460a00">
「……そうですね。
　とりあえず……印象が強かったのは」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140470a00">
「パンツという単語が会話中にやたらと出て
きたことでしょうか」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140480a04">
「…………」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140490a04">
「聞く方に差し障りのあるお話だったようで」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140500a00">
「失礼」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140510a04">
「いえ、あの教授はいつもそんなんですから。
　一体どんな歪んだ生い立ちを過ごされたの
かは存じませんが、とにかくパンツに異様な
執着心を抱かれているらしく」


{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140520a04">
「口を開けばパンツパンツと――」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140530a00">
「侍従殿。
　誤解なさらぬよう」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140540a04">
「は？」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140550a00">
「――あの方はパンツに執着しているのでは
ありません。
　パンツを脱がすことに執着しているのです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　力を込めて、拳を握る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140560a00">
「これは全く、意味も意義も異なる事です。
　混同されてはいけません」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140570a04">
「はァ」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140580a00">
「例えるなら美濃部達吉先生を逆賊呼ばわり
するようなもの」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140590a04">
「何を仰りたいのかさっぱりわかりませんが、
多分その例えは適切ではないですぞ。
　……しかし、湊斗さまも何だか調子がおか
しゅうございますね。お嬢さまとは別方向に」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140600a00">
「そうでしょうか。
　……そうかもしれません」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	OnBG(1100,"bg001_空b_01.jpg");
	FadeBG(1000,true);

	DeleteStL(0,false);
	DeleteStR(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　空を見上げてみる。

　青い。
　良く晴れた、澄んだ空だ。

　そんなつまらない事を想う。
　
　だが――こんなつまらない事を、俺は久しく忘れて
いたのではないか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//◆クール
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140610a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("@OnBG*");

	WaitKey(500);

	DrawDelete("黒幕１", 1000, 1000, "blind_01_00_1", true);

	SoundPlay("@mbgm36",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　演習場らしき広場がある。
　ふと、俺は足を止めていた。

　十人余りの人の群れが見える。
　しかし皆、これから演習という様子ではない。

　多くは無表情であった。
　うち一人は、表情が消えていた。

　両者は似ているようで違う。
　一名は表情というものが欠落してしまったのであり、
他の人々は意図的に表情を隠しているのだ。

　表情の消えた一名は、両腕を拘束されていた。
　それを、解かれた……と思えば、今度は杭に全身を
縛り付けられていく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140620a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　流石にその時点で、俺にも事態は察せられた。

　縛られ、目隠しまでされた男だけ残し、他の人間が
周囲に散る。
　場の代表らしき将校が、低い声で何事かを述べた。

{	OnSE("se戦闘_銃器_構える01",1000);}

　<RUBY text="ライフル">長銃</RUBY>を構えた兵士が数人、立ち並ぶ。
　筒先は無論、杭の男だ。

　将校が号令を掛ける。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銃声。ばんばんばーん。

	DeleteFwC(100,false);
	Fade("@box*",150,0,null,true);

	CreateColorEXadd("絵色100", 1500, "White");

	OnSE("se戦闘_攻撃_ライフル撃つ4回",700);
	WaitKey(280);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, false);
	WaitKey(280);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, false);
	WaitKey(240);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, false);
	WaitKey(340);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, false);

	Wait(10);
	OnSE("se人体_血_たれる01",1000);
	WaitKey(1000);


//	FadeFwC(300,false);
	Fade("@boxCC",150,800,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]

　男は死亡した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("黒幕１", 1000, true);
	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140630a00">
「………………」


{
	StL(1000,@-30,@0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(300,false);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140640a03">
「コブデン中佐です」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140650a00">
「大尉……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　同じように足を止めて、同じように眺めていたのだ
ろう。今の処刑の様子を。
　演習場に瞳を向けたまま、大鳥大尉が呟いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140660a03">
「罪状は収賄、通謀……
　そして反乱」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140670a00">
「反乱？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140680a03">
「横須賀の事故のことは覚えておられます？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140690a00">
「ああ……はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　あの日の電話で、香奈枝嬢が触れた事件のことか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140700a00">
「確か、事故というのは表向きの発表に過ぎ
ないと……
　つまり」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140710a03">
「ええ。それが反乱でしたの。
　今は亡きコブデン中佐の起こした」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140720a03">
「……いえ。
　正確には、舞殿宮殿下が起こさせた」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140730a00">
「……何と？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　親王が起こさせた？
　横須賀軍港の反乱事件を？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140740a00">
「――大尉殿。
　それは一体、どういう」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140750a03">
「お知りになりたい？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140760a00">
「はい」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140770a03">
「この件については、もう何もかも終わって
しまったことですのよ？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140780a00">
「……それでも、願わくば」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140790a03">
「…………」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140800a03">
「わかりました。
　お話ししましょう……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 3000);

//◆フェードアウト

}

..//ジャンプ指定
//次ファイル　"mc02_015.nss"