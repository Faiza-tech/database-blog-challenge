/*
  Warnings:

  - Made the column `postId` on table `Comment` required. This step will fail if there are existing NULL values in that column.
  - Made the column `profileId` on table `Post` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "Comment" DROP CONSTRAINT "Comment_postId_fkey";

-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_profileId_fkey";

-- AlterTable
ALTER TABLE "Comment" ALTER COLUMN "postId" SET NOT NULL;

-- AlterTable
ALTER TABLE "Post" ALTER COLUMN "profileId" SET NOT NULL;

-- AddForeignKey
ALTER TABLE "Post" ADD CONSTRAINT "Post_profileId_fkey" FOREIGN KEY ("profileId") REFERENCES "Profile"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Comment" ADD CONSTRAINT "Comment_postId_fkey" FOREIGN KEY ("postId") REFERENCES "Post"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
