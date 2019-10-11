def abs(x)
	if(x<0) 
		x*-1
	else 
		x 
	end
end

def calc(x)
	par1= Math.sqrt((2*(x**2))+1)*(Math.sqrt(2)*x)
	par2= Math.log(abs(Math.sqrt(2*(x**2)+1)+(Math.sqrt(2)*x)))
	return(par1+par2)
end

sup = calc(2)
inf = calc(0)

print(sup-inf)