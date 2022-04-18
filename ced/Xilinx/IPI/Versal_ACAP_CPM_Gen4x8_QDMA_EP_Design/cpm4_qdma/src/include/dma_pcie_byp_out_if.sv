// ////////////////////////////////////////////////////////////////////////
// Copyright (C) 2019, Xilinx Inc - All rights reserved
//
// Licensed under the Apache License, Version 2.0 (the "License"). You may
// not use this file except in compliance with the License. A copy of the
// License is located at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
// License for the specific language governing permissions and limitations
// under the License.
// ////////////////////////////////////////////////////////////////////////

`ifndef DMA_PCIE_BYP_OUT_IF_SV
`define DMA_PCIE_BYP_OUT_IF_SV
    interface dma_pcie_byp_out_if;
        logic [255 :0]                   dsc;
        logic [15:0]                    cidx;                
        logic                           vld;
        logic                           rdy;
        modport m (
            output          dsc,
            output          cidx,            
            output          vld,
            input           rdy
        );
        modport s (
            input           dsc,
            input           cidx,            
            input           vld,
            output          rdy
        );
    endinterface
`endif
