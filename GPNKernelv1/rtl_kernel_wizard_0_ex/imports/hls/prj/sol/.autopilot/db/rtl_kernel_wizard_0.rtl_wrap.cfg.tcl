set lang "C"
set moduleName "rtl_kernel_wizard_0"
set moduleIsExternC "1"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName "Message"
set BitWidth "64"
set ArrayOpt ""
set Const "0"
set Volatile "0"
set Pointer "0"
set Reference "0"
set Dims [list 0]
set Interface "wire"
set DataType "long long"
set Port [list $PortName $Interface $DataType $Pointer $Dims $Const    $Volatile $ArrayOpt]
lappend PortList $Port
set PortName "PEControl"
set BitWidth "32"
set ArrayOpt ""
set Const "0"
set Volatile "0"
set Pointer "0"
set Reference "0"
set Dims [list 0]
set Interface "wire"
set DataType "int"
set Port [list $PortName $Interface $DataType $Pointer $Dims $Const    $Volatile $ArrayOpt]
lappend PortList $Port
set PortName "axisHBMin"
set BitWidth "512"
set ArrayOpt ""
set Const "0"
set Volatile "0"
set Pointer "2"
set Reference "1"
set Dims [list 0]
set Interface [list AP_STREAM 0]
set structMem ""
set PortName0 "data"
set BitWidth0 "256"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "[list ap_uint 256]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend structMem $Port0
set PortName0 "keep"
set BitWidth0 "32"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "[list ap_uint 32]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend structMem $Port0
set PortName0 "strb"
set BitWidth0 "32"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "[list ap_uint 32]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend structMem $Port0
set PortName0 "last"
set BitWidth0 "1"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "[list ap_uint 1]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend structMem $Port0
set DataType0tp0 "int"
set structParameter [list [list $DataType0tp0 D] [list $DataType0tp0 U] [list $DataType0tp0 TI] [list $DataType0tp0 TD] ]
set structArgument [list 32 0 0 0]
set NameSpace [list ]
set structIsPacked "0"
set DataType [list "ap_axiu<32, 0, 0, 0>" "struct ap_axis" $structMem 1 0 $structParameter $structArgument $NameSpace $structIsPacked]
set Port [list $PortName $Interface $DataType $Pointer $Dims $Const $Volatile $ArrayOpt]
lappend PortList $Port
set PortName "axisDDRin"
set BitWidth "1024"
set ArrayOpt ""
set Const "0"
set Volatile "0"
set Pointer "2"
set Reference "1"
set Dims [list 0]
set Interface [list AP_STREAM 0]
set structMem ""
set PortName0 "data"
set BitWidth0 "512"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "[list ap_uint 512]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend structMem $Port0
set PortName0 "keep"
set BitWidth0 "64"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "[list ap_uint 64]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend structMem $Port0
set PortName0 "strb"
set BitWidth0 "64"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "[list ap_uint 64]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend structMem $Port0
set PortName0 "last"
set BitWidth0 "1"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "[list ap_uint 1]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend structMem $Port0
set DataType0tp0 "int"
set structParameter [list [list $DataType0tp0 D] [list $DataType0tp0 U] [list $DataType0tp0 TI] [list $DataType0tp0 TD] ]
set structArgument [list 32 0 0 0]
set NameSpace [list ]
set structIsPacked "0"
set DataType [list "ap_axiu<32, 0, 0, 0>" "struct ap_axis" $structMem 1 0 $structParameter $structArgument $NameSpace $structIsPacked]
set Port [list $PortName $Interface $DataType $Pointer $Dims $Const $Volatile $ArrayOpt]
lappend PortList $Port
set PortName "axisHBMout"
set BitWidth "512"
set ArrayOpt ""
set Const "0"
set Volatile "0"
set Pointer "2"
set Reference "1"
set Dims [list 0]
set Interface [list AP_STREAM 0]
set structMem ""
set PortName0 "data"
set BitWidth0 "256"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "[list ap_uint 256]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend structMem $Port0
set PortName0 "keep"
set BitWidth0 "32"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "[list ap_uint 32]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend structMem $Port0
set PortName0 "strb"
set BitWidth0 "32"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "[list ap_uint 32]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend structMem $Port0
set PortName0 "last"
set BitWidth0 "1"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "[list ap_uint 1]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend structMem $Port0
set DataType0tp0 "int"
set structParameter [list [list $DataType0tp0 D] [list $DataType0tp0 U] [list $DataType0tp0 TI] [list $DataType0tp0 TD] ]
set structArgument [list 32 0 0 0]
set NameSpace [list ]
set structIsPacked "0"
set DataType [list "ap_axiu<32, 0, 0, 0>" "struct ap_axis" $structMem 1 0 $structParameter $structArgument $NameSpace $structIsPacked]
set Port [list $PortName $Interface $DataType $Pointer $Dims $Const $Volatile $ArrayOpt]
lappend PortList $Port
set PortName "axisDDRout"
set BitWidth "1024"
set ArrayOpt ""
set Const "0"
set Volatile "0"
set Pointer "2"
set Reference "1"
set Dims [list 0]
set Interface [list AP_STREAM 0]
set structMem ""
set PortName0 "data"
set BitWidth0 "512"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "[list ap_uint 512]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend structMem $Port0
set PortName0 "keep"
set BitWidth0 "64"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "[list ap_uint 64]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend structMem $Port0
set PortName0 "strb"
set BitWidth0 "64"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "[list ap_uint 64]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend structMem $Port0
set PortName0 "last"
set BitWidth0 "1"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "[list ap_uint 1]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend structMem $Port0
set DataType0tp0 "int"
set structParameter [list [list $DataType0tp0 D] [list $DataType0tp0 U] [list $DataType0tp0 TI] [list $DataType0tp0 TD] ]
set structArgument [list 32 0 0 0]
set NameSpace [list ]
set structIsPacked "0"
set DataType [list "ap_axiu<32, 0, 0, 0>" "struct ap_axis" $structMem 1 0 $structParameter $structArgument $NameSpace $structIsPacked]
set Port [list $PortName $Interface $DataType $Pointer $Dims $Const $Volatile $ArrayOpt]
lappend PortList $Port
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 0 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
