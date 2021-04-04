//<continuation number="170">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_014.nss_MAIN
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
	#bg003_荒れ野_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_013a.nss"


//◆燎原。bg003a

	PrintBG("上背景", 30000);
	CreateColorSP("白", 5000, "WHITE");

	OnBG(100, "bg003_荒れ野_03.jpg");
	FadeBG(0, true);
	CreateTextureEXadd("炎", 110, @0, @0, "cg/ef/ef046_炎a.jpg");
	Fade("炎", 0, 1000, null, true);
	Zoom("炎", 0, 1100, 1100, null, true);

	DrawEffect("炎", 50, "MiddleWave", 30, 30, null);

	CreateSE("SEめらめら", "se背景_ガヤ_燃える町並み_L");
	MusicStart("SEめらめら", 3000, 1000, 0, 1000,null, true);

	CreateMovie("煙動画", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 6000, null, true);
	Request("煙動画", SubRender);
	Move("煙動画", 0, @0, @-400, null, true);

	CreateTextureEX("ワープ演出", 4500, @0, @0, "cg/bg/bg003_荒れ野_03.jpg");
	Zoom("ワープ演出", 0, 1500, 1500, null, true);
	DrawEffect("ワープ演出", 50, "SuperWave", 0, 500, null);
	Fade("ワープ演出", 0, 500, null, true);

	Delete("上背景");

	FadeDelete("白",1500,true);

	Fade("ワープ演出", 1000, 0, null, true);
	Delete("ワープ演出");

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0140010a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140020a01">
《……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　もはや心情吐露の語彙も尽きた。

　燃えている。
　辺り一面、轟々と燃え盛っている。

　これは……野火の只中か。
　天井は無く、足元は土砂。少なくとも屋内ではない
らしい。火種となっているのは草葉と木々。

　――いや。他にも。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140030a01">
《何よ……これ》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140040a01">
《何処の地獄よ？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0140050a00">
「……ディーテの都だろうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　かの〝<RUBY text="コンメディア">神曲</RUBY>〟に謳われる火炎地獄。
　
　ここでその名を出す事は、およそ洒落心などに無縁
の人間であっても――つまり俺でも、容易であった。

　ただ素直に視覚情報を評価すれば、そう思える。

　焼けているのは人だった。
　数え切れない人、人、人。

　人種も性別もわからない。皆とうに焼け焦げて炭化
している。しかし原形は留めていて、間違いなく人間
だとわかる。
　生命あるものの形だった。その残骸だった。

　火炎と死屍の中、ぽつんと佇む。
　甲鉄に覆われた俺は、後ろめたさを覚える頑強さで
火の猛威に耐えていられた。

　……この光景は何なのだろう。

　単なる火災と、不幸な犠牲者なのか？
　そう見ればそう見える。だが疑念を抱けば、それは
際限なく広がってゆく。

　どうしてこんな所で、このように集まって焼死して
いるのか。
　逃げ散れば良いだろうに。

　それとも、逃げられなかったのだろうか。
　――何故？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140060a01">
《この人達……蝦夷……》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0140070a00">
「……わかるのか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140080a01">
《うん……何となく。
　多分、みんな、私の同族……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140090a01">
《……でも、少し違う……？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　少し違う？
　蝦夷と……？

　西洋の蝦夷種族――<RUBY text="ユーデア">白蝦夷</RUBY>、か？
　
　そう思って足元を見れば、植生が大和らしくない。
欧州のそれに近かった。

　白蝦夷。欧州。大量死。
　……何かが繋がりそうなのだが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0140100a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　思索が急停止を余儀なくされる。
　視界の端、炎がゆらめいた向こうに――<k>今一瞬だけ、
人影が見えた。

　つまり、<RUBY text="・・・・・">立っていた</RUBY>。
　……まだ生きている！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆動こうと

	OnSE("se人体_動作_一歩", 1000);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140110a01">
《待って、御堂！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0140120a00">
「何だ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　この切羽詰っている時に、何を――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140130a01">
《状況を忘れないで！
　ここは私達の世界じゃないのよ！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0140140a00">
「――――」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140150a01">
《この世界に深く関わったら、元の時空間に
戻れなくなる。
　それでもいいの？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　……そう、そうだった。

　修正力が働くまで、周囲との干渉を避けて待たなく
てはならない。
　火の中で静かに待つのは難しいが、劒冑の守りさえ
あれば可能だ。

　下手に動いてはならない。
　増してや、この世界の住人を救うなど<RUBY text="もつ">以</RUBY>ての<RUBY text="ほか">外</RUBY>だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲しみ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0140160a00">
「……く」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　足を止めて、人影のあった方向を見やる。
　炎がまた大きく揺れ、その姿を俺に晒した。

　小さな体。抜けるように白い肌。長い耳――
　読みは当たっていたらしい。少なくともその唯一の
生存者は白蝦夷の特徴を備えていた。

　<RUBY text="・・">彼女</RUBY>はこちらに気付いていないようだ。
　自失の態で、己を包み込もうとする炎の渦に視線を
注いでいる。

　――彼女。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0140170a00">
「あれは……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　女性だと気付くと同時、脳裏に閃くものがあった。
　知っている。俺は一度、会った事がある。

　横浜基地で。
　ウォルフ教授と茶々丸が俺に紹介した――鍛造雷弾。

　空洞のようだった少女。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆少女
	StC(1000, @0, @0, "cg/st/st鍛造雷弾_通常_私服.png");
	FadeStC(500, true);

	Wait(500);

	SoundPlay("@mbgm02", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　何故ここに？

　……いや、違う。
　いま自身の心に問うべきは、そんな緊急性のない謎
ではない。

　助けなくて良いのか。
　本当に見捨てて良いのか。

　結局のところ、俺は彼女について何も知らない。
　本当に鍛造雷弾の一部であったのか、それすら確信
はない。

　見捨てて良いと思える根拠は全くない。

　確かな事は、いま目に見えている事実のみだ。
　白蝦夷の少女が、炎に巻かれて死のうとしている。

　助けなくて良いのか。

　助ければ、俺は元の時空間へ戻れなくなる。
　あの世界で〝神〟を止められる者はいなくなり――
結果、どれほどのものが失われるだろうか。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SEめらめら", 2000, 0, null);

	CreateColorEX("絵色100", 15000, "BLACK");
	Fade("絵色100", 500, 1000, null, true);

	Delete("炎");
	Delete("煙動画");

	DeleteStC(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆この一行、赤文字で
　だが考えてみよ。

</PRE>
	SetTextEXCColor("RED");
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　一個の世界と、一個の命。
　前者が重いなどと、誰が決めたのだ？

　今そこで危機に瀕している命を救って何が悪い。
　いや、それこそ真に尊い行いではないのか……？

　どうする？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：少女を助ける／助けない

}

..//ジャンプ指定
//◆少女を助ける　"md05_014a.nss"
//◆助けない　"md05_014b.nss"



//★選択肢シーン
scene md05_014.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm02",0,1000,true);

	CreateColorSP("絵色100", 1500, "BLACK");

	OnBG(100,"bg003_荒れ野_03.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("少女を助ける","助けない");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆少女を助ける　"md05_014a.nss"
				$GameName = "md05_014a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆助けない　"md05_014b.nss"
				$GameName = "md05_014b.nss";
		}
	}
}