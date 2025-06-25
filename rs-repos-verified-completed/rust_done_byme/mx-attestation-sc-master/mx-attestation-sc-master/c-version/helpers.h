#ifndef _HELPERS_H_
#define _HELPERS_H_

#include "numbat/types.h"

void _copy(byte *dest, const byte *src, int len);
void _copyRange(byte *dest, const byte *src, int destStart, int srcStart, int len);
bool _equal(const byte *op1, const byte *op2, int len);
void _constructKey(const byte *prefix, int prefixLen,  const byte *arg, int argLen, byte *key);
bool _isZero(const byte *data, int len);
bool _isCallerOwner();
void* memcpy(void *dest, const void *src, unsigned long n);
void* memset(void *dest, int c, unsigned long n);

#endif
