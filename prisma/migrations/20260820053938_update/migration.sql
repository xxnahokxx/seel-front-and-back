-- CreateTable
CREATE TABLE "Material" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "image" TEXT,
    "internalCode" TEXT,
    "cost" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "Material_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_MaterialToProject" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,

    CONSTRAINT "_MaterialToProject_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateIndex
CREATE INDEX "_MaterialToProject_B_index" ON "_MaterialToProject"("B");

-- AddForeignKey
ALTER TABLE "_MaterialToProject" ADD CONSTRAINT "_MaterialToProject_A_fkey" FOREIGN KEY ("A") REFERENCES "Material"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_MaterialToProject" ADD CONSTRAINT "_MaterialToProject_B_fkey" FOREIGN KEY ("B") REFERENCES "Project"("id") ON DELETE CASCADE ON UPDATE CASCADE;
