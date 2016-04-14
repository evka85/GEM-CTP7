library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use work.ipbus_pkg.all;

package ipb_addr_decode is

  type t_integer_arr  is array(natural range <>) of integer;
  type t_ipb_slv is record
    oh_reg   : t_integer_arr(0 to 11);
    oh_evt   : t_integer_arr(0 to 11);
    counters : integer;
    daq      : integer;
    ttc      : integer;
    trigger  : integer;
  end record;
  
  -- IPbus slave index definition
  constant ipb_slv : t_ipb_slv := (oh_reg   => (0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22),
                                   oh_evt   => (1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23),
                                   counters => 48,
                                   daq      => 49,
                                   ttc      => 50,
                                   trigger  => 51);
  
	function ipb_addr_sel(signal addr : in std_logic_vector(31 downto 0)) return integer;

end ipb_addr_decode;

package body ipb_addr_decode is

	function ipb_addr_sel(signal addr : in std_logic_vector(31 downto 0)) return integer is
		variable sel : integer;
	begin
		if    std_match(addr, "0100----00000000----------------") then sel := ipb_slv.oh_reg(0);
		elsif std_match(addr, "0100----00010000----------------") then sel := ipb_slv.oh_reg(1);
		elsif std_match(addr, "010100000000000000000000000000--") then sel := ipb_slv.oh_evt(0);
		elsif std_match(addr, "010100000001000000000000000000--") then sel := ipb_slv.oh_evt(1);
		elsif std_match(addr, "011000000000000000000000--------") then sel := ipb_slv.counters;
		elsif std_match(addr, "01110000000000000000000---------") then sel := ipb_slv.daq;
		elsif std_match(addr, "01111000000000000000000---------") then sel := ipb_slv.trigger;
		elsif std_match(addr, "01111100000000000000000000000---") then sel := ipb_slv.ttc;
		else sel := 99;
		end if;
		return sel;
	end ipb_addr_sel;

end ipb_addr_decode;