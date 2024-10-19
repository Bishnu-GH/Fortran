program calculator
    implicit none
    real :: a,b,q
    character(len=10) :: p
    logical :: valid_p
    print*,"enter the two numbers"
    read*,a,b
    print*, "enter the operation to perform (+,-,*,d)"
    read*,p
    valid_p = .true.
    if (p =='+') then
        q = a + b
    else if (p =='-') then
        q=a-b
    else if (p =='*')then 
        q=a*b
    else if (p =='d') then
        if (b/=0.0) then
            q=a/b
        else if (b==0.0) then
            print*," The result is Indefinite"
            valid_p= .false.
        end if 
        
    end if
    if (valid_p) then
        print*,'The result is : ',q
    end if

    
    
end program calculator