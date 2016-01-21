#include <ap_int.h>
//#include <ap_cint.h>
#include <hls_stream.h>
#include "stdio.h"

#define WORKERS 0x1

typedef ap_uint<32> uint32_t_hw;
typedef hls::stream<uint32_t_hw> mem_stream32;

ap_uint<32> reverse32(ap_uint<32> in){
	int j;
	ap_uint<8> temp2;
	ap_uint<8> temp2_array[4];
//	for(j=0; j<4; j++){
//#pragma HLS UNROLL
//		temp2 = in.range(j*8+7, j*8);
////		temp2 = temp.range(31-j*8, 24-j*8);
////		printf("\n%s", temp2.to_string(16).c_str());
////		out = out.concat(temp2);
//		temp2_array[j] = temp2;
//	}
	temp2_array[0] = in.range(7, 0);
	temp2_array[1] = in.range(15, 8);
	temp2_array[2] = in.range(23, 16);
	temp2_array[3] = in.range(31, 24);
	return (temp2_array[0], temp2_array[1], temp2_array[2], temp2_array[3]);
}

void unpack_word(ap_uint<32> data_in, unsigned char data_out[4]){
	int i;
	for(i=0; i<4; i++){
		data_out[i] = data_in.range(31-i*8, (24)-i*8);
	}
}

//bool memory_scanner(volatile unsigned int m_mm2s_ctl [500], volatile unsigned int m_s2mm_ctl[500],
//		 mem_stream32& s_in, mem_stream32& s_out,
//		 unsigned char search_string[17], int *count_out){
bool memory_scanner(volatile unsigned char ddr[0x40000000],
		 unsigned char search_string[17], int *count_out){
#pragma HLS INTERFACE m_axi port=ddr

#pragma HLS INTERFACE s_axilite port=return

#pragma HLS ARRAY_PARTITION variable=search_string complete dim=1



#pragma HLS INTERFACE s_axilite port=search_string


#pragma HLS INTERFACE ap_hs port=search_string

#pragma HLS INTERFACE s_axilite port=count_out



#pragma HLS INTERFACE ap_vld port=count_out


#pragma HLS INTERFACE ap_ctrl_hs port=return



//#pragma HLS INTERFACE axis depth=1000 port=s_out
//
//#pragma HLS INTERFACE axis depth=1000 port=s_in
//
//#pragma HLS INTERFACE m_axi port=m_s2mm_ctl
//
//#pragma HLS INTERFACE m_axi port=m_mm2s_ctl
//	int i, j, k, search_index = 0, count = 0, bytes_checked = 0;
//
//	//512 MiB in hex = 0x40000000 bytes
//	unsigned read_length = 0x40000000;
//
//#ifndef __SYNTHESIS__
//	//only read 48 bytes when simulating
//	read_length = 0x80;
//#endif
//
//	unsigned sourceAddress = 0;
//	unsigned destinationAddress = 0;
//	ap_uint<32> data;
//	ap_uint<32> temp;
////	unsigned char data_word[0x10][4];
//	unsigned char data_word[4];
//
//
//	m_mm2s_ctl[0] &= 0;
////	m_s2mm_ctl[12] &= 0;
//
//	m_mm2s_ctl[0] |= 4;
////	m_s2mm_ctl[12] |= 4;
//
//	m_mm2s_ctl[0] &= 0;
////	m_s2mm_ctl[12] &= 0;
//
//	//--------Program read DMA mm2s----------
//	//enable read dma block
//	m_mm2s_ctl[0] |= 1;
//	//enable read interupts
//	m_mm2s_ctl[0] |= 4096;
//	//write source address
//	m_mm2s_ctl[6] = sourceAddress;
//	//calculate # of bytes that will be read from s_in in total
//	//read_length = #encryptions X #bytes/encryption
////	if(mode==2){
////		read_length = numBytes;
////	} else{
////		read_length = numIterations*16;//length*sizeof(ap_uint<128>);
////	}
//	m_mm2s_ctl[10] = read_length;
//
//	//--------Program write DMA s2mm--------
//	//enable s2mm on write dma block
////	m_s2mm_ctl[12] |= 1;
////	//enable write interrupts
////	m_s2mm_ctl[12] |= 4096;
////	//write dest address
////	m_s2mm_ctl[18] = destinationAddress;
////	//write write length as the same as read length
//////	m_s2mm_ctl[22] = read_length;
////	m_s2mm_ctl[22] = 0;
//
//	//loop through address space from 0 to 0x40000000, read 4 bytes at a time
//	//need to store the current index in the search string and reset on failure
//	//or finishing of the string
//	//also reverse each word read using the above reverse function
////	printf("Iterations: %i\n", (read_length/4));
//	int words_to_read = read_length/4;
////	int iterations = words_to_read/0x10;
//	int iterations = words_to_read;
	unsigned int read_length = 0x40000000;
#ifndef __SYNTHESIS__
	//only read 48 bytes when simulating
	read_length = 0x10000;
#endif
	unsigned int iterations = read_length/WORKERS;
	int search_index[WORKERS];
	int count[WORKERS];
	if(iterations == 0){
		iterations = 1;
	}
	int i, j, bytes_checked = 0, total = 0;
	for(i=0; i<WORKERS; i++){
#pragma HLS UNROLL
		search_index[i] = 0;
		count[i] = 0;
	}
	printf("Iterations: %i\n", iterations);
	for(i=0; i<WORKERS; i++){
#pragma HLS UNROLL

		for(j=0; j<iterations; j++){
//			if(bytes_checked > read_length){
//				break;
//			}
			if(ddr[iterations*i+j] == search_string[search_index[i]]){
				search_index[i]++;
			} else{
				search_index[i]=0;
			}
			if(search_index[i] >= 16){
				count[i] ++;
				search_index[i] = 0;
			}
//			bytes_checked++;
		}
	}
//	for(i = 0; i < iterations; i++){
////		for(j=0; j<0x10; j++){
//			temp = s_in.read();
//			data = reverse32(temp);
////			unpack_word(data, data_word[j]);
//			unpack_word(data, data_word);
////			printf("Read data %i: %s\n", i, data.to_string(16).c_str());
////		}
//
////		printf("Data word: 0x");
////		for(j=0; j<0x10; j++){
//		for(j=0; j<4; j++){
//			//increment the search index if we match, else reset to 0
////			printf("%02x", data_word[j]);
////			for(k = 0; k<4; k++){
//				if(bytes_checked > read_length){
//					break;
//				}
////				if(data_word[j][k] == search_string[search_index]){
//				if(data_word[j] == search_string[search_index]){
//					search_index++;
//				} else{
//					search_index = 0;
//				}
//				if(search_index >= 16){
//					count ++;
//					search_index = 0;
//				}
//				bytes_checked++;
////			}
//		}
//
////		for(j=0; j<0x10; j++){
////#pragma HLS UNROLL
////
////			for(k=0; k<4; k++){
////#pragma HLS UNROLL
////
////				data_word[j][k] = 0;
////			}
////		}
////		printf("\n");
//		//if we are >= 17 then we have finished on search - reset index and increment count
//
//	}
//
	for(i=0; i<WORKERS; i++){
#pragma HLS UNROLL

		total += count[i];
	}
	*count_out = total;
//
//	//hack to make the output stream synthesis, even though we don't use it
//	if(s_out.full()){
//		s_out.write(ap_uint<32>(0));
//	}
	return true;
 }
