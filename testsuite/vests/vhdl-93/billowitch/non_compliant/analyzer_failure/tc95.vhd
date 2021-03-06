
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc95.vhd,v 1.2 2001-10-26 16:30:28 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

package c04s03b02x00p09n01i00095pkg is
  type rec is record
                ele1: integer;
                ele2: integer;
              end record;
  type at is access rec;
end c04s03b02x00p09n01i00095pkg;

use work.c04s03b02x00p09n01i00095pkg.all;
ENTITY c04s03b02x00p09n01i00095ent IS
  generic ( A2 : at );
END c04s03b02x00p09n01i00095ent;

ARCHITECTURE c04s03b02x00p09n01i00095arch OF c04s03b02x00p09n01i00095ent IS

BEGIN
  TESTING: PROCESS
  BEGIN
    assert FALSE 
      report "***FAILED TEST: c04s03b02x00p09n01i00095 - The subtype indication for an interface constant or signal declaration can not be of access type."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c04s03b02x00p09n01i00095arch;
