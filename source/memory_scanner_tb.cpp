#include <ap_int.h>
//#include <ap_cint.h>
#include <hls_stream.h>
#include "string.h"


typedef ap_uint<32> uint32_t_hw;
typedef hls::stream<uint32_t_hw> mem_stream32;

//bool memory_scanner(volatile unsigned int m_mm2s_ctl [500], volatile unsigned int m_s2mm_ctl[500],
//		 mem_stream32& s_in, mem_stream32& s_out,
//		 unsigned char search_string[17], int *count_out);
bool memory_scanner(volatile unsigned char ddr[0x40000000],
		 unsigned char search_string[17], int *count_out);

mem_stream32 read_stream;
mem_stream32 write_stream;

int main(){
	int i;
//	volatile unsigned int mm2s[500];
//	volatile unsigned int s2mm[500];
	volatile unsigned char ddr[0x10000];
	memset((void*)ddr, 0, 0x10000);
	unsigned char search[17] = {0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a};
	int count_out;
//	ap_uint<32> current(0x0a0a0a0a);
	for(i = 0; i<8; i++){
		if(i%2 == 0){
			continue;
		}
		memcpy((void*)ddr + i*16, search, 16);
	}
//	ap_uint<32> current2(0);
//	for(i=0; i<0x80; i++){
//		read_stream.write(current2);
//	}
	memory_scanner(ddr, search, &count_out);
	printf("Count out: %i\n", count_out);
	return 0;
}
