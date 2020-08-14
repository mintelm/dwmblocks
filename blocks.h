/* time interval in seconds to sleep before looking for updates in the main loop */
#define SLEEPINTERVAL			1

#define PATH(name)			"/home/mario/mintelm//dwmblocks/blocks/"name

/* If interval of a block is set to 0, the block will only be updated once at startup.
 * If interval is set to a negative value, the block will never be updated in the main loop.
 * Set pathc to NULL if clickability is not required for the block.
 * Set signal to 0 if both clickability and signaling are not required for the block.
 * Signal must be less than 10 for clickable blocks.
 * If multiple signals are pending, then the lowest numbered one will be delivered first. */

/* pathu - path of the program whose output is to be used for status text
 * pathc - path of the program to be executed on clicks */
static Block blocks[] = {
/*	pathu				pathc					interval	signal */

	{ PATH("arch_pkg.sh"),		PATH("arch_pkg_button.sh"),             0,		2},

	{ PATH("cpu_temp.sh"),		PATH("cpu_temp_button.sh"),		1,		4},

	{ PATH("volume.sh"),		PATH("volume_button.sh"),		0,		1},

	{ PATH("battery.sh"),		NULL,                       		30,		0},

	{ PATH("time_calendar.sh"),	PATH("time_calendar_button.sh"),        60,		3},

        { NULL } /* just to mark the end of the array */
};

static const char *delim =  "    ";
