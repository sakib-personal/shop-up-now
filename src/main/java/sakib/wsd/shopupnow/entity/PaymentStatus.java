package sakib.wsd.shopupnow.entity;

import lombok.Getter;

@Getter
public enum PaymentStatus {
    DUE("due"),
    PAID("paid");

    private final String value;

    PaymentStatus(String value) {
        this.value = value;
    }

}
