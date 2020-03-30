/*
 * Release Date: 17 JULY 2007
 *
 * MISRA-C:2004 Exemplar Suite
 *
 * Published by
 * MIRA Limited, Watling Street, Nuneaton, Warwickshire CV10 0TU UK
 * www.misra-c.com
 *
 * Copyright MIRA Limited, 2006, 2007.
 *
 * See file READ_ME.txt for full copyright, license and release information.
 */

/*
 * 4.1 Only those escape sequences that are defined in the ISO C standard shall
 *     be used.
 */

/*  Exclusions: Octal escape sequences are not allowed under rule 7.1 */

/*  The ISO C standard referred to is the 1990 standard. */


#include "mc2_types.h"
#include "mc2_header.h"

void mc2_0401 ( void )
{
  /* Compliant escape sequences */
   use_char ( '\'' );
   use_char ( '\"' );
   use_char ( '\?' );
   use_char ( '\\' );
   use_char ( '\t' );
   use_char ( '\v' );
   use_char ( '\f' );
   use_char ( '\a' );
   use_char ( '\b' );
   use_char ( '\n' );
   use_char ( '\r' );
   use_char ( '\0' );

   /* Not Compliant - all hexadecimal escape sequences are banned */
   /* The following list is not exhaustive */
   use_char ( '\x0' );     /* Not Compliant */
   use_char ( '\x01' );    /* Not Compliant */
   use_char ( '\x12' );    /* Not Compliant */
   use_char ( '\xAB' );    /* Not Compliant */

   /* Non compliant escape sequences */
   use_char ( '\c' );     /* Not Compliant */
   use_char ( '\d' );     /* Not Compliant */
   use_char ( '\e' );     /* Not Compliant */
   use_char ( '\g' );     /* Not Compliant */
}

/* end of mc2_0401.c */

