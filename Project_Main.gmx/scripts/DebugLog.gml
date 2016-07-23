///DebugLog(message)
//shows a message on console and saves to file

show_debug_message(argument0);
if(instance_exists(DebugSystem))
{
    if(DebugSystem.logFileGood == true) 
    {
        file_text_write_string(DebugSystem.logFile, argument0);
        file_text_writeln(DebugSystem.logFile);
    }
}
