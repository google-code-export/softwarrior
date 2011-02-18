//-----------------------------------------------------------------------------------
// crt_printf.c
// This program uses the printf and wprintf functions
// to produce formatted output.

#include <stdio.h>
#include <conio.h>

#include <string>

int main( void )
{
   char     ch = 'h', *string = "computer";
   wchar_t  wch = L'w', *wstring = L"Unicode";
   int      count = -9234;
   double   fp = 251.7366;

   //// Display integers
   //printf( "Integer formats:\n"
   //        "   Decimal: %d  Justified: %.6d  "
   //        "Unsigned: %u\n",
   //        count, count, count, count );

   //// Display decimals
   //printf( "Decimal %d as:\n   Hex: %Xh  "
   //        "C hex: 0x%x  Octal: %o\n",
   //         count, count, count, count );

   //// Display in different radixes
   //printf( "Digits 10 equal:\n   Hex: %i  "
   //        "Octal: %i  Decimal: %i\n",
   //         0x10, 010, 10 );

   //// Display characters
   //printf("Characters in field (1):\n"
   //       "%10c%5hc%5C%5lc\n",
   //       ch, ch, wch, wch);
   //wprintf(L"Characters in field (2):\n"
   //        L"%10C%5hc%5c%5lc\n",
   //        ch, ch, wch, wch);

   //// Display strings
   //printf("Strings in field (1):\n%25s\n"
   //       "%25.10hs\n   %S%25.3ls\n",
   //       string, string, wstring, wstring);
   //wprintf(L"Strings in field (2):\n%25S\n"
   //        L"%25.4hs\n   %s%25.3ls\n",
   //        string, string, wstring, wstring);

   //// Display real numbers
   //printf("Real numbers:\n   %f %.2f %e %E\n",
   //       fp, fp, fp, fp );

   //// Display pointer
   //printf( "\nAddress as:   %p\n", &count);

    std::string total_download = "123.67KB";
	std::string upload_rate = "4.6KB";
	std::string total_upload = "3.6708KB";

	int downloaders = 5;
	int seeds = 100;
	int bandwidth_queue = 3;
	int up_bandwidth_queue = 2;
	int down_bandwidth_queue = 7;

	std::string all_time_download = "500.78MB";
	std::string all_time_upload = "10.5MB";
	
	int seed_rank = 10;

   	printf(	"%10s%10s\n"
			"%10s%10s%10s\n"
			"%10s%10d%10d\n"
			"%10s%10d%10d\n"
			"%10s(Rx:%s Tx:%s)\n"
			"%10s%x\n"
		, "down:"
		,  total_download.c_str()
		, "up:"
		, upload_rate.c_str()
		, total_upload.c_str()
		, "swarm:"
		, downloaders, seeds
		, "queue:"
		, up_bandwidth_queue, down_bandwidth_queue
		, "all-time:"
		, all_time_download.c_str()
		, all_time_upload.c_str()
		, "seed rank:"
		, seed_rank);

   getch();
}
//-----------------------------------------------------------------------------------