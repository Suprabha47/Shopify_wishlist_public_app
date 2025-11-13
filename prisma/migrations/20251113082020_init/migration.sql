/*
  Warnings:

  - You are about to drop the column `buttonTextColor` on the `ShopSettings` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "ShopSettings" DROP COLUMN "buttonTextColor",
ADD COLUMN     "backgroundColor" TEXT,
ADD COLUMN     "collectionIconColor" TEXT,
ADD COLUMN     "collectionIconFillColor" TEXT,
ADD COLUMN     "collectionLabel" TEXT,
ADD COLUMN     "collectionShowLabel" BOOLEAN DEFAULT true,
ADD COLUMN     "iconColor" TEXT,
ADD COLUMN     "iconFillColor" TEXT,
ADD COLUMN     "iconStyle" TEXT,
ADD COLUMN     "productIconColor" TEXT,
ADD COLUMN     "productIconFillColor" TEXT,
ADD COLUMN     "productLabel" TEXT,
ADD COLUMN     "productShowLabel" BOOLEAN DEFAULT true,
ADD COLUMN     "showWishlistCount" BOOLEAN DEFAULT true,
ADD COLUMN     "textColor" TEXT,
ADD COLUMN     "wishlistPosition" TEXT;
