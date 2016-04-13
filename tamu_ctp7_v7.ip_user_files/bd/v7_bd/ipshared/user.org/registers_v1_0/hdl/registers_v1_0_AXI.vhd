library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.ipbus_pkg.all;

entity registers_v1_0_AXI is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH	: integer	:= 27
	);
	port (
		-- Users to add ports here
    
    -- IPbus clock
    ipb_clk_o   : out std_logic;
    
    -- slave to master IPbus
    ipb_miso_i  : in ipb_rbus_array(0 to 0);
    
    -- master to slave IPbus
    ipb_mosi_o  : out ipb_wbus_array(0 to 0);  
    
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global Clock Signal
		S_AXI_ACLK	: in std_logic;
		-- Global Reset Signal. This Signal is Active LOW
		S_AXI_ARESETN	: in std_logic;
		-- Write address (issued by master, acceped by Slave)
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Write channel Protection type. This signal indicates the
    		-- privilege and security level of the transaction, and whether
    		-- the transaction is a data access or an instruction access.
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		-- Write address valid. This signal indicates that the master signaling
    		-- valid write address and control information.
		S_AXI_AWVALID	: in std_logic;
		-- Write address ready. This signal indicates that the slave is ready
    		-- to accept an address and associated control signals.
		S_AXI_AWREADY	: out std_logic;
		-- Write data (issued by master, acceped by Slave) 
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. This signal indicates which byte lanes hold
    		-- valid data. There is one write strobe bit for each eight
    		-- bits of the write data bus.    
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		-- Write valid. This signal indicates that valid write
    		-- data and strobes are available.
		S_AXI_WVALID	: in std_logic;
		-- Write ready. This signal indicates that the slave
    		-- can accept the write data.
		S_AXI_WREADY	: out std_logic;
		-- Write response. This signal indicates the status
    		-- of the write transaction.
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		-- Write response valid. This signal indicates that the channel
    		-- is signaling a valid write response.
		S_AXI_BVALID	: out std_logic;
		-- Response ready. This signal indicates that the master
    		-- can accept a write response.
		S_AXI_BREADY	: in std_logic;
		-- Read address (issued by master, acceped by Slave)
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Protection type. This signal indicates the privilege
    		-- and security level of the transaction, and whether the
    		-- transaction is a data access or an instruction access.
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		-- Read address valid. This signal indicates that the channel
    		-- is signaling valid read address and control information.
		S_AXI_ARVALID	: in std_logic;
		-- Read address ready. This signal indicates that the slave is
    		-- ready to accept an address and associated control signals.
		S_AXI_ARREADY	: out std_logic;
		-- Read data (issued by slave)
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of the
    		-- read transfer.
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		-- Read valid. This signal indicates that the channel is
    		-- signaling the required read data.
		S_AXI_RVALID	: out std_logic;
		-- Read ready. This signal indicates that the master can
    		-- accept the read data and response information.
		S_AXI_RREADY	: in std_logic
	);
end registers_v1_0_AXI;

architecture arch_imp of registers_v1_0_AXI is

	-- define components here.. (what a pain to do it in two places... but instanciating as entity from work library doesn't work..)
  component ila_axi_regs is
    port (
      clk         : in std_logic;
      probe0      : in std_logic;
      probe1      : in std_logic_vector(31 downto 0);
      probe2      : in std_logic_vector(2 downto 0);
      probe3      : in std_logic;
      probe4      : in std_logic_vector(31 downto 0);
      probe5      : in std_logic_vector(3 downto 0);
      probe6      : in std_logic;
      probe7      : in std_logic;
      probe8      : in std_logic_vector(31 downto 0);
      probe9      : in std_logic_vector(2 downto 0);
      probe10     : in std_logic;
      probe11     : in std_logic;
      probe12     : in std_logic_vector(31 downto 0);
      probe13     : in std_logic;
      probe14     : in std_logic;
      probe15     : in std_logic_vector(1 downto 0);
      probe16     : in std_logic;
      probe17     : in std_logic_vector(31 downto 0);
      probe18     : in std_logic;
      probe19     : in std_logic_vector(31 downto 0);
      probe20     : in std_logic_vector(1 downto 0);
      probe21     : in std_logic;
      probe22     : in std_logic_vector(31 downto 0);
      probe23     : in std_logic_vector(31 downto 0);
      probe24     : in std_logic;
      probe25     : in std_logic;
      probe26     : in std_logic_vector(31 downto 0);
      probe27     : in std_logic;
      probe28     : in std_logic
    );
  end component ila_axi_regs;

	-- AXI4LITE signals
	signal axi_awaddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awready: std_logic;
	signal axi_wready	: std_logic;
	signal axi_wdata	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal axi_bresp	: std_logic_vector(1 downto 0);
	signal axi_bvalid	: std_logic;
	signal axi_araddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arready: std_logic;
	signal axi_rdata	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal axi_rresp	: std_logic_vector(1 downto 0);
	signal axi_rvalid	: std_logic;

	-- Example-specific design signals
	-- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	-- ADDR_LSB is used for addressing 32/64 bit registers/memories
	-- ADDR_LSB = 2 for 32 bits (n downto 2)
	-- ADDR_LSB = 3 for 64 bits (n downto 3)
	constant ADDR_LSB  : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
	constant OPT_MEM_ADDR_BITS : integer := 24;

	------------------------------------------------
	---- IPBus
	--------------------------------------------------

  constant ipb_timeout      : unsigned(23 downto 0) := x"002710"; -- 10000 clock cycles  
  signal ipb_clk            : std_logic;
  signal ipb_state          : ipb_state_t;
  signal ipb_timer          : unsigned(23 downto 0) := (others => '0');

  signal ipb_mosi           : ipb_wbus_array(0 to 0);  

begin
	-- I/O Connections assignments

  ipb_clk_o <= ipb_clk; 
  ipb_clk <= S_AXI_ACLK;

	S_AXI_AWREADY	<= axi_awready;
	S_AXI_WREADY	<= axi_wready;
	S_AXI_BRESP	<= axi_bresp;
	S_AXI_BVALID	<= axi_bvalid;
	S_AXI_ARREADY	<= axi_arready;
	S_AXI_RDATA	<= axi_rdata;
	S_AXI_RRESP	<= axi_rresp;
	S_AXI_RVALID	<= axi_rvalid;

  process(ipb_clk)       
  begin    
    if (rising_edge(ipb_clk)) then    
      -- reset  
      if (S_AXI_ARESETN = '0') then    
        ipb_mosi(0)  <= (ipb_addr => (others => '0'), ipb_wdata => (others => '0'), ipb_strobe => '0', ipb_write => '0'); 
        ipb_state   <= IDLE;
        ipb_timer   <= (others => '0');
        axi_arready <= '0';
        axi_araddr  <= (others => '0');
        axi_rdata   <= (others => '0');
        axi_rvalid  <= '0';
        axi_rresp   <= "00";
        axi_awready <= '0';
        axi_awaddr  <= (others => '0');
        axi_wready  <= '0';
      else    
        -- main state machine     
        case ipb_state is
        
          -- check for read and write requests
          when IDLE =>
            ipb_mosi(0) <= (ipb_addr => (others => '0'), ipb_wdata => (others => '0'), ipb_strobe => '0', ipb_write => '0'); 
            ipb_timer  <= (others => '0');
            axi_wdata  <= (others => '0');
            
            -- axi read request
            if (S_AXI_ARVALID = '1') then
	            axi_arready <= '1';
              axi_araddr  <= S_AXI_ARADDR;
              ipb_state   <= READ;
            
            -- axi write request
            elsif (S_AXI_AWVALID = '1' and S_AXI_WVALID = '1') then
              axi_awready <= '1';
              axi_wready  <= '1';
              axi_awaddr  <= S_AXI_AWADDR;
              
              -- Respective byte enables are asserted as per write strobes                   
              for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
                if (S_AXI_WSTRB(byte_index) = '1') then
                  axi_wdata(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
                end if;
              end loop;
              
              ipb_state   <= WRITE;
            end if;
          
          -- initiate IPBus read request
          when READ =>
            axi_arready         <= '0';
            ipb_mosi(0).ipb_addr   <= x"4" & axi_awaddr(ADDR_LSB + 19 downto ADDR_LSB + 16) & x"00" & axi_awaddr(ADDR_LSB + 15 downto ADDR_LSB);
            ipb_mosi(0).ipb_strobe <= '1';
            ipb_mosi(0).ipb_write  <= '0';
            ipb_state           <= WAIT_FOR_READ_ACK;
        
          -- wait for IPbus read ack
          when WAIT_FOR_READ_ACK =>
            -- got ack from IPBus
            if (ipb_miso_i(0).ipb_ack = '1') then
              ipb_mosi(0) <= (ipb_addr => (others => '0'), ipb_wdata => (others => '0'), ipb_strobe => '0', ipb_write => '0'); 
              ipb_state  <= AXI_READ_HANDSHAKE;
              ipb_timer  <= (others => '0');
              axi_rdata  <= ipb_miso_i(0).ipb_rdata;
              axi_rvalid <= '1';
              axi_rresp  <= "00";
              
            -- IPbus timed out
            elsif (ipb_timer > ipb_timeout) then
              ipb_mosi(0) <= (ipb_addr => (others => '0'), ipb_wdata => (others => '0'), ipb_strobe => '0', ipb_write => '0'); 
              ipb_state  <= AXI_READ_HANDSHAKE;
              ipb_timer  <= (others => '0');
              axi_rdata  <= ipb_miso_i(0).ipb_rdata;
              axi_rvalid <= '1';
              axi_rresp  <= "10";
              
            -- still waiting for IPbus
            else
              ipb_timer <= ipb_timer + 1;
            end if;
          
          -- IPBus read transaction finished and axi response is set, so lets finish the axi transaction here
          when AXI_READ_HANDSHAKE =>
            if (S_AXI_RREADY = '1') then
              ipb_state  <= IDLE;
              axi_rvalid <= '0';
            end if;

          -- initiate IPBus write request
          when WRITE =>
            axi_awready <= '0';
            axi_wready  <= '0';
            ipb_mosi(0).ipb_addr   <= x"4" & axi_awaddr(ADDR_LSB + 19 downto ADDR_LSB + 16) & x"00" & axi_awaddr(ADDR_LSB + 15 downto ADDR_LSB);
            ipb_mosi(0).ipb_strobe <= '1';
            ipb_mosi(0).ipb_write  <= '1';
            ipb_state           <= WAIT_FOR_WRITE_ACK;
                      
          -- wait for IPBus write ack
          when WAIT_FOR_WRITE_ACK =>          
            -- got ack from IPBus
            if (ipb_miso_i(0).ipb_ack = '1') then
              ipb_mosi(0) <= (ipb_addr => (others => '0'), ipb_wdata => (others => '0'), ipb_strobe => '0', ipb_write => '0'); 
              ipb_state  <= AXI_WRITE_HANDSHAKE;
              ipb_timer  <= (others => '0');
              axi_bvalid <= '1';
              axi_bresp  <= "00";
              
            -- IPbus timed out
            elsif (ipb_timer > ipb_timeout) then
              ipb_mosi(0) <= (ipb_addr => (others => '0'), ipb_wdata => (others => '0'), ipb_strobe => '0', ipb_write => '0'); 
              ipb_state  <= AXI_WRITE_HANDSHAKE;
              ipb_timer  <= (others => '0');
              axi_bvalid <= '1';
              axi_bresp  <= "10";
              
            -- still waiting for IPbus
            else
              ipb_timer <= ipb_timer + 1;
            end if;
            
          -- IPBus read transaction finished and axi response is set, so lets finish the axi transaction here
          when AXI_WRITE_HANDSHAKE =>
            if (S_AXI_BREADY = '1') then
              ipb_state  <= IDLE;
              axi_bvalid <= '0';
            end if;
           
          -- hmm           
          when others =>
            ipb_mosi(0)  <= (ipb_addr => (others => '0'), ipb_wdata => (others => '0'), ipb_strobe => '0', ipb_write => '0'); 
            ipb_state   <= IDLE;
            ipb_timer   <= (others => '0');
            axi_arready <= '0';
            axi_araddr  <= (others => '0');
            axi_rdata   <= (others => '0');
            axi_rvalid  <= '0';
            axi_rresp   <= "00";
            axi_awready <= '0';
            axi_awaddr  <= (others => '0');
            axi_wready  <= '0';
        end case;                      
      end if;        
    end if;        
  end process;

  -- ================================= DEBUG ====================================

  ila_axi_regs_inst : ila_axi_regs
    port map (
      clk         => S_AXI_ACLK,
      probe0      => S_AXI_ARESETN,
      probe1      => "00000" & S_AXI_AWADDR,
      probe2      => S_AXI_AWPROT,
      probe3      => S_AXI_AWVALID,
      probe4      => S_AXI_WDATA,
      probe5      => S_AXI_WSTRB,
      probe6      => S_AXI_WVALID,
      probe7      => S_AXI_BREADY,
      probe8      => "00000" & S_AXI_ARADDR,
      probe9      => S_AXI_ARPROT,
      probe10     => S_AXI_ARVALID,
      probe11     => S_AXI_RREADY,
      probe12     => "00000" & axi_awaddr,
      probe13     => axi_awready,
      probe14     => axi_wready,
      probe15     => axi_bresp,
      probe16     => axi_bvalid,
      probe17     => "00000" & axi_araddr,
      probe18     => axi_arready,
      probe19     => axi_rdata,
      probe20     => axi_rresp,
      probe21     => axi_rvalid,
      probe22     => ipb_mosi(0).ipb_addr,
      probe23     => ipb_mosi(0).ipb_wdata,
      probe24     => ipb_mosi(0).ipb_strobe,
      probe25     => ipb_mosi(0).ipb_write,
      probe26     => ipb_miso_i(0).ipb_rdata,
      probe27     => ipb_miso_i(0).ipb_ack,
      probe28     => ipb_miso_i(0).ipb_err
    );

end arch_imp;
