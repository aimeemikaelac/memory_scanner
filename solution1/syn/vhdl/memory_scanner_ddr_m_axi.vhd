library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity memory_scanner_ddr_m_axi is
    generic (
        C_ID_WIDTH      : INTEGER := 1;
        C_ADDR_WIDTH    : INTEGER := 32;
        C_TARGET_ADDR   : INTEGER := 16#00000000#;
        C_DATA_WIDTH    : INTEGER := 32;
        C_AWUSER_WIDTH  : INTEGER := 1;
        C_ARUSER_WIDTH  : INTEGER := 1;
        C_WUSER_WIDTH   : INTEGER := 1;
        C_RUSER_WIDTH   : INTEGER := 1;
        C_BUSER_WIDTH   : INTEGER := 1;
        C_USER_VALUE    : INTEGER := 0;
        C_PROT_VALUE    : INTEGER := 0;
        C_CACHE_VALUE   : INTEGER := 2#0011#;
        USER_DW         : INTEGER := 16;
        USER_AW         : INTEGER := 32;
        USER_MAXREQS    : INTEGER := 16);
    port (
        -- system signal
        ACLK            : in STD_LOGIC;
        ARESETN         : in STD_LOGIC;
        -- write address channel
        AWID            : out STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        AWADDR          : out STD_LOGIC_VECTOR(C_ADDR_WIDTH-1 downto 0);
        AWLEN           : out STD_LOGIC_VECTOR(7 downto 0);
        AWSIZE          : out STD_LOGIC_VECTOR(2 downto 0);
        AWBURST         : out STD_LOGIC_VECTOR(1 downto 0);
        AWLOCK          : out STD_LOGIC_VECTOR(1 downto 0);
        AWCACHE         : out STD_LOGIC_VECTOR(3 downto 0);
        AWPROT          : out STD_LOGIC_VECTOR(2 downto 0);
        AWQOS           : out STD_LOGIC_VECTOR(3 downto 0);
        AWREGION        : out STD_LOGIC_VECTOR(3 downto 0);
        AWUSER          : out STD_LOGIC_VECTOR(C_AWUSER_WIDTH-1 downto 0);
        AWVALID         : out STD_LOGIC;
        AWREADY         : in  STD_LOGIC;
        -- write data channel
        WID             : out STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        WDATA           : out STD_LOGIC_VECTOR(C_DATA_WIDTH-1 downto 0);
        WSTRB           : out STD_LOGIC_VECTOR(C_DATA_WIDTH/8-1 downto 0);
        WLAST           : out STD_LOGIC;
        WUSER           : out STD_LOGIC_VECTOR(C_WUSER_WIDTH-1 downto 0);
        WVALID          : out STD_LOGIC;
        WREADY          : in  STD_LOGIC;
        -- write response channel
        BID             : in  STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        BRESP           : in  STD_LOGIC_VECTOR(1 downto 0);
        BUSER           : in  STD_LOGIC_VECTOR(C_BUSER_WIDTH-1 downto 0);
        BVALID          : in  STD_LOGIC;
        BREADY          : out STD_LOGIC;
        -- read address channel
        ARID            : out STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        ARADDR          : out STD_LOGIC_VECTOR(C_ADDR_WIDTH-1 downto 0);
        ARLEN           : out STD_LOGIC_VECTOR(7 downto 0);
        ARSIZE          : out STD_LOGIC_VECTOR(2 downto 0);
        ARBURST         : out STD_LOGIC_VECTOR(1 downto 0);
        ARLOCK          : out STD_LOGIC_VECTOR(1 downto 0);
        ARCACHE         : out STD_LOGIC_VECTOR(3 downto 0);
        ARPROT          : out STD_LOGIC_VECTOR(2 downto 0);
        ARQOS           : out STD_LOGIC_VECTOR(3 downto 0);
        ARREGION        : out STD_LOGIC_VECTOR(3 downto 0);
        ARUSER          : out STD_LOGIC_VECTOR(C_ARUSER_WIDTH-1 downto 0);
        ARVALID         : out STD_LOGIC;
        ARREADY         : in  STD_LOGIC;
        -- read data channel
        RID             : in  STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        RDATA           : in  STD_LOGIC_VECTOR(C_DATA_WIDTH-1 downto 0);
        RRESP           : in  STD_LOGIC_VECTOR(1 downto 0);
        RLAST           : in  STD_LOGIC;
        RUSER           : in  STD_LOGIC_VECTOR(C_RUSER_WIDTH-1 downto 0);
        RVALID          : in  STD_LOGIC;
        RREADY          : out STD_LOGIC;

        -- internal bus ports
        -- write address channel
        I_AWID          : in  STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        I_AWADDR        : in  STD_LOGIC_VECTOR(USER_AW-1 downto 0);
        I_AWLEN         : in  STD_LOGIC_VECTOR(31 downto 0);
        I_AWSIZE        : in  STD_LOGIC_VECTOR(2 downto 0);
        I_AWBURST       : in  STD_LOGIC_VECTOR(1 downto 0);
        I_AWLOCK        : in  STD_LOGIC_VECTOR(1 downto 0);
        I_AWCACHE       : in  STD_LOGIC_VECTOR(3 downto 0);
        I_AWPROT        : in  STD_LOGIC_VECTOR(2 downto 0);
        I_AWQOS         : in  STD_LOGIC_VECTOR(3 downto 0);
        I_AWREGION      : in  STD_LOGIC_VECTOR(3 downto 0);
        I_AWUSER        : in  STD_LOGIC_VECTOR(C_AWUSER_WIDTH-1 downto 0);
        I_AWVALID       : in  STD_LOGIC;
        I_AWREADY       : out STD_LOGIC;
        -- write data channel
        I_WID           : in  STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        I_WDATA         : in  STD_LOGIC_VECTOR(USER_DW-1 downto 0);
        I_WSTRB         : in  STD_LOGIC_VECTOR(USER_DW/8-1 downto 0);
        I_WLAST         : in  STD_LOGIC;
        I_WUSER         : in  STD_LOGIC_VECTOR(C_WUSER_WIDTH-1 downto 0);
        I_WVALID        : in  STD_LOGIC;
        I_WREADY        : out STD_LOGIC;
        -- write response channel
        I_BID           : out STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        I_BRESP         : out STD_LOGIC_VECTOR(1 downto 0);
        I_BUSER         : out STD_LOGIC_VECTOR(C_BUSER_WIDTH-1 downto 0);
        I_BVALID        : out STD_LOGIC;
        I_BREADY        : in  STD_LOGIC;
        -- read address channel
        I_ARID          : in  STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        I_ARADDR        : in  STD_LOGIC_VECTOR(USER_AW-1 downto 0);
        I_ARLEN         : in  STD_LOGIC_VECTOR(31 downto 0);
        I_ARSIZE        : in  STD_LOGIC_VECTOR(2 downto 0);
        I_ARBURST       : in  STD_LOGIC_VECTOR(1 downto 0);
        I_ARLOCK        : in  STD_LOGIC_VECTOR(1 downto 0);
        I_ARCACHE       : in  STD_LOGIC_VECTOR(3 downto 0);
        I_ARPROT        : in  STD_LOGIC_VECTOR(2 downto 0);
        I_ARQOS         : in  STD_LOGIC_VECTOR(3 downto 0);
        I_ARREGION      : in  STD_LOGIC_VECTOR(3 downto 0);
        I_ARUSER        : in  STD_LOGIC_VECTOR(C_ARUSER_WIDTH-1 downto 0);
        I_ARVALID       : in  STD_LOGIC;
        I_ARREADY       : out STD_LOGIC;
        -- read data channel
        I_RID           : out STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        I_RDATA         : out STD_LOGIC_VECTOR(USER_DW-1 downto 0);
        I_RRESP         : out STD_LOGIC_VECTOR(1 downto 0);
        I_RLAST         : out STD_LOGIC;
        I_RUSER         : out STD_LOGIC_VECTOR(C_RUSER_WIDTH-1 downto 0);
        I_RVALID        : out STD_LOGIC;
        I_RREADY        : in  STD_LOGIC);
end entity memory_scanner_ddr_m_axi;

architecture behave of memory_scanner_ddr_m_axi is
    component memory_scanner_ddr_m_axi_write is
        generic (
            C_ID_WIDTH      : INTEGER := 1;
            C_ADDR_WIDTH    : INTEGER := 32;
            C_TARGET_ADDR   : INTEGER := 16#00000000#;
            C_DATA_WIDTH    : INTEGER := 32;
            C_AWUSER_WIDTH  : INTEGER := 1;
            C_WUSER_WIDTH   : INTEGER := 1;
            C_BUSER_WIDTH   : INTEGER := 1;
            C_USER_VALUE    : INTEGER := 0;
            C_PROT_VALUE    : INTEGER := 0;
            C_CACHE_VALUE   : INTEGER := 2#0011#;
            USER_DW         : INTEGER := 16;
            USER_AW         : INTEGER := 32;
            USER_MAXREQS    : INTEGER := 16);
        port (
            ACLK            : in  STD_LOGIC;
            ARESETN         : in  STD_LOGIC;
            AWID            : out UNSIGNED(C_ID_WIDTH-1 downto 0);
            AWADDR          : out UNSIGNED(C_ADDR_WIDTH-1 downto 0);
            AWLEN           : out UNSIGNED(7 downto 0);
            AWSIZE          : out UNSIGNED(2 downto 0);
            AWBURST         : out UNSIGNED(1 downto 0);
            AWLOCK          : out UNSIGNED(1 downto 0);
            AWCACHE         : out UNSIGNED(3 downto 0);
            AWPROT          : out UNSIGNED(2 downto 0);
            AWQOS           : out UNSIGNED(3 downto 0);
            AWREGION        : out UNSIGNED(3 downto 0);
            AWUSER          : out UNSIGNED(C_AWUSER_WIDTH-1 downto 0);
            AWVALID         : out STD_LOGIC;
            AWREADY         : in  STD_LOGIC;
            WID             : out UNSIGNED(C_ID_WIDTH-1 downto 0);
            WDATA           : out UNSIGNED(C_DATA_WIDTH-1 downto 0);
            WSTRB           : out UNSIGNED(C_DATA_WIDTH/8-1 downto 0);
            WLAST           : out STD_LOGIC;
            WUSER           : out UNSIGNED(C_WUSER_WIDTH-1 downto 0);
            WVALID          : out STD_LOGIC;
            WREADY          : in  STD_LOGIC;
            BID             : in  UNSIGNED(C_ID_WIDTH-1 downto 0);
            BRESP           : in  UNSIGNED(1 downto 0);
            BUSER           : in  UNSIGNED(C_BUSER_WIDTH-1 downto 0);
            BVALID          : in  STD_LOGIC;
            BREADY          : out STD_LOGIC;
            wreq_valid      : in  STD_LOGIC;
            wreq_ack        : out STD_LOGIC;
            wreq_addr       : in  UNSIGNED(USER_AW-1 downto 0);
            wreq_length     : in  UNSIGNED(31 downto 0);
            wreq_cache      : in  UNSIGNED(3 downto 0);
            wreq_prot       : in  UNSIGNED(2 downto 0);
            wreq_qos        : in  UNSIGNED(3 downto 0);
            wreq_user       : in  UNSIGNED(C_AWUSER_WIDTH-1 downto 0);
            wdata_valid     : in  STD_LOGIC;
            wdata_ack       : out STD_LOGIC;
            wdata_strb      : in  UNSIGNED(USER_DW/8-1 downto 0);
            wdata_user      : in  UNSIGNED(C_WUSER_WIDTH-1 downto 0);
            wdata_data      : in  UNSIGNED(USER_DW-1 downto 0);
            wrsp_valid      : out STD_LOGIC;
            wrsp_ack        : in  STD_LOGIC;
            wrsp            : out UNSIGNED(1 downto 0));
    end component memory_scanner_ddr_m_axi_write;

    component memory_scanner_ddr_m_axi_read is
        generic (
            C_ID_WIDTH      : INTEGER := 1;
            C_ADDR_WIDTH    : INTEGER := 32;
            C_TARGET_ADDR   : INTEGER := 16#00000000#;
            C_DATA_WIDTH    : INTEGER := 32;
            C_ARUSER_WIDTH  : INTEGER := 1;
            C_RUSER_WIDTH   : INTEGER := 1;
            C_USER_VALUE    : INTEGER := 0;
            C_PROT_VALUE    : INTEGER := 0;
            C_CACHE_VALUE   : INTEGER := 2#0011#;
            USER_DW         : INTEGER := 16;
            USER_AW         : INTEGER := 32;
            USER_MAXREQS    : INTEGER := 16);
        port (
            ACLK            : in  STD_LOGIC; 
            ARESETN         : in  STD_LOGIC; 
            ARID            : out UNSIGNED(C_ID_WIDTH-1 downto 0); 
            ARADDR          : out UNSIGNED(C_ADDR_WIDTH-1 downto 0); 
            ARLEN           : out UNSIGNED(7 downto 0);
            ARSIZE          : out UNSIGNED(2 downto 0);
            ARBURST         : out UNSIGNED(1 downto 0);
            ARLOCK          : out UNSIGNED(1 downto 0);
            ARCACHE         : out UNSIGNED(3 downto 0);
            ARPROT          : out UNSIGNED(2 downto 0);
            ARQOS           : out UNSIGNED(3 downto 0);
            ARREGION        : out UNSIGNED(3 downto 0);
            ARUSER          : out UNSIGNED(C_ARUSER_WIDTH-1 downto 0);
            ARVALID         : out STD_LOGIC;
            ARREADY         : in  STD_LOGIC;
            RID             : in  UNSIGNED(C_ID_WIDTH-1 downto 0);
            RDATA           : in  UNSIGNED(C_DATA_WIDTH-1 downto 0);
            RRESP           : in  UNSIGNED(1 downto 0);
            RLAST           : in  STD_LOGIC;
            RUSER           : in  UNSIGNED(C_RUSER_WIDTH-1 downto 0);
            RVALID          : in  STD_LOGIC;
            RREADY          : out STD_LOGIC;
            rreq_valid      : in  STD_LOGIC;
            rreq_ack        : out STD_LOGIC;
            rreq_addr       : in  UNSIGNED(USER_AW-1 downto 0);
            rreq_length     : in  UNSIGNED(31 downto 0);
            rreq_cache      : in  UNSIGNED(3 downto 0);
            rreq_prot       : in  UNSIGNED(2 downto 0);
            rreq_qos        : in  UNSIGNED(3 downto 0);
            rreq_user       : in  UNSIGNED(C_ARUSER_WIDTH-1 downto 0);
            rdata_valid     : out STD_LOGIC;
            rdata_ack       : in  STD_LOGIC;
            rdata_data      : out UNSIGNED(USER_DW-1 downto 0);
            rrsp            : out UNSIGNED(1 downto 0));
    end component memory_scanner_ddr_m_axi_read;

begin 

    I_BID   <= (others => '0');
    I_BUSER <= (others => '0');
    I_RID   <= (others => '0');
    I_RLAST <= '0';
    I_RUSER <= (others => '0');

    -- Instantiation
    bus_write : memory_scanner_ddr_m_axi_write
        generic map (
            C_ID_WIDTH     => C_ID_WIDTH,
            C_ADDR_WIDTH   => C_ADDR_WIDTH,
            C_TARGET_ADDR  => C_TARGET_ADDR,
            C_DATA_WIDTH   => C_DATA_WIDTH,
            C_AWUSER_WIDTH => C_AWUSER_WIDTH,
            C_WUSER_WIDTH  => C_WUSER_WIDTH,
            C_BUSER_WIDTH  => C_BUSER_WIDTH,
            C_USER_VALUE   => C_USER_VALUE,
            C_PROT_VALUE   => C_PROT_VALUE,
            C_CACHE_VALUE  => C_CACHE_VALUE,
            USER_DW        => USER_DW,
            USER_AW        => USER_AW,
            USER_MAXREQS   => USER_MAXREQS)
        port map (
            ACLK                        => ACLK,
            ARESETN                     => ARESETN,
            STD_LOGIC_VECTOR(AWID)      => AWID,
            STD_LOGIC_VECTOR(AWADDR)    => AWADDR,
            STD_LOGIC_VECTOR(AWLEN)     => AWLEN,
            STD_LOGIC_VECTOR(AWSIZE)    => AWSIZE,
            STD_LOGIC_VECTOR(AWBURST)   => AWBURST,
            STD_LOGIC_VECTOR(AWLOCK)    => AWLOCK,
            STD_LOGIC_VECTOR(AWCACHE)   => AWCACHE,
            STD_LOGIC_VECTOR(AWPROT)    => AWPROT,
            STD_LOGIC_VECTOR(AWQOS)     => AWQOS,
            STD_LOGIC_VECTOR(AWREGION)  => AWREGION,
            STD_LOGIC_VECTOR(AWUSER)    => AWUSER,
            AWVALID                     => AWVALID,
            AWREADY                     => AWREADY,
            STD_LOGIC_VECTOR(WID)       => WID,
            STD_LOGIC_VECTOR(WDATA)     => WDATA,
            STD_LOGIC_VECTOR(WSTRB)     => WSTRB,
            WLAST                       => WLAST,
            STD_LOGIC_VECTOR(WUSER)     => WUSER,
            WVALID                      => WVALID,
            WREADY                      => WREADY,
            BID                         => UNSIGNED(BID),
            BRESP                       => UNSIGNED(BRESP),
            BUSER                       => UNSIGNED(BUSER),
            BVALID                      => BVALID,
            BREADY                      => BREADY,
            wreq_valid                  => I_AWVALID,
            wreq_ack                    => I_AWREADY,
            wreq_addr                   => UNSIGNED(I_AWADDR),
            wreq_length                 => UNSIGNED(I_AWLEN),
            wreq_cache                  => UNSIGNED(I_AWCACHE),
            wreq_prot                   => UNSIGNED(I_AWPROT),
            wreq_qos                    => UNSIGNED(I_AWQOS),
            wreq_user                   => UNSIGNED(I_AWUSER),
            wdata_valid                 => I_WVALID,
            wdata_ack                   => I_WREADY,
            wdata_strb                  => UNSIGNED(I_WSTRB),
            wdata_user                  => UNSIGNED(I_WUSER),
            wdata_data                  => UNSIGNED(I_WDATA),
            wrsp_valid                  => I_BVALID,
            wrsp_ack                    => I_BREADY,
            STD_LOGIC_VECTOR(wrsp)      => I_BRESP);

    bus_read : memory_scanner_ddr_m_axi_read
        generic map (
            C_ID_WIDTH     => C_ID_WIDTH,
            C_ADDR_WIDTH   => C_ADDR_WIDTH,
            C_TARGET_ADDR  => C_TARGET_ADDR,
            C_DATA_WIDTH   => C_DATA_WIDTH,
            C_ARUSER_WIDTH => C_ARUSER_WIDTH,
            C_RUSER_WIDTH  => C_RUSER_WIDTH,
            C_USER_VALUE   => C_USER_VALUE,
            C_PROT_VALUE   => C_PROT_VALUE,
            C_CACHE_VALUE  => C_CACHE_VALUE,
            USER_DW        => USER_DW,
            USER_AW        => USER_AW,
            USER_MAXREQS   => USER_MAXREQS)
        port map (
            ACLK                        => ACLK,
            ARESETN                     => ARESETN,
            STD_LOGIC_VECTOR(ARID)      => ARID,
            STD_LOGIC_VECTOR(ARADDR)    => ARADDR,
            STD_LOGIC_VECTOR(ARLEN)     => ARLEN,
            STD_LOGIC_VECTOR(ARSIZE)    => ARSIZE,
            STD_LOGIC_VECTOR(ARBURST)   => ARBURST,
            STD_LOGIC_VECTOR(ARLOCK)    => ARLOCK,
            STD_LOGIC_VECTOR(ARCACHE)   => ARCACHE,
            STD_LOGIC_VECTOR(ARPROT)    => ARPROT,
            STD_LOGIC_VECTOR(ARQOS)     => ARQOS,
            STD_LOGIC_VECTOR(ARREGION)  => ARREGION,
            STD_LOGIC_VECTOR(ARUSER)    => ARUSER,
            ARVALID                     => ARVALID,
            ARREADY                     => ARREADY,
            RID                         => UNSIGNED(RID),
            RDATA                       => UNSIGNED(RDATA),
            RRESP                       => UNSIGNED(RRESP),
            RLAST                       => RLAST,
            RUSER                       => UNSIGNED(RUSER),
            RVALID                      => RVALID,
            RREADY                      => RREADY,
            rreq_valid                  => I_ARVALID,
            rreq_ack                    => I_ARREADY,
            rreq_addr                   => UNSIGNED(I_ARADDR),
            rreq_length                 => UNSIGNED(I_ARLEN),
            rreq_cache                  => UNSIGNED(I_ARCACHE),
            rreq_prot                   => UNSIGNED(I_ARPROT),
            rreq_qos                    => UNSIGNED(I_ARQOS),
            rreq_user                   => UNSIGNED(I_ARUSER),
            rdata_valid                 => I_RVALID,
            rdata_ack                   => I_RREADY,
            STD_LOGIC_VECTOR(rdata_data)=> I_RDATA,
            STD_LOGIC_VECTOR(rrsp)      => I_RRESP);

end architecture behave;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity memory_scanner_ddr_m_axi_fifo is
    generic (
        DATA_BITS   : INTEGER := 8;
        DEPTH       : INTEGER := 16;
        DEPTH_BITS  : INTEGER := 4);
    port (
        sclk        : in  STD_LOGIC;
        reset_n     : in  STD_LOGIC;
        empty_n     : out STD_LOGIC;
        full_n      : out STD_LOGIC;
        rdreq       : in  STD_LOGIC;
        wrreq       : in  STD_LOGIC;
        q           : out UNSIGNED(DATA_BITS-1 downto 0);
        data        : in  UNSIGNED(DATA_BITS-1 downto 0));
end entity memory_scanner_ddr_m_axi_fifo;

architecture behave of memory_scanner_ddr_m_axi_fifo is
    signal push, pop                : STD_LOGIC;
    signal empty_n_tmp, full_n_tmp  : STD_LOGIC;
    signal pout                     : INTEGER range 0 to DEPTH -1;
    subtype word is UNSIGNED(DATA_BITS-1 downto 0);
    type regFileType is array(0 to DEPTH-1) of word;
    signal mem                      : regFileType;
begin
    full_n <= full_n_tmp;
    empty_n <= empty_n_tmp;

    push <= full_n_tmp and wrreq;
    pop <= empty_n_tmp and rdreq;
    q <= mem(pout);
    
    empty_n_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if reset_n = '0' then
                empty_n_tmp <= '0';
            elsif push = '1' then
                empty_n_tmp <= '1';
            elsif push = '0' and pop = '1' and pout = 0 then
                empty_n_tmp <= '0';
            end if;
        end if;
    end process empty_n_proc;
    
    full_n_proc : process (sclk) 
    begin 
        if (sclk'event and sclk = '1') then
            if reset_n = '0' then
                full_n_tmp <= '1';
            elsif rdreq = '1' then
                full_n_tmp <= '1';
            elsif push = '0' and pop = '1' and pout = DEPTH - 2 then
                full_n_tmp <= '0';
            end if;
        end if;
    end process full_n_proc;

    pout_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if reset_n = '0' then
                pout <= 0;
            elsif push = '1' and pop = '0' and empty_n_tmp = '1' then
                pout <= TO_INTEGER(TO_UNSIGNED(pout + 1, DEPTH_BITS));
            elsif push = '0' and pop = '1' and pout /= 0 then
                pout <= pout - 1;
            end if;
        end  if;
    end process pout_proc;

    process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if push = '1' then
                for i in 0 to DEPTH - 2 loop
                    mem(i+1) <= mem(i);
                end loop;
                mem(0) <= data;
            end if;
        end  if;
    end process;
end architecture behave; 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity memory_scanner_ddr_m_axi_reg_slice is
    generic (
        N    : INTEGER   := 8);
    port (
        sclk    :   in  STD_LOGIC;
        reset_n :   in  STD_LOGIC;
        s_data  :   in  UNSIGNED(N-1 downto 0);
        s_valid :   in  STD_LOGIC;
        s_ready :   out STD_LOGIC;
        m_data  :   out UNSIGNED(N-1 downto 0);
        m_valid :   out STD_LOGIC;
        m_ready :   in  STD_LOGIC);
end entity memory_scanner_ddr_m_axi_reg_slice;
 
architecture behave of memory_scanner_ddr_m_axi_reg_slice is
    signal state, n_state : UNSIGNED(1 downto 0);
    signal data_p1, data_p2 : UNSIGNED(N-1 downto 0);
    signal load_p1, load_p2, load_p1_from_p2, s_ready_t : STD_LOGIC;
begin
    
    s_ready <= s_ready_t;
    m_data  <= data_p1;
    m_valid <= state(0);

    load_p1 <= s_valid               when state = "10" else
               (s_valid and m_ready) when state = "11" else
               m_ready               when state = "01" else
               '0';
    load_p2 <= s_valid and s_ready_t;
    load_p1_from_p2 <= '1' when (state = "01") else
                       '0';

    data_p1_proc : process (sclk)
    begin
        if (sclk'event and sclk ='1') then
            if (load_p1 = '1') then
                if (load_p1_from_p2 = '1') then
                    data_p1 <= data_p2;
                else
                    data_p1 <= s_data;
                end if;
            end if;
        end if;
    end process;

    data_p2_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if (load_p2 = '1') then
                data_p2 <= s_data;
            end if;
        end if;
    end process;

    s_ready_t_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if (reset_n = '0') then
                s_ready_t <= '0';
            elsif (state = "10") then
                s_ready_t <= '1';
            elsif (state = "11" and n_state = "01") then
                s_ready_t <= '0';
            elsif (state = "01" and n_state = "11") then
                s_ready_t <= '1';
            end if;
        end if;
    end process;

    --FSM
    process (sclk)
    begin
        if (sclk'event and sclk='1') then
            if reset_n = '0' then
                state <= "10";
            else
                state <= n_state;
            end if;
        end if;
    end process;

    process (state, s_valid, s_ready_t, m_ready)
    begin
        case state is
            when "10" =>           -- state zero
                if (s_valid and s_ready_t) = '1' then
                    n_state <= "11";
                else
                    n_state <= "10";
                end if;
            when "11" =>            -- state one
                if (not s_valid and m_ready) = '1' then
                    n_state <= "10";
                elsif (s_valid and not m_ready) = '1' then
                    n_state <= "01";
                else
                    n_state <= "11";
                end if;
            when "01" =>            -- state two
                if m_ready = '1' then
                    n_state <= "11";
                else
                    n_state <= "01";
                end if;
            when others =>
                n_state <= "10";
        end case;
    end process;

end architecture behave;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity memory_scanner_ddr_m_axi_read is
    generic (
        C_ID_WIDTH      : INTEGER := 1;
        C_ADDR_WIDTH    : INTEGER := 32;
        C_TARGET_ADDR   : INTEGER := 16#00000000#;
        C_DATA_WIDTH    : INTEGER := 32;
        C_ARUSER_WIDTH  : INTEGER := 1;
        C_RUSER_WIDTH   : INTEGER := 1;
        C_USER_VALUE    : INTEGER := 0;
        C_PROT_VALUE    : INTEGER := 0;
        C_CACHE_VALUE   : INTEGER := 2#0011#;
        USER_DW         : INTEGER := 16;
        USER_AW         : INTEGER := 32;
        USER_MAXREQS    : INTEGER := 16);
    port (
        ACLK            : in  STD_LOGIC;
        ARESETN         : in  STD_LOGIC;
        ARID            : out UNSIGNED(C_ID_WIDTH-1 downto 0);
        ARADDR          : out UNSIGNED(C_ADDR_WIDTH-1 downto 0);
        ARLEN           : out UNSIGNED(7 downto 0);
        ARSIZE          : out UNSIGNED(2 downto 0);
        ARBURST         : out UNSIGNED(1 downto 0);
        ARLOCK          : out UNSIGNED(1 downto 0);
        ARCACHE         : out UNSIGNED(3 downto 0);
        ARPROT          : out UNSIGNED(2 downto 0);
        ARQOS           : out UNSIGNED(3 downto 0);
        ARREGION        : out UNSIGNED(3 downto 0);
        ARUSER          : out UNSIGNED(C_ARUSER_WIDTH-1 downto 0);
        ARVALID         : out STD_LOGIC;
        ARREADY         : in  STD_LOGIC;
        RID             : in  UNSIGNED(C_ID_WIDTH-1 downto 0);
        RDATA           : in  UNSIGNED(C_DATA_WIDTH-1 downto 0);
        RRESP           : in  UNSIGNED(1 downto 0);
        RLAST           : in  STD_LOGIC;
        RUSER           : in  UNSIGNED(C_RUSER_WIDTH-1 downto 0);
        RVALID          : in  STD_LOGIC;
        RREADY          : out STD_LOGIC;
        rreq_valid      : in  STD_LOGIC;
        rreq_ack        : out STD_LOGIC;
        rreq_addr       : in  UNSIGNED(USER_AW-1 downto 0);
        rreq_length     : in  UNSIGNED(31 downto 0);
        rreq_cache      : in  UNSIGNED(3 downto 0);
        rreq_prot       : in  UNSIGNED(2 downto 0);
        rreq_qos        : in  UNSIGNED(3 downto 0);
        rreq_user       : in  UNSIGNED(C_ARUSER_WIDTH-1 downto 0);
        rdata_valid     : out STD_LOGIC;
        rdata_ack       : in  STD_LOGIC;
        rdata_data      : out UNSIGNED(USER_DW-1 downto 0);
        rrsp            : out UNSIGNED(1 downto 0));

    function calc_data_width (x : INTEGER) return INTEGER is
        variable y : INTEGER;
    begin
        y := 8;
        while y < x loop
            y := y * 2;
        end loop;
        return y;
    end function calc_data_width;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 0;
        m := 1;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

    function max (L, R : INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end;

end entity memory_scanner_ddr_m_axi_read;

architecture behave of memory_scanner_ddr_m_axi_read is
    type states is (idle_s, prep_s, addr_s, loop_s);
    constant USER_DATA_WIDTH : INTEGER := calc_data_width(USER_DW);
    constant USER_DATA_BYTES : INTEGER := USER_DATA_WIDTH / 8;
    constant USER_ADDR_ALIGN : INTEGER := log2(USER_DATA_BYTES);
    constant BUS_DATA_WIDTH  : INTEGER := C_DATA_WIDTH;
    constant BUS_DATA_BYTES  : INTEGER := BUS_DATA_WIDTH / 8;
    constant BUS_ADDR_ALIGN  : INTEGER := log2(BUS_DATA_BYTES);
    constant LOOP_CNT_WIDTH  : INTEGER := 32;
    constant BOUNDARY        : INTEGER := 16#1000# / BUS_DATA_BYTES;
    constant MAX_BEATS       : INTEGER := 256;
    constant TARGET_ADDR     : INTEGER := (C_TARGET_ADDR/USER_DATA_BYTES)*USER_DATA_BYTES;
    constant ones_bus_al     : UNSIGNED(BUS_ADDR_ALIGN-1 downto 0) := (others => '1');
    signal   state, n_state  : states;
    signal   tmp_addr        : UNSIGNED(USER_AW-1 downto 0);
    signal   tmp_length      : UNSIGNED(31 downto 0);
    signal   tmp_valid       : STD_LOGIC;
    signal   tmp_ack         : STD_LOGIC;
    signal   rreq_pack       : UNSIGNED(USER_AW+31 downto 0);
    signal   start_addr      : UNSIGNED(USER_ADDR_ALIGN+31 downto 0);
    signal   addr_buf        : UNSIGNED(USER_ADDR_ALIGN+31 downto 0);
    signal   len_buf         : UNSIGNED(31 downto 0);
    signal   total_beats     : UNSIGNED(31 downto 0);
    signal   loop_beats      : UNSIGNED(8 downto 0);
    signal   start_beat      : UNSIGNED(11-BUS_ADDR_ALIGN downto 0);
    signal   tmp_beats0      : UNSIGNED(8 downto 0);
    signal   tmp_beats1      : UNSIGNED(8 downto 0);
    signal   align_ready     : STD_LOGIC;
    signal   align_valid     : STD_LOGIC;
    signal   align_beats     : UNSIGNED(31 downto 0);
    signal   align_address   : UNSIGNED(31 downto 0);
    signal   align_length    : UNSIGNED(31 downto 0);
    signal   fifo_rreq_data  : UNSIGNED(USER_AW+31 downto 0);
    signal   arlen_tmp       : UNSIGNED(8 downto 0);
    signal   boundary_beat   : UNSIGNED(11-BUS_ADDR_ALIGN downto 0);

    component memory_scanner_ddr_m_axi_fifo is
        generic (
            DATA_BITS   : INTEGER := 8;
            DEPTH       : INTEGER := 16;
            DEPTH_BITS  : INTEGER := 4);
        port (
            sclk        : in  STD_LOGIC;
            reset_n     : in  STD_LOGIC;
            empty_n     : out STD_LOGIC;
            full_n      : out STD_LOGIC;
            rdreq       : in  STD_LOGIC;
            wrreq       : in  STD_LOGIC;
            q           : out UNSIGNED(DATA_BITS-1 downto 0);
            data        : in  UNSIGNED(DATA_BITS-1 downto 0));
    end component memory_scanner_ddr_m_axi_fifo;

    component memory_scanner_ddr_m_axi_read_data_align is
        generic (
            C_DATA_WIDTH        : INTEGER := 32;
            C_USER_DATA_WIDTH   : INTEGER := 8);
        port (
            ACLK                : in  STD_LOGIC;
            ARESETN             : in  STD_LOGIC;
            RDATA               : in  UNSIGNED(C_DATA_WIDTH-1 downto 0);
            RRESP               : in  UNSIGNED(1 downto 0);
            RVALID              : in  STD_LOGIC;
            RREADY              : out STD_LOGIC;
            USER_datain         : out UNSIGNED(C_USER_DATA_WIDTH-1 downto 0);
            rrsp                : out UNSIGNED(1 downto 0);
            USER_rsp_empty_n    : out STD_LOGIC;
            USER_rsp_read       : in  STD_LOGIC;
            align_ready         : out STD_LOGIC;
            align_valid         : in  STD_LOGIC;
            align_beats         : in  UNSIGNED(31 downto 0);
            align_address       : in  UNSIGNED(31 downto 0);
            align_length        : in  UNSIGNED(31 downto 0));
    end component memory_scanner_ddr_m_axi_read_data_align;

begin

    read_data_align : memory_scanner_ddr_m_axi_read_data_align
        generic map (
            C_DATA_WIDTH        =>  C_DATA_WIDTH,
            C_USER_DATA_WIDTH   =>  USER_DW)
        port map (
            ACLK                =>  ACLK,
            ARESETN             =>  ARESETN,
            RDATA               =>  RDATA,
            RRESP               =>  RRESP,
            RVALID              =>  RVALID,
            RREADY              =>  RREADY,
            USER_datain         =>  rdata_data,
            rrsp                =>  rrsp,
            USER_rsp_empty_n    =>  rdata_valid,
            USER_rsp_read       =>  rdata_ack,
            align_ready         =>  align_ready,
            align_valid         =>  align_valid,
            align_beats         =>  align_beats,
            align_address       =>  align_address,
            align_length        =>  align_length);
            
    fifo_rreq : memory_scanner_ddr_m_axi_fifo
        generic map (
            DATA_BITS       =>  USER_AW+32,
            DEPTH           =>  USER_MAXREQS,
            DEPTH_BITS      =>  log2(USER_MAXREQS))
        port map (
            sclk            =>  ACLK,
            reset_n         =>  ARESETN,
            empty_n         =>  tmp_valid,
            full_n          =>  rreq_ack,
            rdreq           =>  tmp_ack,
            wrreq           =>  rreq_valid,
            q               =>  rreq_pack,
            data            =>  fifo_rreq_data);

    -- FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESETN = '0') then
                state <= idle_s;
            else
                state <= n_state;
            end if;
        end if;
    end process;

    process (state, tmp_valid, ARREADY, total_beats)
    begin
        case state is
        when idle_s =>
            if (tmp_valid = '1') then
                n_state <= prep_s;
            else
                n_state <= idle_s;
            end if;
        when prep_s =>
            n_state <= addr_s;
        when addr_s =>
            if (ARREADY = '1') then
                n_state <= loop_s;
            else
                n_state <= addr_s;
            end if;
        when loop_s =>
            if (total_beats = 0) then
                n_state <= idle_s;
            else
                n_state <= addr_s;
            end if;
        when others => n_state <= idle_s;
        end case;
    end process;

    --translate request
    fifo_rreq_data <= rreq_length & rreq_addr;

    tmp_addr    <=  rreq_pack(USER_AW-1 downto 0);
    tmp_length  <=  rreq_pack(USER_AW+31 downto USER_AW);
    start_addr  <=  TARGET_ADDR + SHIFT_LEFT(RESIZE(tmp_addr, USER_ADDR_ALIGN+32), USER_ADDR_ALIGN);
    start_beat  <=  addr_buf(11 downto BUS_ADDR_ALIGN);
    tmp_beats0  <=  total_beats(8 downto 0) when total_beats < MAX_BEATS else
                    "100000000"; --MAX_BEATS
    tmp_beats1  <=  tmp_beats0 when tmp_beats0 + start_beat < BOUNDARY else
                    BOUNDARY - RESIZE(start_beat, 9);
    
    addr_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (tmp_ack = '1' and tmp_valid = '1') then
                addr_buf <= start_addr;
            elsif (state = prep_s) then
                addr_buf(BUS_ADDR_ALIGN-1 downto 0) <= (others => '0');
            elsif (state = addr_s and ARREADY = '1') then
                addr_buf <= addr_buf + SHIFT_LEFT(RESIZE(loop_beats, 32), BUS_ADDR_ALIGN);
            end if;
        end if;
    end process addr_buf_proc;

    len_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (tmp_ack = '1' and tmp_valid = '1') then
                len_buf <= tmp_length;
            end if;
        end if;
    end process len_buf_proc;

    total_beats_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (tmp_ack = '1' and tmp_valid = '1') then
                total_beats <= SHIFT_RIGHT(SHIFT_LEFT(tmp_length, USER_ADDR_ALIGN) + start_addr(BUS_ADDR_ALIGN-1 downto 0) + ones_bus_al, BUS_ADDR_ALIGN);
            elsif (state = addr_s and ARREADY = '1') then
                total_beats <= total_beats - loop_beats;
            end if;
        end if;
    end process total_beats_proc;

    loop_beats_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (state = prep_s or state = loop_s) then
                loop_beats <= tmp_beats1;
            end if;
        end if;
    end process loop_beats_proc;
    
    --read address channel
    arlen_tmp   <= loop_beats - 1;
    ARID        <= (others => '0');
    ARADDR      <= addr_buf(C_ADDR_WIDTH-1 downto 0);
    ARLEN       <= arlen_tmp(7 downto 0);
    ARSIZE      <= TO_UNSIGNED(BUS_ADDR_ALIGN, 3);
    ARBURST     <= "01";
    ARLOCK      <= "00";
    ARCACHE     <= TO_UNSIGNED(C_CACHE_VALUE, ARCACHE'length);
    ARPROT      <= TO_UNSIGNED(C_PROT_VALUE, ARPROT'length);
    ARUSER      <= TO_UNSIGNED(C_USER_VALUE, ARUSER'length);
    ARQOS       <= rreq_qos;
    ARVALID     <= '1' when (state = addr_s) else '0';

    --data align
    align_valid   <= '1' when (state = prep_s) else '0';
    align_beats   <= total_beats;
    align_address <= addr_buf(C_ADDR_WIDTH-1 downto 0);
    align_length  <= len_buf;

    --read request
    tmp_ack <= '1' when (state = idle_s) else '0';

end architecture behave;


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity memory_scanner_ddr_m_axi_read_data_align is
    generic (
        C_DATA_WIDTH        : INTEGER := 32;
        C_USER_DATA_WIDTH   : INTEGER := 8);
    port (
        ACLK                : in  STD_LOGIC;
        ARESETN             : in  STD_LOGIC;
        RDATA               : in  UNSIGNED(C_DATA_WIDTH-1 downto 0);
        RRESP               : in  UNSIGNED(1 downto 0);
        RVALID              : in  STD_LOGIC;
        RREADY              : out STD_LOGIC;
        USER_datain         : out UNSIGNED(C_USER_DATA_WIDTH-1 downto 0);
        rrsp                : out UNSIGNED(1 downto 0);
        USER_rsp_empty_n    : out STD_LOGIC;
        USER_rsp_read       : in  STD_LOGIC;
        align_ready         : out STD_LOGIC;
        align_valid         : in  STD_LOGIC;
        align_beats         : in  UNSIGNED(31 downto 0);
        align_address       : in  UNSIGNED(31 downto 0);
        align_length        : in  UNSIGNED(31 downto 0));

    function calc_data_width (x : INTEGER) return INTEGER is
        variable y : INTEGER;
    begin
        y := 8;
        while y < x loop
            y := y * 2;
        end loop;
        return y;
    end function calc_data_width;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 0;
        m := 1;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

    function max (L, R : INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end function max;

    function min (L, R : INTEGER) return INTEGER is
    begin
        if L < R then
            return L;
        else
            return R;
        end if;
    end function min;

    function calc_pad_bits (x, y, z : INTEGER) return INTEGER is
    begin
        if (x > y) then
            return 1;
        else
            return log2(z);
        end if;
    end function calc_pad_bits;

end entity memory_scanner_ddr_m_axi_read_data_align;

architecture behave of memory_scanner_ddr_m_axi_read_data_align is 
    constant DATA_FIFO_DEPTH        : INTEGER := 32;
    constant USER_DATA_WIDTH        : INTEGER := calc_data_width(C_USER_DATA_WIDTH);
    constant USER_DATA_BYTES        : INTEGER := USER_DATA_WIDTH / 8;
    constant USER_ADDR_ALIGN        : INTEGER := log2(USER_DATA_BYTES);
    constant BUS_DATA_WIDTH         : INTEGER := C_DATA_WIDTH;
    constant BUS_DATA_BYTES         : INTEGER := BUS_DATA_WIDTH / 8;
    constant BUS_ADDR_ALIGN         : INTEGER := log2(BUS_DATA_BYTES);
    constant DATA_BUF_WIDTH         : INTEGER := max(USER_DATA_WIDTH, BUS_DATA_WIDTH);
    constant DATA_VALID_BITS        : INTEGER := max(USER_DATA_WIDTH, BUS_DATA_WIDTH)/min(USER_DATA_WIDTH, BUS_DATA_WIDTH);
    constant PADDING_BITS           : INTEGER := calc_pad_bits(USER_DATA_BYTES, BUS_DATA_BYTES, DATA_VALID_BITS);
    constant MAX_REQUEST            : INTEGER := 32;
    constant REQ_DATA_BITS          : INTEGER := 2*PADDING_BITS+32;
    signal   data_buf               : UNSIGNED(DATA_BUF_WIDTH-1 downto 0);
    signal   resp_buf               : UNSIGNED(1 downto 0);
    signal   data_valid             : UNSIGNED(DATA_VALID_BITS-1 downto 0);
    signal   total_beats            : UNSIGNED(31 downto 0);
    signal   last_beat              : STD_LOGIC;
    signal   ready_buf              : STD_LOGIC;
    signal   tmp_rresp              : UNSIGNED(1 downto 0);
    signal   tmp_rdata              : UNSIGNED(BUS_DATA_WIDTH-1 downto 0);
    signal   rs0_data               : UNSIGNED(BUS_DATA_WIDTH+1 downto 0);
    signal   rs0_valid              : STD_LOGIC;
    signal   rs0_ready              : STD_LOGIC;
    signal   fifo_empty_n           : STD_LOGIC;
    signal   fifo_full_n            : STD_LOGIC;
    signal   fifo_rdreq             : STD_LOGIC;
    signal   fifo_wrreq             : STD_LOGIC;
    signal   fifo_q                 : UNSIGNED(C_USER_DATA_WIDTH+1 downto 0);
    signal   fifo_data              : UNSIGNED(C_USER_DATA_WIDTH+1 downto 0);
    signal   fifo_push              : STD_LOGIC;
    signal   request_fifo_empty_n   : STD_LOGIC;
    signal   request_fifo_full_n    : STD_LOGIC;
    signal   request_fifo_rdreq     : STD_LOGIC;
    signal   request_fifo_wrreq     : STD_LOGIC;
    signal   request_fifo_q         : UNSIGNED(REQ_DATA_BITS-1 downto 0);
    signal   request_fifo_data      : UNSIGNED(REQ_DATA_BITS-1 downto 0);
    signal   data_in_tmp            : UNSIGNED(BUS_DATA_WIDTH+1 downto 0);
    signal   data_out_tmp           : UNSIGNED(C_USER_DATA_WIDTH+1 downto 0);

    component memory_scanner_ddr_m_axi_fifo is
        generic (
            DATA_BITS   : INTEGER := 8;
            DEPTH       : INTEGER := 16;
            DEPTH_BITS  : INTEGER := 4);
        port (
            sclk        : in  STD_LOGIC;            
            reset_n     : in  STD_LOGIC;               
            empty_n     : out STD_LOGIC;               
            full_n      : out STD_LOGIC;              
            rdreq       : in  STD_LOGIC;             
            wrreq       : in  STD_LOGIC;             
            q           : out UNSIGNED(DATA_BITS-1 downto 0);
            data        : in  UNSIGNED(DATA_BITS-1 downto 0));
    end component memory_scanner_ddr_m_axi_fifo;

    component memory_scanner_ddr_m_axi_reg_slice is
        generic (
            N    : INTEGER   := 8);
        port (
            sclk    :   in  STD_LOGIC;
            reset_n :   in  STD_LOGIC;
            s_data  :   in  UNSIGNED(N-1 downto 0);
            s_valid :   in  STD_LOGIC;
            s_ready :   out STD_LOGIC;
            m_data  :   out UNSIGNED(N-1 downto 0);
            m_valid :   out STD_LOGIC;
            m_ready :   in  STD_LOGIC);
    end component memory_scanner_ddr_m_axi_reg_slice;

begin
    -- Instantiation
    rs0 : memory_scanner_ddr_m_axi_reg_slice
        generic map (
            N       =>  BUS_DATA_WIDTH+2)
        port map (
            sclk    =>  ACLK,
            reset_n =>  ARESETN,
            s_data  =>  data_in_tmp,
            s_valid =>  RVALID,
            s_ready =>  RREADY,
            m_data  =>  rs0_data,
            m_valid =>  rs0_valid,
            m_ready =>  rs0_ready);

    rs1 : memory_scanner_ddr_m_axi_reg_slice
        generic map (
            N       =>  C_USER_DATA_WIDTH+2)
        port map (
            sclk    =>  ACLK,
            reset_n =>  ARESETN,
            s_data  =>  fifo_q,
            s_valid =>  fifo_empty_n,
            s_ready =>  fifo_rdreq,
            m_data  =>  data_out_tmp,
            m_valid =>  USER_rsp_empty_n,
            m_ready =>  USER_rsp_read); 

    data_fifo : memory_scanner_ddr_m_axi_fifo
        generic map (
            DATA_BITS   =>  C_USER_DATA_WIDTH+2,
            DEPTH       =>  DATA_FIFO_DEPTH,
            DEPTH_BITS  =>  log2(DATA_FIFO_DEPTH))
        port map (
            sclk        =>  ACLK,
            reset_n     =>  ARESETN,
            empty_n     =>  fifo_empty_n,
            full_n      =>  fifo_full_n,
            rdreq       =>  fifo_rdreq,
            wrreq       =>  fifo_wrreq,
            q           =>  fifo_q,
            data        =>  fifo_data);

    request_fifo : memory_scanner_ddr_m_axi_fifo
        generic map (
            DATA_BITS   =>  REQ_DATA_BITS,
            DEPTH       =>  MAX_REQUEST,
            DEPTH_BITS  =>  log2(MAX_REQUEST))
        port map (
            sclk        =>  ACLK,
            reset_n     =>  ARESETN,
            empty_n     =>  request_fifo_empty_n,
            full_n      =>  request_fifo_full_n,
            rdreq       =>  request_fifo_rdreq,
            wrreq       =>  request_fifo_wrreq,
            q           =>  request_fifo_q,
            data        =>  request_fifo_data);

    tmp_rdata       <=  rs0_data(BUS_DATA_WIDTH-1 downto 0);
    tmp_rresp       <=  rs0_data(BUS_DATA_WIDTH+1 downto BUS_DATA_WIDTH);

    data_in_tmp     <=  RRESP & RDATA;
    rrsp            <=  data_out_tmp(C_USER_DATA_WIDTH+1 downto C_USER_DATA_WIDTH);
    USER_datain     <=  data_out_tmp(C_USER_DATA_WIDTH-1 downto 0);

    fifo_data       <=  resp_buf & data_buf(C_USER_DATA_WIDTH-1 downto 0);
    fifo_wrreq      <=  data_valid(0);
    fifo_push       <=  fifo_full_n and fifo_wrreq;

    narrow_to_wide : if (USER_DATA_BYTES >= BUS_DATA_BYTES) generate
        signal  data_buf_tmp    : UNSIGNED(BUS_DATA_WIDTH+DATA_BUF_WIDTH-1 downto 0);
        signal  data_valid_tmp  : UNSIGNED(DATA_VALID_BITS downto 0);
    begin
    --user data width is greater than or equal to bus data width
    --so all bytes of bus data are valid
        
        request_fifo_data       <=  RESIZE('0' & '0' & align_beats, REQ_DATA_BITS);
        request_fifo_wrreq      <=  align_valid;
        align_ready             <=  request_fifo_full_n;
        request_fifo_rdreq      <=  request_fifo_empty_n and (not ready_buf);
        rs0_ready               <=  ready_buf and ((not data_valid(0)) or fifo_push);

        data_buf_tmp            <=  tmp_rdata & data_buf;
        data_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (rs0_ready = '1' and rs0_valid = '1') then
                    data_buf <= SHIFT_RIGHT(data_buf_tmp, BUS_DATA_WIDTH)(DATA_BUF_WIDTH-1 downto 0);
                end if;
            end if;
        end process data_buf_proc;

        resp_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESETN = '0') then
                    resp_buf <= "00";
                elsif (ready_buf = '0') then
                    resp_buf <= "00";
                elsif (rs0_ready = '1' and rs0_valid = '1' and resp_buf(1) = '0') then
                    resp_buf <= tmp_rresp;
                else
                    resp_buf <= resp_buf;
                end if;
            end if;
        end process resp_buf_proc;

        data_valid_tmp          <=  '1' & data_valid;
        data_valid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESETN = '0') then
                    data_valid <= (others => '0');
                elsif (fifo_push = '1') then
                    if (rs0_ready = '1' and rs0_valid = '1') then
                        data_valid(DATA_VALID_BITS-1) <= '1';
                    else
                        data_valid <= (others => '0');
                    end if;
                elsif (rs0_ready = '1' and rs0_valid = '1') then
                    data_valid <= data_valid_tmp(DATA_VALID_BITS downto 1);
                end if;
            end if;
        end process data_valid_proc;

        total_beats_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESETN = '0') then
                    total_beats <= (others => '0');
                elsif (request_fifo_rdreq = '1') then
                    total_beats <= request_fifo_q(31 downto 0);
                elsif (rs0_ready = '1' and rs0_valid = '1') then
                    total_beats <= total_beats - 1;
                end if;
            end if;
        end process total_beats_proc;

        ready_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESETN = '0') then
                    ready_buf <= '0';
                elsif (request_fifo_rdreq = '1') then
                    ready_buf <= '1';
                elsif (rs0_ready = '1' and rs0_valid = '1' and total_beats = 1) then
                    ready_buf <= '0';
                end if;
            end if;
        end process ready_buf_proc;

    end generate narrow_to_wide;

    wide_to_narrow  : if (USER_DATA_BYTES < BUS_DATA_BYTES) generate
        signal end_address   : UNSIGNED(31 downto 0);
        signal head_tmp      : UNSIGNED(PADDING_BITS-1 downto 0);
        signal tail_tmp      : UNSIGNED(PADDING_BITS-1 downto 0);
        signal head_padding  : UNSIGNED(PADDING_BITS-1 downto 0);
        signal tail_padding  : UNSIGNED(PADDING_BITS-1 downto 0);
        signal first_beat    : STD_LOGIC;
        signal ones_data_v   : UNSIGNED(DATA_VALID_BITS-1 downto 0) := (others => '1');

    begin
    -- user data width is less than bus data width
    -- so we have to remove the padding bytes

        align_ready     <=  request_fifo_full_n;
        rs0_ready       <=  ready_buf when (data_valid = 0 or (data_valid = 1 and fifo_push = '1')) else '0';

        end_address     <=  align_address + SHIFT_LEFT(align_length, USER_ADDR_ALIGN);
        head_tmp        <=  align_address(BUS_ADDR_ALIGN-1 downto USER_ADDR_ALIGN);
        tail_tmp        <=  not end_address(BUS_ADDR_ALIGN-1 downto USER_ADDR_ALIGN) + 1;

        request_fifo_rdreq  <=  request_fifo_empty_n and (not ready_buf);
        request_fifo_wrreq  <=  align_valid;
        request_fifo_data   <=  head_tmp & tail_tmp & align_beats;

        data_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (rs0_ready = '1' and rs0_valid = '1') then
                    if (first_beat = '1') then
                        data_buf <= SHIFT_RIGHT(tmp_rdata, (TO_INTEGER(head_padding) * USER_DATA_WIDTH));
                    else
                        data_buf <= tmp_rdata;
                    end if;
                elsif (fifo_push = '1') then
                    data_buf <= SHIFT_RIGHT(data_buf, USER_DATA_WIDTH);
                end if;
            end if;
        end process data_buf_proc;

        resp_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESETN = '0') then
                    resp_buf <= "00";
                elsif (ready_buf = '0') then
                    resp_buf <= "00";
                elsif (rs0_ready = '1' and rs0_valid = '1') then
                    resp_buf <= tmp_rresp;
                end if;
            end if;
        end process resp_buf_proc;

        data_valid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESETN = '0') then
                    data_valid <= (others => '0');
                elsif (rs0_ready = '1' and rs0_valid = '1') then
                    if (last_beat = '0' and first_beat = '0') then
                        data_valid <= (others => '1');
                    elsif (last_beat = '1' and first_beat = '0') then
                        data_valid <= SHIFT_RIGHT(ones_data_v, TO_INTEGER(tail_padding));
                    elsif (last_beat = '0' and first_beat = '1') then
                        data_valid <= SHIFT_RIGHT(ones_data_v, TO_INTEGER(head_padding));
                    elsif (last_beat = '1' and first_beat = '1') then
                        data_valid <= SHIFT_RIGHT(ones_data_v, (TO_INTEGER(tail_padding)+TO_INTEGER(head_padding)));
                    end if;
                elsif (fifo_push = '1') then
                    data_valid <= SHIFT_RIGHT(data_valid, 1);
                end if;
            end if;
        end process data_valid_proc;

        total_beats_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (request_fifo_rdreq = '1') then
                    total_beats <= request_fifo_q(31 downto 0);
                elsif (rs0_ready = '1' and rs0_valid = '1') then
                    total_beats <= total_beats - 1;
                end if;
            end if;
        end process total_beats_proc;

        ready_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESETN = '0') then
                    ready_buf <= '0';
                elsif (request_fifo_rdreq = '1') then
                    ready_buf <= '1';
                elsif (rs0_ready = '1' and rs0_valid = '1' and total_beats = 1) then
                    ready_buf <= '0';
                end if;
            end if;
        end process ready_buf_proc;

        head_padding_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (request_fifo_rdreq = '1') then
                    head_padding <= request_fifo_q(31+PADDING_BITS*2 downto 32+PADDING_BITS);
                end if;
            end if;
        end process head_padding_proc;

        tail_padding_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (request_fifo_rdreq = '1') then
                    tail_padding <= request_fifo_q(31+PADDING_BITS downto 32);
                end if;
            end if;
        end process tail_padding_proc;

        first_beat_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESETN = '0') then
                    first_beat <= '0';
                elsif (request_fifo_rdreq = '1') then
                    first_beat <= '1';
                elsif (rs0_ready = '1' and rs0_valid ='1') then
                    first_beat <= '0';
                end if;
            end if;
        end process first_beat_proc;

        last_beat_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESETN = '0') then
                    last_beat <= '0';
                elsif (request_fifo_rdreq = '1' and request_fifo_q(31 downto 0) = 1) then
                    last_beat <= '1';
                elsif (rs0_ready = '1' and rs0_valid = '1') then
                    if (total_beats = 2) then
                        last_beat <= '1';
                    else
                        last_beat <= '0';
                    end if;
                end if;
            end if;
        end process last_beat_proc;

    end generate wide_to_narrow;

end architecture behave;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity memory_scanner_ddr_m_axi_write is
    generic (
        C_ID_WIDTH      : INTEGER := 1;
        C_ADDR_WIDTH    : INTEGER := 32;
        C_TARGET_ADDR   : INTEGER := 16#00000000#;
        C_DATA_WIDTH    : INTEGER := 32;
        C_AWUSER_WIDTH  : INTEGER := 1;
        C_WUSER_WIDTH   : INTEGER := 1;
        C_BUSER_WIDTH   : INTEGER := 1;
        C_USER_VALUE    : INTEGER := 0;
        C_PROT_VALUE    : INTEGER := 0;
        C_CACHE_VALUE   : INTEGER := 2#0011#;
        USER_DW         : INTEGER := 16;
        USER_AW         : INTEGER := 32;
        USER_MAXREQS    : INTEGER := 16);
    port (
        ACLK            : in  STD_LOGIC;  
        ARESETN         : in  STD_LOGIC;  
        AWID            : out UNSIGNED(C_ID_WIDTH-1 downto 0);  
        AWADDR          : out UNSIGNED(C_ADDR_WIDTH-1 downto 0);  
        AWLEN           : out UNSIGNED(7 downto 0);  
        AWSIZE          : out UNSIGNED(2 downto 0);  
        AWBURST         : out UNSIGNED(1 downto 0);  
        AWLOCK          : out UNSIGNED(1 downto 0);  
        AWCACHE         : out UNSIGNED(3 downto 0);  
        AWPROT          : out UNSIGNED(2 downto 0);  
        AWQOS           : out UNSIGNED(3 downto 0);  
        AWREGION        : out UNSIGNED(3 downto 0);  
        AWUSER          : out UNSIGNED(C_AWUSER_WIDTH-1 downto 0);  
        AWVALID         : out STD_LOGIC;  
        AWREADY         : in  STD_LOGIC;  
        WID             : out UNSIGNED(C_ID_WIDTH-1 downto 0);  
        WDATA           : out UNSIGNED(C_DATA_WIDTH-1 downto 0);  
        WSTRB           : out UNSIGNED(C_DATA_WIDTH/8-1 downto 0);  
        WLAST           : out STD_LOGIC;  
        WUSER           : out UNSIGNED(C_WUSER_WIDTH-1 downto 0);  
        WVALID          : out STD_LOGIC;  
        WREADY          : in  STD_LOGIC;  
        BID             : in  UNSIGNED(C_ID_WIDTH-1 downto 0);  
        BRESP           : in  UNSIGNED(1 downto 0);  
        BUSER           : in  UNSIGNED(C_BUSER_WIDTH-1 downto 0);  
        BVALID          : in  STD_LOGIC;  
        BREADY          : out STD_LOGIC;  
        wreq_valid      : in  STD_LOGIC;  
        wreq_ack        : out STD_LOGIC;  
        wreq_addr       : in  UNSIGNED(USER_AW-1 downto 0);  
        wreq_length     : in  UNSIGNED(31 downto 0);  
        wreq_cache      : in  UNSIGNED(3 downto 0);  
        wreq_prot       : in  UNSIGNED(2 downto 0);  
        wreq_qos        : in  UNSIGNED(3 downto 0);  
        wreq_user       : in  UNSIGNED(C_AWUSER_WIDTH-1 downto 0);  
        wdata_valid     : in  STD_LOGIC;  
        wdata_ack       : out STD_LOGIC;  
        wdata_strb      : in  UNSIGNED(USER_DW/8-1 downto 0);  
        wdata_user      : in  UNSIGNED(C_WUSER_WIDTH-1 downto 0);  
        wdata_data      : in  UNSIGNED(USER_DW-1 downto 0);  
        wrsp_valid      : out STD_LOGIC;  
        wrsp_ack        : in  STD_LOGIC;  
        wrsp            : out UNSIGNED(1 downto 0));

    function calc_data_width (x : INTEGER) return INTEGER is
        variable y : INTEGER;
    begin
        y := 8;
        while y < x loop
            y := y * 2;
        end loop;
        return y;
    end function calc_data_width;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 0;
        m := 1;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

    function max (L, R : INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end;

end entity memory_scanner_ddr_m_axi_write;

architecture behave of memory_scanner_ddr_m_axi_write is
    constant USER_DATA_WIDTH : INTEGER := calc_data_width(USER_DW);
    constant USER_DATA_BYTES : INTEGER := USER_DATA_WIDTH / 8;
    constant USER_ADDR_ALIGN : INTEGER := log2(USER_DATA_BYTES);
    constant BUS_DATA_WIDTH  : INTEGER := C_DATA_WIDTH;
    constant BUS_DATA_BYTES  : INTEGER := BUS_DATA_WIDTH / 8;
    constant BUS_ADDR_ALIGN  : INTEGER := log2(BUS_DATA_BYTES);
    constant DATA_BUF_BYTES  : INTEGER := max(USER_DATA_BYTES, BUS_DATA_BYTES);
    constant LOOP_CNT_WIDTH  : INTEGER := 32;
    constant BOUNDARY        : INTEGER := 16#1000# / BUS_DATA_BYTES;
    constant MAX_BEATS       : INTEGER := 256;
    constant TARGET_ADDR     : INTEGER := (C_TARGET_ADDR/USER_DATA_BYTES)*USER_DATA_BYTES;
    constant ones_bus_b      : UNSIGNED(BUS_DATA_BYTES-1 downto 0) := (others => '1');
    constant ones_bus_al     : UNSIGNED(BUS_ADDR_ALIGN-1 downto 0) := (others => '1');
    constant ones_user_b     : UNSIGNED(USER_DATA_BYTES-1 downto 0) := (others => '1');
    constant zeros_user_b    : UNSIGNED(USER_DATA_BYTES-1 downto 0) := (others => '0');
    constant ones_buf_b      : UNSIGNED(DATA_BUF_BYTES-1 downto 0) := (others => '1');
    type states is (idle_s, prep_s, addr_s, data_s, loop_s);
    signal state, n_state    : states;
    signal tmp_addr          : UNSIGNED(USER_AW-1 downto 0);
    signal tmp_length        : UNSIGNED(31 downto 0);
    signal tmp_valid         : STD_LOGIC;
    signal tmp_ack           : STD_LOGIC;
    signal fifo_wreq_data    : UNSIGNED(USER_AW+31 downto 0);
    signal wreq_pack         : UNSIGNED(USER_AW+31 downto 0);
    signal start_addr        : UNSIGNED(USER_ADDR_ALIGN+31 downto 0);
    signal addr_buf          : UNSIGNED(USER_ADDR_ALIGN+31 downto 0);
    signal len_buf           : UNSIGNED(31 downto 0);
    signal enough_data       : STD_LOGIC;
    signal data_buf          : UNSIGNED(DATA_BUF_BYTES*8-1 downto 0);
    signal data_valid        : UNSIGNED(DATA_BUF_BYTES-1 downto 0);
    signal strb_buf          : UNSIGNED(DATA_BUF_BYTES-1 downto 0);
    signal total_beats       : UNSIGNED(31 downto 0);
    signal loop_beats        : UNSIGNED(8 downto 0);
    signal start_beat        : UNSIGNED(11-BUS_ADDR_ALIGN downto 0);
    signal tmp_beats0        : UNSIGNED(8 downto 0);
    signal tmp_beats1        : UNSIGNED(8 downto 0);
    signal tmp_bytes         : UNSIGNED(BUS_ADDR_ALIGN-1 downto 0);
    signal head_bytes        : UNSIGNED(BUS_ADDR_ALIGN-1 downto 0);
    signal tail_bytes        : UNSIGNED(BUS_ADDR_ALIGN-1 downto 0);
    signal add_head          : STD_LOGIC;
    signal add_tail          : STD_LOGIC;
    signal first_beat        : STD_LOGIC;
    signal last_beat         : STD_LOGIC;
    signal trans_over        : STD_LOGIC;
    signal resp_match        : STD_LOGIC;
    signal resp_ready        : STD_LOGIC;
    signal resp_reg_valid    : STD_LOGIC;
    signal resp_reg_ready    : STD_LOGIC;
    signal resp_reg_data     : UNSIGNED(1 downto 0);
    signal need_wrsp         : STD_LOGIC;
    signal wait_wrsp_n       : STD_LOGIC;
    signal resp_total        : UNSIGNED(LOOP_CNT_WIDTH-1 downto 0);
    signal resp_counter      : UNSIGNED(LOOP_CNT_WIDTH-1 downto 0);
    signal loop_counter      : UNSIGNED(LOOP_CNT_WIDTH-1 downto 0);
    signal bresp_tmp         : UNSIGNED(1 downto 0);
    signal wstrb0            : UNSIGNED(BUS_DATA_BYTES-1 downto 0);
    signal wstrb1            : UNSIGNED(BUS_DATA_BYTES-1 downto 0);
    signal WVALID_t          : STD_LOGIC;
    signal BREADY_t          : STD_LOGIC;
    signal wdata_ack_t       : STD_LOGIC;
    signal awlen_tmp         :UNSIGNED(8 downto 0);

    component memory_scanner_ddr_m_axi_fifo is
        generic (
            DATA_BITS   : INTEGER := 8;
            DEPTH       : INTEGER := 16;
            DEPTH_BITS  : INTEGER := 4);
        port (
            sclk        : in  STD_LOGIC;
            reset_n     : in  STD_LOGIC;
            empty_n     : out STD_LOGIC;
            full_n      : out STD_LOGIC;
            rdreq       : in  STD_LOGIC;
            wrreq       : in  STD_LOGIC;
            q           : out UNSIGNED(DATA_BITS-1 downto 0);
            data        : in  UNSIGNED(DATA_BITS-1 downto 0));
    end component memory_scanner_ddr_m_axi_fifo;

    component memory_scanner_ddr_m_axi_reg_slice is
        generic (
            N    : INTEGER   := 8);
        port (
            sclk    :   in  STD_LOGIC;
            reset_n :   in  STD_LOGIC;
            s_data  :   in  UNSIGNED(N-1 downto 0);
            s_valid :   in  STD_LOGIC;
            s_ready :   out STD_LOGIC;
            m_data  :   out UNSIGNED(N-1 downto 0);
            m_valid :   out STD_LOGIC;
            m_ready :   in  STD_LOGIC);
    end component memory_scanner_ddr_m_axi_reg_slice;

begin
    -- Instantiation
    fifo_wreq : memory_scanner_ddr_m_axi_fifo
        generic map (
            DATA_BITS       =>  USER_AW+32,
            DEPTH           =>  USER_MAXREQS,
            DEPTH_BITS      =>  log2(USER_MAXREQS))
        port map (
            sclk            =>  ACLK,
            reset_n         =>  ARESETN,
            empty_n         =>  tmp_valid,
            full_n          =>  wreq_ack,
            rdreq           =>  tmp_ack,
            wrreq           =>  wreq_valid,
            q               =>  wreq_pack,
            data            =>  fifo_wreq_data);

    fifo_resp : memory_scanner_ddr_m_axi_fifo
        generic map (
            DATA_BITS       =>  LOOP_CNT_WIDTH,
            DEPTH           =>  USER_MAXREQS,
            DEPTH_BITS      =>  log2(USER_MAXREQS))
        port map (
            sclk            =>  ACLK,
            reset_n         =>  ARESETN,
            empty_n         =>  need_wrsp,
            full_n          =>  wait_wrsp_n,
            rdreq           =>  resp_match,
            wrreq           =>  trans_over,
            q               =>  resp_total,
            data            =>  loop_counter);

    fifo_resp_to_slice : memory_scanner_ddr_m_axi_fifo
        generic map (
            DATA_BITS       =>  2,
            DEPTH           =>  USER_MAXREQS,
            DEPTH_BITS      =>  log2(USER_MAXREQS))
        port map (
            sclk            =>  ACLK,
            reset_n         =>  ARESETN,
            empty_n         =>  resp_reg_valid,
            full_n          =>  resp_ready,
            rdreq           =>  resp_reg_ready,
            wrreq           =>  resp_match,
            q               =>  resp_reg_data,
            data            =>  bresp_tmp);

    resp_slice : memory_scanner_ddr_m_axi_reg_slice
        generic map (
            N               =>  2)
        port map (
            sclk            =>  ACLK,
            reset_n         =>  ARESETN,
            s_data          =>  resp_reg_data,
            s_valid         =>  resp_reg_valid,
            s_ready         =>  resp_reg_ready,
            m_data          =>  wrsp,
            m_valid         =>  wrsp_valid,
            m_ready         =>  wrsp_ack);

    -- FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESETN = '0') then
                state <= idle_s;
            else
                state <= n_state;
            end if;
        end if;
    end process;

    process (state, tmp_valid, wait_wrsp_n, AWREADY, WVALID_t, WREADY, loop_beats, total_beats)
    begin
        case state is
        when idle_s =>
            if (tmp_valid = '1' and wait_wrsp_n = '1') then
                n_state <= prep_s;
            else
                n_state <= idle_s;
            end if;
        when prep_s =>
            n_state <= addr_s;
        when addr_s =>
            if (AWREADY = '1') then
                n_state <= data_s;
            else
                n_state <= addr_s;
            end if;
        when data_s =>
            if (WVALID_t = '1' and WREADY = '1' and loop_beats = 1) then
                n_state <= loop_s;
            else
                n_state <= data_s;
            end if;
        when loop_s =>
            if (total_beats = 0) then
                n_state <= idle_s;
            else
                n_state <= addr_s;
            end if;
        when others => n_state <= idle_s;
        end case;
    end process;

    -- Translate request
    fifo_wreq_data <= (wreq_length & wreq_addr);

    tmp_addr    <=  wreq_pack(USER_AW-1 downto 0);
    tmp_length  <=  wreq_pack(USER_AW+31 downto USER_AW);
    start_addr  <=  TARGET_ADDR + SHIFT_LEFT(RESIZE(tmp_addr, USER_ADDR_ALIGN+32), USER_ADDR_ALIGN);
    start_beat  <=  addr_buf(11 downto BUS_ADDR_ALIGN);
    tmp_beats0  <=  total_beats(8 downto 0) when total_beats < MAX_BEATS else
                    "100000000"; --MAX_BEATS
    tmp_beats1  <=  tmp_beats0 when (tmp_beats0 + start_beat < BOUNDARY) else
                    BOUNDARY - RESIZE(start_beat, 9);
    
    addr_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (state = idle_s and wait_wrsp_n = '1' and tmp_valid = '1') then
                addr_buf <= start_addr;
            elsif (state = prep_s) then
                addr_buf(BUS_ADDR_ALIGN-1 downto 0) <= (others => '0');
            elsif (state = addr_s and AWREADY = '1') then
                addr_buf <= addr_buf + SHIFT_LEFT(RESIZE(loop_beats, 32), BUS_ADDR_ALIGN);
            end if;
        end if;
    end process;

    len_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (state = idle_s and wait_wrsp_n = '1' and tmp_valid = '1') then
                len_buf <= tmp_length;
            elsif (wdata_ack_t = '1' and wdata_valid = '1') then
                len_buf <= len_buf - 1;
            end if;
        end if;
    end process;

    enough_data_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (state = idle_s and wait_wrsp_n = '1') then
                enough_data <= '0';
            elsif (wdata_ack_t = '1' and wdata_valid = '1' and len_buf = 1) then
                enough_data <= '1';
            end if;
        end if;
    end process;

    wide_to_narrow : if USER_DATA_BYTES >= BUS_DATA_BYTES generate
    begin
        wstrb0  <= (others => '1');
        wstrb1  <= (others => '1');

        data_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (wdata_ack_t = '1' and wdata_valid = '1') then
                    data_buf <= RESIZE(wdata_data, DATA_BUF_BYTES*8);
                elsif (WREADY = '1' and WVALID_t = '1') then
                    data_buf <= SHIFT_RIGHT(data_buf, BUS_DATA_WIDTH);
                end if;
            end if;
        end process data_buf_proc;

        strb_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (wdata_ack_t = '1' and wdata_valid = '1') then
                    strb_buf <= wdata_strb;
                elsif (WREADY = '1' and WVALID_t = '1') then
                    strb_buf <= SHIFT_RIGHT(strb_buf, BUS_DATA_BYTES);
                end if;
            end if;
        end process;

        data_valid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESETN = '0') then
                    data_valid <= (others => '0');
                elsif (wdata_ack_t = '1' and wdata_valid = '1') then
                    data_valid <= (others => '1');
                elsif (WREADY = '1' and WVALID_t = '1') then
                    data_valid <= SHIFT_RIGHT(data_valid, BUS_DATA_BYTES);
                end if;
            end if;
        end process data_valid_proc;

        -- these signals are useless if user data width is
        -- greater than bus data width
        tmp_bytes   <=  (others => '0');
        head_bytes  <=  (others => '0');
        tail_bytes  <=  (others => '0');
        add_head    <=  '0';
        add_tail    <=  '0';
        first_beat  <=  '0';
        last_beat   <=  '0';

    end generate wide_to_narrow;

    narrow_to_wide : if USER_DATA_BYTES < BUS_DATA_BYTES generate
        signal data_buf_tmp      : UNSIGNED(DATA_BUF_BYTES*8+USER_DW-1 downto 0);
        signal strb_buf_tmp      : UNSIGNED(DATA_BUF_BYTES+USER_DW/8-1 downto 0);
        signal data_valid_tmp    : UNSIGNED(DATA_BUF_BYTES+USER_DATA_BYTES-1 downto 0);
    begin
        wstrb0  <= SHIFT_LEFT(ones_bus_b, TO_INTEGER(head_bytes)) when first_beat = '1' else
                   ones_bus_b;
        wstrb1  <= SHIFT_RIGHT(ones_bus_b, TO_INTEGER(tail_bytes)) when last_beat = '1' else
                   ones_bus_b;

        data_buf_tmp <= wdata_data & data_buf;
        data_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (wdata_ack_t = '1' and wdata_valid = '1') then
                    data_buf <= SHIFT_RIGHT(data_buf_tmp, USER_DW)(DATA_BUF_BYTES*8-1 downto 0);
                elsif (state = data_s and add_tail = '1') then
                    data_buf <= SHIFT_RIGHT(data_buf, TO_INTEGER(tail_bytes)*8);
                end if;
            end if;
        end process data_buf_proc;

        strb_buf_tmp <= wdata_strb & strb_buf;
        strb_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (wdata_ack_t = '1' and wdata_valid = '1') then
                    strb_buf <= SHIFT_RIGHT(strb_buf_tmp, USER_DATA_BYTES)(DATA_BUF_BYTES-1 downto 0);
                elsif (state = data_s and add_tail = '1') then
                    strb_buf <= SHIFT_RIGHT(strb_buf, TO_INTEGER(tail_bytes));
                end if;
            end if;
        end process;

        data_valid_tmp <= ones_user_b & data_valid;
        data_valid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESETN = '0') then
                    data_valid <= (others => '0');
                elsif (WREADY = '1' and WVALID_t = '1') then
                    if (wdata_ack_t = '1' and wdata_valid = '1') then
                        data_valid <= SHIFT_LEFT(ones_buf_b, DATA_BUF_BYTES-USER_DATA_BYTES);
                    else
                        data_valid <= (others => '0');
                    end if;
                elsif (wdata_ack_t = '1' and wdata_valid = '1') then
                    data_valid <= SHIFT_RIGHT(data_valid_tmp, USER_DATA_BYTES)(DATA_BUF_BYTES-1 downto 0);
                elsif (add_head = '1') then
                    data_valid <= SHIFT_RIGHT(data_valid, TO_INTEGER(head_bytes)) or (not SHIFT_RIGHT(ones_bus_b, TO_INTEGER(head_bytes)));
                elsif (state = data_s and add_tail = '1') then
                    data_valid <= SHIFT_RIGHT(data_valid, TO_INTEGER(tail_bytes)) or (not SHIFT_RIGHT(ones_bus_b, TO_INTEGER(tail_bytes)));
                end if;
            end if;
        end process data_valid_proc;
            
        tmp_bytes_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (state = idle_s and wait_wrsp_n = '1' and tmp_valid = '1') then
                    tmp_bytes <= SHIFT_LEFT(tmp_length(BUS_ADDR_ALIGN-1 downto 0), USER_ADDR_ALIGN);
                end if;
            end if;
        end process tmp_bytes_proc;

        head_bytes_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (state = prep_s) then
                    head_bytes <= addr_buf(BUS_ADDR_ALIGN-1 downto 0);
                end if;
            end if;
        end process head_bytes_proc;

        tail_bytes_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (state = prep_s) then
                    tail_bytes <= BUS_DATA_BYTES - addr_buf(BUS_ADDR_ALIGN-1 downto 0) - tmp_bytes;
                end if;
            end if;
        end process tail_bytes_proc;

        add_head_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (state = prep_s ) then
                    add_head <= '1';
                else
                    add_head <= '0';
                end if;
            end if;
        end process add_head_proc;

        add_tail_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (wdata_ack_t = '1' and wdata_valid = '1' and len_buf = 1) then
                    add_tail <= '1';
                else
                    add_tail <= '0';
                end if;
            end if;
        end process add_tail_proc;

        first_beat_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESETN = '0') then
                    first_beat <= '0';
                elsif (state = prep_s) then
                    first_beat <= '1';
                elsif (WREADY = '1' and WVALID_t = '1') then
                    first_beat <= '0';
                end if;
            end if;
        end process first_beat_proc;

        last_beat_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESETN = '0') then
                    last_beat <= '0';
                elsif ((state = prep_s or state = loop_s) and total_beats = 1) then
                    last_beat <= '1';
                elsif ((WREADY and WVALID_t) = '1') then
                    if (total_beats = 0 and loop_beats = 2) then
                        last_beat <= '1';
                    else
                        last_beat <= '0';
                    end if;
                end if;
            end if;
        end process last_beat_proc;

    end generate narrow_to_wide;
    
    total_beats_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (state = idle_s and wait_wrsp_n = '1' and tmp_valid = '1') then
                total_beats <= SHIFT_RIGHT(SHIFT_LEFT(tmp_length, USER_ADDR_ALIGN) + start_addr(BUS_ADDR_ALIGN-1 downto 0) + ones_bus_al, BUS_ADDR_ALIGN);
            elsif (state = addr_s and AWREADY = '1') then
                total_beats <= total_beats - loop_beats;
            end if;
        end if;
    end process;

    loop_beats_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (state = prep_s or state = loop_s) then
                loop_beats <= tmp_beats1;
            elsif (WVALID_t = '1' and WREADY = '1') then
                loop_beats <= loop_beats - 1;
            end if;
        end if;
    end process loop_beats_proc;

    --response
    trans_over <= '1' when (state = loop_s and n_state = idle_s) else
                  '0';
    resp_match <= '1' when (resp_counter = resp_total and need_wrsp = '1') else
                  '0';

    loop_counter_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (state = idle_s) then
                loop_counter <= (others => '0');
            elsif (state = data_s and n_state = loop_s) then
                loop_counter <= loop_counter + 1;
            end if;
        end if;
    end process loop_counter_proc;

    resp_counter_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESETN = '0') then
                resp_counter <= (others => '0');
            elsif (resp_match = '1') then
                resp_counter <= (others => '0');
            elsif (BVALID = '1' and BREADY_t = '1') then
                resp_counter <= resp_counter + 1;
            end if;
        end if;
    end process resp_counter_proc;

    bresp_tmp_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESETN = '0') then
                bresp_tmp <= "00";
            elsif (resp_match = '1') then
                bresp_tmp <= "00";
            elsif (BVALID = '1' and BREADY_t = '1' and bresp_tmp(1) = '0') then
                bresp_tmp <= BRESP;
            end if;
        end if;
    end process bresp_tmp_proc;

    --axi4 bus
    --write address channel
    awlen_tmp <= loop_beats - 1;

    AWID    <= (others => '0');
    AWADDR  <= addr_buf(C_ADDR_WIDTH-1 downto 0);
    AWLEN   <= awlen_tmp(7 downto 0);
    AWSIZE  <= TO_UNSIGNED(BUS_ADDR_ALIGN, 3);
    AWBURST <= "01";
    AWLOCK  <= "00";
    AWCACHE <= TO_UNSIGNED(C_CACHE_VALUE, AWCACHE'length);
    AWPROT  <= TO_UNSIGNED(C_PROT_VALUE, AWPROT'length);
    AWUSER  <= TO_UNSIGNED(C_USER_VALUE, AWUSER'length);
    AWQOS   <= wreq_qos;
    AWVALID <= '1' when (state = addr_s) else '0';
    
    --write data channel
    WDATA   <= data_buf(BUS_DATA_WIDTH-1 downto 0);
    WSTRB   <= strb_buf(BUS_DATA_BYTES-1 downto 0) and (wstrb0 and wstrb1);
    WLAST   <= WVALID_t when (loop_beats = 1) else '0';
    WUSER   <= TO_UNSIGNED(C_USER_VALUE, C_WUSER_WIDTH);
    WVALID_t<= data_valid(0) when (state = data_s) else '0';
    WVALID  <= WVALID_t;

    --write response channel
    BREADY  <= BREADY_t;
    BREADY_t<= resp_ready;

    --write request
    tmp_ack <= wait_wrsp_n when (state = idle_s) else '0';

    wdata_ack <= wdata_ack_t;
    gen_write_ready_0 : if (USER_DATA_BYTES <= BUS_DATA_BYTES) generate
    begin
        wdata_ack_t <= (not enough_data and (not data_valid(0) or WREADY)) when (state = data_s) else '0';
    end generate gen_write_ready_0;

    gen_write_ready_1 : if (USER_DATA_BYTES > BUS_DATA_BYTES) generate
    begin
        wdata_ack_t <= (not enough_data and (not data_valid(0) or WREADY)) when (data_valid(DATA_BUF_BYTES-1 downto BUS_DATA_BYTES) = 0) and state = data_s else '0';
    end generate gen_write_ready_1;

end behave;

