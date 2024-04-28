package sakib.wsd.shopupnow.entity;

import lombok.Getter;

@Getter
public enum ShipmentStatus {
    READY_FOR_SHIPMENT("ready_for_shipment"),
    OUT_FOR_SHIPMENT("out_for_shipment"),
    AT_LOCATION("at_location"),
    SHIPPED("shipped"),
    PRODUCT_RETURNED("product_returned"),
    CANCEL("cancel");

    private final String value;

    ShipmentStatus(String value) {
        this.value = value;
    }

}
