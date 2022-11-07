import { Authorize, IDField } from "@nestjs-query/query-graphql";
import { ID, ObjectType } from "@nestjs/graphql";
import { AnnouncementAuthorizer } from "./announcement.authorizer";

@ObjectType('Announcement')
@Authorize(AnnouncementAuthorizer)
export class AnnouncementDTO {
    @IDField(() => ID)
    id!: number;
    title: string;
    description: string;
    url?: string;
    startAt: Date;
    expireAt: Date;
}