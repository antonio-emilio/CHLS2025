-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    2022.2_1/1019737 Production Release
--  HLS Date:       Mon Nov 21 20:05:27 PST 2022
-- 
--  Generated by:   HLS_student@localhost.localdomain
--  Generated date: Sun Feb 16 16:45:16 2025
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    top_level_FIR_FILTER
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;


ENTITY top_level_FIR_FILTER IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    valid_in : IN STD_LOGIC;
    coeffs_0 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_1 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_2 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_3 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_4 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_5 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_6 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_7 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_8 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_9 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_10 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_11 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_12 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_13 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_14 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_15 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR (23 DOWNTO 0);
    valid_out : OUT STD_LOGIC
  );
END top_level_FIR_FILTER;

ARCHITECTURE v1 OF top_level_FIR_FILTER IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL while_if_slc_while_if_acc_sat_29_3 : STD_LOGIC;
  SIGNAL while_if_while_if_nor_3 : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL while_if_while_if_nor_4 : STD_LOGIC;
  SIGNAL MAC_slc_MAC_2_MAC_acc_tmp : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL or_tmp : STD_LOGIC;
  SIGNAL or_dcpl_3 : STD_LOGIC;
  SIGNAL or_dcpl_4 : STD_LOGIC;
  SIGNAL mux_tmp_9 : STD_LOGIC;
  SIGNAL MAC_i_4_1_lpi_1_2_0 : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL exitL_exit_MAC_lpi_1_dfm : STD_LOGIC;
  SIGNAL exitL_exitL_exit_MAC_sva : STD_LOGIC;
  SIGNAL new_sample_wr_sva : STD_LOGIC;
  SIGNAL acc_1_sva_2 : STD_LOGIC_VECTOR (51 DOWNTO 0);
  SIGNAL while_asn_sft_lpi_1_dfm_st_1_mx0 : STD_LOGIC;
  SIGNAL MAC_equal_tmp_15 : STD_LOGIC;
  SIGNAL MAC_i_slc_MAC_i_4_1_3_1_itm_1 : STD_LOGIC;
  SIGNAL while_asn_sft_lpi_1_dfm_st_1 : STD_LOGIC;
  SIGNAL while_stage_0_2 : STD_LOGIC;
  SIGNAL while_stage_0_3 : STD_LOGIC;
  SIGNAL MAC_i_slc_MAC_i_4_1_3_1_itm_2 : STD_LOGIC;
  SIGNAL while_asn_sft_lpi_1_dfm_st_2 : STD_LOGIC;
  SIGNAL while_else_land_lpi_1_dfm_st_2 : STD_LOGIC;
  SIGNAL while_asn_sft_lpi_1_dfm_2 : STD_LOGIC;
  SIGNAL while_if_acc_sat_sva_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL MAC_i_4_1_lpi_1_dfm_2_0_1 : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL nand_2_cse : STD_LOGIC;
  SIGNAL nor_cse : STD_LOGIC;
  SIGNAL acc_1_lpi_1 : STD_LOGIC_VECTOR (51 DOWNTO 0);
  SIGNAL taps_7_sva : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL taps_8_sva : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL taps_6_sva : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL taps_9_sva : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL taps_5_sva : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL taps_10_sva : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL taps_4_sva : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL taps_11_sva : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL taps_3_sva : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL taps_12_sva : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL taps_2_sva : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL taps_13_sva : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL taps_1_sva : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL taps_14_sva : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL taps_0_sva : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL taps_15_lpi_1_dfm_1 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL lfst_exitL_exit_MAC_lpi_1_dfm_1 : STD_LOGIC;
  SIGNAL MAC_mux1h_1_itm_1 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL MAC_mux1h_2_itm_1 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL MAC_1_mul_itm_1 : STD_LOGIC_VECTOR (47 DOWNTO 0);
  SIGNAL MAC_mux1h_itm_1 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL MAC_mux1h_3_itm_1 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL MAC_2_mul_itm_1 : STD_LOGIC_VECTOR (47 DOWNTO 0);
  SIGNAL while_while_and_itm_1 : STD_LOGIC_VECTOR (51 DOWNTO 0);
  SIGNAL valid_out_mx0c1 : STD_LOGIC;
  SIGNAL while_if_nor_ovfl_sva_1 : STD_LOGIC;
  SIGNAL while_if_and_unfl_sva_1 : STD_LOGIC;
  SIGNAL exitL_exit_MAC_lpi_1_dfm_1 : STD_LOGIC;
  SIGNAL acc_1_lpi_1_mx0 : STD_LOGIC_VECTOR (51 DOWNTO 0);
  SIGNAL while_else_land_lpi_1_dfm_mx0w1 : STD_LOGIC;
  SIGNAL MAC_asn_75 : STD_LOGIC;
  SIGNAL MAC_asn_77 : STD_LOGIC;
  SIGNAL MAC_asn_79 : STD_LOGIC;
  SIGNAL MAC_asn_81 : STD_LOGIC;
  SIGNAL MAC_asn_83 : STD_LOGIC;
  SIGNAL MAC_asn_85 : STD_LOGIC;
  SIGNAL MAC_asn_87 : STD_LOGIC;
  SIGNAL MAC_asn_89 : STD_LOGIC;
  SIGNAL MAC_asn_91 : STD_LOGIC;

  SIGNAL while_if_nor_3_nl : STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL while_while_or_1_nl : STD_LOGIC;
  SIGNAL while_else_while_else_and_1_nl : STD_LOGIC;
  SIGNAL mux_8_nl : STD_LOGIC;
  SIGNAL or_11_nl : STD_LOGIC;
  SIGNAL while_if_and_nl : STD_LOGIC;
  SIGNAL while_if_while_if_and_nl : STD_LOGIC;
  SIGNAL nand_3_nl : STD_LOGIC;
  FUNCTION CONV_SL_1_1(input_val:BOOLEAN)
  RETURN STD_LOGIC IS
  BEGIN
    IF input_val THEN RETURN '1';ELSE RETURN '0';END IF;
  END;

  FUNCTION MUX1HOT_v_24_8_2(input_7 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(7 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(23 DOWNTO 0);
    VARIABLE tmp : STD_LOGIC_VECTOR(23 DOWNTO 0);

    BEGIN
      tmp := (OTHERS=>sel(0));
      result := input_0 and tmp;
      tmp := (OTHERS=>sel( 1));
      result := result or ( input_1 and tmp);
      tmp := (OTHERS=>sel( 2));
      result := result or ( input_2 and tmp);
      tmp := (OTHERS=>sel( 3));
      result := result or ( input_3 and tmp);
      tmp := (OTHERS=>sel( 4));
      result := result or ( input_4 and tmp);
      tmp := (OTHERS=>sel( 5));
      result := result or ( input_5 and tmp);
      tmp := (OTHERS=>sel( 6));
      result := result or ( input_6 and tmp);
      tmp := (OTHERS=>sel( 7));
      result := result or ( input_7 and tmp);
    RETURN result;
  END;

  FUNCTION MUX1HOT_v_24_9_2(input_8 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  input_0 : STD_LOGIC_VECTOR(23 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(8 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(23 DOWNTO 0);
    VARIABLE tmp : STD_LOGIC_VECTOR(23 DOWNTO 0);

    BEGIN
      tmp := (OTHERS=>sel(0));
      result := input_0 and tmp;
      tmp := (OTHERS=>sel( 1));
      result := result or ( input_1 and tmp);
      tmp := (OTHERS=>sel( 2));
      result := result or ( input_2 and tmp);
      tmp := (OTHERS=>sel( 3));
      result := result or ( input_3 and tmp);
      tmp := (OTHERS=>sel( 4));
      result := result or ( input_4 and tmp);
      tmp := (OTHERS=>sel( 5));
      result := result or ( input_5 and tmp);
      tmp := (OTHERS=>sel( 6));
      result := result or ( input_6 and tmp);
      tmp := (OTHERS=>sel( 7));
      result := result or ( input_7 and tmp);
      tmp := (OTHERS=>sel( 8));
      result := result or ( input_8 and tmp);
    RETURN result;
  END;

  FUNCTION MUX_s_1_2_2(input_0 : STD_LOGIC;
  input_1 : STD_LOGIC;
  sel : STD_LOGIC)
  RETURN STD_LOGIC IS
    VARIABLE result : STD_LOGIC;

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_22_2_2(input_0 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(21 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(21 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_3_2_2(input_0 : STD_LOGIC_VECTOR(2 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(2 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_52_2_2(input_0 : STD_LOGIC_VECTOR(51 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(51 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(51 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

BEGIN
  data_out <= while_if_slc_while_if_acc_sat_29_3 & while_if_while_if_nor_3 & while_if_while_if_nor_4;
  nand_2_cse <= NOT(while_asn_sft_lpi_1_dfm_st_1 AND while_stage_0_2);
  nor_cse <= NOT(exitL_exit_MAC_lpi_1_dfm OR exitL_exitL_exit_MAC_sva);
  while_if_and_nl <= (acc_1_sva_2(22)) AND ((acc_1_sva_2(0)) OR (acc_1_sva_2(1))
      OR (acc_1_sva_2(2)) OR (acc_1_sva_2(3)) OR (acc_1_sva_2(4)) OR (acc_1_sva_2(5))
      OR (acc_1_sva_2(6)) OR (acc_1_sva_2(7)) OR (acc_1_sva_2(8)) OR (acc_1_sva_2(9))
      OR (acc_1_sva_2(10)) OR (acc_1_sva_2(11)) OR (acc_1_sva_2(12)) OR (acc_1_sva_2(13))
      OR (acc_1_sva_2(14)) OR (acc_1_sva_2(15)) OR (acc_1_sva_2(16)) OR (acc_1_sva_2(17))
      OR (acc_1_sva_2(18)) OR (acc_1_sva_2(19)) OR (acc_1_sva_2(20)) OR (acc_1_sva_2(21))
      OR (NOT (acc_1_sva_2(51))));
  while_if_acc_sat_sva_1 <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_SIGNED(SIGNED(acc_1_sva_2(51
      DOWNTO 23)), 29), 30) + CONV_SIGNED(CONV_UNSIGNED(while_if_and_nl, 1), 30),
      30));
  while_if_nor_ovfl_sva_1 <= NOT((while_if_acc_sat_sva_1(29)) OR (NOT(CONV_SL_1_1(while_if_acc_sat_sva_1(28
      DOWNTO 23)/=STD_LOGIC_VECTOR'("000000")))));
  while_if_and_unfl_sva_1 <= (while_if_acc_sat_sva_1(29)) AND (NOT(CONV_SL_1_1(while_if_acc_sat_sva_1(28
      DOWNTO 23)=STD_LOGIC_VECTOR'("111111"))));
  acc_1_sva_2 <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(while_while_and_itm_1) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_1_mul_itm_1),
      48), 52) + CONV_SIGNED(CONV_SIGNED(SIGNED(MAC_2_mul_itm_1), 48), 52), 52));
  MAC_i_4_1_lpi_1_dfm_2_0_1 <= MUX_v_3_2_2(STD_LOGIC_VECTOR'("000"), MAC_i_4_1_lpi_1_2_0,
      nor_cse);
  while_if_while_if_and_nl <= valid_in AND (NOT new_sample_wr_sva);
  while_asn_sft_lpi_1_dfm_st_1_mx0 <= MUX_s_1_2_2(while_asn_sft_lpi_1_dfm_st_1, while_if_while_if_and_nl,
      or_dcpl_4);
  exitL_exit_MAC_lpi_1_dfm_1 <= (MAC_slc_MAC_2_MAC_acc_tmp(3)) OR (NOT while_asn_sft_lpi_1_dfm_st_1_mx0);
  nand_3_nl <= NOT(while_stage_0_3 AND while_asn_sft_lpi_1_dfm_2);
  acc_1_lpi_1_mx0 <= MUX_v_52_2_2(acc_1_sva_2, acc_1_lpi_1, nand_3_nl);
  while_else_land_lpi_1_dfm_mx0w1 <= (NOT valid_in) AND new_sample_wr_sva;
  MAC_slc_MAC_2_MAC_acc_tmp <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_UNSIGNED(UNSIGNED(MAC_i_4_1_lpi_1_dfm_2_0_1),
      3), 4) + SIGNED'( "0001"), 4));
  MAC_equal_tmp_15 <= NOT(CONV_SL_1_1(MAC_i_4_1_lpi_1_dfm_2_0_1/=STD_LOGIC_VECTOR'("000")));
  MAC_asn_75 <= nor_cse AND MAC_equal_tmp_15;
  MAC_asn_77 <= (NOT nor_cse) AND MAC_equal_tmp_15;
  MAC_asn_79 <= CONV_SL_1_1(MAC_i_4_1_lpi_1_dfm_2_0_1=STD_LOGIC_VECTOR'("001"));
  MAC_asn_81 <= CONV_SL_1_1(MAC_i_4_1_lpi_1_dfm_2_0_1=STD_LOGIC_VECTOR'("010"));
  MAC_asn_83 <= CONV_SL_1_1(MAC_i_4_1_lpi_1_dfm_2_0_1=STD_LOGIC_VECTOR'("011"));
  MAC_asn_85 <= CONV_SL_1_1(MAC_i_4_1_lpi_1_dfm_2_0_1=STD_LOGIC_VECTOR'("100"));
  MAC_asn_87 <= CONV_SL_1_1(MAC_i_4_1_lpi_1_dfm_2_0_1=STD_LOGIC_VECTOR'("101"));
  MAC_asn_89 <= CONV_SL_1_1(MAC_i_4_1_lpi_1_dfm_2_0_1=STD_LOGIC_VECTOR'("110"));
  MAC_asn_91 <= CONV_SL_1_1(MAC_i_4_1_lpi_1_dfm_2_0_1=STD_LOGIC_VECTOR'("111"));
  or_tmp <= new_sample_wr_sva OR (NOT valid_in);
  or_dcpl_3 <= NOT(while_stage_0_3 AND MAC_i_slc_MAC_i_4_1_3_1_itm_2 AND while_asn_sft_lpi_1_dfm_st_2);
  or_dcpl_4 <= exitL_exit_MAC_lpi_1_dfm OR exitL_exitL_exit_MAC_sva;
  mux_tmp_9 <= MUX_s_1_2_2((NOT exitL_exit_MAC_lpi_1_dfm), or_tmp, exitL_exitL_exit_MAC_sva);
  valid_out_mx0c1 <= while_stage_0_3 AND while_else_land_lpi_1_dfm_st_2 AND (NOT
      while_asn_sft_lpi_1_dfm_st_2);
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        valid_out <= '0';
      ELSIF ( ((while_stage_0_3 AND MAC_i_slc_MAC_i_4_1_3_1_itm_2 AND while_asn_sft_lpi_1_dfm_st_2)
          OR valid_out_mx0c1) = '1' ) THEN
        valid_out <= NOT valid_out_mx0c1;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF ( or_dcpl_3 = '0' ) THEN
        while_if_slc_while_if_acc_sat_29_3 <= while_if_acc_sat_sva_1(29);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF ( or_dcpl_3 = '0' ) THEN
        while_if_while_if_nor_3 <= NOT(MUX_v_22_2_2(while_if_nor_3_nl, STD_LOGIC_VECTOR'("1111111111111111111111"),
            while_if_and_unfl_sva_1));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF ( or_dcpl_3 = '0' ) THEN
        while_if_while_if_nor_4 <= NOT((NOT((while_if_acc_sat_sva_1(0)) OR while_if_nor_ovfl_sva_1))
            OR while_if_and_unfl_sva_1);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        MAC_i_slc_MAC_i_4_1_3_1_itm_2 <= '0';
        while_else_land_lpi_1_dfm_st_2 <= '0';
        while_asn_sft_lpi_1_dfm_st_2 <= '0';
        new_sample_wr_sva <= '0';
        MAC_i_4_1_lpi_1_2_0 <= STD_LOGIC_VECTOR'( "000");
        while_asn_sft_lpi_1_dfm_st_1 <= '0';
        exitL_exit_MAC_lpi_1_dfm <= '0';
        exitL_exitL_exit_MAC_sva <= '1';
        while_stage_0_2 <= '0';
        while_stage_0_3 <= '0';
        while_asn_sft_lpi_1_dfm_2 <= '0';
        lfst_exitL_exit_MAC_lpi_1_dfm_1 <= '0';
        MAC_i_slc_MAC_i_4_1_3_1_itm_1 <= '0';
      ELSE
        MAC_i_slc_MAC_i_4_1_3_1_itm_2 <= MAC_i_slc_MAC_i_4_1_3_1_itm_1;
        while_else_land_lpi_1_dfm_st_2 <= while_asn_sft_lpi_1_dfm_2;
        while_asn_sft_lpi_1_dfm_st_2 <= while_asn_sft_lpi_1_dfm_st_1;
        new_sample_wr_sva <= MUX_s_1_2_2(while_while_or_1_nl, while_else_while_else_and_1_nl,
            mux_8_nl);
        MAC_i_4_1_lpi_1_2_0 <= MAC_slc_MAC_2_MAC_acc_tmp(2 DOWNTO 0);
        while_asn_sft_lpi_1_dfm_st_1 <= while_asn_sft_lpi_1_dfm_st_1_mx0;
        exitL_exit_MAC_lpi_1_dfm <= exitL_exit_MAC_lpi_1_dfm_1;
        exitL_exitL_exit_MAC_sva <= exitL_exit_MAC_lpi_1_dfm_1;
        while_stage_0_2 <= '1';
        while_stage_0_3 <= while_stage_0_2;
        while_asn_sft_lpi_1_dfm_2 <= MUX_s_1_2_2(while_asn_sft_lpi_1_dfm_st_1, while_else_land_lpi_1_dfm_mx0w1,
            or_11_nl);
        lfst_exitL_exit_MAC_lpi_1_dfm_1 <= nor_cse;
        MAC_i_slc_MAC_i_4_1_3_1_itm_1 <= MAC_slc_MAC_2_MAC_acc_tmp(3);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      MAC_1_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED'( SIGNED(MAC_mux1h_1_itm_1)
          * SIGNED(MAC_mux1h_2_itm_1)), 48));
      MAC_2_mul_itm_1 <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED'( SIGNED(MAC_mux1h_itm_1)
          * SIGNED(MAC_mux1h_3_itm_1)), 48));
      while_while_and_itm_1 <= MUX_v_52_2_2(STD_LOGIC_VECTOR'("0000000000000000000000000000000000000000000000000000"),
          acc_1_lpi_1_mx0, lfst_exitL_exit_MAC_lpi_1_dfm_1);
      acc_1_lpi_1 <= acc_1_lpi_1_mx0;
      MAC_mux1h_itm_1 <= MUX1HOT_v_24_8_2(coeffs_1, coeffs_3, coeffs_5, coeffs_7,
          coeffs_9, coeffs_11, coeffs_13, coeffs_15, STD_LOGIC_VECTOR'( MAC_equal_tmp_15
          & MAC_asn_79 & MAC_asn_81 & MAC_asn_83 & MAC_asn_85 & MAC_asn_87 & MAC_asn_89
          & MAC_asn_91));
      MAC_mux1h_3_itm_1 <= MUX1HOT_v_24_9_2(taps_1_sva, taps_0_sva, taps_3_sva, taps_5_sva,
          taps_7_sva, taps_9_sva, taps_11_sva, taps_13_sva, taps_15_lpi_1_dfm_1,
          STD_LOGIC_VECTOR'( MAC_asn_75 & MAC_asn_77 & MAC_asn_79 & MAC_asn_81 &
          MAC_asn_83 & MAC_asn_85 & MAC_asn_87 & MAC_asn_89 & MAC_asn_91));
      MAC_mux1h_1_itm_1 <= MUX1HOT_v_24_8_2(coeffs_0, coeffs_2, coeffs_4, coeffs_6,
          coeffs_8, coeffs_10, coeffs_12, coeffs_14, STD_LOGIC_VECTOR'( MAC_equal_tmp_15
          & MAC_asn_79 & MAC_asn_81 & MAC_asn_83 & MAC_asn_85 & MAC_asn_87 & MAC_asn_89
          & MAC_asn_91));
      MAC_mux1h_2_itm_1 <= MUX1HOT_v_24_9_2(taps_0_sva, data_in, taps_2_sva, taps_4_sva,
          taps_6_sva, taps_8_sva, taps_10_sva, taps_12_sva, taps_14_sva, STD_LOGIC_VECTOR'(
          MAC_asn_75 & MAC_asn_77 & MAC_asn_79 & MAC_asn_81 & MAC_asn_83 & MAC_asn_85
          & MAC_asn_87 & MAC_asn_89 & MAC_asn_91));
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        taps_0_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000");
      ELSIF ( mux_tmp_9 = '0' ) THEN
        taps_0_sva <= data_in;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        taps_1_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000");
      ELSIF ( mux_tmp_9 = '0' ) THEN
        taps_1_sva <= taps_0_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        taps_3_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000");
      ELSIF ( mux_tmp_9 = '0' ) THEN
        taps_3_sva <= taps_2_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        taps_5_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000");
      ELSIF ( mux_tmp_9 = '0' ) THEN
        taps_5_sva <= taps_4_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        taps_7_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000");
      ELSIF ( mux_tmp_9 = '0' ) THEN
        taps_7_sva <= taps_6_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        taps_9_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000");
      ELSIF ( mux_tmp_9 = '0' ) THEN
        taps_9_sva <= taps_8_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        taps_11_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000");
      ELSIF ( mux_tmp_9 = '0' ) THEN
        taps_11_sva <= taps_10_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        taps_13_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000");
      ELSIF ( mux_tmp_9 = '0' ) THEN
        taps_13_sva <= taps_12_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF ( nor_cse = '0' ) THEN
        taps_15_lpi_1_dfm_1 <= taps_14_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        taps_2_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000");
      ELSIF ( mux_tmp_9 = '0' ) THEN
        taps_2_sva <= taps_1_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        taps_4_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000");
      ELSIF ( mux_tmp_9 = '0' ) THEN
        taps_4_sva <= taps_3_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        taps_6_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000");
      ELSIF ( mux_tmp_9 = '0' ) THEN
        taps_6_sva <= taps_5_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        taps_8_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000");
      ELSIF ( mux_tmp_9 = '0' ) THEN
        taps_8_sva <= taps_7_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        taps_10_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000");
      ELSIF ( mux_tmp_9 = '0' ) THEN
        taps_10_sva <= taps_9_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        taps_12_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000");
      ELSIF ( mux_tmp_9 = '0' ) THEN
        taps_12_sva <= taps_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        taps_14_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000");
      ELSIF ( mux_tmp_9 = '0' ) THEN
        taps_14_sva <= taps_13_sva;
      END IF;
    END IF;
  END PROCESS;
  while_if_nor_3_nl <= NOT(MUX_v_22_2_2((while_if_acc_sat_sva_1(22 DOWNTO 1)), STD_LOGIC_VECTOR'("1111111111111111111111"),
      while_if_nor_ovfl_sva_1));
  while_while_or_1_nl <= new_sample_wr_sva OR (NOT nor_cse);
  while_else_while_else_and_1_nl <= new_sample_wr_sva AND (NOT while_else_land_lpi_1_dfm_mx0w1);
  mux_8_nl <= MUX_s_1_2_2(nand_2_cse, or_tmp, exitL_exitL_exit_MAC_sva);
  or_11_nl <= nand_2_cse OR or_dcpl_4;
END v1;

-- ------------------------------------------------------------------
--  Design Unit:    top_level
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;


ENTITY top_level IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    valid_in : IN STD_LOGIC;
    coeffs_0 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_1 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_2 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_3 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_4 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_5 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_6 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_7 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_8 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_9 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_10 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_11 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_12 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_13 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_14 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    coeffs_15 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR (23 DOWNTO 0);
    valid_out : OUT STD_LOGIC
  );
END top_level;

ARCHITECTURE v1 OF top_level IS
  -- Default Constants

  COMPONENT top_level_FIR_FILTER
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      data_in : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      valid_in : IN STD_LOGIC;
      coeffs_0 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      coeffs_1 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      coeffs_2 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      coeffs_3 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      coeffs_4 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      coeffs_5 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      coeffs_6 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      coeffs_7 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      coeffs_8 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      coeffs_9 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      coeffs_10 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      coeffs_11 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      coeffs_12 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      coeffs_13 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      coeffs_14 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      coeffs_15 : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      data_out : OUT STD_LOGIC_VECTOR (23 DOWNTO 0);
      valid_out : OUT STD_LOGIC
    );
  END COMPONENT;
  SIGNAL top_level_FIR_FILTER_inst_data_in : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL top_level_FIR_FILTER_inst_coeffs_0 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL top_level_FIR_FILTER_inst_coeffs_1 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL top_level_FIR_FILTER_inst_coeffs_2 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL top_level_FIR_FILTER_inst_coeffs_3 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL top_level_FIR_FILTER_inst_coeffs_4 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL top_level_FIR_FILTER_inst_coeffs_5 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL top_level_FIR_FILTER_inst_coeffs_6 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL top_level_FIR_FILTER_inst_coeffs_7 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL top_level_FIR_FILTER_inst_coeffs_8 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL top_level_FIR_FILTER_inst_coeffs_9 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL top_level_FIR_FILTER_inst_coeffs_10 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL top_level_FIR_FILTER_inst_coeffs_11 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL top_level_FIR_FILTER_inst_coeffs_12 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL top_level_FIR_FILTER_inst_coeffs_13 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL top_level_FIR_FILTER_inst_coeffs_14 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL top_level_FIR_FILTER_inst_coeffs_15 : STD_LOGIC_VECTOR (23 DOWNTO 0);
  SIGNAL top_level_FIR_FILTER_inst_data_out : STD_LOGIC_VECTOR (23 DOWNTO 0);

BEGIN
  top_level_FIR_FILTER_inst : top_level_FIR_FILTER
    PORT MAP(
      clk => clk,
      rst => rst,
      data_in => top_level_FIR_FILTER_inst_data_in,
      valid_in => valid_in,
      coeffs_0 => top_level_FIR_FILTER_inst_coeffs_0,
      coeffs_1 => top_level_FIR_FILTER_inst_coeffs_1,
      coeffs_2 => top_level_FIR_FILTER_inst_coeffs_2,
      coeffs_3 => top_level_FIR_FILTER_inst_coeffs_3,
      coeffs_4 => top_level_FIR_FILTER_inst_coeffs_4,
      coeffs_5 => top_level_FIR_FILTER_inst_coeffs_5,
      coeffs_6 => top_level_FIR_FILTER_inst_coeffs_6,
      coeffs_7 => top_level_FIR_FILTER_inst_coeffs_7,
      coeffs_8 => top_level_FIR_FILTER_inst_coeffs_8,
      coeffs_9 => top_level_FIR_FILTER_inst_coeffs_9,
      coeffs_10 => top_level_FIR_FILTER_inst_coeffs_10,
      coeffs_11 => top_level_FIR_FILTER_inst_coeffs_11,
      coeffs_12 => top_level_FIR_FILTER_inst_coeffs_12,
      coeffs_13 => top_level_FIR_FILTER_inst_coeffs_13,
      coeffs_14 => top_level_FIR_FILTER_inst_coeffs_14,
      coeffs_15 => top_level_FIR_FILTER_inst_coeffs_15,
      data_out => top_level_FIR_FILTER_inst_data_out,
      valid_out => valid_out
    );
  top_level_FIR_FILTER_inst_data_in <= data_in;
  top_level_FIR_FILTER_inst_coeffs_0 <= coeffs_0;
  top_level_FIR_FILTER_inst_coeffs_1 <= coeffs_1;
  top_level_FIR_FILTER_inst_coeffs_2 <= coeffs_2;
  top_level_FIR_FILTER_inst_coeffs_3 <= coeffs_3;
  top_level_FIR_FILTER_inst_coeffs_4 <= coeffs_4;
  top_level_FIR_FILTER_inst_coeffs_5 <= coeffs_5;
  top_level_FIR_FILTER_inst_coeffs_6 <= coeffs_6;
  top_level_FIR_FILTER_inst_coeffs_7 <= coeffs_7;
  top_level_FIR_FILTER_inst_coeffs_8 <= coeffs_8;
  top_level_FIR_FILTER_inst_coeffs_9 <= coeffs_9;
  top_level_FIR_FILTER_inst_coeffs_10 <= coeffs_10;
  top_level_FIR_FILTER_inst_coeffs_11 <= coeffs_11;
  top_level_FIR_FILTER_inst_coeffs_12 <= coeffs_12;
  top_level_FIR_FILTER_inst_coeffs_13 <= coeffs_13;
  top_level_FIR_FILTER_inst_coeffs_14 <= coeffs_14;
  top_level_FIR_FILTER_inst_coeffs_15 <= coeffs_15;
  data_out <= top_level_FIR_FILTER_inst_data_out;

END v1;



