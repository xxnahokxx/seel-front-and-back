-- CreateTable
CREATE TABLE "Project" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "status" INTEGER NOT NULL,
    "isActive" BOOLEAN NOT NULL DEFAULT true,
    "finishDateProgrammed" TIMESTAMP(3),
    "realFinishDate" TIMESTAMP(3),

    CONSTRAINT "Project_pkey" PRIMARY KEY ("id")
);
