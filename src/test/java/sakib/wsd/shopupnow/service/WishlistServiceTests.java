package sakib.wsd.shopupnow.service;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.jupiter.MockitoExtension;
import sakib.wsd.shopupnow.entity.Customer;
import sakib.wsd.shopupnow.entity.Product;
import sakib.wsd.shopupnow.entity.Wishlist;
import sakib.wsd.shopupnow.repository.WishlistRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
public class WishlistServiceTests {
    @InjectMocks
    private WishlistService wishlistService;

    @Mock
    private WishlistRepository wishlistRepository;

    @BeforeEach
    public void init() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testFindWishlistByCustomerId() {
        UUID customerId = UUID.randomUUID();

        List<Wishlist> wishlistItems = new ArrayList<>();
        Wishlist wishlistItemOne = Wishlist.builder()
                .id(UUID.randomUUID())
                .customer(Customer.builder()
                        .id(customerId)
                        .build()
                )
                .product(Product.builder()
                        .id(UUID.randomUUID())
                        .name("Toy Car")
                        .build()
                )
                .build();
        Wishlist wishlistItemTwo = Wishlist.builder()
                .id(UUID.randomUUID())
                .customer(Customer.builder()
                        .id(UUID.randomUUID())
                        .build()
                )
                .product(Product.builder()
                        .id(UUID.randomUUID())
                        .name("Toy Cycle")
                        .build()
                )
                .build();
        Wishlist wishlistItemThree = Wishlist.builder()
                .id(UUID.randomUUID())
                .customer(Customer.builder()
                        .id(customerId)
                        .build()
                )
                .product(Product.builder()
                        .id(UUID.randomUUID())
                        .name("Toy Truck")
                        .build()
                )
                .build();

        wishlistItems.add(wishlistItemOne);
        wishlistItems.add(wishlistItemTwo);
        wishlistItems.add(wishlistItemThree);

        when(wishlistRepository.findWishlistByCustomerId(customerId)).thenReturn(wishlistItems);

        List<Wishlist> newWishlist = wishlistService.findAllWishlistItemByCustomerId(customerId);

        assertEquals(2, newWishlist.size());
        verify(wishlistRepository, times(1)).findWishlistByCustomerId(customerId);
    }
}
