//<continuation number="660">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_009.nss_MAIN
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

	$GameName = "mc04_010.nss";

}

scene mc04_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_008.nss"

//◆獅子吼襲撃。妙なとこから。
//◆組み伏せられる香奈枝

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景20", 100, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");
	CreateTextureSP("絵背景30", 150, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");
	StL(1100,@0,@0,"cg/st/st花枝_通常_私服.png");
	StR(1100,@0,@0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStL(0,false);
	FadeStR(0,false);
	Delete("上背景");

	OnSE("se人体_動作_跳躍01", 1000);
	WaitKey(550);
	OnSE("se人体_衝撃_転倒01", 1000);
	StC(1000, @350, @0,"cg/st/st獅子吼_通常_制服.png");
	FadeStC(200,false);
	Move("@StC*", 150, @0, @30, Dxl2, true);
	Wait(200);
	Move("@StC*", 100, @0, @-30, Axl1, true);
	SoundPlay("@mbgm34", 0, 1000, true);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	OnSE("se人体_動作_掴む01", 1000);
	Fade("フラッシュ白",100,1000,null,true);
	WaitKey(200);
	StR(1100,@0,@30,"cg/st/st獅子吼_通常_制服.png");
	FadeStR(0,false);
	DeleteStC(0, true);
	WaitKey(200);
	OnSE("se人体_衝撃_転倒03", 1000);
	Move("@StC*", 100, @0, @-30, Axl1, true);
	Fade("フラッシュ白",300,0,null,false);

	CreatePlainEX("絵板写", 9990);
	FadeFR2("絵板写",0,500,300,@0,@0,40,Dxl2, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw花枝_疲れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0090010b18">
「獅子吼!?
　……姉さん！」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090020a03">
「ぐ……！」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090030a06">
「三分と五〇秒前から背後に<RUBY text="つ">従</RUBY>いていたわ。
　気付かなかったのか間抜けめ……」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090040a06">
「貴様の邪眼は相変わらず、見るべきものに
限って見えんらしいな。
　大義も信義も、いっかな宿さん。そのくせ
余計なものはよく映す……」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090050a06">
「愚にもつかぬ下衆の眼だ！
　卑しくも大鳥の家系に連なる者が、何ゆえ
王者の眼を持たん！」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090060a03">
「……っ。
　王者の……眼？」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090070a03">
「それがあれば……イモリも顔負けの動きで
<RUBY text="・・・">壁から</RUBY>襲ってくる変態に捕まらなくて済んだ
のかしら？
　重宝だこと……ッ」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090080a06">
「抜かせ。
　貴様に一手で届く間合を計っただけの事だ」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090090a06">
「武人の作法を守るべき時でも相手でもなか
ろうしな……！」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090100a03">
「あら……なら。
　どうして、さっさと殺してしまわないのか、
しら……？」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090110a06">
「俺とて一刻も早く貴様を冥途につかせたい。
　が――」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090120a06">
「この口が、聞き捨てならぬ事をほざいた」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090130a03">
「……さぁ……？」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090140a06">
「言っておくが、貴様の仇討ごっこの事では
ない。
　俺の命を狙う？　ああ、好きなだけ狙うが
いい……」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090150a06">
「大鳥嫡流の血を<RUBY text="う">享</RUBY>けながら、己一身の復讐
しか眼に入らぬ、その狭量を恥じぬかぎりは
いつまでもな！
　そんな小人に俺が首をやると思うか!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090160a03">
「…………」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090170a06">
「花枝様のお言葉も、気にしてはおらん……。
　大和のために俺を利用した挙句切り捨てる
肚がおありと聞いて、むしろ安堵したほどだ」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090180a06">
「そのくらいの雄図あってこそ、この獅子吼
が仮初めにも頭を下げるに足る」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0090190b18">
「……」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090200a06">
「鼻先の物事しか見られぬ貴様より、よほど
優れた眼をお持ちだ！
　貴様を捨てて花枝様を残した先代は、その
点に限ってのみ評価できる」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090210a06">
「先々代に叛いた罪を帳消しにするには到底
足らんがな……」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090220a03">
「……、……っく。
　なら……何を……？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090230a06">
「その前の話だ。
　……貴様、鎌倉で雄飛様が殺害された件に
ついて何か知っているのか？」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090240a03">
「…………」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090250a06">
「俺は貴様の仕業だと思っていた。
　妹の地位を守るために正当な後継者を殺す
……貴様の浅知恵ならやりかねん」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090260a06">
「今でもその疑いは解いていない。が……
　ひとまずは貴様の話に耳を傾けてやろう」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0090270b18">
「……」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090280a06">
「言え、香奈枝。
　貴様は何を知っているのだ」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090290a03">
「訊ねる相手が……違いまして、よ？
　そんなこと、警察にでも」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090300a06">
「鎌倉市警か。奴らは事件の公表すらしてい
ない。捜査のための措置という話だが……。
　不可解だな。どうも臭い」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090310a06">
「いずれ締め上げてみるつもりでいた。
　……しかし、それもいま貴様を吐かせれば
省ける手間なのだろう？」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090320a06">
「誤魔化すな、女狐」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ぎり。締め上げ
	OnSE("se人体_動作_締める01", 1000);
	CreatePlainEX("絵板写", 9990);
	FadeFR2("絵板写",0,500,300,@0,@0,40,Dxl2, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090330a03">
「くふ……ッ」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090340a06">
「雄飛様を殺したのは誰だ」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090350a03">
「……それを、
　聞いて……どうなさるおつもり？」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090360a06">
「知れた事。
　何処に隠れていようが見つけ出し、俺の手
で首を刎ねる」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090370a03">
「ふ……ふふ……！」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090380a06">
「何を笑うか」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090390a03">
「それじゃあ……だめ。
　お教えできません、ね……」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090400a06">
「――香奈枝」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ばたばた。足音数人

	OnSE("se人体_足音_踏み込み01_L",1000);
	WaitKey(500);

	SetNwC("cg/fw/nw大鳥軍兵士Ｇ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ｅｔｃ／大鳥兵士Ｇ】
<voice name="ｅｔｃ／大鳥兵士Ｇ" class="その他男声" src="voice/mc04/0090410e177">
「閣下!?」

{	SetVolume("@OnSE*", 1000, 0, null);
	NwC("cg/fw/nw大鳥軍兵士Ｈ.png");}
//【ｅｔｃ／大鳥兵士Ｈ】
<voice name="ｅｔｃ／大鳥兵士Ｈ" class="その他男声" src="voice/mc04/0090420e178">
「こ……これは」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090430a06">
「……遅いわ。
　貴様ら、侵入者を放って、今まで何処で何
をしていた」


{	NwC("cg/fw/nw大鳥軍兵士Ｈ.png");}
//【ｅｔｃ／大鳥兵士Ｈ】
<voice name="ｅｔｃ／大鳥兵士Ｈ" class="その他男声" src="voice/mc04/0090440e178">
「は、その――
　いささか、連絡が錯綜しており」


{	NwC("cg/fw/nw大鳥軍兵士Ｇ.png");}
//【ｅｔｃ／大鳥兵士Ｇ】
<voice name="ｅｔｃ／大鳥兵士Ｇ" class="その他男声" src="voice/mc04/0090450e177">
「香奈枝様の他にも、撹乱を行っている者が
いるようで――」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090460a06">
「……まぁいい。
　どうせ、もう片が付く」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090470a06">
「二人残して、余の者は花枝様に随身せよ。
　この下らぬ騒動が収まるのを、奥で静かに
待たれるとの思し召しだ」


{	NwC("cg/fw/nw大鳥軍兵士Ｈ.png");}
//【ｅｔｃ／大鳥兵士Ｈ】
<voice name="ｅｔｃ／大鳥兵士Ｈ" class="その他男声" src="voice/mc04/0090480e178">
「はっ」


{	NwC("cg/fw/nw大鳥軍兵士Ｇ.png");}
//【ｅｔｃ／大鳥兵士Ｇ】
<voice name="ｅｔｃ／大鳥兵士Ｇ" class="その他男声" src="voice/mc04/0090490e177">
「御館様、お供仕ります」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw花枝_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0090500b18">
「……」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0090510b18">
「姉さん」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090520a03">
「またね♪」


{	FwC("cg/fw/fw花枝_微笑.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0090530b18">
「……どあほう」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆花枝と兵士去る
	OnSE("se人体_足音_複数歩く02_L", 1000);
	DeleteStL(300, false);
	WaitKey(1000);
	SetVolume("@OnSE*", 1000, 0, null);
	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090540a06">
「さて――」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090550a03">
「……」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090560a06">
「また、だと？
　俺がいつまで貴様を生かしておいてやると
思うのだ」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090570a06">
「それとも、洗いざらい白状して俺の慈悲を
乞う覚悟ができたという事か？」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090580a03">
「そんなふうに、聴こえたなら――」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090590a06">
「耳鼻科は間に合っている」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090600a03">
「いえ……
　脳内外科に」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090610a06">
「…………」


{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090620a06">
「おい。
　そこの貴様」


{	NwC("cg/fw/nw大鳥軍兵士Ｉ.png");}
//【ｅｔｃ／大鳥兵士Ｉ】
<voice name="ｅｔｃ／大鳥兵士Ｉ" class="その他男声" src="voice/mc04/0090630e179">
「はッ」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090640a06">
「鋏を持ってこい。
　あと丈夫な紐と、釘。それに金槌だ」


{	NwC("cg/fw/nw大鳥軍兵士Ｉ.png");}
//【ｅｔｃ／大鳥兵士Ｉ】
<voice name="ｅｔｃ／大鳥兵士Ｉ" class="その他男声" src="voice/mc04/0090650e179">
「……？
　畏まりました。直ちに」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090660a03">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆だだん。そこへ誰かが現れた。
//◆場面転換

	SetVolume("@mbgm*", 300, 0, null);

	CreateSE("SE01","se日常_建物_扉開く02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	ClearWaitAll(0, 0);

}

..//ジャンプ指定
//次ファイル　"mc04_010.nss"