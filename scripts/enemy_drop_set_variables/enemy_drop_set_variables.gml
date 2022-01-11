///@description enemy_drop_set_variables();

drop = irandom(5);
if(howmany >= 2) {dropTwo = irandom(5);}
if(howmany >= 3) {dropThree = irandom(5);}

switch(drop)
{
	case 0:
		drop = ONoCoco;
		break;
	case 1:
		drop = OCoco;
		break;
	case 2:
		drop = OCoco2;
		break;
	case 3:
		drop = OCoco3;
		break;
	case 4:
		drop = OCoco4;
		break;
	case 5:
		drop = OCoco5;
		break;
}

if(howmany >= 2)
{
	switch(dropTwo)
	{
		case 0:
			dropTwo = ONoCoco;
			break;
		case 1:
			dropTwo = OCoco;
			break;
		case 2:
			dropTwo = OCoco2;
			break;
		case 3:
			dropTwo = OCoco3;
			break;
		case 4:
			dropTwo = OCoco4;
			break;
		case 5:
			dropTwo = OCoco5;
			break;
	}
}

if(howmany >= 3)
{
	switch(dropThree)
	{
		case 0:
			dropThree = ONoCoco;
			break;
		case 1:
			dropThree = OCoco;
			break;
		case 2:
			dropThree = OCoco2;
			break;
		case 3:
			dropThree = OCoco3;
			break;
		case 4:
			dropThree = OCoco4;
			break;
		case 5:
			dropThree = OCoco5;
			break;
	}
}