array = argument[0];
iVal = argument[1];
start = argument[2];
endS = argument[3];
rowNumber = argument[4];
gap = 16 + 16;
for (var j = start; j < endS; j++)
	{
		if (iVal == 0)
		{
			array[@ j, iVal] = (gap+16) * rowNumber + random_range(-10,10);
		}
		else if (iVal == 1)
		{
			if (rowNumber % 2 == 0)
			{
				pos = 1;
			}
			else
			{
				pos = 0;
			}
			array[@ j, iVal] = 128+(gap*pos)+16+(32*(j-start))+ random_range(-10,10);
		}
	}