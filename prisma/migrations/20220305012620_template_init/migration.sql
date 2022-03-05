/*
  Warnings:

  - You are about to drop the column `createdAt` on the `projects` table. All the data in the column will be lost.
  - You are about to drop the column `description` on the `projects` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `projects` table. All the data in the column will be lost.
  - You are about to drop the column `stage` on the `projects` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `projects` table. All the data in the column will be lost.
  - You are about to drop the `_TeamToUser` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `boards` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `lists` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `tasks` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `teams` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_TeamToUser" DROP CONSTRAINT "_TeamToUser_A_fkey";

-- DropForeignKey
ALTER TABLE "_TeamToUser" DROP CONSTRAINT "_TeamToUser_B_fkey";

-- DropForeignKey
ALTER TABLE "boards" DROP CONSTRAINT "boards_projectId_fkey";

-- DropForeignKey
ALTER TABLE "lists" DROP CONSTRAINT "lists_boardId_fkey";

-- DropForeignKey
ALTER TABLE "tasks" DROP CONSTRAINT "tasks_assigneeId_fkey";

-- DropForeignKey
ALTER TABLE "tasks" DROP CONSTRAINT "tasks_assignerId_fkey";

-- DropForeignKey
ALTER TABLE "tasks" DROP CONSTRAINT "tasks_listId_fkey";

-- DropIndex
DROP INDEX "projects_name_key";

-- AlterTable
ALTER TABLE "projects" DROP COLUMN "createdAt",
DROP COLUMN "description",
DROP COLUMN "name",
DROP COLUMN "stage",
DROP COLUMN "updatedAt";

-- DropTable
DROP TABLE "_TeamToUser";

-- DropTable
DROP TABLE "boards";

-- DropTable
DROP TABLE "lists";

-- DropTable
DROP TABLE "tasks";

-- DropTable
DROP TABLE "teams";

-- DropEnum
DROP TYPE "ProjectEvent";

-- DropEnum
DROP TYPE "ProjectStage";

-- DropEnum
DROP TYPE "TaskPriorities";
