queueLength = Move_Stack_Gui.QueueLength;
if (queueLength < 4)
{
    xPosition = 0
    yPosition = 224 - (queueLength * 64)
    instance = instance_create(xPosition, yPosition, icon);
    instance.depth = 1000;
    Move_Stack_Gui.QueueArray[queueLength] = instance;
    if (queueLength < 4){
        Move_Stack_Gui.QueueLength += 1;
    }
}
return 0;
