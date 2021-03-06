/*	$NetBSD: byte_swap_2.S,v 1.2 2006/04/07 14:27:33 cherry Exp $	*/

/*-
 * Copyright (c) 1996 Carnegie-Mellon University.
 * All rights reserved.
 *
 * Author: Chris G. Demetriou
 *
 * Permission to use, copy, modify and distribute this software and
 * its documentation is hereby granted, provided that both the copyright
 * notice and this permission notice appear in all copies of the
 * software, derivative works or modified versions, and any portions
 * thereof, and that both notices appear in supporting documentation.
 *
 * CARNEGIE MELLON ALLOWS FREE USE OF THIS SOFTWARE IN ITS "AS IS"
 * CONDITION.  CARNEGIE MELLON DISCLAIMS ANY LIABILITY OF ANY KIND
 * FOR ANY DAMAGES WHATSOEVER RESULTING FROM THE USE OF THIS SOFTWARE.
 *
 * Carnegie Mellon requests users of this software to return to
 *
 *  Software Distribution Coordinator  or  Software.Distribution@CS.CMU.EDU
 *  School of Computer Science
 *  Carnegie Mellon University
 *  Pittsburgh PA 15213-3890
 *
 * any improvements or extensions that they make and grant Carnegie the
 * rights to redistribute these changes.
 */

#include <machine/asm.h>

#ifndef NAME
#error NAME not defined
#endif

/*
 * Byte-swap a 2-byte quantity.  (Convert 0x0123 to 0x2301.)
 *
 * Argument is an unsigned 2-byte integer (u_int16_t).
 */
ENTRY(NAME, 1)
	mux1	r16=in0,@rev
	;;
	extr.u	r8=r16,48,16
	br.ret.sptk.few rp
END(NAME)
