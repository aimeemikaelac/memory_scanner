`timescale 1ns/1ps

module memory_scanner_ddr_m_axi
#(parameter
    C_ID_WIDTH        = 1,
    C_ADDR_WIDTH      = 32,
    C_TARGET_ADDR     = 32'h00000000,
    C_DATA_WIDTH      = 32,
    C_AWUSER_WIDTH    = 1,
    C_ARUSER_WIDTH    = 1,
    C_WUSER_WIDTH     = 1,
    C_RUSER_WIDTH     = 1,
    C_BUSER_WIDTH     = 1,
    C_USER_VALUE      = 1'b0,
    C_PROT_VALUE      = 3'b000,
    C_CACHE_VALUE     = 4'b0011,
    USER_DW           = 16,
    USER_AW           = 32,
    USER_MAXREQS      = 16
)(
    // system signal
    input  wire                         ACLK,
    input  wire                         ARESETN,
    // write address channel
    output wire [C_ID_WIDTH-1:0]        AWID,
    output wire [C_ADDR_WIDTH-1:0]      AWADDR,
    output wire [7:0]                   AWLEN,
    output wire [2:0]                   AWSIZE,
    output wire [1:0]                   AWBURST,
    output wire [1:0]                   AWLOCK,
    output wire [3:0]                   AWCACHE,
    output wire [2:0]                   AWPROT,
    output wire [3:0]                   AWQOS,
    output wire [3:0]                   AWREGION,
    output wire [C_AWUSER_WIDTH-1:0]    AWUSER,
    output wire                         AWVALID,
    input  wire                         AWREADY,
    // write data channel
    output wire [C_ID_WIDTH-1:0]        WID,
    output wire [C_DATA_WIDTH-1:0]      WDATA,
    output wire [C_DATA_WIDTH/8-1:0]    WSTRB,
    output wire                         WLAST,
    output wire [C_WUSER_WIDTH-1:0]     WUSER,
    output wire                         WVALID,
    input  wire                         WREADY,
    // write response channel
    input  wire [C_ID_WIDTH-1:0]        BID,
    input  wire [1:0]                   BRESP,
    input  wire [C_BUSER_WIDTH-1:0]     BUSER,
    input  wire                         BVALID,
    output wire                         BREADY,
    // read address channel
    output wire [C_ID_WIDTH-1:0]        ARID,
    output wire [C_ADDR_WIDTH-1:0]      ARADDR,
    output wire [7:0]                   ARLEN,
    output wire [2:0]                   ARSIZE,
    output wire [1:0]                   ARBURST,
    output wire [1:0]                   ARLOCK,
    output wire [3:0]                   ARCACHE,
    output wire [2:0]                   ARPROT,
    output wire [3:0]                   ARQOS,
    output wire [3:0]                   ARREGION,
    output wire [C_ARUSER_WIDTH-1:0]    ARUSER,
    output wire                         ARVALID,
    input  wire                         ARREADY,
    // read data channel
    input  wire [C_ID_WIDTH-1:0]        RID,
    input  wire [C_DATA_WIDTH-1:0]      RDATA,
    input  wire [1:0]                   RRESP,
    input  wire                         RLAST,
    input  wire [C_RUSER_WIDTH-1:0]     RUSER,
    input  wire                         RVALID,
    output wire                         RREADY,

    // internal bus ports
    // write address
    input  wire [C_ID_WIDTH-1:0]        I_AWID,
    input  wire [USER_AW-1:0]           I_AWADDR,
    input  wire [31:0]                  I_AWLEN,
    input  wire [2:0]                   I_AWSIZE,
    input  wire [1:0]                   I_AWBURST,
    input  wire [1:0]                   I_AWLOCK,
    input  wire [3:0]                   I_AWCACHE,
    input  wire [2:0]                   I_AWPROT,
    input  wire [3:0]                   I_AWQOS,
    input  wire [3:0]                   I_AWREGION,
    input  wire [C_AWUSER_WIDTH-1:0]    I_AWUSER,
    input  wire                         I_AWVALID,
    output wire                         I_AWREADY,
    // write data
    input  wire [C_ID_WIDTH-1:0]        I_WID,
    input  wire [USER_DW-1:0]           I_WDATA,
    input  wire                         I_WLAST,
    input  wire [USER_DW/8-1:0]         I_WSTRB,
    input  wire [C_WUSER_WIDTH-1:0]     I_WUSER,
    input  wire                         I_WVALID,
    output wire                         I_WREADY,
    // write response
    output wire [C_ID_WIDTH-1:0]        I_BID,
    output wire [1:0]                   I_BRESP,
    output wire [C_BUSER_WIDTH-1:0]     I_BUSER,
    output wire                         I_BVALID,
    input  wire                         I_BREADY,
    // read address
    input  wire [C_ID_WIDTH-1:0]        I_ARID,
    input  wire [USER_AW-1:0]           I_ARADDR,
    input  wire [31:0]                  I_ARLEN,
    input  wire [2:0]                   I_ARSIZE,
    input  wire [1:0]                   I_ARBURST,
    input  wire [1:0]                   I_ARLOCK,
    input  wire [3:0]                   I_ARCACHE,
    input  wire [2:0]                   I_ARPROT,
    input  wire [3:0]                   I_ARQOS,
    input  wire [3:0]                   I_ARREGION,
    input  wire [C_ARUSER_WIDTH-1:0]    I_ARUSER,
    input  wire                         I_ARVALID,
    output wire                         I_ARREADY,
    // read data
    output wire [C_ID_WIDTH-1:0]        I_RID,
    output wire [USER_DW-1:0]           I_RDATA,
    output wire [1:0]                   I_RRESP,
    output wire                         I_RLAST,
    output wire [C_RUSER_WIDTH-1:0]     I_RUSER,
    output wire                         I_RVALID,
    input  wire                         I_RREADY
);

//------------------------Parameter----------------------

//------------------------Local signal-------------------
assign I_BID = 1'b0;
assign I_BUSER = C_USER_VALUE;
assign I_RID = 1'b0;
assign I_RLAST = 1'b0;
assign I_RUSER = C_USER_VALUE;
//------------------------Instantiation------------------
// memory_scanner_ddr_m_axi_write
memory_scanner_ddr_m_axi_write #(
    .C_ID_WIDTH        ( C_ID_WIDTH ),
    .C_ADDR_WIDTH      ( C_ADDR_WIDTH ),
    .C_TARGET_ADDR     ( C_TARGET_ADDR ),
    .C_DATA_WIDTH      ( C_DATA_WIDTH ),
    .C_AWUSER_WIDTH    ( C_AWUSER_WIDTH ),
    .C_WUSER_WIDTH     ( C_WUSER_WIDTH ),
    .C_BUSER_WIDTH     ( C_BUSER_WIDTH ),
    .C_USER_VALUE      ( C_USER_VALUE ),
    .C_PROT_VALUE      ( C_PROT_VALUE ),
    .C_CACHE_VALUE     ( C_CACHE_VALUE ),
    .USER_DW           ( USER_DW ),
    .USER_AW           ( USER_AW ),
    .USER_MAXREQS      ( USER_MAXREQS )
) bus_write (
    .ACLK              ( ACLK ),
    .ARESETN           ( ARESETN ),
    .AWID              ( AWID ),
    .AWADDR            ( AWADDR ),
    .AWLEN             ( AWLEN ),
    .AWSIZE            ( AWSIZE ),
    .AWBURST           ( AWBURST ),
    .AWLOCK            ( AWLOCK ),
    .AWCACHE           ( AWCACHE ),
    .AWPROT            ( AWPROT ),
    .AWQOS             ( AWQOS ),
    .AWREGION          ( AWREGION ),
    .AWUSER            ( AWUSER ),
    .AWVALID           ( AWVALID ),
    .AWREADY           ( AWREADY ),
    .WID               ( WID ),
    .WDATA             ( WDATA ),
    .WSTRB             ( WSTRB ),
    .WLAST             ( WLAST ),
    .WUSER             ( WUSER ),
    .WVALID            ( WVALID ),
    .WREADY            ( WREADY ),
    .BID               ( BID ),
    .BRESP             ( BRESP ),
    .BUSER             ( BUSER ),
    .BVALID            ( BVALID ),
    .BREADY            ( BREADY ),
    .wreq_valid        ( I_AWVALID ),
    .wreq_ack          ( I_AWREADY ),
    .wreq_addr         ( I_AWADDR ),
    .wreq_length       ( I_AWLEN ),
    .wreq_cache        ( I_AWCACHE ),
    .wreq_prot         ( I_AWPROT ),
    .wreq_qos          ( I_AWQOS ),
    .wreq_user         ( I_AWUSER ),
    .wdata_valid       ( I_WVALID ),
    .wdata_ack         ( I_WREADY ),
    .wdata_strb        ( I_WSTRB ),
    .wdata_user        ( I_WUSER ),
    .wdata             ( I_WDATA ),
    .wrsp_valid        ( I_BVALID ),
    .wrsp_ack          ( I_BREADY ),
    .wrsp              ( I_BRESP )
);

// memory_scanner_ddr_m_axi_read
memory_scanner_ddr_m_axi_read #(
    .C_ID_WIDTH        ( C_ID_WIDTH ),
    .C_ADDR_WIDTH      ( C_ADDR_WIDTH ),
    .C_TARGET_ADDR     ( C_TARGET_ADDR ),
    .C_DATA_WIDTH      ( C_DATA_WIDTH ),
    .C_ARUSER_WIDTH    ( C_ARUSER_WIDTH ),
    .C_RUSER_WIDTH     ( C_RUSER_WIDTH ),
    .C_USER_VALUE      ( C_USER_VALUE ),
    .C_PROT_VALUE      ( C_PROT_VALUE ),
    .C_CACHE_VALUE     ( C_CACHE_VALUE ),
    .USER_DW           ( USER_DW ),
    .USER_AW           ( USER_AW ),
    .USER_MAXREQS      ( USER_MAXREQS )
) bus_read (
    .ACLK              ( ACLK ),
    .ARESETN           ( ARESETN ),
    .ARID              ( ARID ),
    .ARADDR            ( ARADDR ),
    .ARLEN             ( ARLEN ),
    .ARSIZE            ( ARSIZE ),
    .ARBURST           ( ARBURST ),
    .ARLOCK            ( ARLOCK ),
    .ARCACHE           ( ARCACHE ),
    .ARPROT            ( ARPROT ),
    .ARQOS             ( ARQOS ),
    .ARREGION          ( ARREGION ),
    .ARUSER            ( ARUSER ),
    .ARVALID           ( ARVALID ),
    .ARREADY           ( ARREADY ),
    .RID               ( RID ),
    .RDATA             ( RDATA ),
    .RRESP             ( RRESP ),
    .RLAST             ( RLAST ),
    .RUSER             ( RUSER ),
    .RVALID            ( RVALID ),
    .RREADY            ( RREADY ),
    .rreq_valid        ( I_ARVALID ),
    .rreq_ack          ( I_ARREADY ),
    .rreq_addr         ( I_ARADDR ),
    .rreq_length       ( I_ARLEN ),
    .rreq_cache        ( I_ARCACHE ),
    .rreq_prot         ( I_ARPROT ),
    .rreq_qos          ( I_ARQOS ),
    .rreq_user         ( I_ARUSER ),
    .rdata_valid       ( I_RVALID ),
    .rdata_ack         ( I_RREADY ),
    .rdata             ( I_RDATA ),
    .rrsp              ( I_RRESP )
);

endmodule

module memory_scanner_ddr_m_axi_fifo
#(parameter
    DATA_BITS  = 8,
    DEPTH      = 16,
    DEPTH_BITS = 4
)(
    input  wire                 sclk,
    input  wire                 reset_n,
    output reg                  empty_n,
    output reg                  full_n,
    input  wire                 rdreq,
    input  wire                 wrreq,
    output wire [DATA_BITS-1:0] q,
    input  wire [DATA_BITS-1:0] data
);
//------------------------Parameter----------------------

//------------------------Local signal-------------------
wire                  push;
wire                  pop;
reg  [DEPTH_BITS-1:0] pout;
reg  [DATA_BITS-1:0]  mem[0:DEPTH-1];
//------------------------Body---------------------------
assign push = full_n & wrreq;
assign pop  = empty_n & rdreq;
assign q    = mem[pout];

// empty_n
always @(posedge sclk) begin
    if (~reset_n)
        empty_n <= 1'b0;
    else if (push)
        empty_n <= 1'b1;
    else if (~push && pop && pout == 1'b0)
        empty_n <= 1'b0;
end

// full_n
always @(posedge sclk) begin
    if (~reset_n)
        full_n <= 1'b1;
    else if (rdreq)
        full_n <= 1'b1;
    else if (push && ~pop && pout == DEPTH - 2)
        full_n <= 1'b0;
end

// pout
always @(posedge sclk) begin
    if (~reset_n)
        pout <= 1'b0;
    else if (push & ~pop & empty_n)
        pout <= pout + 1'b1;
    else if (~push && pop && pout != 1'b0)
        pout <= pout - 1'b1;
end

integer i;
always @(posedge sclk) begin
    if (push) begin
        for (i = 0; i < DEPTH - 1; i = i + 1) begin
            mem[i+1] <= mem[i];
        end
        mem[0] <= data;
    end
end

endmodule

module memory_scanner_ddr_m_axi_reg_slice
#(parameter
    N = 8   // data width
) (
    // system signals
    input  wire         sclk,
    input  wire         reset_n,
    // slave side
    input  wire [N-1:0] s_data,
    input  wire         s_valid,
    output wire         s_ready,
    // master side
    output wire [N-1:0] m_data,
    output wire         m_valid,
    input  wire         m_ready
);

//------------------------Parameter----------------------
// state
localparam [1:0]
    ZERO = 2'b10,
    ONE  = 2'b11,
    TWO  = 2'b01;

//------------------------Local signal-------------------
reg  [N-1:0] data_p1;
reg  [N-1:0] data_p2;
wire         load_p1;
wire         load_p2;
wire         load_p1_from_p2;
reg          s_ready_t;
reg  [1:0]   state;
reg  [1:0]   next;

//------------------------Body---------------------------
assign s_ready = s_ready_t;
assign m_data  = data_p1;
assign m_valid = state[0];

assign load_p1 = (state == ZERO && s_valid) ||
                 (state == ONE && s_valid && m_ready) ||
                 (state == TWO && m_ready);
assign load_p2 = s_valid & s_ready;
assign load_p1_from_p2 = (state == TWO);

// data_p1
always @(posedge sclk) begin
    if (load_p1) begin
        if (load_p1_from_p2)
            data_p1 <= data_p2;
        else
            data_p1 <= s_data;
    end
end

// data_p2
always @(posedge sclk) begin
    if (load_p2) data_p2 <= s_data;
end

// s_ready_t
always @(posedge sclk) begin
    if (~reset_n)
        s_ready_t <= 1'b0;
    else if (state == ZERO)
        s_ready_t <= 1'b1;
    else if (state == ONE && next == TWO)
        s_ready_t <= 1'b0;
    else if (state == TWO && next == ONE)
        s_ready_t <= 1'b1;
end

// state
always @(posedge sclk) begin
    if (~reset_n)
        state <= ZERO;
    else
        state <= next;
end

// next
always @(*) begin
    case (state)
        ZERO:
            if (s_valid & s_ready)
                next = ONE;
            else
                next = ZERO;
        ONE:
            if (~s_valid & m_ready)
                next = ZERO;
            else if (s_valid & ~m_ready)
                next = TWO;
            else
                next = ONE;
        TWO:
            if (m_ready)
                next = ONE;
            else
                next = TWO;
        default:
            next = ZERO;
    endcase
end

endmodule

`timescale 1ns/1ps

module memory_scanner_ddr_m_axi_read
#(parameter
    C_ID_WIDTH        = 1,
    C_ADDR_WIDTH      = 32,
    C_TARGET_ADDR     = 32'h00000000,
    C_DATA_WIDTH      = 32,
    C_ARUSER_WIDTH    = 1,
    C_RUSER_WIDTH     = 1,
    C_USER_VALUE      = 1'b0,
    C_PROT_VALUE      = 3'b000,
    C_CACHE_VALUE     = 4'b0011,
    USER_DW           = 16,
    USER_AW           = 32,
    USER_MAXREQS      = 16
)(
    // system signal
    input  wire                         ACLK,
    input  wire                         ARESETN,
    // read address channel
    output wire [C_ID_WIDTH-1:0]        ARID,
    output wire [C_ADDR_WIDTH-1:0]      ARADDR,
    output wire [7:0]                   ARLEN,
    output wire [2:0]                   ARSIZE,
    output wire [1:0]                   ARBURST,
    output wire [1:0]                   ARLOCK,
    output wire [3:0]                   ARCACHE,
    output wire [2:0]                   ARPROT,
    output wire [3:0]                   ARQOS,
    output wire [3:0]                   ARREGION,
    output wire [C_ARUSER_WIDTH-1:0]    ARUSER,
    output wire                         ARVALID,
    input  wire                         ARREADY,
    // read data channel
    input  wire [C_ID_WIDTH-1:0]        RID,
    input  wire [C_DATA_WIDTH-1:0]      RDATA,
    input  wire [1:0]                   RRESP,
    input  wire                         RLAST,
    input  wire [C_RUSER_WIDTH-1:0]     RUSER,
    input  wire                         RVALID,
    output wire                         RREADY,
    // read
    input  wire                         rreq_valid,
    output wire                         rreq_ack,
    input  wire [USER_AW-1:0]           rreq_addr,
    input  wire [31:0]                  rreq_length,
    input  wire [3:0]                   rreq_cache,
    input  wire [2:0]                   rreq_prot,
    input  wire [3:0]                   rreq_qos,
    input  wire [C_ARUSER_WIDTH-1:0]    rreq_user,
    output wire [USER_DW-1:0]           rdata,
    output wire [1:0]                   rrsp,
    output wire                         rdata_valid,
    input  wire                         rdata_ack
);

//------------------------Parameter----------------------
localparam
    USER_DATA_WIDTH = calc_data_width(USER_DW),
    USER_DATA_BYTES = USER_DATA_WIDTH / 8,
    USER_ADDR_ALIGN = log2(USER_DATA_BYTES),
    BUS_DATA_WIDTH  = C_DATA_WIDTH,
    BUS_DATA_BYTES  = BUS_DATA_WIDTH / 8,
    BUS_ADDR_ALIGN  = log2(BUS_DATA_BYTES),
    TARGET_ADDR     = C_TARGET_ADDR & (32'hffffffff << USER_ADDR_ALIGN);

localparam [3:0]
    IDLE = 4'd0,
    PREP = 4'd1,
    ADDR = 4'd2,
    LOOP = 4'd3;

localparam
    MAX_BEATS = 9'd256,
    BOUNDARY  = 16'h1000 >> BUS_ADDR_ALIGN;

//------------------------Local signal-------------------
// fsm
reg  [3:0]                  state;
reg  [3:0]                  next;
// translate request
wire [USER_AW-1:0]          tmp_addr;
wire [31:0]                 tmp_length;
wire                        tmp_valid;
wire                        tmp_ack;
wire [USER_AW+31:0]         rreq_pack;
wire [USER_ADDR_ALIGN+31:0] start_addr;
reg  [USER_ADDR_ALIGN+31:0] addr_buf;
reg  [31:0]                 len_buf;
reg  [31:0]                 total_beats;
reg  [8:0]                  loop_beats;
wire [11-BUS_ADDR_ALIGN:0]  start_beat;
wire [8:0]                  tmp_beats0;
wire [8:0]                  tmp_beats1;
// data align
wire                        align_ready;
wire                        align_valid;
wire [31:0]                 align_beats;
wire [31:0]                 align_address;
wire [31:0]                 align_length;

//------------------------Task and function--------------
function integer calc_data_width;
    input integer x;
    integer y;
begin
    y = 8;
    while (y < x) y = y * 2;
    calc_data_width = y;
end
endfunction

function integer log2;
    input integer x;
    integer n, m;
begin
    n = 0;
    m = 1;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction

//------------------------Instantiation------------------
// memory_scanner_ddr_m_axi_read_data_align 
memory_scanner_ddr_m_axi_read_data_align #(
    .C_DATA_WIDTH       (C_DATA_WIDTH),
    .C_USER_DATA_WIDTH  (USER_DW)
) read_data_align (
    .ACLK( ACLK ),
    .ARESETN( ARESETN ),
    .RRESP( RRESP ),
    .RDATA( RDATA ),
    .RVALID( RVALID ),
    .RREADY( RREADY ),
    .rrsp( rrsp ),
    .USER_datain( rdata ),
    .USER_rsp_empty_n( rdata_valid ),
    .USER_rsp_read( rdata_ack ),
    .align_ready( align_ready ),
    .align_valid( align_valid ),
    .align_beats( align_beats ),
    .align_address( align_address ),
    .align_length( align_length )
);

// data bits assign: | AW+31 -- AW | AW-1 -- 0 |
//                   | rreq_length | rreq_addr |
assign  tmp_addr     = rreq_pack[USER_AW-1 : 0];
assign  tmp_length   = rreq_pack[USER_AW+31 : USER_AW];
memory_scanner_ddr_m_axi_fifo  #(
    .DATA_BITS  ( USER_AW+32 ),
    .DEPTH      ( USER_MAXREQS ),
    .DEPTH_BITS ( log2(USER_MAXREQS) )
) fifo_rreq (
    .sclk( ACLK ),
    .reset_n( ARESETN ),
    .empty_n( tmp_valid ),
    .full_n( rreq_ack ),
    .rdreq( tmp_ack ),
    .wrreq( rreq_valid ),
    .q( rreq_pack ),
    .data( {rreq_length, rreq_addr} )
);

//------------------------Body---------------------------
//++++++++++++++++++++++++fsm++++++++++++++++++++++++++++
// state
always @(posedge ACLK) begin
    if (~ARESETN)
        state <= IDLE;
    else
        state <= next;
end

// next
always @(*) begin
    case (state)
        IDLE:
            if (tmp_valid)
                next = PREP;
            else
                next = IDLE;
        PREP:
            next = ADDR;
        ADDR:
            if (ARREADY)
                next = LOOP;
            else
                next = ADDR;
        LOOP:
            if (total_beats==1'b0)
                next = IDLE;
            else
                next = ADDR;
        default:
            next = IDLE;
    endcase
end

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++translate request++++++++++++++
assign start_addr = TARGET_ADDR + (tmp_addr << USER_ADDR_ALIGN);
assign start_beat = addr_buf[11:BUS_ADDR_ALIGN];
assign tmp_beats0 = (total_beats < MAX_BEATS)? total_beats : MAX_BEATS;
assign tmp_beats1 = (tmp_beats0 < BOUNDARY - start_beat)? tmp_beats0 : BOUNDARY - start_beat;

// addr_buf
always @(posedge ACLK) begin
    if (tmp_ack && tmp_valid)
        addr_buf <= start_addr;
    else if (state==PREP)
        addr_buf[BUS_ADDR_ALIGN-1:0] <= 1'b0;
    else if (state==ADDR && ARREADY)
        addr_buf <= addr_buf + (loop_beats << BUS_ADDR_ALIGN);
end

// len_buf
always @(posedge ACLK) begin
    if (tmp_ack & tmp_valid)
        len_buf <= tmp_length;
end

// total_beats
always @(posedge ACLK) begin
    if (tmp_ack & tmp_valid)
        total_beats <= ((tmp_length << USER_ADDR_ALIGN) + start_addr[BUS_ADDR_ALIGN-1:0] +
                        {BUS_ADDR_ALIGN{1'b1}}) >> BUS_ADDR_ALIGN;
    else if (state==ADDR && ARREADY)
        total_beats <= total_beats - loop_beats;
end

// loop_beats
always @(posedge ACLK) begin
    if (state==PREP || state==LOOP)
        loop_beats <= tmp_beats1;
end
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++read address channel+++++++++++
assign ARID    = 1'b0;
assign ARADDR  = addr_buf;
assign ARLEN   = loop_beats - 1'b1;
assign ARSIZE  = BUS_ADDR_ALIGN[2:0];
assign ARBURST = 2'b01;
assign ARLOCK  = 2'b00;
assign ARCACHE = C_CACHE_VALUE;
assign ARPROT  = C_PROT_VALUE;
assign ARUSER  = C_USER_VALUE;
assign ARQOS   = rreq_qos;
assign ARVALID = (state==ADDR);
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++data align+++++++++++++++++++++
assign align_valid   = (state==PREP);
assign align_beats   = total_beats;
assign align_address = addr_buf;
assign align_length  = len_buf;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++read request+++++++++++++++++++
assign tmp_ack = (state==IDLE);
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

endmodule

`timescale 1ns/1ps

module memory_scanner_ddr_m_axi_read_data_align
#(parameter
    C_DATA_WIDTH      = 32,
    C_USER_DATA_WIDTH = 8
)(
    // system signal
    input  wire                         ACLK,
    input  wire                         ARESETN,
    // read data channel
    input  wire [C_DATA_WIDTH-1:0]      RDATA,
    input  wire [1:0]                   RRESP,
    input  wire                         RVALID,
    output wire                         RREADY,
    // user ports
    output wire [C_USER_DATA_WIDTH-1:0] USER_datain,
    output wire [1:0]                   rrsp,
    output wire                         USER_rsp_empty_n,
    input  wire                         USER_rsp_read,
    // data align
    output wire                         align_ready,
    input  wire                         align_valid,
    input  wire [31:0]                  align_beats,
    input  wire [31:0]                  align_address,
    input  wire [31:0]                  align_length
);

//------------------------Parameter----------------------
localparam
    DATA_FIFO_DEPTH = 32,
    USER_DATA_WIDTH = calc_data_width(C_USER_DATA_WIDTH),
    USER_DATA_BYTES = USER_DATA_WIDTH / 8,
    USER_ADDR_ALIGN = log2(USER_DATA_BYTES),
    BUS_DATA_WIDTH  = C_DATA_WIDTH,
    BUS_DATA_BYTES  = BUS_DATA_WIDTH / 8,
    BUS_ADDR_ALIGN  = log2(BUS_DATA_BYTES),
    DATA_BUF_WIDTH  = USER_DATA_WIDTH > BUS_DATA_WIDTH?
                      USER_DATA_WIDTH : BUS_DATA_WIDTH,
    DATA_VALID_BITS = USER_DATA_BYTES > BUS_DATA_BYTES ?
                      USER_DATA_BYTES / BUS_DATA_BYTES :
                      BUS_DATA_BYTES  / USER_DATA_BYTES;

localparam
    PADDING_BITS = USER_DATA_BYTES > BUS_DATA_WIDTH ?
                    1 : log2(DATA_VALID_BITS),
    MAX_REQUEST  = 32,
    DATA_BITS    = PADDING_BITS * 2 + 32;

//------------------------Task and function--------------
function integer calc_data_width;
    input integer x;
    integer y;
begin
    y = 8;
    while (y < x) y = y * 2;
    calc_data_width = y;
end
endfunction

function integer log2;
    input integer x;
    integer n, m;
begin
    n = 0;
    m = 1;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction

//------------------------Local signal-------------------
reg  [DATA_BUF_WIDTH-1:0]    data_buf;
reg  [1:0]                   resp_buf;
reg  [DATA_VALID_BITS-1:0]   data_valid;
reg  [31:0]                  total_beats;
reg                          last_beat;
reg                          ready_buf;
wire [1:0]                   tmp_rresp;
wire [BUS_DATA_WIDTH-1:0]    tmp_rdata;
wire [BUS_DATA_WIDTH+1:0]    rs0_data;
wire                         rs0_valid;
wire                         rs0_ready;
wire                         fifo_empty_n;
wire                         fifo_full_n;
wire                         fifo_rdreq;
wire                         fifo_wrreq;
wire [C_USER_DATA_WIDTH+1:0] fifo_q;
wire [C_USER_DATA_WIDTH+1:0] fifo_data;
wire                         fifo_push;
wire                         request_fifo_empty_n;
wire                         request_fifo_full_n;
wire                         request_fifo_rdreq;
wire                         request_fifo_wrreq;
wire [DATA_BITS-1:0]         request_fifo_q;
wire [DATA_BITS-1:0]         request_fifo_data;

//------------------------Instantiation------------------
// memory_scanner_ddr_m_axi_reg_slice
assign  tmp_rdata   = rs0_data[C_DATA_WIDTH-1:0];
assign  tmp_rresp   = rs0_data[C_DATA_WIDTH+1:C_DATA_WIDTH];
memory_scanner_ddr_m_axi_reg_slice #(
    .N       ( BUS_DATA_WIDTH+2 )
) rs0 (
    .sclk    ( ACLK ),
    .reset_n ( ARESETN ),
    .s_data  ( {RRESP, RDATA} ),
    .s_valid ( RVALID ),
    .s_ready ( RREADY ),
    .m_data  ( rs0_data ),
    .m_valid ( rs0_valid ),
    .m_ready ( rs0_ready )
);

// memory_scanner_ddr_m_axi_fifo
memory_scanner_ddr_m_axi_fifo #(
    .DATA_BITS  ( C_USER_DATA_WIDTH+2 ),
    .DEPTH      ( DATA_FIFO_DEPTH ),
    .DEPTH_BITS ( log2(DATA_FIFO_DEPTH) )
) data_fifo (
    .sclk       ( ACLK ),
    .reset_n    ( ARESETN ),
    .empty_n    ( fifo_empty_n ),
    .full_n     ( fifo_full_n ),
    .rdreq      ( fifo_rdreq ),
    .wrreq      ( fifo_wrreq ),
    .q          ( fifo_q ),
    .data       ( fifo_data )
);

// memory_scanner_ddr_m_axi_reg_slice
memory_scanner_ddr_m_axi_reg_slice #(
    .N       ( C_USER_DATA_WIDTH+2 )
) rs1 (
    .sclk    ( ACLK ),
    .reset_n ( ARESETN ),
    .s_data  ( fifo_q ),
    .s_valid ( fifo_empty_n ),
    .s_ready ( fifo_rdreq ),
    .m_data  ( {rrsp, USER_datain} ),
    .m_valid ( USER_rsp_empty_n ),
    .m_ready ( USER_rsp_read )
);

// memory_scanner_ddr_m_axi_fifo
// data bits assign: | 2*PADDING_BITS+31 -- PADDING_BITS+32 | PADDING_BITS+31 -- 32 |   31 -- 0   |
//                   |              head_tmp                |         tail_tmp      | align_beats |
memory_scanner_ddr_m_axi_fifo #(
    .DATA_BITS  ( DATA_BITS ),
    .DEPTH      ( MAX_REQUEST ),
    .DEPTH_BITS ( log2(MAX_REQUEST) )
) request_fifo (
    .sclk       ( ACLK ),
    .reset_n    ( ARESETN ),
    .empty_n    ( request_fifo_empty_n ),
    .full_n     ( request_fifo_full_n ),
    .rdreq      ( request_fifo_rdreq ),
    .wrreq      ( request_fifo_wrreq ),
    .q          ( request_fifo_q ),
    .data       ( request_fifo_data )
);

//------------------------Body---------------------------
assign fifo_data  = {resp_buf, data_buf[C_USER_DATA_WIDTH-1:0]};
assign fifo_wrreq = data_valid[0];
assign fifo_push  = fifo_full_n & fifo_wrreq;

generate
if (USER_DATA_BYTES >= BUS_DATA_BYTES) begin : narrow_to_wide
/*
* user data width is greater than or equal to bus data width
* so all bytes of bus data are valid
*/

assign request_fifo_data = {1'b0, 1'b0, align_beats};
assign request_fifo_wrreq = align_valid;
assign align_ready = request_fifo_full_n;
assign request_fifo_rdreq = request_fifo_empty_n & ~ready_buf;

assign rs0_ready   = ready_buf & (~data_valid[0] | fifo_push);

// data_buf
always @(posedge ACLK) begin
    if (rs0_ready & rs0_valid)
        data_buf <= {tmp_rdata[BUS_DATA_WIDTH-1:0], data_buf} >> BUS_DATA_WIDTH;
end

// resp_buf 
always @(posedge ACLK) begin
    if (~ARESETN)
        resp_buf <= 2'b00;
    else if (~ready_buf)
        resp_buf <= 2'b00;
    else if (rs0_ready & rs0_valid & ~resp_buf[1])
        resp_buf <= tmp_rresp;
    else
        resp_buf <= resp_buf;
end

// data_valid
always @(posedge ACLK) begin
    if (~ARESETN)
        data_valid <= 1'b0;
    else if (fifo_push)
        data_valid <= (rs0_ready & rs0_valid) << (DATA_VALID_BITS-1);
    else if (rs0_ready & rs0_valid)
        data_valid <= {1'b1, data_valid} >> 1;
end

// total_beats
always @(posedge ACLK) begin
    if (~ARESETN)
        total_beats <= 1'b0;
    else if (request_fifo_rdreq)
        total_beats <= request_fifo_q[31:0]; 
    else if (rs0_ready & rs0_valid)
        total_beats <= total_beats - 1'b1;
end

// ready_buf
always @(posedge ACLK) begin
    if (~ARESETN)
        ready_buf <= 1'b0;
    else if (request_fifo_rdreq)
        ready_buf <= 1'b1;
    else if (rs0_ready && rs0_valid && total_beats==1'b1)
        ready_buf <= 1'b0;
end

end // end of narrow_to_wide

else begin : wide_to_narrow
/*
* user data width is less than bus data width
* so we have to remove the padding bytes
*/

wire [31:0]             end_address;
wire [PADDING_BITS-1:0] head_tmp;
wire [PADDING_BITS-1:0] tail_tmp;
reg  [PADDING_BITS-1:0] head_padding;
reg  [PADDING_BITS-1:0] tail_padding;
reg                     first_beat;

assign align_ready = request_fifo_full_n;
assign rs0_ready   = ready_buf & (data_valid==1'b0 || (data_valid==1'b1 && fifo_push));

assign end_address = align_address + align_length * USER_DATA_BYTES;
assign head_tmp    = align_address[BUS_ADDR_ALIGN-1:USER_ADDR_ALIGN];
assign tail_tmp    = ~end_address[BUS_ADDR_ALIGN-1:USER_ADDR_ALIGN] + 1'b1;

assign request_fifo_rdreq = request_fifo_empty_n & ~ready_buf;
assign request_fifo_wrreq = align_valid;
assign request_fifo_data  = {head_tmp, tail_tmp, align_beats};

// data_buf
always @(posedge ACLK) begin
    if (rs0_ready & rs0_valid)
        data_buf <= tmp_rdata[BUS_DATA_WIDTH-1:0] >> (first_beat? head_padding * USER_DATA_WIDTH : 0);
    else if (fifo_push)
        data_buf <= data_buf >> USER_DATA_WIDTH;
end

// resp_buf 
always @(posedge ACLK) begin
    if (~ARESETN)
        resp_buf <= 2'b00;
    else if (~ready_buf)
        resp_buf <= 2'b00;
    else if (rs0_ready & rs0_valid & ~resp_buf[1])
        resp_buf <= tmp_rresp;
    else
        resp_buf <= resp_buf;
end

// data_valid
always @(posedge ACLK) begin
    if (~ARESETN)
        data_valid <= 1'b0;
    else if (rs0_ready & rs0_valid)
        data_valid <= ({DATA_VALID_BITS{1'b1}} >> (last_beat? tail_padding : 0))
                      >> (first_beat? head_padding : 0);
    else if (fifo_push)
        data_valid <= data_valid >> 1;
end

// total_beats
always @(posedge ACLK) begin
    if (request_fifo_rdreq)
        total_beats <= request_fifo_q[31:0];
    else if (rs0_ready & rs0_valid)
        total_beats <= total_beats - 1'b1;
end

// ready_buf
always @(posedge ACLK) begin
    if (~ARESETN)
        ready_buf <= 1'b0;
    else if (request_fifo_rdreq)
        ready_buf <= 1'b1;
    else if (rs0_ready && rs0_valid && total_beats==1'b1)
        ready_buf <= 1'b0;
end

// head_padding
always @(posedge ACLK) begin
    if (request_fifo_rdreq)
        head_padding <= request_fifo_q[31+PADDING_BITS*2:32+PADDING_BITS];
end

// tail_padding
always @(posedge ACLK) begin
    if (request_fifo_rdreq)
        tail_padding <= request_fifo_q[31+PADDING_BITS:32];
end

// first_beat
always @(posedge ACLK) begin
    if (~ARESETN)
        first_beat <= 1'b0;
    else if (request_fifo_rdreq)
        first_beat <= 1'b1;
    else if (rs0_ready & rs0_valid)
        first_beat <= 1'b0;
end

// last_beat
always @(posedge ACLK) begin
    if (~ARESETN)
        last_beat <= 1'b0;
    else if (request_fifo_rdreq && request_fifo_q[31:0]==1'b1)
        last_beat <= 1'b1;
    else if (rs0_ready & rs0_valid) begin
        if (total_beats==2'd2)
            last_beat <= 1'b1;
        else
            last_beat <= 1'b0;
    end
end

end // end of wide_to_narrow
endgenerate

endmodule

module memory_scanner_ddr_m_axi_write
#(parameter
    C_ID_WIDTH        = 1,
    C_ADDR_WIDTH      = 32,
    C_TARGET_ADDR     = 32'h00000000,
    C_DATA_WIDTH      = 32,
    C_AWUSER_WIDTH    = 1,
    C_WUSER_WIDTH     = 1,
    C_BUSER_WIDTH     = 1,
    C_USER_VALUE      = 1'b0,
    C_PROT_VALUE      = 3'b000,
    C_CACHE_VALUE     = 4'b0011,
    USER_DW           = 16,
    USER_AW           = 32,
    USER_MAXREQS      = 16
)(
    // system signal
    input  wire                         ACLK,
    input  wire                         ARESETN,
    // write address channel
    output wire [C_ID_WIDTH-1:0]        AWID,
    output wire [C_ADDR_WIDTH-1:0]      AWADDR,
    output wire [7:0]                   AWLEN,
    output wire [2:0]                   AWSIZE,
    output wire [1:0]                   AWBURST,
    output wire [1:0]                   AWLOCK,
    output wire [3:0]                   AWCACHE,
    output wire [2:0]                   AWPROT,
    output wire [3:0]                   AWQOS,
    output wire [3:0]                   AWREGION,
    output wire [C_AWUSER_WIDTH-1:0]    AWUSER,
    output wire                         AWVALID,
    input  wire                         AWREADY,
    // write data channel
    output wire [C_ID_WIDTH-1:0]        WID,
    output wire [C_DATA_WIDTH-1:0]      WDATA,
    output wire [C_DATA_WIDTH/8-1:0]    WSTRB,
    output wire                         WLAST,
    output wire [C_WUSER_WIDTH-1:0]     WUSER,
    output wire                         WVALID,
    input  wire                         WREADY,
    // write response channel
    input  wire [C_ID_WIDTH-1:0]        BID,
    input  wire [1:0]                   BRESP,
    input  wire [C_BUSER_WIDTH-1:0]     BUSER,
    input  wire                         BVALID,
    output wire                         BREADY,
    // write request
    input  wire                         wreq_valid,
    output wire                         wreq_ack,
    input  wire [USER_AW-1:0]           wreq_addr,
    input  wire [31:0]                  wreq_length,
    input  wire [3:0]                   wreq_cache,
    input  wire [2:0]                   wreq_prot,
    input  wire [3:0]                   wreq_qos,
    input  wire [C_AWUSER_WIDTH-1:0]    wreq_user,
    input  wire                         wdata_valid,
    output wire                         wdata_ack,
    input  wire [USER_DW/8-1:0]         wdata_strb,
    input  wire [C_WUSER_WIDTH-1:0]     wdata_user,
    input  wire [USER_DW-1:0]           wdata,
    output wire                         wrsp_valid,
    input  wire                         wrsp_ack,
    output wire [1:0]                   wrsp
);

//------------------------Parameter----------------------
localparam
    USER_DATA_WIDTH = calc_data_width(USER_DW),
    USER_DATA_BYTES = USER_DATA_WIDTH / 8,
    USER_ADDR_ALIGN = log2(USER_DATA_BYTES),
    BUS_DATA_WIDTH  = C_DATA_WIDTH,
    BUS_DATA_BYTES  = BUS_DATA_WIDTH / 8,
    BUS_ADDR_ALIGN  = log2(BUS_DATA_BYTES),
    DATA_BUF_BYTES  = USER_DATA_BYTES > BUS_DATA_BYTES?
                      USER_DATA_BYTES : BUS_DATA_BYTES,
    TARGET_ADDR     = C_TARGET_ADDR & (32'hffffffff << USER_ADDR_ALIGN),
    LOOP_CNT_WIDTH  = 32;

localparam [3:0]
    IDLE = 4'd0,
    PREP = 4'd1,
    ADDR = 4'd2,
    DATA = 4'd3,
    LOOP = 4'd4;

localparam
    MAX_BEATS = 9'd256,
    BOUNDARY  = 16'h1000 >> BUS_ADDR_ALIGN;
//------------------------Local signal-------------------
// fsm
reg  [3:0]                  state;
reg  [3:0]                  next;
// translate request
wire [USER_AW-1:0]          tmp_addr;
wire [31:0]                 tmp_length;
wire                        tmp_valid;
wire                        tmp_ack;
wire [USER_AW+31:0]         wreq_pack;
wire [USER_ADDR_ALIGN+31:0] start_addr;
reg  [USER_ADDR_ALIGN+31:0] addr_buf;
reg  [31:0]                 len_buf;
reg                         enough_data;
reg  [DATA_BUF_BYTES*8-1:0] data_buf;
reg  [DATA_BUF_BYTES-1:0]   data_valid;
reg  [DATA_BUF_BYTES-1:0]   strb_buf;
reg  [31:0]                 total_beats;
reg  [8:0]                  loop_beats;
wire [11-BUS_ADDR_ALIGN:0]  start_beat;
wire [8:0]                  tmp_beats0;
wire [8:0]                  tmp_beats1;
reg  [BUS_ADDR_ALIGN-1:0]   tmp_bytes;
reg  [BUS_ADDR_ALIGN-1:0]   head_bytes;
reg  [BUS_ADDR_ALIGN-1:0]   tail_bytes;
reg                         add_head;
reg                         add_tail;
reg                         first_beat;
reg                         last_beat;
// response related
wire                        trans_over;
wire                        resp_match;
wire                        resp_reg_valid;
wire                        resp_reg_ready;
wire [1:0]                  resp_reg_data;
wire                        need_wrsp;
wire                        wait_wrsp_n;
wire [LOOP_CNT_WIDTH-1:0]   resp_total;
reg  [LOOP_CNT_WIDTH-1:0]   resp_counter;
reg  [LOOP_CNT_WIDTH-1:0]   loop_counter;
reg  [1:0]                  bresp_tmp;
// axi4 bus
wire [BUS_DATA_BYTES-1:0]   wstrb0;
wire [BUS_DATA_BYTES-1:0]   wstrb1;

//------------------------Task and function--------------
function integer calc_data_width;
    input integer x;
    integer y;
begin
    y = 8;
    while (y < x) y = y * 2;
    calc_data_width = y;
end
endfunction

function integer log2;
    input integer x;
    integer n, m;
begin
    n = 0;
    m = 1;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction

//------------------------Instantiation------------------
// data bits assign: | AW+31 -- AW | AW-1 -- 0 |
//                   | wreq_length | wreq_addr |
assign  tmp_addr     = wreq_pack[USER_AW-1 : 0];
assign  tmp_length   = wreq_pack[USER_AW+31 : USER_AW];
memory_scanner_ddr_m_axi_fifo  #(
    .DATA_BITS  ( USER_AW+32 ),
    .DEPTH      ( USER_MAXREQS ),
    .DEPTH_BITS ( log2(USER_MAXREQS) )
) fifo_wreq (
    .sclk( ACLK ),
    .reset_n( ARESETN ),
    .empty_n( tmp_valid ),
    .full_n( wreq_ack ),
    .rdreq( tmp_ack ),
    .wrreq( wreq_valid ),
    .q( wreq_pack ),
    .data( {wreq_length, wreq_addr} )
);

memory_scanner_ddr_m_axi_fifo  #(
    .DATA_BITS  ( LOOP_CNT_WIDTH ),
    .DEPTH      ( USER_MAXREQS ),
    .DEPTH_BITS ( log2(USER_MAXREQS) )
) fifo_resp (
    .sclk( ACLK ),
    .reset_n( ARESETN ),
    .empty_n( need_wrsp ),
    .full_n( wait_wrsp_n ),
    .rdreq( resp_match ),
    .wrreq( trans_over ),
    .q( resp_total ),
    .data( loop_counter )
);

memory_scanner_ddr_m_axi_fifo  #(
    .DATA_BITS  ( 2 ),
    .DEPTH      ( USER_MAXREQS ),
    .DEPTH_BITS ( log2(USER_MAXREQS) )
) fifo_resp_to_slice (
    .sclk( ACLK ),
    .reset_n( ARESETN ),
    .empty_n( resp_reg_valid ),
    .full_n( resp_ready ),
    .rdreq( resp_reg_ready ),
    .wrreq( resp_match ),
    .q( resp_reg_data ),
    .data( bresp_tmp )
);

memory_scanner_ddr_m_axi_reg_slice #(
    .N          ( 2 )   // BRESP width
) resp_slice (
    .sclk( ACLK ),
    .reset_n( ARESETN ),
    .s_data( resp_reg_data ),
    .s_valid( resp_reg_valid ),
    .s_ready( resp_reg_ready ),
    .m_data( wrsp ),
    .m_valid( wrsp_valid ),
    .m_ready( wrsp_ack )
);

//------------------------Body---------------------------
//++++++++++++++++++++++++fsm++++++++++++++++++++++++++++
// state
always @(posedge ACLK) begin
    if (~ARESETN)
        state <= IDLE;
    else
        state <= next;
end

// next
always @(*) begin
    case (state)
        IDLE:
            if (tmp_valid && wait_wrsp_n)
                next = PREP;
            else
                next = IDLE;
        PREP:
            next = ADDR;
        ADDR:
            if (AWREADY)
                next = DATA;
            else
                next = ADDR;
        DATA:
            if (WVALID && WREADY && loop_beats==1'b1)
                next = LOOP;
            else
                next = DATA;
        LOOP:
            if (total_beats==1'b0)
                next = IDLE;
            else
                next = ADDR;
        default:
            next = IDLE;
    endcase
end

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++translate request++++++++++++++
assign start_addr = TARGET_ADDR + (tmp_addr << USER_ADDR_ALIGN);
assign start_beat = addr_buf[11:BUS_ADDR_ALIGN];
assign tmp_beats0 = (total_beats < MAX_BEATS)? total_beats : MAX_BEATS;
assign tmp_beats1 = (tmp_beats0 < BOUNDARY - start_beat)? tmp_beats0 : BOUNDARY - start_beat;

// addr_buf
always @(posedge ACLK) begin
    if (state==IDLE && wait_wrsp_n && tmp_valid)
        addr_buf <= start_addr;
    else if (state==PREP)
        addr_buf[BUS_ADDR_ALIGN-1:0] <= 1'b0;
    else if (state==ADDR && AWREADY)
        addr_buf <= addr_buf + (loop_beats << BUS_ADDR_ALIGN);
end

// len_buf
always @(posedge ACLK) begin
    if (state==IDLE && wait_wrsp_n && tmp_valid)
        len_buf <= tmp_length;
    else if (wdata_ack && wdata_valid)
        len_buf <= len_buf - 1'b1;
end

// enough_data
always @(posedge ACLK) begin
    if (state==IDLE && wait_wrsp_n)
        enough_data <= 1'b0;
    else if (wdata_ack && wdata_valid && len_buf==1'b1)
        enough_data <= 1'b1;
end

generate
if (USER_DATA_BYTES >= BUS_DATA_BYTES) begin : wide_to_narrow
    assign wstrb0  = {BUS_DATA_BYTES{1'b1}};
    assign wstrb1  = {BUS_DATA_BYTES{1'b1}};

    // data_buf
    always @(posedge ACLK) begin
        if (wdata_ack & wdata_valid)
            data_buf <= wdata;
        else if (WREADY & WVALID)
            data_buf <= data_buf >> BUS_DATA_WIDTH;
    end

    // strb_buf
    always @(posedge ACLK) begin
        if (wdata_ack & wdata_valid)
            strb_buf <= wdata_strb;
        else if (WREADY & WVALID)
            strb_buf <= strb_buf >> BUS_DATA_BYTES;
    end

    // data_valid
    always @(posedge ACLK) begin
        if (~ARESETN)
            data_valid <= 1'b0;
        else if (wdata_ack & wdata_valid)
            data_valid <= {DATA_BUF_BYTES{1'b1}};
        else if (WREADY & WVALID)
            data_valid <= data_valid >> BUS_DATA_BYTES;
    end

    // tmp_bytes, head_bytes, tail_bytes, add_head, add_tail
    // first_beat, last_beat
    always @(*) begin
        // these signals are useless if user data width is
        // greater than bus data width
        tmp_bytes  = 1'b0;
        head_bytes = 1'b0;
        tail_bytes = 1'b0;
        add_head   = 1'b0;
        add_tail   = 1'b0;
        first_beat = 1'b0;
        last_beat  = 1'b0;
    end
end
else begin : narrow_to_wide
    assign wstrb0  = first_beat? {BUS_DATA_BYTES{1'b1}} << head_bytes : {BUS_DATA_BYTES{1'b1}};
    assign wstrb1  = last_beat?  {BUS_DATA_BYTES{1'b1}} >> tail_bytes : {BUS_DATA_BYTES{1'b1}};

    // data_buf
    always @(posedge ACLK) begin
        if (wdata_ack & wdata_valid)
            data_buf <= {wdata, data_buf} >> USER_DW;
        else if (state==DATA && add_tail)
            data_buf <= data_buf >> (tail_bytes * 8); 
    end

    // strb_buf
    always @(posedge ACLK) begin
        if (wdata_ack & wdata_valid)
            strb_buf <= {wdata_strb, strb_buf} >> USER_DATA_BYTES;
        else if (state==DATA && add_tail)
            strb_buf <= strb_buf >> tail_bytes; 
    end

    // data_valid
    always @(posedge ACLK) begin
        if (~ARESETN)
            data_valid <= 1'b0;
        else if (WREADY & WVALID)
            data_valid <= {USER_DATA_BYTES{wdata_ack & wdata_valid}} << (DATA_BUF_BYTES-USER_DATA_BYTES);
        else if (wdata_ack & wdata_valid)
            data_valid <= {{USER_DATA_BYTES{1'b1}}, data_valid} >> USER_DATA_BYTES;
        else if (add_head)
            // TODO: simplify the logic
            data_valid <= (data_valid >> head_bytes) | ~({DATA_BUF_BYTES{1'b1}} >> head_bytes);
        else if (state==DATA && add_tail)
            data_valid <= (data_valid >> tail_bytes) | ~({DATA_BUF_BYTES{1'b1}} >> tail_bytes);
    end

    // tmp_bytes
    always @(posedge ACLK) begin
        if (state==IDLE && wait_wrsp_n && tmp_valid)
            tmp_bytes <= tmp_length[BUS_ADDR_ALIGN-1:0] << USER_ADDR_ALIGN;
    end

    // head_bytes
    always @(posedge ACLK) begin
        if (state==PREP)
            head_bytes <= addr_buf[BUS_ADDR_ALIGN-1:0];
    end

    // tail_bytes
    always @(posedge ACLK) begin
        if (state==PREP)
            tail_bytes <= BUS_DATA_BYTES - addr_buf[BUS_ADDR_ALIGN-1:0] - tmp_bytes;
    end

    // add_head
    always @(posedge ACLK) begin
        if (state==PREP)
            add_head <= 1'b1;
        else
            add_head <= 1'b0;
    end

    // add_tail
    always @(posedge ACLK) begin
        if (wdata_ack && wdata_valid && len_buf==1'b1) //mark
            add_tail <= 1'b1;
        else if (state==DATA)
            add_tail <= 1'b0;
    end

    // first_beat
    always @(posedge ACLK) begin
        if (~ARESETN)
            first_beat <= 1'b0;
        else if (state==PREP)
            first_beat <= 1'b1;
        else if (WREADY & WVALID)
            first_beat <= 1'b0;
    end
    
    // last_beat
    always @(posedge ACLK) begin
        if (~ARESETN)
            last_beat <= 1'b0;
        else if ((state==PREP || state==LOOP) && total_beats==1'b1)
            last_beat <= 1'b1;
        else if (WREADY & WVALID) begin
            if (total_beats==1'b0 && loop_beats==2'd2)
                last_beat <= 1'b1;
            else
                last_beat <= 1'b0;
        end
    end
end
endgenerate

// total_beats
always @(posedge ACLK) begin
    if (state==IDLE && wait_wrsp_n && tmp_valid)
        total_beats <= ((tmp_length << USER_ADDR_ALIGN) + start_addr[BUS_ADDR_ALIGN-1:0] +
                        {BUS_ADDR_ALIGN{1'b1}}) >> BUS_ADDR_ALIGN;
    else if (state==ADDR && AWREADY)
        total_beats <= total_beats - loop_beats;
end

// loop_beats
always @(posedge ACLK) begin
    if (state==PREP || state==LOOP)
        loop_beats <= tmp_beats1;
    else if (WVALID & WREADY)
        loop_beats <= loop_beats - 1'b1;
end

//++++++++++++++++++++++++++ response +++++++++++++++++++
assign trans_over = (state==LOOP && next==IDLE)? 1'b1 : 1'b0;
assign resp_match = (resp_counter==resp_total && need_wrsp)? 1'b1 : 1'b0;

// loop_counter
always @(posedge ACLK) begin
    if (state==IDLE)
        loop_counter <= {LOOP_CNT_WIDTH{1'b0}};
    else if (state==DATA && next==LOOP)
        loop_counter <= loop_counter + 1'b1;
end

// resp_counter
always @(posedge ACLK) begin
    if (~ARESETN)
        resp_counter <= {LOOP_CNT_WIDTH{1'b0}};
    else if(resp_match)
        resp_counter <= {LOOP_CNT_WIDTH{1'b0}};
    else if (BVALID & BREADY)
        resp_counter <= resp_counter + 1'b1;
end

// bresp_tmp
always @(posedge ACLK) begin
    if (~ARESETN)
        bresp_tmp <= 2'b0;
    else if (resp_match)
        bresp_tmp <= 2'b0;
    else if (BVALID & BREADY & ~bresp_tmp[1]) 
        bresp_tmp <= BRESP;
end

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++axi4 bus+++++++++++++++++++++++
// write address channel
assign AWID    = 1'b0;
assign AWADDR  = addr_buf;
assign AWLEN   = loop_beats - 1'b1;
assign AWSIZE  = BUS_ADDR_ALIGN[2:0];
assign AWBURST = 2'b01;
assign AWLOCK  = 2'b00;
assign AWCACHE = C_CACHE_VALUE;
assign AWPROT  = C_PROT_VALUE;
assign AWUSER  = C_USER_VALUE;
assign AWQOS   = wreq_qos;
assign AWVALID = (state==ADDR);

// write data channel
assign WDATA   = data_buf[BUS_DATA_WIDTH-1:0];
assign WSTRB   = strb_buf[BUS_DATA_BYTES-1:0] & (wstrb0 & wstrb1);
assign WLAST   = WVALID & (loop_beats==1'b1);
assign WUSER   = C_USER_VALUE;
assign WVALID  = (state==DATA) & data_valid[0];

// write response channel
assign BREADY  = resp_ready;

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++write request++++++++++++++++++
assign tmp_ack = (state==IDLE && wait_wrsp_n);

generate
if (USER_DATA_BYTES <= BUS_DATA_BYTES) begin : gen_write_ready_0
    assign wdata_ack = ((state==DATA) & ~enough_data &
                         (~data_valid[0] | WREADY));
end
else begin : gen_write_ready_1
    assign wdata_ack = ((state==DATA) & ~enough_data &
                         (data_valid[DATA_BUF_BYTES-1:BUS_DATA_BYTES]==1'b0) &
                         (~data_valid[0] | WREADY));
end
endgenerate

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

endmodule
