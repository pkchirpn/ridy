import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

enum RewardAppType {
    Driver = 'Driver',
    Rider = 'Rider'
}

enum RewardBeneficiary {
    Self = 'Self',
    Referrer = 'Referrer'
}

enum RewardEvent {
    Register = 'Register',
    ServiceCompleted = 'ServiceCompleted'
}

@Entity('reward')
export class RewardEntity {
    @PrimaryGeneratedColumn()
    id!: number;

    @Column()
    startDate!: Date;

    @Column()
    endDate!: Date;

    @Column('enum', {
        enum: RewardAppType
    })
    appType!: RewardAppType;

    @Column('enum', {
        enum: RewardBeneficiary
    })
    beneficiary!: RewardBeneficiary;

    @Column('enum', {
        enum: RewardEvent
    })
    event!: RewardEvent;

    @Column('float', {
        default: '0.00',
        precision: 10,
        scale: 2
    })
    creditGift!: number;

    @Column('int', { nullable: true })
    tripFeePercentGift?: number;

    @Column('char', { length: 3, nullable: true })
    creditCurrency?: string;

    @Column('int', { nullable: true })
    conditionTripCountsLessThan?: number;

    @Column('simple-array', { nullable: true })
    conditionUserNumberFirstDigits?: string[];
}