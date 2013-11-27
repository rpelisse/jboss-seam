package org.jboss.seam.example.ejbtimer;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

@Entity
public class Account
    implements Serializable
{

	private static final long serialVersionUID = -7702134422514326240L;

	@Id @GeneratedValue 
    private Long id;

    @NotNull
    BigDecimal balance = BigDecimal.ZERO;

    @NotNull
    String accountNumber;
       
    @OneToMany(mappedBy="account", cascade=CascadeType.REMOVE)
    //@OrderBy("paymentDate")
    private List<Payment> payments;
   
    public Long getId()
    {
        return id;
    }
    public void setId(Long id)
    {
        this.id = id;
    }

    public String getAccountNumber()
    {
        return accountNumber;
    }
    public void setAccountNumber(String accountNumber)
    {
        this.accountNumber = accountNumber;
    }


    public BigDecimal getBalance()
    {
        return balance;
    }

    public BigDecimal adjustBalance(BigDecimal amount) {
        balance = balance.add(amount);
        return balance;
    }

    public List<Payment> getPayments() 
    {
        return payments;
    }

    public void addPayment(Payment payment) {
        if (payments == null) {
            payments = new ArrayList<Payment>();
        }
        
        payments.add(payment);
    }
    
}