with Move_Stack_Gui.QueueArray[0]{
    if (Move_Stack_Gui.QueueLength != 0){
        instance_destroy();
    }
}

for (i = 0; i < Move_Stack_Gui.QueueLength; i+=1){
    if (Move_Stack_Gui.QueueArray[i+1] != -1){
        Move_Stack_Gui.QueueArray[i] = Move_Stack_Gui.QueueArray[i+1];
        Move_Stack_Gui.QueueArray[i].y += 64;
    }
    else{
        Move_Stack_Gui.QueueArray[i] = -1;
    }
}
if (Move_Stack_Gui.QueueLength > 0){
    Move_Stack_Gui.QueueLength -= 1;
}
//you can add more program code here
