package sakib.wsd.shopupnow.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import sakib.wsd.shopupnow.entity.Wishlist;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Repository
public interface WishlistRepository extends JpaRepository<Wishlist, UUID> {

    @Query("SELECT DISTINCT WL FROM Wishlist WL WHERE WL.customer.id = :customerId")
    List<Wishlist> findWishlistByCustomerId(UUID customerId);
}
