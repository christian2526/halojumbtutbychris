Change  in the first line "xxx" with your player UID, you can also put in more UID`s "xxx","xxx".

Put the script in a Folder called "Scripts", if you dont have on create one in your mission file!

After that go to your init.sqf to the very bottom and put the following code in it:

//Bargate UID Script
[] execVM "Scripts\bargate.sqf"; 

Now, go to your ArmA II OA Editor plant a bar Gate and call it gate1 or whatever. Now you have to create 1 Trigger
and put in the condition field this: This && Access; and you have to name the trigger and put the name of the trigger in
the 3. line of the script.