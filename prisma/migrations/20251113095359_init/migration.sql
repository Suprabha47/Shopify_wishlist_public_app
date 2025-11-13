/*
  Warnings:

  - You are about to drop the column `buttonLabel` on the `ShopSettings` table. All the data in the column will be lost.
  - You are about to drop the column `collectionLabel` on the `ShopSettings` table. All the data in the column will be lost.
  - You are about to drop the column `collectionShowLabel` on the `ShopSettings` table. All the data in the column will be lost.
  - You are about to drop the column `iconColor` on the `ShopSettings` table. All the data in the column will be lost.
  - You are about to drop the column `itemsPerPage` on the `ShopSettings` table. All the data in the column will be lost.
  - You are about to drop the column `primaryColor` on the `ShopSettings` table. All the data in the column will be lost.
  - You are about to drop the column `productLabel` on the `ShopSettings` table. All the data in the column will be lost.
  - You are about to drop the column `productShowLabel` on the `ShopSettings` table. All the data in the column will be lost.
  - You are about to drop the column `secondaryColor` on the `ShopSettings` table. All the data in the column will be lost.
  - You are about to drop the column `showSoldOut` on the `ShopSettings` table. All the data in the column will be lost.
  - You are about to drop the column `wishlistPageDesc` on the `ShopSettings` table. All the data in the column will be lost.
  - You are about to drop the column `wishlistPageTitle` on the `ShopSettings` table. All the data in the column will be lost.
  - You are about to drop the column `wishlistPosition` on the `ShopSettings` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "ShopSettings" DROP COLUMN "buttonLabel",
DROP COLUMN "collectionLabel",
DROP COLUMN "collectionShowLabel",
DROP COLUMN "iconColor",
DROP COLUMN "itemsPerPage",
DROP COLUMN "primaryColor",
DROP COLUMN "productLabel",
DROP COLUMN "productShowLabel",
DROP COLUMN "secondaryColor",
DROP COLUMN "showSoldOut",
DROP COLUMN "wishlistPageDesc",
DROP COLUMN "wishlistPageTitle",
DROP COLUMN "wishlistPosition",
ADD COLUMN     "ProductButtonStyle" TEXT,
ADD COLUMN     "ProductbuttonLabel" TEXT,
ADD COLUMN     "buttonColor" TEXT,
ADD COLUMN     "collectionButtonPosition" TEXT,
ADD COLUMN     "collectionShowIcon" BOOLEAN DEFAULT true,
ADD COLUMN     "productButtonPosition" TEXT,
ADD COLUMN     "productButtonText" BOOLEAN DEFAULT true,
ADD COLUMN     "productShpwIcon" BOOLEAN DEFAULT true,
ADD COLUMN     "showStock" BOOLEAN DEFAULT false,
ADD COLUMN     "wishlistLayoutType" TEXT;
