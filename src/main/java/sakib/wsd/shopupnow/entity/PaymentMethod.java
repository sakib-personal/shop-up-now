package sakib.wsd.shopupnow.entity;

import lombok.Getter;

@Getter
public enum PaymentMethod {
    CASH("cash"),
    BKASH("bkash"),
    ROCKET("rocket"),
    NAGAD("nagad"),
    CARD("card");

    private final String value;

    PaymentMethod(String value) {
        this.value = value;
    }
}
