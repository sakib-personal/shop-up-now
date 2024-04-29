package sakib.wsd.shopupnow.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import sakib.wsd.shopupnow.entity.Wishlist;
import sakib.wsd.shopupnow.repository.WishlistRepository;

import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class WishlistService {

    private final WishlistRepository wishlistRepository;

    public List<Wishlist> findAllWishlistItemByCustomerId(UUID customerId) {
        return wishlistRepository.findWishlistByCustomerId(customerId);
    }
}
