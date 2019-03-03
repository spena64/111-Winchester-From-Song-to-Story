# theme : dark 
# author : Stephanie Pena and Leehe Mahalal  

->begin 

=== begin ===
<b><h3>From Song to Story</h3></b> -> infopage 
=== infopage === 
"111 Winchester" is a song by American progressive rock band I the Mighty. The lyrics of the song describe the events of the singer who hosts a party in an abandoned house which, unbeknownst to them, is haunted. Within the events of the song, the singer begins to “not feel like himself” and hear voices, which eventually end up causing him to pour gasoline over everything and presumably light the house on fire. This song is a brilliant example of non-traditional storytelling, and as such it is the perfect story to showcase interactive storytelling in Ink. 

This game was created for Knight Hacks 2019, the 36-hour hackathon hosted by the University of Central Florida between March 1, 2019 and March 3, 2019.
+ [More about the song.] -> song
+ [More about the authors.] ->authors 
+ [Start game.] # CLEAR 
    -> start
    
=== song === 
The song name "111 Winchester" contains references to pop culture as well as references personal to the band and local folklore. In an interview, the singer claims the number (111) was chosen as a reference to a street near the recording studio where they recorded to the song, as well as because it contains the number eleven, a reference to Netflix horror series Stranger Things.  The street name "Winchester" is a reference to the Winchester Mystery House, which was once the home to Sarah Winchester, widow to the infamous firearm businessman William Wirt Winchester. The band chose this house as a reference – or possibly as a setting to their song – because of the stories of how Mrs. Winchester felt she was being haunted, so she was constantly trying to appease the ghosts by adding features to the mansion haphazardly, often creating confusing architecture such as doors leading to nothing, stairs leading into the ceiling, and other such oddities. The actual address to this residence is 525 S Winchester. 
The full lyrics to the song can be read here: www.genius.com/I-the-mighty-111-winchester-lyrics. 
+ [Go back.] # CLEAR
    -> begin 
    
=== authors === 
Stephanie Pena and Leehe Mahalal are both students majoring in Computer Science at the University of Central Florida. They share the same passion for game design as well as music, and wished to tie the two together into something playable for the 2019 Knight Hacks hackathon. Through such sentiments, 111 Winchester: From Song to Story was born!
+ [Go back.] # CLEAR 
    -> begin
    
=== start === 
111 Winchester. 
* [My parents' cabin.]
    You used to go there with your parents every year for winter break, but you haven’t been in years. Your parents never bother to rent it out, so now it’s just sitting there collecting dust. 
    -> 111route
* [An abandoned lodge.]
    You discovered the place through your older sibling, who used to go there to party. It’s been empty for years, so whoever lived there is likely long forgotten, long gone, or possibly even long dead. 
    -> 111route
* [Or was it 525 Winchester?] 
    Of course, how could you forget? 525 S Winchester, the haunted house of one Mrs. Sarah Winchester, widow to William Wirt Winchester, the rifle entrepreneur. Well, “haunted”. The place was more of a local legend than anything. 
    -> 525route

=== 111route ===
Regardless, your parents were out of town on business, you were left alone and unsupervised on a Friday night, and you knew for a fact there was no one in 111 Winchester tonight.
-> firstline

=== 525route === 
But that Mystery House has been long abandoned, left with the alleged ghost of the late Mrs. Winchester, only to be disturbed by the sounds of silence and, of course, young hooligans such as yourself. 
-> firstline

=== firstline === 
* [I'm feeling up tonight for something dangerous.] 
    So where better to go on night like tonight than that lonely house up north? 
    You called up all your friends and the plan was immediately set in motion. A few hours later, and you were already tipsy from the alcohol cabinet’s top shelf. Girls were dancing on the counters, music was playing loud, and shots were being poured left and right. 
-> chorusloop

=== chorusloop === 
* [How'd my drink fall off the counter?] ->drink 
* [Does it feel a little colder?] -> cold 
* [What's that writing on the mirror?] -> mirror 
* {drink} {cold} {mirror} -> firstchoice 

=== drink === 
Almost as if on its own, you watch your glass slide off the kitchen's counter and shatter on the ground. You look around and it becomes clear no one else saw what happened. The girls laugh it off and tell you to stop being so clumsy. {mirror: But you know what you saw, and it's getting a little hard to ignore.|You chalk it up to the alcohol and try to sober yourself up a bit.}
-> chorusloop

=== cold === 
Even with the warmth of the alcohol coursing through your veins, you felt a chill running up your spine. {drink || mirror: Combined with what you just saw a moment ago, you felt your stomach flip as you tried to process what this could possibly mean in your drunken state.|You try to shake it off with another shot.}
-> chorusloop

=== mirror === 
Your eyes go wide when you notice red written words on the mirror hung above the mantle behind your friends. Even tipsy, the message you read is clear: <b>GET OUT</b>. You rub your eyes, hoping it was a just a silly drunken hallucination, but when you open them the words are still there. 
You point to the mirror. “Do you guys see that?”
Your friends all turn to look at the mirror, but to your surprise have no reaction to the words. 
“See what?” they ask. 
{drink || cold: “Nevermind,” You try to laugh it off, but your heart feels like it beating out of your chest.|”Nevermind,” you laugh it off, hoping it’s just the alcohol getting to you.}
-> chorusloop

=== firstchoice === 
* [I should tell my friends what I saw.] -> tell   
* [It was probably nothing. I should just keep having fun.] -> ignore 

=== tell === 
"Guys, I know this sounds crazy, but I saw writing on the mirror that said <b>"GET OUT"</b>."
For a second, you see them all furrow their brows in concern, but amusement quickly washes over them as they all exclaim variations of “You’re drunk!” in your face. 
“No, seriously. I swear,” your voice is dripping with sincerity, and you hope at least <i>one</i> of them will listen to your pleas.
Your best friend’s face softens as they make eye contact with you. “Okay, well if you <i>did</i> see something, maybe we could just search the rest of the house and see what’s up? Worst comes to worst it’ll be cool to see what’s around here.”
This isn’t what you wanted, but it’s something. 
-> explore

=== ignore === 
You take another shot and try to shake off the bad feeling you're getting, but its near impossible. Your anxiety and paranoia are eating you away and it becomes hard to pay attention to the conversation your friends are having. You try to zone back in.
“We should check out the house more!” One of the girls suggests, her voice shrill with excitement. 
Everyone seems in agreement. 
What have you gotten yourself into? 
-> explore

=== explore === 
+ [Explore the first floor.] -> explore.downstairs 
+ [Explore the second floor.] -> explore.upstairs

    = downstairs 
        {!You decide to explore the first floor.}
        * [{~Check|Inspect|Investigate|Explore} the staircase.] -> stairs
        * [{~Check|Inspect|Investigate|Explore} the hallway.] -> hallway
        * [{~Check|Inspect|Investigate|Explore} the library.]  -> library 
        + [Go upstairs.] -> explore.upstairs
        
    = upstairs 
        {!You decide to explore the second floor.}
        {library: {!As you approach the second floor, you feel the voice getting louder in your head. <b>"YES! To the study! Go!"</b>|}|{!As you approach the second floor, the tempature drops. A voice in your hair seems to whisper: <b>"Go to the study."</b>|}}
        * [{~Check|Inspect|Investigate|Explore} the bedroom.] -> bedroom
        * [{~Check|Inspect|Investigate|Explore} the bathroom.] -> bathroom
        * [{~Check|Inspect|Investigate|Explore} the study.] -> study 
        + [Go downstairs.] -> explore.downstairs 
            
=== stairs ===
    You find downward staircase and follow it a few flights down before it disappears into a center of a wall. 
    -> explore.downstairs

=== hallway === 
    You follow this hallway down to it's end, where you almost fall off the edge of the hallway as it abrupty stops before a railing or wall. You look below to see a doorway in the room below, but only after what looks like a twenty foot fall. 
    -> explore.downstairs 

=== library ===
    You head into the only closed room on this floor and check it out. As you enter the library, you feel the temperature drop what feels like 10 degrees. You feel the chill of a wind blow through your hair, as an eerie voice carries through the air: <b>"Go upstairs. Go to the study."</b> 
    -> explore.downstairs 

=== bedroom === 
    {library: You hear the voice hiss in your head. <b>"NO! To the study!"</b>|}
    As you step into the bedroom, you swear you can hear your best friend's voice calling out to you, but as you look around, you are alone. 
    -> explore.upstairs

=== bathroom ===
    {library: The voice screeches inside your brain. <b>"YOU FOOL! This is not the study!"</b>|}
    The bathroom is surprisingly small and uneventful. You immediately turn around to leave, but before exiting notice yourself - or lack thereof - in the mirror. Where's your reflection? 
    -> explore.upstairs

=== study === 
    {library: The|A} voice in your head speaks to you once more: <b>"Go to the bookcase. Third book on the left."</b>
    -> secondchoice 
    
=== secondchoice === 
* [Oblige.] -> comply 
* [Fight it.] -> fight 

=== comply === 
Your legs propel you forward to the bookcase almost as if on their own accord. As you pull the book in question off the shelf, you feel something rattling inside. As you open the book, you find it to be hollowed out with matches and locket inside. The voice compels you to put the locket on, and you do. Shoving the matches in your pocket, you know what you must do. 
-> badend

=== fight === 
{tell: Although your feet feel frozen to the ground, you open your mouth and scream at the top of your lungs. You hear the thumping of feet on the hallway as your best friend throws the door open and shakes you out of the trance you seemed to be in. They pull you down the stairs and out of the house.->goodend|You try to move but your feet are frozen to the ground. You want to scream and cry out for help, but a lump has taken up residence in your throat and all you can do is sob. Your anxiety rattles in your head but you don’t feel like yourself anymore. Right now, there is someone else controlling you, and all you can do is cry while your body carries out the actions. Your legs propel you forward to the bookcase almost as if on their own accord. As you pull the book in question off the shelf, you feel something rattling inside. As you open the book, you find it to be hollowed out with matches and locket inside. The voice compels you to put the locket on, and you do. ->badend} 

=== badend === 
The voice speaks in your head once more: <b>"Behind the shelf there is gasoline."</b> Unable to stop yourself, you quickly retrieve it. As the madness takes over you, you dowse everything in the house in gasoline from the upstairs to the downstairs, leading all the way out to the snow outside the house. With shaking hands, you take out the pack of matches and light one before dropping it onto the trail of gasoline below you, causing the house to quickly engulf in flames. You watch as {111route: 111 Winchester|525 Winchester} is swallowed by fire, the heat radiating off the house nearly burning your face. 
But you don’t feel a thing. 
-> END 

=== goodend === 
As you and the rest of your friends rush outside of the house, the screaming in your head finally stops. Sobered up, you all get in the car and head back to your house, where you spend the rest of the night drinking hot chocolate and trying to recount the events that transpired on this night, promising never to return to {111route: 111 Winchester|525 Winchester} ever again. 
-> END
