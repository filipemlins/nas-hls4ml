//
//    rfnoc-hls-neuralnet: Vivado HLS code for neural-net building blocks
//
//    Copyright (C) 2017 EJ Kreinar
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
#include <fstream>
#include <iostream>
#include <algorithm>
#include <vector>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "firmware/myproject.h"

#include <string>

#define CHECKPOINT 5000
#define NUM_IMAGES 50

int main(int argc, char **argv)
{

	#ifdef RTL_SIM
		std::string RESULTS_LOG = "tb_data/rtl_cosim_results.log";
	#else
		std::string RESULTS_LOG = "tb_data/csim_results.log";
	#endif

	//load input data from text file
	std::ifstream myfile ("tb_data/filenames.dat");

	if (!myfile.is_open())
	{
		std::cout << "The filename filenames is unable to open! " << std::endl;
		return 1;
	}

	//std::string stimulus_source;

	int max = 0, i = 0;
	int j = 0;
	result_t max_val = 0;
	int gold_res[10500];
	float wrong_val = 0, corrected_val = 0;

	//load predictions from text file
	std::ifstream fgold("tb_data/tb_output_predictions.dat");
	if (!fgold.is_open())
	{
		std::cout << "The filename test is unable to open! " << std::endl;
		return 1;
	}

	while(fgold)
	{
		fgold >> gold_res[i];
		i++;
	}

	fgold.close();


	std::ofstream fout(RESULTS_LOG);



	while (j < NUM_IMAGES ) {


		std::string iline;
		std::string source = "tb_data/test_input/";
	    std::string stimulus_source;
		std::getline(myfile, stimulus_source);

		source = source + stimulus_source;

		std::ifstream fin(source);

		if (!fin.is_open())
		{
			std::cout << source << " " << "is unable to open the dat file! " << std::endl;
			return 1;
		}
		std::getline(fin,iline);

		char* cstr=const_cast<char*>(iline.c_str());
		char* current;
		std::vector<float> in;
		current=strtok(cstr," ");
		while(current!=NULL) {
			in.push_back(atof(current));
			current=strtok(NULL," ");
		}


		//hls-fpga-machine-learning insert data
		std::vector<float>::const_iterator in_begin = in.cbegin();
		std::vector<float>::const_iterator in_end;
		input_t input_3[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1];
		in_end = in_begin + (N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1);
		std::copy(in_begin, in_end, input_3);
		in_begin = in_end;


		//hls-fpga-machine-learning insert data


		result_t layer13_out[N_LAYER_17]{};
		std::fill_n(layer13_out, 10, 0.);


		//hls-fpga-machine-learning insert top-level-function
		unsigned short size_in1,size_out1;
		myproject(input_3,layer13_out,size_in1,size_out1);

		max_val = layer13_out[0];
		max = 0;
		//std::cout << layer13_out[0] << std::endl;

		for (i = 1; i < size_out1; i++)
		{
			//std::cout << layer13_out[i] << std::endl;
			if (layer13_out[i] > max_val) {
				max_val = layer13_out[i];
				max = i;
			}
		}

		std::cout << max << " " << gold_res[j] << std::endl;
		if(max == gold_res[j]){
			corrected_val++;
			std::cout << corrected_val/(j+1) << " " << j << std::endl;
		}
		else{
			wrong_val++;
		}
		j++;

		fout << max << " ";
		fout << std::endl;

		fin.close();

	}
	std::cout <<  corrected_val/NUM_IMAGES << std::endl;

	std::cout << "corrected values: " << corrected_val << " percentage: " << corrected_val/NUM_IMAGES << std::endl;
	std::cout << "wrong values: " << wrong_val << " percentage: " << wrong_val/NUM_IMAGES << std::endl;

	fout.close();
	std::cout << "INFO: Saved inference results to file: " << RESULTS_LOG << std::endl;

	return 0;
}
