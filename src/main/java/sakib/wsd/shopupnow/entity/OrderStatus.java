package sakib.wsd.shopupnow.entity;

import lombok.Getter;

@Getter
public enum OrderStatus {
    CREATED("created"),
    READY_FOR_SHIPMENT("ready_for_shipment"),
    OUT_FOR_DELIVERY("on_delivery"),
    DELIVERED("delivered"),
    CANCEL("cancel");

    private final String value;

    OrderStatus(String value) {
        this.value = value;
    }

}
