
a = 1;
fadeout = 0;
alarm[0] = -1;

// Create sound emitter
snd_emit = audio_emitter_create();

// Stores the Line
str = "";
// Stores how far in the line we are
print = "";

// Stores the letter
let = 0;
// Which string to draw
next = 0;


// Has user held space?
holdspace = 0;

// Tell user to press next
presse = 0;

// String array of text
strings[0] = "Hello Darling!\nThanks for playtesting our game!";
strings[1] = "Welcome to the secret level!";
strings[2] = "I made this just for you!";
strings[3] = "I've been keeping a journal of my thoughts\nwhile working on the game."
strings[4] = "I would like you to\nread it after this."
strings[5] = "We've been together for 11 years now.\nI can't imagine life without you. <3"
strings[6] = "I love you more than anything,\nand I always will. <3"
strings[7] = "I really wanted the game\nto be more complete than it is\nbefore doing this."
strings[8] = "However, the more I thought about it.\nThe more I realized this game\nis just like me in a way."
strings[9] = "Without you it doesn't feel complete."
strings[10] = "I have something I want to ask you.\nYou should turn around now..."