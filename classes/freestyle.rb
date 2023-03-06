class Account
    attr_reader :name
    attr_reader :balance

    def initialize(name, balance=100)
      @name = name
      @balance = balance
      pin 
    end
    
    public
    def display_balance(pin_number)
      if pin_number == @pin
        puts "Balance: $#{@balance}."
      else
        puts pin_error
      end
    end
    
    def withdraw(pin_number,amount)
      if pin_number != @pin
        puts pin_error
       
      elsif pin_number == @pin && amount <= @balance 
        @balance -= amount
        puts "Withdrew #{amount} and your current amount is #{@balance}"

      else 
        puts "you can not over draft"
       
      end
    end

    def deposit(pin_number,amount)
         if pin_number == @pin
            @balance+= amount 
            "your current balance after deposit is #{@balance}" 
         end
    end

    
  
    private
    def pin
      @pin = 1234
    end
    def pin_error
      return "Access denied: incorrect PIN."
    end 
  end
  
  checking_account = Account.new("Eric", 1_000_000)