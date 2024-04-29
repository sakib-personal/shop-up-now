package sakib.wsd.shopupnow.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import sakib.wsd.shopupnow.entity.Wishlist;
import sakib.wsd.shopupnow.repository.WishlistRepository;
import sakib.wsd.shopupnow.service.WishlistService;

import java.util.List;
import java.util.UUID;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/wishlists")
public class WishlistController {

    private final WishlistService wishlistService;
    private final WishlistRepository wishlistRepository;

    @GetMapping("/{customerId}")
    public List<Wishlist> getWishlistByCustomerId(@PathVariable UUID customerId) {
        return wishlistRepository.findWishlistByCustomerId(customerId);
    }
}
