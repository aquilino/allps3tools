
/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 2 of the License.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

#include <ppc_asm.h>

_GLOBAL(memcpy)
	cmpdi %r5, 0
	beq 2f
	mtctr %r5
	li %r5, 0
1:
	lbzx %r6, %r4, %r5
	stbx %r6, %r3, %r5
	addi %r5, %r5, 1
	bdnz 1b
2:
	blr
