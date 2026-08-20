/*
  Warnings:

  - You are about to drop the `Material` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Project` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_MaterialToProject` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_MaterialToProject" DROP CONSTRAINT "_MaterialToProject_A_fkey";

-- DropForeignKey
ALTER TABLE "_MaterialToProject" DROP CONSTRAINT "_MaterialToProject_B_fkey";

-- DropTable
DROP TABLE "Material";

-- DropTable
DROP TABLE "Project";

-- DropTable
DROP TABLE "_MaterialToProject";

-- CreateTable
CREATE TABLE "Projects" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "status" INTEGER NOT NULL,
    "isActive" BOOLEAN NOT NULL DEFAULT true,
    "finishDateProgrammed" TIMESTAMP(3),
    "realFinishDate" TIMESTAMP(3),

    CONSTRAINT "Projects_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Materials" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "image" TEXT,
    "internalCode" TEXT,
    "cost" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "Materials_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Material_requests" (
    "id" SERIAL NOT NULL,
    "projectId" INTEGER NOT NULL,
    "materialId" INTEGER NOT NULL,
    "status" INTEGER,
    "requestDate" TIMESTAMP(3),
    "deliveryDate" TIMESTAMP(3),
    "amount" INTEGER,
    "deliveryAmount" INTEGER,
    "requestingUserId" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Material_requests_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Material_requests" ADD CONSTRAINT "Material_requests_projectId_fkey" FOREIGN KEY ("projectId") REFERENCES "Projects"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Material_requests" ADD CONSTRAINT "Material_requests_materialId_fkey" FOREIGN KEY ("materialId") REFERENCES "Materials"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
