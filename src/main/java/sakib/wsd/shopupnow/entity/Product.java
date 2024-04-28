package sakib.wsd.shopupnow.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.ForeignKey;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Table(name = "products")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "description", nullable = false)
    private String description;

    @Column(name = "price", nullable = false)
    private double price;

    @Column(name = "created_at", nullable = false)
    private LocalDateTime createdAt;

    @Column(name = "updated_at", nullable = true)
    private LocalDateTime updatedAt;

    @Column(name = "deleted_at", nullable = true)
    private LocalDateTime deletedAt;

    @OneToOne
    @JoinColumn(
            name = "product_category_id",
            referencedColumnName = "id",
            foreignKey = @ForeignKey(name = "FK_product_product_category")
    )
    private ProductCategory productCategory;

    @OneToOne
    @JoinColumn(
            name = "inventory_id",
            referencedColumnName = "id",
            foreignKey = @ForeignKey(name = "FK_product_inventory")
    )
    private Inventory inventory;

    @OneToOne
    @JoinColumn(
            name = "discount_id",
            referencedColumnName = "id",
            foreignKey = @ForeignKey(name = "FK_product_discount")
    )
    private Discount discount;
}
