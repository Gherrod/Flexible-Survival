Version 1 of Orcs And Ogres by Gherod begins here.

"Adds an event chain revolving around the conflict between Orcs and Ogres, while introducing some characters as well."

[Version 1 - Created File]

Table of GameEventIDs (continued)
Object	Name
Orcs And Ogres Junkyard Skirmish	"Orcs And Ogres Junkyard Skirmish"

Orcs And Ogres Junkyard Skirmish is a situation.
ResolveFunction of Orcs And Ogres Junkyard Skirmish is "[ResolveEvent Orcs And Ogres Junkyard Skirmish]".
Sarea of Orcs And Ogres Junkyard Skirmish is "Junkyard".

[RESOLUTION STAGES]
[1 - Sided with Ogres and won - OGRES WIN; ]
[5 . Sided with Ogres but lost - ORCS WIN; ]
[  - Player met Yregh, the orc they lose to, and is carried away from the group ]
[10 - Sided with Orcs and won - ORCS WIN ]
[15 - Sided with Orcs and lost - ORCS WIN ]
[  - Player met Yregh, who intercepts the victorious ogre and rescues the player ]
[50 - Player watched - ORCS WIN ]
[98 - Player fled - OUTCOME UNKNOWN | ORCS WIN BY DEFAULT]
[99 - Player left - OUTCOME UNKNOWN | ORCS WIN BY DEFAULT]

[The conversation between the player and Yregh goes differently depending on what side the player decided to assist. ]
[The only way to have the ogres win is by assisting them and successfully defeating the orc warrior, who was Yregh. This changes his fate. ]

to say ResolveEvent Orcs And Ogres Junkyard Skirmish:
	say "     While taking a stroll around the Junkyard, exploring the place to look for something of interest, you notice a commotion happening around the corner of an old abandoned warehouse. It is all deep and brutish voices, likely coming from really big guys, all males, and they sound quite agitated. When you take the turn around the building, you are finally able to see what is happening. Before your eyes are two groups of multiple ogres and orcs facing each others, arguing over something while keeping a defensive stance. It is not likely at all to find so many of them concentrated in once place, but it really seems like something is happening between the two groups.";
	say "     It takes you a while to really understand what they are saying as you begin to pick their sentences. 'Back off, I said! These are ours, go look for pets somewhere else, unless you wanna join our clan as breeders...' says one of the orcs who, you think, may be leading the group. 'You'd better watch your mouth, maggot! We could turn each and every one of you into submissive sluts, if we cared enough,' replied the ogre in a rage, and the orcs laugh. 'Oh yeah? I'd like to see you try! You sure you wanna fight the lot of us?' So far, you think they are arguing over the orcs having picked and captured some passersby to carry over to their lair as new slaves right under the ogres['] noses. It seems like the ogres do not appreciate stuff that could possibly be theirs being taken away, and think the orcs did this on purpose to provoke them.";
	WaitLineBreak;
	say "     'We're gonna kick your asses if we have to, scum! Those people are ours! This is our territory! You're not welcome here!' says the upset ogre, to what the orc replies 'Says who? We got here first, and it's finders keepers! Now stop talking and let's solve this the good, definitive way.' You can see that the orcs seem more powerful than the ogres, but given the number of ogres in here, you could say that it would be a close match, if they were to fight. Perhaps your intervention could influence the outcome, if you had a way to sabotage one of the groups.";
	say "     You could [bold type]flank the orcs to aid the ogres[roman type], or, instead, [bold type]flank the ogres to help the orcs[roman type]. It is a simple choice with simple outcomes, if you do not end up getting beaten up by a bunch of them. Otherwise, you could [bold type]just let them fight[roman type] and see who comes out on top. Alternatively, if this does not interest you, you could simply leave.";
	Linebreak;
	say "     [link](1)[as]1[end link] - Help the ogres.";
	say "     [link](2)[as]2[end link] - Side with the orcs.";
	say "     [link](3)[as]3[end link] - Just stay and watch.";
	say "     [link](4)[as]4[end link] - Leave immediately.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to aid the ogres, [link]2[end link] to aid the orcs, [link]3[end link] to just watch or [link]4[end link] to leave, instead.";
	if calcnumber is 1:
		Linebreak;
		say "     After giving it some thought, you have decided to assist the ogres, with your own reasons to do so. Now, if you do not want to make things worse for them, you will actually have to succeed in taking at least one orc down with you, which will be enough to cause a distraction and disorganize the group... Hopefully. But first, you have to see where the situation goes. It does not take long for it to go sideways. 'The definitive way, you say? Fine. If it's a fight you want, that's what you're getting!' shouts the ogre who, as soon as he finishes saying that, goes for a punch. The two groups begin fighting, ogres and orcs wrestling together and beating the crap out of each other in rage and fury, ones pinning down others while a few punch and kick their ways in. It is all unarmed combat, as far as you can see. Each party is trying to immobilize or incapacitate the other, and until now, things seem pretty balanced. The raw number of ogres is enough to keep up with the higher fighting skills of the orcs, but for how long?";
		say "     Swiftly, you make haste towards the group of orcs from an angle they cannot see you approach from. Then, it is only a matter to engage one of the orcs and fight the best way you can!";
		WaitLineBreak;
		challenge "Orc Warrior";
		if fightoutcome < 20: [won]
			say "     Your hard work is well-rewarded as you defeat the orc warrior, turning the attention of some others to you. This quickly shifts the balance of the combat and allows the ogres to follow up on your assault, bringing some more down as they get distracted. Eventually, as the orcs['] group becomes disorganized, the ogres wrestle them down with little more effort, subduing them entirely as they keep on pinning them down and tying them up. Having captured their enemy, the ogre leader greets you, acknowledging your assistance with utmost eagerness. 'Hah! There's someone who knows best! Thanks for the help, that's just what we needed to put these scumbags in their places!' He then beckons you to approach the ogres...";
			say "     'These bastards have been giving us all kinds of trouble, there was no way we could just let them go and take these people with them!' he says, as he points to the people the orcs were dragging along to their lair. They are just a few local critters, all fit males of various types, who look a bit... unaware of what is going on, and also quite helpless. 'We're gonna take it from here and teach these orcs a lesson they won't forget... while having some fun doing it, hehe...' You then see the ogre make a mischievious grin as he looks down on the captured orcs, mindlessly caressing his own prominent crotch while his mates make sure they have no chance of escaping.";
			WaitLineBreak;
			say "     'Alright, time to get to work... I suppose you could watch. Oh, and have some of this as thanks.' The ogre hands you a can of food that seems in good conditions and, most importantly, full. 'We've had a good haul, so I'm willing to share. See you around! Make sure to kick more of those orcs for us, yeah? Hehe...' He then turns around and joins his group, who are beginning to feel up the captured orcs['] bodies and undressing themselves.";
			ItemGain food by 1;
			say "     'Think again before crossing the ogres next time, or we'll think you're just looking to get fucked!' shouts the ogre from before as he and his mates surround the defeated orcs, all eager to start teaching them a lesson. 'We're gonna show you what happens to those who dare to cross the ogres! Which is... they become our pets! Hehe...' You see that the entire ogre group is desperate to begin an orgy, their leader included, and it really does not take very long to happen. The ogres are naked and ready for action as soon as their leader gives the signal, ganging up on the defeated orcs and fucking like there was no tomorrow. For the next following moments, the orcs are bred and forced to take in the ogres['] loads over the course of several minutes.";
			WaitLineBreak;
			say "     The fucking goes intensely, but you cannot see much from here with the whole mass of ogres between you and the orcs they are screwing. You do get a decent view at their pudgy backs and butts bouncing with each thrust they give, an occasional shot at one of the orcs['] blinking butthole leaking a stream of creamy jizz, and ogre cocks swinging around as they walk to change positions. They are likely to stay here for a while before they retreat, and there is no telling when, so you figure it is time to leave, knowing the result of this skirmish.";
			now Resolution of Orcs And Ogres Junkyard Skirmish is 1;
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			if HP of Player > 0: [player submitted]
				say "     You start to think this was probably not the best idea. That powerful physique, those bulging muscles, such masculinity, not to mention his actual physical strength, are enough to cause you to eagerly submit to him, falling to your knees as you let him pin you down under his muscular body";
			else:
				say "     You start to think this was probably not the best idea, as the orc ultimately gains the upper hand over you. Seconds later, you find yourself pinned down under his muscular body, with no chance of escaping his grapple, or escaping in general";
			say ". Though, oddly... You exchange looks, both panting hard and tired, and realize the rest of the group is not paying attention to either of you. While you were fighting, it appears that you have dragged each other a little out of position, away from the main combat, so the group did not miss the lack of a single member during that chaos. The orc then holds you and begins to carry you over a more secluded area, in a place nobody can see you.";
			say "     He seems to have dropped his guard, not looking at you in such a hostile way. Actually, now that you think of it, it seemed that he was just defending himself from your attack. Your gaze is still locked on his as he holds you in his arms. 'Well, shit. You're cute as fuck...' he says as he walks away from that particular area, also glancing around to make sure nobody realized he was gone. 'My brothers wouldn't be happy if they found out I left, but I'm fucking tired of having to share my spoils... Though, why the fuck did you attack us? You were lucky I was the one you fought, or you'd be joining their slaves right away!' You simply tell him the truth, as there really is no reason not to, since the cat is out of the bag.";
			WaitLineBreak;
			say "     'You were siding with the ogres? That's fucked up... Why would you do such a thing? Those bastards want to take over the lair and enslave us all! We just like fucking with them, but I guess it hurts their pride...' he replies, frowning his eyebrows.";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Ask him if it is not the other way around, since the orcs enslave just about anyone.";
			say "     ([link]N[as]n[end link]) - Apologize, you did not know.";
			if player consents:
				LineBreak;
				say "     Curiously, it really seemed the other way around, the orcs wanting to enslave the ogres. You make that remark, and the orc makes this angry expression at you. 'You really don't know shit about the ogres. They act like they're the victims... But they're the ones plotting against us. They wanna make us all their pets just for fun... While we wanna make some our pets for reproduction! And... fun, too, I guess. Well, at least we have a reason! Plus, we just wanna have fun fucking around and being big. Ogres just fuck and accomplish nothing, which is why they're falling back in numbers. They're not the smartest.'";
			else:
				LineBreak;
				say "     It really seemed like the ogres were the victims, in this case, which seems to be wrong. You say that you are sorry you misjudged them, and the orc smiles. 'Yeah, most people make that assumption because we're always taking in new slaves to breed. In fact, we do that for reproduction purposes... and some fun, I guess. The ogres, on the other hand, just wanna get pets for their personal enjoyment, serving no meaningful purpose other than their own selfish pleasure. They're far worse than us... And not the smartest, either. That costs them numbers, which we don't underestimate. Plus, we just wanna have fun!'";
			say "     You nod as he talks, absorbing the information. 'Well... I should probably return before they miss me. Look, if we... meet again, my name's Yregh.' The strong orc warrior then puts you back on the ground, lets go of you and stands back, straight up, wiping a drop of sweat from his forehead. You cannot help but notice the bulge he has got below the waist, a half-hard shape of a meaty cock peeking through his loincloth. You can also tell he is hesitant to leave as he, once more, eyes you from head to feet with an obvious lustful expression on his face. His cock just keeps on throbbing and growing to an even harder state. 'Shit, I really shouldn't...'";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Go and grab his cock.";
			say "     ([link]N[as]n[end link]) - Tell him to leave, you do not want him to get in trouble.";
			if player consents:
				LineBreak;
				say "     Slowly, you approach him, and the orc does not move away. He simply watches you come close to him and slide a hand under his loincloth, pushing it to the side and revealing the meaty prick in its full glory, throbbing and so needy. Then, you give it a few strokes, which immediately makes him moan. 'Fuck... I really, really shouldn't...' he says, glancing over his shoulder, very worried that he might be taking too long and his group might miss him, you presume. He definitely is not the most aggressive of the orcs. In fact, he is quite different from the stereotypical orc warrior, or he would have pinned you down and fucked the hell of out of you by now. Instead, he chatted with you, and you ended up jerking him off, feeling his big dick pulsate in your hand, oozing precum...";
				say "     'Shit...' he exclaims, as you feel his hand over yours, stopping your movements. You look at him as if asking what is wrong, and he makes this apologetic expression. 'I don't wanna risk it... They wouldn't be happy about it, and I'm definitely not looking forward to be made a breeder because of this... I seriously gotta go, it's been too long.' He then stands back, his solid erection dandling from one side to the other and refusing to soften down. 'Fuck, they'll see me like this... What do I do...' You remind him that they were supposed to be fighting, so he could come with the excuse that he got hard from rubbing too much against an ogre's ass, or something. 'Oh, yeah! That might work! Thanks, mate! I'm gonna go now, uh... see you around!' he replies, making haste towards his group.";
			else:
				LineBreak;
				say "     You tell him that, indeed, he probably should return to the orcs before they notice he is gone, and you decide to not try to tempt him in any way. He seems thankful for that and nods, although as he stands back, you can still see his solid erection dandling from one side to the other and refusing to soften down. 'Fuck, they'll see me like this... What do I do...' You remind him that they were supposed to be fighting, so he could come with the excuse that he got hard from rubbing too much against an ogre's ass, or something. 'Oh, yeah! That might work! Thanks, mate! I'm gonna go now, uh... see you around!' he replies, making haste towards his group.";
			WaitLineBreak;
			say "     Now, this was... definitely unexpected. You have gained some information on the situation between the orcs and the ogres and met this orc warrior named [bold type]Yregh[roman type], who was particularly friendly. Almost too friendly for an orc, even. But still, you better make sure how the conflict got resolved...";
			WaitLineBreak;
			say "     As you make it back to the area, you begin to hear some voices. 'Good fighting, boys! Looks like we're bringing some more slaves over!' says the orc from before as he looks down on the captured ogres. 'Bet you've been wanting this all along, given how badly you moved. Can't beat a real man orc like that! Now you're gonna become what you should be, a breeder slut for us to fill up all day!' You see that the entire orc group is desperate to begin an orgy, their leader included, and it really does not take very long to happen. The orcs are naked and ready for action as soon as their leader gives the signal, ganging up on the defeated ogres and fucking like there was no tomorrow. For the next following moments, the ogres are bred and forced to swallow loads of orc cum over the course of several minutes.";
			say "     The fucking goes intensely, but you cannot see much from here with the whole mass of orcs between you and the ogres they are screwing. You do get a decent view at their backs and butts flexing with each thrust they give, an occasional shot at one of the ogres['] blinking butthole leaking a stream of creamy jizz, and bouncing orc cocks as they walk around to change positions. They are likely to stay here for a while before they retreat, and there is no telling when, so you figure it is time to leave, knowing the result of this skirmish.";
			WaitLineBreak;
			say "     The orcs have won, despite being outnumbered. This shows how skilled they actually are in a direct and physical confrontation. A closer look also reveals that [bold type]Yregh[roman type] made it back, safely. He seems to have joined the orgy, as well, burying his cock in some ogre's ass all the way. You wonder if he could be thinking of you, judging by how he left your previous encounter...";
			now Resolution of Orcs And Ogres Junkyard Skirmish is 5;
		else if fightoutcome is 30: [fled]
			say "     Regretting your decision, you have managed to escape. However, it seems you have not accomplished anything with this, as the orcs continue to fight the ogres in the same manner as before. Perhaps you should just leave before one of them decides to chase you.";
			now Resolution of Orcs And Ogres Junkyard Skirmish is 98; [player fled]
	else if calcnumber is 2:
		Linebreak;
		say "     After giving it some thought, you have decided to assist the orcs, with your own reasons to do so. Now, if you do not want to make things worse for them, you will actually have to succeed in taking at least one ogre down with you, which will be enough to cause a distraction and disorganize the group... Hopefully. But first, you have to see where the situation goes. It does not take long for it to go sideways. 'The definitive way, you say? Fine. If it's a fight you want, that's what you're getting!' shouts the ogre who, as soon as he finishes saying that, goes for a punch. The two groups begin fighting, ogres and orcs wrestling together and beating the crap out of each other in rage and fury, ones pinning down others while a few punch and kick their ways in. It is all unarmed combat, as far as you can see. Each party is trying to immobilize or incapacitate the other, and until now, things seem pretty balanced. The raw number of ogres is enough to keep up with the higher fighting skills of the orcs, but for how long?";
		say "     Swiftly, you make haste towards the group of ogres from an angle they cannot see you approach from. Then, it is only a matter to engage one of the ogres and fight the best way you can!";
		WaitLineBreak;
		challenge "Ogre Male";
		if fightoutcome < 20: [won]
			say "     Your hard work is well-rewarded as you defeat the ogre, turning the attention of some others to you. This quickly shifts the balance of the combat and allows the orcs to follow up on your assault, bringing some more down as they get distracted. Eventually, as the ogres['] group falls into chaos, the orcs wrestle them down with little more effort, subduing them entirely as they keep on pinning them down and tying them up. Having captured their enemy, the orc leader greets you, acknowledging your assistance with utmost eagerness. 'Look at this... Someone's here, handing us a free victory over these losers... A cute one, too.' He then beckons you to approach the orcs...";
			say "     'These ogres are always looking forward to ruin our fun with their big fucking noses, interrupting our raids in the worst timing ever. Now that we had such a great haul, they wanted to take them away from us!' he says, as he points to the people they were dragging along to their lair. They are just a few local critters, all fit males of various types, who look a bit... unaware of what is going on, and also quite helpless. 'On the other hand, I guess you gave us a few extra slaves to populate our breeder section... Unfortunately, we cannot take you, too. For now, at least... We've got our hands full.' You then see the orc make a mischievious grin as he looks down on you and the captured ogres, mindlessly caressing his own prominent crotch while his mates make sure they have no chance of escaping.";
			WaitLineBreak;
			say "     'But never say never, right? I'm sure we'll meet again... And, maybe, you'd make a good warrior, too... Who knows? We can always use more numbers, either way.' The orc then hands you two bottles of something, filled with different things, their contents making you raise an eyebrow. 'I'm giving you options and also a thank you. Don't tell anyone that you got the second from me. You just happened to grab one while we were fucking the ogres['] brains out, yeah?' He chuckles, then turns around and joins his group, who are beginning to feel up the captured ogres['] bodies and undressing themselves.";
			ItemGain orc cum by 1;
			ItemGain orc brew by 1;
			say "     'Good fighting, boys! Looks like we're bringing some more slaves over!' says the orc from before as he looks down on the captured ogres. 'Bet you've been wanting this all along, given how badly you moved. Can't beat a real man orc like that! Now you're gonna become what you should be, a breeder slut for us to fill up all day!' You see that the entire orc group is desperate to begin an orgy, their leader included, and it really does not take very long to happen. The orcs are naked and ready for action as soon as their leader gives the signal, ganging up on the defeated ogres and fucking like there was no tomorrow. For the next following moments, the ogres are bred and forced to swallow loads of orc cum over the course of several minutes.";
			WaitLineBreak;
			say "     The fucking goes intensely, but you cannot see much from here with the whole mass of orcs between you and the ogres they are screwing. You do get a decent view at their backs and butts flexing with each thrust they give, an occasional shot at one of the ogres['] blinking butthole leaking a stream of creamy jizz, and bouncing orc cocks as they walk around to change positions. They are likely to stay here for a while before they retreat, and there is no telling when, so you figure it is time to leave, knowing the result of this skirmish.";
			now Resolution of Orcs And Ogres Junkyard Skirmish is 10;
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			if HP of Player > 0: [player submitted]
				say "     You start to think this was probably not the best idea. This pudgy orc, beefy and huge, and not to mention his actual physical strength, are enough to cause you to eagerly submit to him, falling to your knees as you let him pin you down under his large body";
			else:
				say "     You start to think this was probably not the best idea, as the ogre ultimately gains the upper hand over you. Seconds later, you find yourself pinned down under his large body, with no chance of escaping his grapple, or escaping in general";
			say ". He smiles at you with a devious look, and you immediately feel something poking at your parts, something hard and eagerly throbbing. 'And who are you? Appearing out of nowhere like that? I can see you're not part of the orcs['] group... But I really wanna fuck you, anyway!' The grin on his face is evidently suggesting what is going to happen next, but something else takes place as an orc comes your way. You turn your head to the side to face him, a strong orc warrior coming to your aid and, almost heroically, managed to shove the ogre away from you.";
			say "     The orc then proceeds to swiftly subdue the ogre, tying him down as you begin to recover from your defeated state. It seems you have moved far from the group during your fight, and this orc managed to catch what was happening. Once he is done, he turns to you. 'Hey bud, that was close... You're alright?' he asks, approaching you and extending his hand to help you up. This strikes you as an odd behavior for an orc, but you see no reason to not accept his help. He pulls you up, with a little too much force, and you end up bumping against his muscular chest as he holds you to allow you stand on your feet. 'Damn, you're one cute fucker... What are you doing here, fighting the ogres?'";
			WaitLineBreak;
			say "     Before you reply, however, the orc beckons you to move a little farther away, to get out of view of the fighting group. You then explain to him that you intended to help the orcs, hence why you decided to flank the ogres to cause a distraction. He laughs in amusement, which leaves you a little confused, at first. 'Oh, my group can handle the ogres well enough, but the thought is appreciated. I guess you don't like them too much either, huh?' You do have your own reasons to have chosen to aid the orcs, but you both decide to agree with each other and leave it at that. 'I can't really stand them, to be honest. Their hate for us is unbearable. We could just fuck around happily if they weren't so proud of themselves... We're orcs, we just like being big and have fun, they don't like competition or something? Sucks to be them...";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Ask him why the ogres hate orcs.";
			say "     ([link]N[as]n[end link]) - Agree with him, it is unfortunate that ogres act this way.";
			if player consents:
				LineBreak;
				say "     You happen to inquire him on the situation between the orcs and the ogres as of why they cannot stand each other. He is happy to explain, although you can see the annoyance in his expression. 'Because those fuckers think WE think we are better than them. Which is true, we are, but that's on them. If they actually decided to mind their own business and don't go around trying to be better than us at everything they're not, we'd be great friends and fuck around together with absolutely no problem. Like I said, we just wanna be big and have fun. Ogres want to... I don't fucking know, eliminate competition because of their frail little egos? Pfft... They can go fuck themselves.'";
			else:
				LineBreak;
				say "     You totally agree with him, showing sympathy for the orcs. 'Heh, you like the big green guys, huh? Not so much of a fan of the pudgy ugly ones? I think we'd be great friends...' he says, smiling at you in the one suggestive way you can definitely understand. The half-hard erection he is getting peeking from the side of his loincloth would completely erase your doubts, if you had any.";
			WaitLineBreak;
			say "     'Anyway, nice chatting with you, but I think we should return. Yeah, I could introduce you to the group, our lead would like to know you helped. Come on, we'll show him the ogre whose ass you kicked. My name's Yregh, by the way.' He then gestures at you to come along, back towards the group. Apparently, he is going to say that you defeated the ogre, which might net you some favor with the orcs, hopefully. By the time you make it back, the ogres seem to have lost the fight, with the orcs surrounding and finishing them up by tying them with some ropes to keep them still. The leader sees both you and your new orc friend approaching as he drags the ogre you attacked back to him. 'Hah, there's the missing one. I was sure I counted one more besides what we've got here. Come closer, you both!' He then beckons you to approach the orcs...";
			say "     'These ogres are always looking forward to ruin our fun with their big fucking noses, interrupting our raids in the worst timing ever. Now that we had such a great haul, they wanted to take them away from us!' he says, as he points to the people they were dragging along to their lair. They are just a few local critters, all fit males of various types, who look a bit... unaware of what is going on, and also quite helpless. 'You both took this one down?' he asks, and Yregh is quick to say '[SubjectProCap] did. I just tied him up nice right after.' You then see the orc make a mischievious grin as he looks down on you and the captured ogres, mindlessly caressing his own prominent crotch while his mates make sure they have no chance of escaping. 'Nice! We can always use more numbers. Maybe you'd make a good warrior!'";
			WaitLineBreak;
			say "     The orc then hands you two bottles of something, filled with something that smells quite funny, yet intriguingly arousing. 'Here you go. I think you've won these. They'll surely help you feel more like us, orcs!' He chuckles as he flexes his arms in a clear display of strength, looking directly at you, then turns around and joins his group, who are beginning to feel up the captured ogres['] bodies and undressing themselves. Yregh also winks at you. 'Hope we see you around again. We got stuff to do, now. You can watch, actually...' and then proceeds to join them right after.";
			ItemGain orc brew by 2;
			say "     'Good fighting, boys! Looks like we're bringing some more slaves over!' says the orc from before as he looks down on the captured ogres. 'Bet you've been wanting this all along, given how badly you moved. Can't beat a real man orc like that! Now you're gonna become what you should be, a breeder slut for us to fill up all day!' You see that the entire orc group is desperate to begin an orgy, their leader included, and it really does not take very long to happen. The orcs are naked and ready for action as soon as their leader gives the signal, ganging up on the defeated ogres and fucking like there was no tomorrow. For the next following moments, the ogres are bred and forced to swallow loads of orc cum over the course of several minutes.";
			say "     The fucking goes intensely, but you cannot see much from here with the whole mass of orcs between you and the ogres they are screwing. You do get a decent view at their backs and butts flexing with each thrust they give, an occasional shot at one of the ogres['] blinking butthole leaking a stream of creamy jizz, and bouncing orc cocks as they walk around to change positions. They are likely to stay here for a while before they retreat, and there is no telling when, so you figure it is time to leave, knowing the result of this skirmish.";
			WaitLineBreak;
			say "     The orcs have won, despite being outnumbered. This shows how skilled they actually are in a direct and physical confrontation. A closer look also reveals [bold type]Yregh[roman type] burying his cock in some ogre's ass all the way. You wonder if he could be thinking of you, judging by how he winked at you, just now...";
			now Resolution of Orcs And Ogres Junkyard Skirmish is 15;
		else if fightoutcome is 30: [fled]
			say "     Regretting your decision, you have managed to escape. However, it seems you have not accomplished anything with this, as the ogres continue to fight the orcs in the same manner as before. Perhaps you should just leave before one of them decides to chase you.";
			now Resolution of Orcs And Ogres Junkyard Skirmish is 98; [player fled]
	else if calcnumber is 3:
		Linebreak;
		say "     After giving it some thought, you have decided to only watch and see where this goes. It does not take long to go sideways, either. 'The definitive way, you say? Fine. If it's a fight you want, that's what you're getting!' shouts the ogre who, as soon as he finishes saying that, goes for a punch. The two groups begin fighting, ogres and orcs wrestling together and beating the crap out of each other in rage and fury, ones pinning down others while a few punch and kick their ways in. It is all unarmed combat, as far as you can see. Each party is trying to immobilize or incapacitate the other, and until now, things seem pretty balanced. The raw number of ogres is enough to keep up with the higher fighting skills of the orcs, but for how long?";
		say "     You see some tactics being applied as the smaller group of orcs begin to shift their focus towards specific targets and going for them in an attempt to reduce the ogres['] numbers. With a bit of effort, they seem to be successful in their task, despite the ogres['] efforts at defending this surprising change of pace. You often see more than one ganging up on a single ogre as the rest form a defensive circle around him, drawing more in while keeping a numerical advantage on each fight. It is curious how they manage to keep this up and, eventually, gain the upper hand on the skirmish, as the ogres['] side begins to weaken. However, you cannot help but notice that the thrill and excitement from the battle must have caused all the green and olive bodies of both orcs and ogres to get sweaty and pumped, and you are able to count some erections here and there.";
		WaitLineBreak;
		say "     Naturally, orcs and ogres rubbing their strong bodies together to subdue the other, with all that manly musk, and the whole adrenaline is causing them to pop some boners. This is something the orcs do not forget to use at their advantage, as they push their own crotches over the ogres['] faces and grab their dicks to distract and debilitate them, which seems to work in their favor. Soon, the ogres still fighting begin to get scarce, with only a few left... who then begin retreating as they realize they have been outmatched. The ogre who was doing the talking has been subdued by the orcs, and without a leader to command them, the group begins to scatter as the orcs taunt them. In the end, the muscular green warriors are the winners, as they finish tying up their former adversaries.";
		say "     'Good fighting, boys! Looks like we're bringing some more slaves over!' says the orc from before as he looks down on the captured ogres. 'Bet you've been wanting this all along, given how badly you moved. Can't beat a real man orc like that! Now you're gonna become what you should be, a breeder slut for us to fill up all day!' You see that the entire orc group is desperate to begin an orgy, their leader included, and it really does not take very long to happen. The orcs are naked and ready for action as soon as their leader gives the signal, ganging up on the defeated ogres and fucking like there was no tomorrow. For the next following moments, the ogres are bred and forced to swallow loads of orc cum over the course of several minutes.";
		WaitLineBreak;
		say "     The fucking goes intensely, but you cannot see much from here with the whole mass of orcs between you and the ogres they are screwing. You do get a decent view at their backs and butts flexing with each thrust they give, an occasional shot at one of the ogres['] blinking butthole leaking a stream of creamy jizz, and bouncing orc cocks as they walk around to change positions. They are likely to stay here for a while before they retreat, and there is no telling when, so you figure it is time to leave, knowing the result of this skirmish.";
		WaitLineBreak;
		say "     The orcs have won, despite being outnumbered. This shows how skilled they actually are in a direct and physical confrontation.";
		now Resolution of Orcs And Ogres Junkyard Skirmish is 50; [player watched]
	else if calcnumber is 4:
		Linebreak;
		say "     This does not really interest you. It is just a group of orcs and ogres arguing with each other, probably ending up in a fight afterwards, and something that is likely to keep happening every other day. You have more important things to do than standing here or meddling with their affairs, so you proceed to remove yourself from the area and leave this situation behind.";
		now Resolution of Orcs And Ogres Junkyard Skirmish is 99; [player left]
	now Orcs And Ogres Junkyard Skirmish is resolved;

Orcs And Ogres ends here.
