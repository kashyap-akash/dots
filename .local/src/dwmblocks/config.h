// Modify this file to change what commands output to your statusbar, and
// recompile using the make command.
static const Block blocks[] = {

    /*Icon*/ /*Command*/ /*Update Interval*/ /*Update Signal*/
    
    //{"", "sb-music", 0, 10},
    //{"", "sb-crypto", 9000, 1},
    //{"", "sb-mail", 1800, 2},
    {"", "sb-cpu", 3, 1},
    {"", "sb-memory", 3, 2},
    //{"", "sb-disk", 3, 3},
    {"", " sb-battery", 1, 5},
    {"", " sb-volume", 1, 6},
    {"", " sb-internet", 3, 7},
    {"", " sb-clock", 60, 8}};

// sets delimeter between status commands. NULL character ('\0') means no
// delimeter.
static char delim[] = "|";
static unsigned int delimLen = 5;
