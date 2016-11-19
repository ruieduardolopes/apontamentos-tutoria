int bitCount(unsigned x) {
	int bit;
	if (x == 0)
		return 0;
	bit = x & 0x1;
	return bit + bitCount(x >> 1);
}
