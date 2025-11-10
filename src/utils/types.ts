export interface WishlistItemInput {
  customerId: string; // ✅ Add this
  productId: string;
  variantId?: string;
  title: string;
  handle: string;
}
