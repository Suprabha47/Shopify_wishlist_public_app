/*
  Warnings:

  - Made the column `shopifyId` on table `Customer` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "WishlistItem" DROP CONSTRAINT "WishlistItem_customerId_fkey";

-- AlterTable
ALTER TABLE "Customer" ALTER COLUMN "shopifyId" SET NOT NULL;

-- AlterTable
ALTER TABLE "WishlistItem" ALTER COLUMN "customerId" SET DATA TYPE TEXT;

-- AddForeignKey
ALTER TABLE "WishlistItem" ADD CONSTRAINT "WishlistItem_customerId_fkey" FOREIGN KEY ("customerId") REFERENCES "Customer"("shopifyId") ON DELETE CASCADE ON UPDATE CASCADE;
