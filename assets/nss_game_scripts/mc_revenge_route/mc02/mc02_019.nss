//<continuation number="650">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_019.nss_MAIN
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

	$GameName = "mc02_020.nss";

}

scene mc02_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_018.nss"

//◆キャノンの部屋
//◆縦書き
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg029_キャノン中佐執務室_01.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	CreateSE("SE01","se日常_建物_扉開く01");
	StR(1800,@0,@ 0,"cg/st/st雪車町_通常_私服.png");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	Delete("上背景");
	DrawDelete("絵色黒", $残時間, 100, "blind_01_00_1", true);

	FadeStR(300,true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190010a12">
「お邪魔致します……」


{	OnSE("se日常_物_椅子鳴る02",400);
	StL(1800,@0,@ 0,"cg/st/stキャノン_通常_制服.png");
	FadeStL(300,false);
	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190020b03">
「よう。
　相変わらず顔色が悪いな」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190030a12">
「こいつは生まれつきなんで……。
　どうか気になさんないで下さいまし」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190040b03">
「済まなかったな。
　だいぶ無駄足を運ばせたようだ」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190050a12">
「へ、へ、へ……！
　中佐殿はお忙しい身。仕方ありません」


{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190060a12">
「今日も用件だけで失礼させて頂きます」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190070b03">
「そうか？
　軽く一杯、付き合って貰おうかと思ったん
だがな」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190080a12">
「お気持ちだけで……」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190090b03">
「残念だ」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190100a12">
「嫌いな酒に無理して付き合って頂いちゃあ、
へへ、申し訳なくて足も向けられません……」


{	FwC("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190110b03">
「……」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190120b03">
「俺、そんなことお前に言ったか？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190130a12">
「へ、へ……いえね。
　中佐のような御方はみんな、酒なんてくだ
らないものは飲まねえんで……」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190140a12">
「他にもっと、心地良く酔えるものをお持ち
なんですから……ねェ？　仕事とか……理想
とか、ねェ？
　そいつがあるうちは酒なんて要りませんよ」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//修正（本当に）【090930】
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190150a12">
「本当の酒の味ってのがわかるようになるの
は、人生を投げた後です……」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190160b03">
「含蓄深いな」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190170a12">
「滅相も……」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190180b03">
「お前は？」


{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190190a12">
「酒ですか」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190200b03">
「ああ」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190210a12">
「大好きですね……」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190220b03">
「ご愁傷様だな。
　俺は酒好きにならないよう気をつけよう」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190230a12">
「そうなさって下さい……」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190240b03">
「報告を聞こうか」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	OnSE("se日常_物_椅子鳴る01",1000);
	DeleteStA(150, true);

	SetFwC("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190250a12">
「……はい。
　結果から言えば……仕損じました」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190260b03">
「返り討ちに？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190270a12">
「いえ……
　熱量限界で墜ちたんで」


{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190280a12">
「騎体は大破しちまいましたが、<RUBY text="パーツ">部品</RUBY>をあら
かた回収したんで修復できます。
　<RUBY text="・・">中身</RUBY>の方は……ほとんど<RUBY text="スクラップ">廃物</RUBY>ですが」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190290a12">
「一部はまだ使えます。
　替えも有りますしね……」


//◆読み「ガッツァイダー」
{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190300b03">
「……ふん。
　お前が江ノ島から拾ってきた<RUBY text="データ">資料</RUBY>に刺激を
受けて開発部の趣味人が造っちまった、あの
〝<RUBY text="ＧＵＴＳ　ＥＩＤＥＲ">喰い散らかす氷海鴨</RUBY>〟」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190310b03">
「期待しちゃいなかったが、どうだ。
　少しは戦果を上げたのか？」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190320a12">
「……そうですねぇ……。
　まぁ、健闘したと思いますよ……」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190330a12">
「相手を考えればね。
　<RUBY text="ユナイテッド・ドラグーン">複合竜騎兵</RUBY>って<RUBY text="やつ">構想</RUBY>……案外と目があるの
かもしれません」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190340b03">
「ほぉ？」


{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190350a12">
「もう一度、野郎にぶつけてみて、その結果
次第……ですがね。
　うまいこといって、<RUBY text="おと">撃墜</RUBY>しちまうようなら
……」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190360b03">
「暇人の手慰みが一転、正規の研究に化ける
かもってわけだ。
　そいつは面白い。興味深い」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190370b03">
「作戦を続行してくれ、雪車町。
　詳細は任せる」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190380a12">
「……へっ。
　構わないんで……？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190390b03">
「構わないが？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(150);//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190400a12">
「……」


{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190410a12">
「ですが、中佐殿。
　ちぃっと困ったことに、標的が姿を晦まし
ちまいまして……」



{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190420b03">
「村正――湊斗景明がか」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190430a12">
「えぇ」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190440b03">
「そいつを俺に愚痴られてもな。
　人探しならお前の方が得意だろ？」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190450b03">
「湊斗が関東の何処に潜もうと、お前の網に
すぐ引っ掛かるはずじゃないか？」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190460a12">
「そうなんですがねェ……」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190470b03">
「関東にいないって？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190480a12">
「かもしれません……。
　でなきゃ……あたしなんぞの力が及ぶわけ
もないとこへ匿われてるか……」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190490a12">
「普陀楽とか……公方府とか……。
　……<RUBY text="ここ">横浜基地</RUBY>とか」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190500b03">
「ふ……ん？
　馬鹿馬鹿しい、と笑い捨てたいが」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190510b03">
「お前の言うことだからな。
　基地の中を探してみるか？」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190520a12">
「……」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190530b03">
「許可証くらい出してやる。
　大した手間じゃない」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190540a12">
「……いえ、いえ……。
　言ってみただけですよ……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190550a12">
「こんなとこにいるわきゃ、ありません……」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190560b03">
「そう言うなら、いいが」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190570a12">
「…………」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190580b03">
「他には？」


{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190590a12">
「格別……」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190600b03">
「では任務を続行しろ。
　湊斗景明を殺せ」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190610b03">
「彼の存在はＧＨＱの不利益だ」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190620a12">
「……えぇ」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190630b03">
「支援が必要になったら言え。相談に応じる。
　ただ、ここ暫くは多忙が続くもんでね……
すぐにとはいかないかもしれない」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190640b03">
「それは承知しておいてくれ、雪車町」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190650a12">
「……わかりました……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc02_020.nss"