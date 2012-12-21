###############################################################################
# xSPI_Ints
###############################################################################
use Text::Table;
my $tb = Text::Table->new(
    # First separator column 
    { is_sep => 1, title => "//! +", body => "//! |", },
    
    # Column 1
    { title => "------------------------", align => left, },
    
    # Separator column
    { is_sep => 1, title => "+", body => "|", },
    
    # Column 2
    { title => "----------------", align => center, },
    
    # Separator column
    { is_sep => 1, title => "+", body => "|", },
    
    # Column 3
    { title => "------------------------", align => center, },
    
    # End separator column
    { is_sep => 1, title => "+", body => "|", },
); 

    
# Fill Table Cotent
$tb->load(
    # Line 0(Column Name)
    [ "xSPI Interrupts", "CoX", "HT32F175x/275x"  ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_INT_EOT", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_INT_TX", "Non-Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_INT_RX", "Non-Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_INT_ERROR", "Non-Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ], 
);  

# Print to console or file
print "\n#####xSPI_Ints\n";
print $tb; 
###############################################################################
#
###############################################################################

###############################################################################
# xSPI_Config
###############################################################################
use Text::Table;
my $tb = Text::Table->new(
    # First separator column 
    { is_sep => 1, title => "//! +", body => "//! |", },
    
    # Column 1
    { title => "------------------------", align => left, },
    
    # Separator column
    { is_sep => 1, title => "+", body => "|", },
    
    # Column 2
    { title => "----------------", align => center, },
    
    # Separator column
    { is_sep => 1, title => "+", body => "|", },
    
    # Column 3
    { title => "------------------------", align => center, },
    
    # End separator column
    { is_sep => 1, title => "+", body => "|", },
); 

    
# Fill Table Cotent
$tb->load(
    # Line 0(Column Name)
    [ "xSPI Configs", "CoX", "HT32F175x/275x"  ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_MOTO_FORMAT_MODE_0", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_MOTO_FORMAT_MODE_1", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_MOTO_FORMAT_MODE_2", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_MOTO_FORMAT_MODE_3", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_TI_FORMAT_MODE", "Non-Mandatory", "N" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_NMW_FORMAT_MODE", "Non-Mandatory", "N" ],
    [ "------------------------", "----------------","------------------------", ],
    [ " ", "", "" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_MODE_MASTER", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_MODE_SLAVE", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ " ", "", "" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_MSB_FIRST", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_LSB_FIRST", "Non-Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ " ", "", "" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_DATA_WIDTHn", "Non-Mandatory", "xSPI_DATA_WIDTH1" ],
    [ "", "","------------------------", ],
    [ "", "", "xSPI_DATA_WIDTH2" ],
    [ "", "","------------------------", ],
    [ "", "", "xSPI_DATA_WIDTH3" ],
    [ "", "","------------------------", ],
    [ "", "", "..." ],
    [ "", "","------------------------", ],
    [ "", "", "xSPI_DATA_WIDTH16" ],

    

    [ "------------------------", "----------------","------------------------", ], 
);  

# Print to console or file
print "\n#####xSPI_Config\n";
print $tb; 
###############################################################################
#
###############################################################################


###############################################################################
# xSPI_DMA
###############################################################################
use Text::Table;
my $tb = Text::Table->new(
    # First separator column 
    { is_sep => 1, title => "//! +", body => "//! |", },
    
    # Column 1
    { title => "------------------------", align => left, },
    
    # Separator column
    { is_sep => 1, title => "+", body => "|", },
    
    # Column 2
    { title => "----------------", align => center, },
    
    # Separator column
    { is_sep => 1, title => "+", body => "|", },
    
    # Column 3
    { title => "------------------------", align => center, },
    
    # End separator column
    { is_sep => 1, title => "+", body => "|", },
); 

    
# Fill Table Cotent
$tb->load(
    # Line 0(Column Name)
    [ "xSPI DMA", "CoX", "HT32F175x/275x"  ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_DMA_TX", "Mandatory", "N" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "SPI_DMA_RX", "Mandatory", "N" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "SPI_DMA_BOTH", "Non-Mandatory", "N" ],
    [ "------------------------", "----------------","------------------------", ],
);  

# Print to console or file
print "\n#####xSPI_DMA\n";
print $tb; 
###############################################################################
#
###############################################################################



###############################################################################
# xSPI_SlaveSelMode
###############################################################################
use Text::Table;
my $tb = Text::Table->new(
    # First separator column 
    { is_sep => 1, title => "//! +", body => "//! |", },
    
    # Column 1
    { title => "------------------------", align => left, },
    
    # Separator column
    { is_sep => 1, title => "+", body => "|", },
    
    # Column 2
    { title => "----------------", align => center, },
    
    # Separator column
    { is_sep => 1, title => "+", body => "|", },
    
    # Column 3
    { title => "------------------------", align => center, },
    
    # End separator column
    { is_sep => 1, title => "+", body => "|", },
); 

    
# Fill Table Cotent
$tb->load(
    # Line 0(Column Name)
    [ "xSPI Slave Select Mode", "CoX", "HT32F175x/275x"  ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_SS_HARDWARE", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_SS_SOFTWARE", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
);  

# Print to console or file
print "\n#####xSPI_SlaveSelMode\n";
print $tb; 
###############################################################################
#
###############################################################################


###############################################################################
# xSPI_SlaveSel
###############################################################################
use Text::Table;
my $tb = Text::Table->new(
    # First separator column 
    { is_sep => 1, title => "//! +", body => "//! |", },
    
    # Column 1
    { title => "------------------------", align => left, },
    
    # Separator column
    { is_sep => 1, title => "+", body => "|", },
    
    # Column 2
    { title => "----------------", align => center, },
    
    # Separator column
    { is_sep => 1, title => "+", body => "|", },
    
    # Column 3
    { title => "------------------------", align => center, },
    
    # End separator column
    { is_sep => 1, title => "+", body => "|", },
); 

    
# Fill Table Cotent
$tb->load(
    # Line 0(Column Name)
    [ "xSPI Slave Select", "CoX", "HT32F175x/275x"  ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_SS_NONE", "Mandatory", "N" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPI_SSn", "Mandatory", "xSPI_SS0" ],
    [ "", "", "------------------------" ],
    [ "", "", "xSPI_SS1" ],
    [ "", "", "------------------------" ],
    [ "", "", "xSPI_SS01" ],
    [ "------------------------", "----------------","------------------------", ],
);  

# Print to console or file
print "\n#####xSPI_SlaveSel\n";
print $tb; 
###############################################################################
#
###############################################################################


###############################################################################
# xSPI_Ints
###############################################################################
use Text::Table;
my $tb = Text::Table->new(
    # First separator column 
    { is_sep => 1, title => "//! +", body => "//! |", },
    
    # Column 1
    { title => "------------------------", align => left, },
    
    # Separator column
    { is_sep => 1, title => "+", body => "|", },
    
    # Column 2
    { title => "----------------", align => center, },
    
    # Separator column
    { is_sep => 1, title => "+", body => "|", },
    
    # Column 3
    { title => "------------------------", align => center, },
    
    # End separator column
    { is_sep => 1, title => "+", body => "|", },
); 

    
# Fill Table Cotent
$tb->load(
    # Line 0(Column Name)
    [ "xSPI API", "CoX", "HT32F175x/275x"  ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIConfigSet", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPISingleDataReadWrite", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIBitLengthGet", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIDataRead", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIDataWrite", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIDataPut", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIDataPutNonBlocking", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIDataGet", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIDataGetNonBlocking", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIIntEnable", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIIntCallbackInit", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIIntDisable", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIIntStatusGet", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIIntPendingClear", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIIsBusy", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIIsRxEmpty", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIIsTxEmpty", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIIsRxFull", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIIsTxFull", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIDMAEnable", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIDMADisable", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIEnable", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPIDisable", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
    [ "xSPISSSet", "Mandatory", "Y" ],
    [ "------------------------", "----------------","------------------------", ],
 
);  

# Print to console or file
print "\n#####xSPI_Ints\n";
print $tb; 
###############################################################################
#
###############################################################################