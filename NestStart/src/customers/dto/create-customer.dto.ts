import { IsInt, IsNotEmpty, IsString, Min } from 'class-validator'

export class CreateCustomerDto {
    @IsNotEmpty()
    @IsString()
    firstName:string

    @IsNotEmpty()
    @IsString()
    lastName:string

    @IsNotEmpty()
    @IsInt()
    @Min(18, {message: "The user must be older then 18."})
    age:number
}
