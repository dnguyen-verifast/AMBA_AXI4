class axi4_slave_mem_map_cfg extends uvm_object;
    `uvm_object_utils(axi4_slave_mem_map_cfg)
    axi4_slave_mem_region_cfg men_region_cfg[16];
    function new(name = "axi4_slave_mem_map_cfg");
        super.new(name);
        foreach (men_region_cfg[i]) {   
            men_region_cfg[i] = new();
        }
    endfunction
    function void test_set_mem_region_cfg(region_e region, axi4_slave_mem_region_cfg cfg);
        mem_region_cfg[region] = cfg;
    endfunction

    function axi4_slave_mem_region_cfg slave_get_mem_region_cfg(region_e region);
        return mem_region_cfg[region];  
    endfunction
endclass