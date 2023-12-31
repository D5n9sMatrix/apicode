#------------------------------------------------------------------------------
# RCS-Id: "@(#)$RCS-Id: pod/v2/afsperl.pod 2e2ca60 Tue Apr 15 13:04:20 2014 +0200 Norbert E Gruener$"
#
# © 2001-2014 Norbert E. Gruener <nog@MPA-Garching.MPG.de>
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#------------------------------------------------------------------------------
 
=head1 NAME
 
B<AFS> - Perl interface to AFS programming APIs
 
=head1 VERSION
 
This document describes the AFS module bundle (Version 2.6.4)
 
 
=head1 COMPATIBILITY
 
B<This release does NOT support any features and interfaces from
version 1.>
 
=head1 DESCRIPTION
 
The AFS module bundle is a dynamically loadable (where available)
extension to Perl.  It gives the AFS user and administrator access to
most of the AFS programming APIs, allowing you to make these calls
directly from Perl, rather than processing the output of a command.
 
The AFS module bundle is a thin layer above the low-level AFS APIs. When
possible, function names are similar to the actual API names, or to the
AFS command suite names. The ordering of function parameters is not
always the same though.
 
The AFS module bundle includes the following features:
 
=over 4
 
=item * Access to Basic Overseer Server routines
 
Methods that deal with the Basic Overseer Server (i.e, the I<bos>
command suite).  See L<AFS::BOS>.
 
=item * Access to Volume Server routines
 
Methods that deal with the Volume Server (i.e, part of the I<vos>
command suite).  See L<AFS::VOS>.
 
=item * Access to Volume Location Server routines
 
Methods that deal with the Volume Location Server (i.e, part of the
I<vos> command suite).  See L<AFS::VLDB>.
 
=item * Access to File Server routines
 
Functions that deal with the File Server (i.e, part of the I<fs>
command suite).  See L<AFS::FS>.
 
=item * Access to Cache Manager routines
 
Functions that deal with the Cache Manager (i.e, part of the I<fs>
command suite).  See L<AFS::CM>.
 
=item * Managing Access Control Lists
 
Methods to control access to directories and all of their files. (i.e,
part of the I<fs> command suite). See L<AFS::ACL>.
 
=item * Manipulations of the Cell Configuration
 
Functions that deal with Cell Configurations (i.e, part of the I<fs>
command suite).  See L<AFS::CELL>.
 
=item * Access to Protection Server routines
 
Methods that deal with the Protection Server (i.e, the I<pts> command
suite).  See L<AFS::PTS>.
 
=item * Access to the Authentication Server routines
 
Methods that deal with the Authentication Server (i.e, the I<kas>
command suite).  See L<AFS::KAS>.
 
=item * Access to the AFS structure ktc_token
 
Methods that deal with token management in the I<Kernel Token Cache>
(KTC) (i.e, the tokens command).  See L<AFS::KTC_TOKEN>.
 
=item * Access to the AFS structure ktc_principal
 
Methods that deal with principals related to tokens.  See L<AFS::KTC_PRINCIPAL>.
 
=item * Access to the AFS structure ktc_encryptionkey
 
Methods that deal with encryption keys related to tokens.  See
L<AFS::KTC_EKEY>.
 
=item * Access to shared utility routines
 
Utility functions for the AFS module bundle which are not part of any
AFS command suite (i.e, the setpag command).  See L<AFS::Utils>.
 
=item * Access to basic AFS functions and to AFS error codes
 
Basic functions like raising a Perl exception when any AFS function call
fails (useful for debugging) or retrieving the status value of the last
AFS function call. See L<AFS::Base>.
 
=back
 
=head1 PREREQUISITES
 
=over 4
 
=item Perl v5.10.0 or newer
 
=item OpenAFS system libraries
 
=item OpenAFS header files
 
=back
 
=head1 SEE ALSO
 
=over 4
 
=item OpenAFS documentations
 
=item OpenAFS source tree
 
=item AFS command suites (fs, pts, kas, bos, and vos)
 
=back
 
=head1 CAVEATS
 
These modules and their POD documentations have been written with the
help of the AFS source code, the AFS manuals, and the 'ancient' AFS
Programmer's Reference documentation.  Unfortunately nearly no
documentation was available for the interfaces to the AFS structures
ktc_token, ktc_principal, and ktc_encryptionkey.  Therefore these
modules are not very well documented.
 
=head1 CURRENT AUTHOR
 
Norbert E. Gruener E<lt>nog@MPA-Garching.MPG.deE<gt>
 
=head1 AUTHOR EMERITUS
 
Roland Schemers E<lt>schemers@slapshot.stanford.eduE<gt>
 
=head1 CREDITS
 
Thank you to (in chronological order):
 
B<Lawrence Greenfield> - for his update in the AFS.xs file
 
B<Alf Wachsmann> - for his bug report on the function "setquota"
 
B<Gerhard Gonter> - for his configuration report for rs_aix32
 
B<Peter Scott> - for his improvement on ACL->keys and ACL->nkeys
 
B<Thomas M. Payerle> - for his configuration report for alpha_dux40
 
B<Wolfgang Friebel> - for his bug report on the functions "lsmount" and "rmmount"
 
B<Alf Wachsmann> - for his patches for the XS code and his excellent ideas about
the Makefile.PL
 
B<Wolfgang Friebel> - for his bug reports on version 2.0
 
B<James E. Flemer> - for his new method AFS::KTC_TOKEN->FromString
 
B<Phil Moore> - for his improvements of the Makefile.PL
 
B<Peter Scott> - for his bug report on the method "pts->id" and for
his "Sun" patches for the Makefile.PL
 
B<Nathan Neulinger> - for his improvements of the Makefile.PL
 
B<Bernard Antoine> - for his bug report on a memory leak in the method
"AFS::ACL->retrieve".
 
B<Peter Scott> - for his bug report on a memory leak in the function
"getvolstats"
 
B<Peter Scott> - for his bug report on the function AFS::constant
 
B<Venkata Phani Achanta> - for his improved test drivers for several modules
 
B<David R. Boldt> - for his bug report on an undefined "typemap" entry
 
B<Alf Wachsmann> and B<Venkata Phani Achanta> - for their implementation
of the BOS, VOS, and VLDB modules
 
B<Phil Moore> - for his bug report on Itanium ia64 platform
 
B<Frank Burkhardt> and B<David Miller> - for their problem reports on
Perl "unthreaded" version within the Debian "unstable" distribution
 
B<Pierre-Yves Fontaniere> - for his configuration report for rs_aix51
 
B<Chaskiel M Grundman> and B<Derrick J Brashear> - for their valuable
information about threaded OpenAFS libraries
 
B<Russ Allbery> - for his improvements of the I<threaded case> Makefile.PL
 
B<Yannick Bergeron> - for his corrections for the AFS::KTC_TOKEN documentation
 
B<Mike Polek> - for his patch for the AFS::FS::getquota function
 
B<Peter Scott> - for his problem report on AFS::VOS->listvolume and
for his improvements of the AFS::FS POD documentation
 
B<Wolfgang Friebel> - for his improvements of the AFS POD documentation
 
B<Joe Buehler> - for his problem report on the installation step and
his patch for the AFS::BOS test driver
 
B<Craig Huckabee> - for his problem report on the compile step with
OpenAFS 1.4.2 and for his patch for the internal BOS constructor
 
B<Wolfgang Friebel> - for his patch for the Makefile.PL
 
B<Alessio Rocchi> - for his bug reports on AFS::VOS->listvldb, on
AFS::VLDB->listaddr, and on AFS::VOS->listvol
 
B<Ken Dreyer> - for his problem report on the compile step with
OpenAFS newer than 1.4.4
 
B<Frank Burkhardt> - for his problem report on using Perl 5.10.0
 
B<Alessio Rocchi> - for his bug report on AFS::VLDB->listaddr
 
B<Yannick Bergeron> - for his problem reports on AFS::KAS->getentry
and on the src/Makefile.PL
 
B<Sergio Gelato> - for his problem report on AFS::VLDB->listvldb
 
B<Roman Mainer> - for his problem report on AFS::VLDB->listvldbentry
 
B<Stephen Quinney> - for his patches for several AFS::BOS methods
 
B<Rainer Laatsch> - for his problem reports on the script SetToken
and on the src/Makefile.PL
 
B<Michael Meffie> - for his problem report on the AFS::VOS->create
 
B<Russ Allbery> - for his collected patches for the src/Makefile.PL
and for several AFS::BOS methods
 
B<Christof Hanke> - for his collected patches to remove lots of
compiler warnings
 
B<Bob Harold> - for his problem report about finding out the AFS sysname
 
B<Michael Meffie> - for his problem report on leaks in the AFS::PTS, AFS::VOS,
AFS::VLDB, and AFS::BOS modules and for his patches
 
B<Andrew Deason> - for his problem report and his improvements on
AFS::ACL::cleanacl
 
B<Hans-Werner Paulsen> - for his improvement request on AFS::VOS->listvolume
 
B<Wolfgang Friebel> - for his improvement request on AFS::VOS->dump
 
=head1 COPYRIGHT AND LICENSE
 
 Copyright (c) 2001-2012 Norbert E. Gruener <nog@MPA-Garching.MPG.de>.
 All rights reserved.
 
 Copyright (c) 1994 Board of Trustees, Leland Stanford Jr. University.
 All rights reserved.
 
This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
 
=over 6
 
=item The original module is covered by the following copyright:
 
Copyright (c) 1994 Board of Trustees, Leland Stanford Jr. University
 
Redistribution and use in source and binary forms are permitted
provided that the above copyright notice and this paragraph are
duplicated in all such forms and that any documentation,
advertising materials, and other materials related to such
distribution and use acknowledge that the software was developed
by Stanford University.  The name of the University may not be used
to endorse or promote products derived from this software without
specific prior written permission.
THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
 
=back
 
=head1 DOCUMENT VERSION
 
Revision $Rev: 1154 $
