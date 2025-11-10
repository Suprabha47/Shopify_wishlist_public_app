import { WishlistItemInput } from "../utils/types";
import { Request, Response } from "express";
import prisma from "../db/prisma";

export const addWishlistItem = async (req: Request, res: Response) => {
  try {
    const data = req.body;
    console.log("Request Body:", data);

    const { customerId, productId, variantId, title, handle } =
      data as WishlistItemInput;

    // ✅ Validate customer
    if (!customerId) {
      return res.status(400).json({ message: "Customer ID missing" });
    }

    console.log("Customer ID →", customerId);

    // ✅ Ensure customer exists
    let customer = await prisma.customer.findUnique({
      where: { shopifyId: customerId },
    });

    if (!customer) {
      customer = await prisma.customer.create({
        data: { shopifyId: customerId },
      });
    }

    // ✅ Validate product
    if (!productId) {
      return res.status(400).json({ message: "Product ID missing" });
    }

    // ✅ Check if already exists
    const exists = await prisma.wishlistItem.findFirst({
      where: {
        customerId: customerId,
        productId: productId,
      },
    });

    if (exists) {
      return res.status(400).json({ message: "Item already in wishlist" });
    }

    // ✅ Create wishlist item (correct fields)
    await prisma.wishlistItem.create({
      data: {
        customerId: customerId, // ✅ string
        productId: productId, // ✅ string
        variantId,
        productTitle: title,
        productHandle: handle,
      },
    });

    return res.json({ message: "Added to wishlist" });
  } catch (error) {
    console.error("Wishlist Add Error:", error);
    return res.status(500).json({ error: "Failed to add wishlist item" });
  }
};
