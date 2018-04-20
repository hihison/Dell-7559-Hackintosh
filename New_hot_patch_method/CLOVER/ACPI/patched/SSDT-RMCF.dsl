/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLGtn7iM.aml, Sat Mar 31 10:17:04 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000383 (899)
 *     Revision         0x02
 *     Checksum         0x0E
 *     OEM ID           "hack"
 *     OEM Table ID     "_RMCF"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_RMCF", 0x00000000)
{
    Device (RMCF)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Method (HELP, 0, NotSerialized)
        {
            Store ("TYPE indicates type of the computer. 0: desktop, 1: laptop", Debug)
            Store ("HIGH selects display type. 1: high resolution, 2: low resolution", Debug)
            Store ("IGPI overrides ig-platform-id or snb-platform-id", Debug)
            Store ("DPTS for laptops only. 1: enables/disables DGPU in _WAK/_PTS", Debug)
            Store ("SHUT enables shutdown fix. bit 0: disables _PTS code when Arg0==5, bit 1: SLPE=0 when Arg0==5", Debug)
            Store ("XPEE enables XHC.PMEE fix. 1: set XHC.PMEE to zero in _PTS when Arg0==5", Debug)
            Store ("SSTF enables _SST LED fix. 1: enables _SI._SST in _WAK when Arg0 == 3", Debug)
            Store ("AUDL indicates audio layout-id for patched AppleHDA. Ones: no injection", Debug)
            Store ("BKLT indicates the type of backlight control. 0: IntelBacklight, 1: AppleBacklight", Debug)
            Store ("LMAX indicates max for IGPU PWM backlight. Ones: Use default, other values must match framebuffer", Debug)
        }

        Name (TYPE, One)
        Name (HIGH, Zero)
        Name (IGPI, Zero)
        Name (DPTS, Zero)
        Name (SHUT, Zero)
        Name (XPEE, Zero)
        Name (SSTF, Zero)
        Name (AUDL, Ones)
        Name (BKLT, One)
        Name (LMAX, Ones)
        Name (LEVW, Ones)
        Name (GRAN, Zero)
        Name (FBTP, Zero)
    }
}

