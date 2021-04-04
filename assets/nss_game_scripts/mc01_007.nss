//<continuation number="860">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_007.nss_MAIN
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
	#bg001_空b_01=true;
	#bg056_建長寺三門前_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc01_008.nss";

}

scene mc01_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc01_006.nss"

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg013_鎌倉俯瞰a_01.jpg");
	SoundPlay("@mbgm25",0,1000,true);
	Delete("上背景");

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070010a03">
『<RUBY text="いえー">ＹＥＡＨ</RUBY>!!』

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070020a00">
「…………」


{	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070030a03">
『あっ、いま受話器を置こうとなさいました
でしょ!?』


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070040a00">
「いいえ。
　頭を抱えてわけのわからぬことを喚きつつ
走り出そうとしただけです」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070050a03">
『そう？
　ならいいのですけど』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　あっけらかんとした様子の香奈枝嬢の声から、先日
の一件を引き摺るような何かは感じられない。
　それでも俺は、虚心には聞けなかった。

　連鎖的に記憶が蘇り、煩悶の種がまた芽吹きそうに
なる。
　どうにかそれを抑え込むと、代わりに石のような
疲労感が両肩に<RUBY text="の">圧</RUBY>し掛かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070060a00">
「……先日は見苦しい姿を御目にかけました。
　申し訳ありません」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070070a03">
『いえいえ、あの折はこちらこそ無神経で。
　あれから、大事はございませんの？』


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070080a00">
「御陰をもちまして」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　皮肉に聞こえないよう注意して答える。
　あの日から今日まで大鳥主従は署長宅に用意された
部屋を空け、俺と顔を合わせてはいなかった。それが
俺の心理にとってプラスであった事は否めない。

　こうして電話を介して話すだけでも辛いのだ。
　正直なところ、もうあと数日は対面を避けたかった。

　だが大尉の用件次第では、そういうわけにもいかぬ
だろう……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070090a00">
「それで、如何されましたか。
　わざわざ電話などお使いになるからには、
緊急の御用事と拝察しますが」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070100a03">
『ええ……』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　やや、言葉尻を濁す大鳥大尉。
　逡巡の様子は、音声の信号化を経ても消えず残って
伝わってきていた。

　電話はその利便性を認められながらも、まだ一般へ
の普及が進んでいるとは言えない機器だ。
　設置コストは高くつき、利用料金もまた同様である。

　経済的に困窮しているようには見えない大鳥大尉に
とってそれが重要な問題たるとは考えられなかったが、
電話を使って連絡を取ってきたのは今が初めてだった。
　彼女は大概、用があれば口頭で伝えてくる。

　今回そうしないからには、理由がある筈だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070110a03">
『景明さま……』


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070120a00">
「はい」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070130a03">
『いまから申し上げることを、よくお聞きに
なって』


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070140a00">
「は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　言われるまま受話器に頭を寄せ、耳を澄ませる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070150a03">
『問題のカギは〝自動感応型センターデフを
搭載した騎体として三代目にあたるニチモー
の<RUBY text="４ＷＤ">四翼駆動騎</RUBY>〟なのです』


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070160a00">
「……鍵？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　デフ？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070170a03">
『この答えは四文字。
　その一文字目が最後の解答枠で……〝ド〟
〝ツ〟〝グ〟〝ブ〟と組み合わせて一単語に
なるはずなのですけれど』


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070180a03">
『あ、お題は〝マイナー名騎・<RUBY text="ニチモー">日輪モービル</RUBY>
と<RUBY text="ユーゲン">有限製騎</RUBY>の<RUBY text="レーサークルス">競技用劒冑</RUBY>〟です』

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070190a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆青空
//◆ＳＥ：あほー。カラス。
//◆戻り
	OnBG(1100,"bg001_空b_01.jpg");
	FadeBG(1000,true);

	CreateSE("SE01","se擬音_コミカル_カラス鳴き声");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	WaitKey(1000);

	SoundPlay("@mbgm29",0,1000,true);
	FadeDelete("@OnBG*", 1000, true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070200a00">
「大尉」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070210a03">
『はい』


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070220a00">
「あたかもクロスワードパズルの答えを訊か
れているかのような心地がしております」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070230a03">
『何を仰いますの？』


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070240a00">
「申し訳ない。やはり疲れているようです。
　して、只今の御質問の意味は？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070250a03">
『もう、景明さまったら。わたくしをおから
かいになって』


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070260a00">
「そのようなつもりは、露ほども」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070270a03">
『もちろん、クロスワードパズルの答えをお
訊ねしていますのよ』


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070280a00">
「……………………」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070290a03">
『あっ、今度こそ受話器を置こうとなさいま
したでしょ!?』


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070300a00">
「はい」


{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070310a03">
『ひどいっ！
　日刊<RUBY text="ヤマスポ">ヤマトスポーツ</RUBY>を読んでいて偶々発見
してしまったこのパズルに、わたくしがどれ
ほどの時を費やしているとお思いですのっ!?』


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070320a00">
「せいぜい小一時間ほどかと」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070330a03">
『さよっ！』


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0070340a04">
『<RUBY text="ブー">不正解</RUBY>。
　お嬢さまは昨日一六時より不眠不休で挑み
続けておられます』


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0070350a04">
『食事中もです。
　入浴中もです。
　<RUBY text="かわや">トイレ</RUBY>にも持ち込んで考えておられます。
　正直、いい加減にしろと思っております』


{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070360a03">
『聞きまして、景明さまっ！』


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070370a00">
「進駐軍の大尉とは何をする人なのですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　深刻に疑問であった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 300, 0, null);
	SoundPlay("@mbgm16",2000,1000,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070380a03">
『それはさておき。
　景明さま、今すぐに建朝寺へいらした方が
よろしくてよ』

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070390a00">
「……建朝寺？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070400a03">
『ええ』


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070410a00">
「自分とは何の<RUBY text="ゆかり">所縁</RUBY>も有りませんが……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演背景", 4000, Center, Middle, "cg/bg/bg056_建長寺三門前_01.jpg");
	Fade("絵演背景", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　<RUBY text="こふくさん">巨福山</RUBY>建朝寺は、鎌倉五山と総称される名刹群の第
一位。鎌倉幕府五代執権北条時頼による創建以来の、
長い歴史を有する禅寺である。
　宗派は臨済宗。

　鎌倉を代表する寺院の一つであるから足を運んだ事
くらいは無論あるが、言ってみればそれだけの関わり
しか無い。
　今すぐ行くべき理由というのは想像がつかなかった。

　建朝寺で何があるにしろ、自分とは遠い事柄の筈だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵演背景", 400, false);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070420a03">
『もう、しっかりなさって。
　ここしばらくの騒がしい情勢をご存知あり
ませんの？』


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070430a00">
「新聞には目を通しているので、一通りの事
なら」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　もっとも、意味を充分に理解しているかについては
自信がなかった。働きの鈍った頭に詰め込まれた知識
はそれきりただ死蔵されているだけであったから。
　そろそろ発酵していてもおかしくはない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070440a03">
『大和国民の尊敬と信頼を一身に集めておら
れた？大将領殿下がお隠れになったでしょう』


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070450a00">
「は……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　イントネーションが一部不可思議だった大尉の言葉
に首肯する。
　その事実が報道されたのは、確か八幡宮奉刀参拝の
一日二日あとのことだった。

　……が、だからといって足利護氏の急死と親王との
間に関連が無いとは言えない。<k>
　
　今更ながらに、俺はそう思い至っていた。

　親王が俺に代わる刺客を用立てて決行したのかもし
れないのだ。奉刀参拝の最中に大将領が討たれたとし
ても、そのような事実を不用意に公表はできまいから、
間を置いて単に『急死』と伝えた報道と矛盾はしない。

　自分の眼で確認したわけではないが、如何なる理由
でか奉刀参拝以来八幡宮が厳重に封鎖されているとも
聞く。
　……疑惑を深める材料としては充分だ。

　とはいえ可能性の一つとして有り得るというだけだ
が。親王の傍に都合良く暗殺者となる人間が存在して
いたとは、どうにも想像が難しい。
　と……そこまで考えて、俺は自分の沈黙に気付いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070460a00">
「失礼。無論、存じております。
　幕府の動揺は相当なものだとか」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070470a03">
『幕府だけではなくてよ、景明さま。
　ＧＨＱもです』


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070480a03">
『そちらの事件はご存知ない？』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　事件？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070490a00">
「……横須賀軍港の進駐軍基地で過失による
事故があり、高級将校の一人が責めを負って
辞職した――という話なら耳にしていますが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　とはいえ、これは無関係だろう。
　それ以外となると……特に無かったように思うが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070500a03">
『ええ、それ。その件です』


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070510a00">
「……はて？
　大将領の薨去と横須賀の事故が繋がるので
しょうか」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070520a03">
『<RUBY text="・・・・">事故なら</RUBY>、繋がりはしませんけれどもね？』


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070530a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　事故ではない――と？

　だとすれば。
　
　……何だというのか。依然、香奈枝嬢の話は帰結が
見えない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070540a00">
「大尉殿。お話の筋が不明確です。
　つまるところ、自分が建朝寺へ向かうべき
理由とは何事でありましょう」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070550a03">
『あら、結論をお急ぎになる？
　愛し合う者同士、もう少しゆったりと会話
を楽しみません？』


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070560a00">
「愛が有るのなら、それも良かろうとは存じ
ます」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070570a03">
『またそんなつれない。
　景明さまはいつもそう、わたくしの気持ち
なんてちっともわかってくださらないのよっ』


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070580a00">
「それなりに察してはいるつもりなのですが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　その所以は知らず、貴方が俺に対して抱く悪意の程
は。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070590a03">
『もういいですっ。
　では要件だけお伝えしますから』


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070600a00">
「はい」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070610a03">
『建朝寺には舞殿宮殿下がいらっしゃいます。
　署長さんもたぶんご一緒』


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070620a00">
「宮殿下が……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　何故――<k>と反問しかけ、流石に気付いた。
　頭の鈍さもここまで来たかと、我が事ながら呆れ返
るほかはない。

　八幡宮が封鎖されたのなら、親王の御座所は別地へ
移されていて当然だ。
　そしてそれが建朝寺、ということなのだろう。

　鎌倉五山の第一位であれば、やんごとなき皇子が身
を置いても不相応なことはない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070630a00">
「わかりました。御教示有難うございます。
　近々、御機嫌伺いに参上することに致しま
しょう」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070640a03">
『……本当にどうなさったの？』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　くすくすという笑いが、大尉の声に続く。
　電話の相手を底無しの間抜けと踏み、楽しんでいる
様子に取れた。

　何もかも知った上で――
　俺がそんな<RUBY text="ざま">状態</RUBY>に落ちた理由をも熟知した上で。
　
　その笑声は、そう聴こえた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070650a03">
『今すぐ、と申しましたでしょ。
　明日ではもう間に合わなくてよ、景明さま』


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070660a00">
「……とは、如何なる」


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070670a03">
『これから、建朝寺が襲われます』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(1000);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0321]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070680a00">
「――――」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070690a00">
「何と？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　襲われる？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SoundPlay("@mbgm34",0,1000,true);
	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070700a03">
『狙いはもちろん宮殿下。
　逃げ場もなし。あの御方はお命を奪われる
ことになりますかしら』


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070710a03">
『誰もお護りしないのなら……
　ねえ？　景明さま』


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070720a00">
「何故です!?
　何処の何者が、何条もって宮殿下を――」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070730a03">
『さあ？』


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070740a00">
「大尉殿！」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070750a03">
『結論を急がせたのは景明さまでしょ？
　わたくしは懇切丁寧にお話しするつもりで
したのに』


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070760a00">
「ッッ……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070770a03">
『仕様のない方だこと。
　では一言だけ』


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070780a03">
『人を呪わば穴二つ』


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070790a00">
「――何です？」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070800a03">
『策謀は呪いと同じ。
　打ち方を誤れば、己に返ってくるものなの
です』


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070810a00">
「……つまり――」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070820a03">
『はい、ここまで。
　今は行動あるのみでしてよ、景明さま』


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070830a00">
「お待ちを！」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070840a03">
『お急ぎなさいましね？』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぷつっ。つーつー。
	OnSE("se日常_機械_電話03",1000);
	WaitKey(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　電話は一方的に切られた。
　無意味な信号しか流さなくなった受話器を忌々しく
見詰めた後、母機へ戻す。

　……どういう事なのだ。
　親王が襲われる？　策を誤ったために？

　大将領を黄泉へ送ったのはやはり親王の手で、それ
が六波羅に発覚し、報復が行われるという事なのか？
　あるいは、そんな単純な話ではなく――

　いや。
　裏事情への憶測など巡らせている場合ではない。

　大尉の話が全て事実なら、最後の忠告も正しかろう。
　今は行動あるのみだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070850a00">
「――村正ッ!!」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070860a00">
「聴こえているか!?
　今すぐに戻れ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"mc01_008.nss"