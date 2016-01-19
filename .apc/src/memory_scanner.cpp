#include <ap_int.h>
//#include <ap_cint.h>
#include <hls_stream.h>

typedef ap_uint<32> uint32_t_hw;
typedef hls::stream<uint32_t_hw> mem_stream32;

ap_uint<32> reverse32(ap_uint<32> in){
	int j;
	ap_uint<8> temp2;
	ap_uint<8> temp2_array[4];
	for(j=0; j<4; j++){
#pragma HLS UNROLL
		temp2 = in.range(j*8+7, j*8);
//		temp2 = temp.range(31-j*8, 24-j*8);
//		printf("\n%s", temp2.to_string(16).c_str());
//		out = out.concat(temp2);
		temp2_array[j] = temp2;
	}
	return (temp2_array[0], temp2_array[1], temp2_array[2], temp2_array[3]);
}

void unpack_word(ap_uint<32> data_in, unsigned char data_out[4]){
	int i;
	for(i=0; i<4; i++){
		data_out[i] = data_in.range(31-i*8, (24)-i*8);
	}
}

bool memory_scanner(volatile unsigned int m_mm2s_ctl [500], volatile unsigned int m_s2mm_ctl[500],
		 mem_stream32& s_in, mem_stream32& s_out,
		 unsigned char search_string[17], int *count_out){
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS ARRAY_PARTITION variable=search_string complete dim=1



#pragma HLS INTERFACE s_axilite port=search_string


#pragma HLS INTERFACE ap_hs port=search_string

#pragma HLS INTERFACE s_axilite port=count_out



#pragma HLS INTERFACE ap_vld port=count_out


#pragma HLS INTERFACE ap_ctrl_hs port=return



#pragma HLS INTERFACE axis depth=1000 port=s_out

#pragma HLS INTERFACE axis depth=1000 port=s_in

#pragma HLS INTERFACE m_axi port=m_s2mm_ctl

#pragma HLS INTERFACE m_axi port=m_mm2s_ctl
	int i, j, search_index = 0, count = 0;

	//512 MiB in hex = 0x40000000 bytes
	unsigned read_length = 0x40000000;

#ifndef __SYNTHESIS__
	//only read 48 bytes when simulating
	read_length = 0x30;
#endif

	unsigned sourceAddress = 0;
	unsigned destinationAddress = 0;
	ap_uint<32> temp, data;
	unsigned char data_word[4];


	m_mm2s_ctl[0] &= 0;
//	m_s2mm_ctl[12] &= 0;

	m_mm2s_ctl[0] |= 4;
//	m_s2mm_ctl[12] |= 4;

	m_mm2s_ctl[0] &= 0;
//	m_s2mm_ctl[12] &= 0;

	//--------Program read DMA mm2s----------
	//enable read dma block
	m_mm2s_ctl[0] |= 1;
	//enable read interupts
	m_mm2s_ctl[0] |= 4096;
	//write source address
	m_mm2s_ctl[6] = sourceAddress;
	//calculate # of bytes that will be read from s_in in total
	//read_length = #encryptions X #bytes/encryption
//	if(mode==2){
//		read_length = numBytes;
//	} else{
//		read_length = numIterations*16;//length*sizeof(ap_uint<128>);
//	}
	m_mm2s_ctl[10] = read_length;

	//--------Program write DMA s2mm--------
	//enable s2mm on write dma block
//	m_s2mm_ctl[12] |= 1;
//	//enable write interrupts
//	m_s2mm_ctl[12] |= 4096;
//	//write dest address
//	m_s2mm_ctl[18] = destinationAddress;
//	//write write length as the same as read length
////	m_s2mm_ctl[22] = read_length;
//	m_s2mm_ctl[22] = 0;

	//loop through address space from 0 to 0x40000000, read 4 bytes at a time
	//need to store the current index in the search string and reset on failure
	//or finishing of the string
	//also reverse each word read using the above reverse function
	for(i = 0; i < read_length/4; i++){
		temp = s_in.read();
		data = reverse32(temp);
		unpack_word(data, data_word);
		for(j=0; j<4; j++){
			//increment the search index if we match, else reset to 0
			if(data_word[j] == search_string[search_index]){
				search_index++;
			} else{
				search_index = 0;
			}
		}
		//if we are >= 17 then we have finished on search - reset index and increment count
		if(search_index >= 17){
			count ++;
			search_index = 0;
		}
	}

	*count_out = count;

	//hack to make the output stream synthesis, even though we don't use it
	if(s_out.full()){
		s_out.write(ap_uint<32>(0));
	}
	return true;
 }
