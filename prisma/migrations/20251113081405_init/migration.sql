-- CreateTable
CREATE TABLE "ShopSettings" (
    "id" SERIAL NOT NULL,
    "shopId" INTEGER NOT NULL,
    "primaryColor" TEXT,
    "secondaryColor" TEXT,
    "buttonTextColor" TEXT,
    "buttonLabel" TEXT,
    "showPrice" BOOLEAN DEFAULT true,
    "showSoldOut" BOOLEAN DEFAULT false,
    "itemsPerPage" INTEGER DEFAULT 12,
    "wishlistPageTitle" TEXT,
    "wishlistPageDesc" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ShopSettings_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ShopSettings_shopId_key" ON "ShopSettings"("shopId");

-- AddForeignKey
ALTER TABLE "ShopSettings" ADD CONSTRAINT "ShopSettings_shopId_fkey" FOREIGN KEY ("shopId") REFERENCES "Shop"("id") ON DELETE CASCADE ON UPDATE CASCADE;
