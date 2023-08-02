import {
  Injectable,
  HttpException,
  HttpStatus,
  NotFoundException,
} from '@nestjs/common';
import { CreateCostumerDto } from './dto/create-costumer.dto';
import { UpdateCostumerDto } from './dto/update-costumer.dto';
import { Costumer } from './entities/costumer.entity';

@Injectable()
export class CostumersService {
  private readonly customers: Costumer[] = [];

  create(createCostumerDto: CreateCostumerDto) {
    const newCustomer = {
      id: +new Date().getTime(),
      ...createCostumerDto,
    }

    this.customers.push(newCustomer);

    return newCustomer;
  }

  findAll(firstName?:string) {
    
    if(firstName){
      try {
        const customersFound = this.customers.filter((customer) => customer.firstName === firstName)
  
        if(!customersFound){
          throw new NotFoundException('There is not a customer with this name at the database.')
        }
  
        return customersFound;
      } catch (error) {
        throw new HttpException(error.message, error.status || HttpStatus.INTERNAL_SERVER_ERROR)
      }
    }

    return this.customers;
  }

  findOne(id: number) {
    try {
      const customerFound = this.customers.find((customer) => customer.id === id);

      if(!customerFound){
        throw new NotFoundException('Customen not found.')
      }

      return customerFound;
    } catch (error:any) {
      throw new HttpException(error.message, error.status || HttpStatus.INTERNAL_SERVER_ERROR)
    }
  }

  update(id: number, updateCostumerDto: UpdateCostumerDto) {
    return `This action updates a #${id} costumer`;
  }

  remove(id: number) {
    return `This action removes a #${id} costumer`;
  }
}
