// bf_time_pcm_tb.v

// Generated using ACDS version 16.0 211

`timescale 1 ps / 1 ps
module bf_time_pcm_tb_mod (
	);

	wire          bf_time_pcm_inst_clk_100_bfm_clk_clk;                    // bf_time_pcm_inst_clk_100_bfm:clk -> [bf_time_pcm_inst:clk_100_clk, bf_time_pcm_inst_reset_100_bfm:clk, bf_time_pcm_inst_reset_50_bfm:clk]
	wire          bf_time_pcm_inst_clk_50_bfm_clk_clk;                     // bf_time_pcm_inst_clk_50_bfm:clk -> [bf_time_pcm_inst:clk_50_clk, bf_time_pcm_inst_mic_if_avalon_st_fil_bfm:clk, bf_time_pcm_inst_mic_if_avalon_st_pdm_bfm:clk, bf_time_pcm_inst_pwm_out_bfm:clk, rst_controller:clk]
	wire    [0:0] bf_time_pcm_inst_audio_ext_bfm_conduit_valid;            // bf_time_pcm_inst_audio_ext_bfm:sig_valid -> bf_time_pcm_inst:audio_ext_valid
	wire   [15:0] bf_time_pcm_inst_audio_ext_bfm_conduit_data;             // bf_time_pcm_inst_audio_ext_bfm:sig_data -> bf_time_pcm_inst:audio_ext_data
	wire          bf_time_pcm_inst_audio_ext_clock_en;                     // bf_time_pcm_inst:audio_ext_clock_en -> bf_time_pcm_inst_audio_ext_bfm:sig_clock_en
	wire    [0:0] bf_time_pcm_inst_audio_if_bfm_conduit_adcdat;            // bf_time_pcm_inst_audio_if_bfm:sig_adcdat -> bf_time_pcm_inst:audio_if_adcdat
	wire    [0:0] bf_time_pcm_inst_audio_if_bfm_conduit_adclrc;            // bf_time_pcm_inst_audio_if_bfm:sig_adclrc -> bf_time_pcm_inst:audio_if_adclrc
	wire          bf_time_pcm_inst_audio_if_dacdat;                        // bf_time_pcm_inst:audio_if_dacdat -> bf_time_pcm_inst_audio_if_bfm:sig_dacdat
	wire    [0:0] bf_time_pcm_inst_audio_if_bfm_conduit_daclrc;            // bf_time_pcm_inst_audio_if_bfm:sig_daclrc -> bf_time_pcm_inst:audio_if_daclrc
	wire    [0:0] bf_time_pcm_inst_audio_if_bfm_conduit_bclk;              // bf_time_pcm_inst_audio_if_bfm:sig_bclk -> bf_time_pcm_inst:audio_if_bclk
	wire          bf_time_pcm_inst_i2c_scl_export;                         // bf_time_pcm_inst:i2c_scl_export -> bf_time_pcm_inst_i2c_scl_bfm:sig_export
	wire          bf_time_pcm_inst_i2c_sda_export;                         // [] -> [bf_time_pcm_inst:i2c_sda_export, bf_time_pcm_inst_i2c_sda_bfm:sig_export]
	wire    [3:0] bf_time_pcm_inst_key_bfm_conduit_export;                 // bf_time_pcm_inst_key_bfm:sig_export -> bf_time_pcm_inst:key_export
	wire   [31:0] bf_time_pcm_inst_led_export;                             // bf_time_pcm_inst:led_export -> bf_time_pcm_inst_led_bfm:sig_export
	wire          bf_time_pcm_inst_mic_if_avalon_st_fil_valid;             // bf_time_pcm_inst:mic_if_avalon_st_fil_valid -> bf_time_pcm_inst_mic_if_avalon_st_fil_bfm:sig_valid
	wire  [650:0] bf_time_pcm_inst_mic_if_avalon_st_fil_data;              // bf_time_pcm_inst:mic_if_avalon_st_fil_data -> bf_time_pcm_inst_mic_if_avalon_st_fil_bfm:sig_data
	wire    [0:0] bf_time_pcm_inst_mic_if_avalon_st_fil_bfm_conduit_ready; // bf_time_pcm_inst_mic_if_avalon_st_fil_bfm:sig_ready -> bf_time_pcm_inst:mic_if_avalon_st_fil_ready
	wire          bf_time_pcm_inst_mic_if_avalon_st_fil_startofpacket;     // bf_time_pcm_inst:mic_if_avalon_st_fil_startofpacket -> bf_time_pcm_inst_mic_if_avalon_st_fil_bfm:sig_startofpacket
	wire          bf_time_pcm_inst_mic_if_avalon_st_fil_endofpacket;       // bf_time_pcm_inst:mic_if_avalon_st_fil_endofpacket -> bf_time_pcm_inst_mic_if_avalon_st_fil_bfm:sig_endofpacket
	wire    [1:0] bf_time_pcm_inst_mic_if_avalon_st_fil_error;             // bf_time_pcm_inst:mic_if_avalon_st_fil_error -> bf_time_pcm_inst_mic_if_avalon_st_fil_bfm:sig_error
	wire          bf_time_pcm_inst_mic_if_avalon_st_pdm_valid;             // bf_time_pcm_inst:mic_if_avalon_st_pdm_valid -> bf_time_pcm_inst_mic_if_avalon_st_pdm_bfm:sig_valid
	wire   [90:0] bf_time_pcm_inst_mic_if_avalon_st_pdm_data;              // bf_time_pcm_inst:mic_if_avalon_st_pdm_data -> bf_time_pcm_inst_mic_if_avalon_st_pdm_bfm:sig_data
	wire    [0:0] bf_time_pcm_inst_mic_if_avalon_st_pdm_bfm_conduit_ready; // bf_time_pcm_inst_mic_if_avalon_st_pdm_bfm:sig_ready -> bf_time_pcm_inst:mic_if_avalon_st_pdm_ready
	wire          bf_time_pcm_inst_mic_if_avalon_st_pdm_startofpacket;     // bf_time_pcm_inst:mic_if_avalon_st_pdm_startofpacket -> bf_time_pcm_inst_mic_if_avalon_st_pdm_bfm:sig_startofpacket
	wire    [1:0] bf_time_pcm_inst_mic_if_avalon_st_pdm_error;             // bf_time_pcm_inst:mic_if_avalon_st_pdm_error -> bf_time_pcm_inst_mic_if_avalon_st_pdm_bfm:sig_error
	wire          bf_time_pcm_inst_mic_if_avalon_st_pdm_endofpacket;       // bf_time_pcm_inst:mic_if_avalon_st_pdm_endofpacket -> bf_time_pcm_inst_mic_if_avalon_st_pdm_bfm:sig_endofpacket
	wire          bf_time_pcm_inst_mic_if_pdm_if_pulse_lr;                 // bf_time_pcm_inst:mic_if_pdm_if_pulse_lr -> bf_time_pcm_inst_mic_if_pdm_if_bfm:sig_pulse_lr
	wire          bf_time_pcm_inst_mic_if_pdm_if_pdm_clk_ff;               // bf_time_pcm_inst:mic_if_pdm_if_pdm_clk_ff -> bf_time_pcm_inst_mic_if_pdm_if_bfm:sig_pdm_clk_ff
	wire   [39:0] bf_time_pcm_inst_mic_if_pdm_if_bfm_conduit_pdm_data;     // bf_time_pcm_inst_mic_if_pdm_if_bfm:sig_pdm_data -> bf_time_pcm_inst:mic_if_pdm_if_pdm_data
	wire          bf_time_pcm_inst_mic_if_system_enable_clk_dec;           // bf_time_pcm_inst:mic_if_system_enable_clk_dec -> bf_time_pcm_inst_mic_if_system_bfm:sig_enable_clk_dec
	wire    [0:0] bf_time_pcm_inst_mic_if_system_bfm_conduit_clk_dec;      // bf_time_pcm_inst_mic_if_system_bfm:sig_clk_dec -> bf_time_pcm_inst:mic_if_system_clk_dec
	wire    [0:0] bf_time_pcm_inst_mic_if_system_bfm_conduit_clk_dec16;    // bf_time_pcm_inst_mic_if_system_bfm:sig_clk_dec16 -> bf_time_pcm_inst:mic_if_system_clk_dec16
	wire          bf_time_pcm_inst_mic_if_system_enable_clk_dec16;         // bf_time_pcm_inst:mic_if_system_enable_clk_dec16 -> bf_time_pcm_inst_mic_if_system_bfm:sig_enable_clk_dec16
	wire          bf_time_pcm_inst_mic_if_test_mic_enable;                 // bf_time_pcm_inst:mic_if_test_mic_enable -> bf_time_pcm_inst_mic_if_test_bfm:sig_mic_enable
	wire    [1:0] bf_time_pcm_inst_mic_if_test_pdm_data_inp;               // bf_time_pcm_inst:mic_if_test_pdm_data_inp -> bf_time_pcm_inst_mic_if_test_bfm:sig_pdm_data_inp
	wire    [1:0] bf_time_pcm_inst_pwm_out_export;                         // bf_time_pcm_inst:pwm_out_export -> bf_time_pcm_inst_pwm_out_bfm:sig_export
	wire   [47:0] bf_time_pcm_inst_seg7_export;                            // bf_time_pcm_inst:seg7_export -> bf_time_pcm_inst_seg7_bfm:sig_export
	wire    [9:0] bf_time_pcm_inst_sw_bfm_conduit_export;                  // bf_time_pcm_inst_sw_bfm:sig_export -> bf_time_pcm_inst:sw_export
	wire          bf_time_pcm_inst_reset_100_bfm_reset_reset;              // bf_time_pcm_inst_reset_100_bfm:reset -> bf_time_pcm_inst:reset_100_reset_n
	wire          bf_time_pcm_inst_reset_50_bfm_reset_reset;               // bf_time_pcm_inst_reset_50_bfm:reset -> [bf_time_pcm_inst:reset_50_reset_n, rst_controller:reset_in0]
	wire          rst_controller_reset_out_reset;                          // rst_controller:reset_out -> [bf_time_pcm_inst_mic_if_avalon_st_fil_bfm:reset, bf_time_pcm_inst_mic_if_avalon_st_pdm_bfm:reset]

// Black Beaglebone Board Adapter
// BEGIN
	wire [2:0]      pdm_sel;
	wire [7:0][4:0] pdm_data;
	wire [4:0]      pdm_data_row;

	bbb_array_adapter #(
	 .NUM_ROWS (5),
	 .NUM_COLS (8)
	) bbb_array_adapter (
	  .clk                    (bf_time_pcm_inst_clk_100_bfm_clk_clk),
	  .reset_n                (bf_time_pcm_inst_reset_100_bfm_reset_reset),
	
	  .lr_sel                 (1'b1),
	  
	  .pulse_lr               (bf_time_pcm_inst_mic_if_pdm_if_pulse_lr),
  	  .cnt_step               (3'd1),
	  .pdm_clk                (bf_time_pcm_inst_mic_if_pdm_if_pdm_clk_ff),
	  .pdm_inp                (pdm_data_row),
	  
	  .adapter_sel_ff         (pdm_sel),
	  .adapter_out_ff         (bf_time_pcm_inst_mic_if_pdm_if_bfm_conduit_pdm_data)
	);
	
	assign pdm_data_row = pdm_data[pdm_sel];
// END

	bf_time_pcm bf_time_pcm_inst (
		.audio_ext_valid                    (bf_time_pcm_inst_audio_ext_bfm_conduit_valid),            //            audio_ext.valid
		.audio_ext_clock_en                 (bf_time_pcm_inst_audio_ext_clock_en),                     //                     .clock_en
		.audio_ext_data                     (bf_time_pcm_inst_audio_ext_bfm_conduit_data),             //                     .data
		.audio_if_adcdat                    (bf_time_pcm_inst_audio_if_bfm_conduit_adcdat),            //             audio_if.adcdat
		.audio_if_adclrc                    (bf_time_pcm_inst_audio_if_bfm_conduit_adclrc),            //                     .adclrc
		.audio_if_bclk                      (bf_time_pcm_inst_audio_if_bfm_conduit_bclk),              //                     .bclk
		.audio_if_dacdat                    (bf_time_pcm_inst_audio_if_dacdat),                        //                     .dacdat
		.audio_if_daclrc                    (bf_time_pcm_inst_audio_if_bfm_conduit_daclrc),            //                     .daclrc
		.clk_100_clk                        (bf_time_pcm_inst_clk_100_bfm_clk_clk),                    //              clk_100.clk
		.clk_50_clk                         (bf_time_pcm_inst_clk_50_bfm_clk_clk),                     //               clk_50.clk
		.i2c_scl_export                     (bf_time_pcm_inst_i2c_scl_export),                         //              i2c_scl.export
		.i2c_sda_export                     (bf_time_pcm_inst_i2c_sda_export),                         //              i2c_sda.export
		.key_export                         (bf_time_pcm_inst_key_bfm_conduit_export),                 //                  key.export
		.led_export                         (bf_time_pcm_inst_led_export),                             //                  led.export
		.mic_if_avalon_st_pdm_error         (bf_time_pcm_inst_mic_if_avalon_st_pdm_error),             // mic_if_avalon_st_pdm.error
		.mic_if_avalon_st_pdm_data          (bf_time_pcm_inst_mic_if_avalon_st_pdm_data),              //                     .data
		.mic_if_avalon_st_pdm_valid         (bf_time_pcm_inst_mic_if_avalon_st_pdm_valid),             //                     .valid
		.mic_if_avalon_st_pdm_endofpacket   (bf_time_pcm_inst_mic_if_avalon_st_pdm_endofpacket),       //                     .endofpacket
		.mic_if_avalon_st_pdm_startofpacket (bf_time_pcm_inst_mic_if_avalon_st_pdm_startofpacket),     //                     .startofpacket
		.mic_if_avalon_st_pdm_ready         (bf_time_pcm_inst_mic_if_avalon_st_pdm_bfm_conduit_ready), //                     .ready
		.mic_if_pdm_if_pdm_data             (bf_time_pcm_inst_mic_if_pdm_if_bfm_conduit_pdm_data),     //        mic_if_pdm_if.pdm_data
		.mic_if_pdm_if_pdm_clk_ff           (bf_time_pcm_inst_mic_if_pdm_if_pdm_clk_ff),               //                     .pdm_clk_ff
		.mic_if_pdm_if_pulse_lr             (bf_time_pcm_inst_mic_if_pdm_if_pulse_lr),                 //                     .pulse_lr
		.mic_if_system_clk_dec16            (bf_time_pcm_inst_mic_if_system_bfm_conduit_clk_dec16),    //        mic_if_system.clk_dec16
		.mic_if_system_enable_clk_dec       (bf_time_pcm_inst_mic_if_system_enable_clk_dec),           //                     .enable_clk_dec
		.mic_if_system_enable_clk_dec16     (bf_time_pcm_inst_mic_if_system_enable_clk_dec16),         //                     .enable_clk_dec16
		.mic_if_system_clk_dec              (bf_time_pcm_inst_mic_if_system_bfm_conduit_clk_dec),      //                     .clk_dec
		.mic_if_test_pdm_data_inp           (bf_time_pcm_inst_mic_if_test_pdm_data_inp),               //          mic_if_test.pdm_data_inp
		.mic_if_test_mic_enable             (bf_time_pcm_inst_mic_if_test_mic_enable),                 //                     .mic_enable
		.pwm_out_export                     (bf_time_pcm_inst_pwm_out_export),                         //              pwm_out.export
		.reset_100_reset_n                  (bf_time_pcm_inst_reset_100_bfm_reset_reset),              //            reset_100.reset_n
		.reset_50_reset_n                   (bf_time_pcm_inst_reset_50_bfm_reset_reset),               //             reset_50.reset_n
		.seg7_export                        (bf_time_pcm_inst_seg7_export),                            //                 seg7.export
		.sw_export                          (bf_time_pcm_inst_sw_bfm_conduit_export),                  //                   sw.export
		.mic_if_avalon_st_fil_data          (bf_time_pcm_inst_mic_if_avalon_st_fil_data),              // mic_if_avalon_st_fil.data
		.mic_if_avalon_st_fil_valid         (bf_time_pcm_inst_mic_if_avalon_st_fil_valid),             //                     .valid
		.mic_if_avalon_st_fil_startofpacket (bf_time_pcm_inst_mic_if_avalon_st_fil_startofpacket),     //                     .startofpacket
		.mic_if_avalon_st_fil_endofpacket   (bf_time_pcm_inst_mic_if_avalon_st_fil_endofpacket),       //                     .endofpacket
		.mic_if_avalon_st_fil_ready         (bf_time_pcm_inst_mic_if_avalon_st_fil_bfm_conduit_ready), //                     .ready
		.mic_if_avalon_st_fil_error         (bf_time_pcm_inst_mic_if_avalon_st_fil_error)              //                     .error
	);

	altera_conduit_bfm bf_time_pcm_inst_audio_ext_bfm (
		.sig_valid    (bf_time_pcm_inst_audio_ext_bfm_conduit_valid), // conduit.valid
		.sig_clock_en (bf_time_pcm_inst_audio_ext_clock_en),          //        .clock_en
		.sig_data     (bf_time_pcm_inst_audio_ext_bfm_conduit_data)   //        .data
	);

	altera_conduit_bfm_0002 bf_time_pcm_inst_audio_if_bfm (
		.sig_adcdat (bf_time_pcm_inst_audio_if_bfm_conduit_adcdat), // conduit.adcdat
		.sig_adclrc (bf_time_pcm_inst_audio_if_bfm_conduit_adclrc), //        .adclrc
		.sig_bclk   (bf_time_pcm_inst_audio_if_bfm_conduit_bclk),   //        .bclk
		.sig_dacdat (bf_time_pcm_inst_audio_if_dacdat),             //        .dacdat
		.sig_daclrc (bf_time_pcm_inst_audio_if_bfm_conduit_daclrc)  //        .daclrc
	);

	altera_avalon_clock_source #(
		.CLOCK_RATE (100000000),
		.CLOCK_UNIT (1)
	) bf_time_pcm_inst_clk_100_bfm (
		.clk (bf_time_pcm_inst_clk_100_bfm_clk_clk)  // clk.clk
	);

	altera_avalon_clock_source #(
		.CLOCK_RATE (50000000),
		.CLOCK_UNIT (1)
	) bf_time_pcm_inst_clk_50_bfm (
		.clk (bf_time_pcm_inst_clk_50_bfm_clk_clk)  // clk.clk
	);

	altera_conduit_bfm_0003 bf_time_pcm_inst_i2c_scl_bfm (
		.sig_export (bf_time_pcm_inst_i2c_scl_export)  // conduit.export
	);

	altera_conduit_bfm_0004 bf_time_pcm_inst_i2c_sda_bfm (
		.sig_export (bf_time_pcm_inst_i2c_sda_export)  // conduit.export
	);

	altera_conduit_bfm_0005 bf_time_pcm_inst_key_bfm (
		.sig_export (bf_time_pcm_inst_key_bfm_conduit_export)  // conduit.export
	);

	altera_conduit_bfm_0006 bf_time_pcm_inst_led_bfm (
		.sig_export (bf_time_pcm_inst_led_export)  // conduit.export
	);

	altera_conduit_bfm_0007 bf_time_pcm_inst_mic_if_avalon_st_fil_bfm (
		.clk               (bf_time_pcm_inst_clk_50_bfm_clk_clk),                     //     clk.clk
		.reset             (rst_controller_reset_out_reset),                          //   reset.reset
		.sig_data          (bf_time_pcm_inst_mic_if_avalon_st_fil_data),              // conduit.data
		.sig_valid         (bf_time_pcm_inst_mic_if_avalon_st_fil_valid),             //        .valid
		.sig_startofpacket (bf_time_pcm_inst_mic_if_avalon_st_fil_startofpacket),     //        .startofpacket
		.sig_endofpacket   (bf_time_pcm_inst_mic_if_avalon_st_fil_endofpacket),       //        .endofpacket
		.sig_ready         (bf_time_pcm_inst_mic_if_avalon_st_fil_bfm_conduit_ready), //        .ready
		.sig_error         (bf_time_pcm_inst_mic_if_avalon_st_fil_error)              //        .error
	);

	altera_conduit_bfm_0008 bf_time_pcm_inst_mic_if_avalon_st_pdm_bfm (
		.clk               (bf_time_pcm_inst_clk_50_bfm_clk_clk),                     //     clk.clk
		.reset             (rst_controller_reset_out_reset),                          //   reset.reset
		.sig_error         (bf_time_pcm_inst_mic_if_avalon_st_pdm_error),             // conduit.error
		.sig_data          (bf_time_pcm_inst_mic_if_avalon_st_pdm_data),              //        .data
		.sig_valid         (bf_time_pcm_inst_mic_if_avalon_st_pdm_valid),             //        .valid
		.sig_endofpacket   (bf_time_pcm_inst_mic_if_avalon_st_pdm_endofpacket),       //        .endofpacket
		.sig_startofpacket (bf_time_pcm_inst_mic_if_avalon_st_pdm_startofpacket),     //        .startofpacket
		.sig_ready         (bf_time_pcm_inst_mic_if_avalon_st_pdm_bfm_conduit_ready)  //        .ready
	);

	altera_conduit_bfm_0009 bf_time_pcm_inst_mic_if_pdm_if_bfm (
		//.sig_pdm_data   (bf_time_pcm_inst_mic_if_pdm_if_bfm_conduit_pdm_data), // conduit.pdm_data
		.sig_pdm_clk_ff (bf_time_pcm_inst_mic_if_pdm_if_pdm_clk_ff),           //        .pdm_clk_ff
		.sig_pulse_lr   (bf_time_pcm_inst_mic_if_pdm_if_pulse_lr)              //        .pulse_lr
	);

	altera_conduit_bfm_0010 bf_time_pcm_inst_mic_if_system_bfm (
		.sig_clk_dec16        (bf_time_pcm_inst_mic_if_system_bfm_conduit_clk_dec16), // conduit.clk_dec16
		.sig_enable_clk_dec   (bf_time_pcm_inst_mic_if_system_enable_clk_dec),        //        .enable_clk_dec
		.sig_enable_clk_dec16 (bf_time_pcm_inst_mic_if_system_enable_clk_dec16),      //        .enable_clk_dec16
		.sig_clk_dec          (bf_time_pcm_inst_mic_if_system_bfm_conduit_clk_dec)    //        .clk_dec
	);

	altera_conduit_bfm_0011 bf_time_pcm_inst_mic_if_test_bfm (
		.sig_pdm_data_inp (bf_time_pcm_inst_mic_if_test_pdm_data_inp), // conduit.pdm_data_inp
		.sig_mic_enable   (bf_time_pcm_inst_mic_if_test_mic_enable)    //        .mic_enable
	);

	altera_conduit_bfm_0012 bf_time_pcm_inst_pwm_out_bfm (
		.clk        (bf_time_pcm_inst_clk_50_bfm_clk_clk), //     clk.clk
		.sig_export (bf_time_pcm_inst_pwm_out_export),     // conduit.export
		.reset      (1'b0)                                 // (terminated)
	);

	altera_avalon_reset_source #(
		.ASSERT_HIGH_RESET    (0),
		.INITIAL_RESET_CYCLES (50)
	) bf_time_pcm_inst_reset_100_bfm (
		.reset (bf_time_pcm_inst_reset_100_bfm_reset_reset), // reset.reset_n
		.clk   (bf_time_pcm_inst_clk_100_bfm_clk_clk)        //   clk.clk
	);

	altera_avalon_reset_source #(
		.ASSERT_HIGH_RESET    (0),
		.INITIAL_RESET_CYCLES (50)
	) bf_time_pcm_inst_reset_50_bfm (
		.reset (bf_time_pcm_inst_reset_50_bfm_reset_reset), // reset.reset_n
		.clk   (bf_time_pcm_inst_clk_100_bfm_clk_clk)       //   clk.clk
	);

	altera_conduit_bfm_0013 bf_time_pcm_inst_seg7_bfm (
		.sig_export (bf_time_pcm_inst_seg7_export)  // conduit.export
	);

	altera_conduit_bfm_0014 bf_time_pcm_inst_sw_bfm (
		.sig_export (bf_time_pcm_inst_sw_bfm_conduit_export)  // conduit.export
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~bf_time_pcm_inst_reset_50_bfm_reset_reset), // reset_in0.reset
		.clk            (bf_time_pcm_inst_clk_50_bfm_clk_clk),        //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),             // reset_out.reset
		.reset_req      (),                                           // (terminated)
		.reset_req_in0  (1'b0),                                       // (terminated)
		.reset_in1      (1'b0),                                       // (terminated)
		.reset_req_in1  (1'b0),                                       // (terminated)
		.reset_in2      (1'b0),                                       // (terminated)
		.reset_req_in2  (1'b0),                                       // (terminated)
		.reset_in3      (1'b0),                                       // (terminated)
		.reset_req_in3  (1'b0),                                       // (terminated)
		.reset_in4      (1'b0),                                       // (terminated)
		.reset_req_in4  (1'b0),                                       // (terminated)
		.reset_in5      (1'b0),                                       // (terminated)
		.reset_req_in5  (1'b0),                                       // (terminated)
		.reset_in6      (1'b0),                                       // (terminated)
		.reset_req_in6  (1'b0),                                       // (terminated)
		.reset_in7      (1'b0),                                       // (terminated)
		.reset_req_in7  (1'b0),                                       // (terminated)
		.reset_in8      (1'b0),                                       // (terminated)
		.reset_req_in8  (1'b0),                                       // (terminated)
		.reset_in9      (1'b0),                                       // (terminated)
		.reset_req_in9  (1'b0),                                       // (terminated)
		.reset_in10     (1'b0),                                       // (terminated)
		.reset_req_in10 (1'b0),                                       // (terminated)
		.reset_in11     (1'b0),                                       // (terminated)
		.reset_req_in11 (1'b0),                                       // (terminated)
		.reset_in12     (1'b0),                                       // (terminated)
		.reset_req_in12 (1'b0),                                       // (terminated)
		.reset_in13     (1'b0),                                       // (terminated)
		.reset_req_in13 (1'b0),                                       // (terminated)
		.reset_in14     (1'b0),                                       // (terminated)
		.reset_req_in14 (1'b0),                                       // (terminated)
		.reset_in15     (1'b0),                                       // (terminated)
		.reset_req_in15 (1'b0)                                        // (terminated)
	);

endmodule