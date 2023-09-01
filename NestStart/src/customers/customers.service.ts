import { 
  Injectable, 
  HttpException,
  HttpStatus,
  NotFoundException 
} from '@nestjs/common';
import { CreateCustomerDto } from './dto/create-customer.dto';
import { UpdateCustomerDto } from './dto/update-customer.dto';
import { Customer } from './entities/customer.entity';

@Injectable()
export class CustomersService {
  private customers: Customer[] = [];
  
  create(createCustomerDto: CreateCustomerDto) {
    const newCustomer = {
      id: +new Date().getTime(),
      ...createCustomerDto,
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
        throw new NotFoundException('Customer not found.')
      }

      return customerFound;
    } catch (error:any) {
      throw new HttpException(error.message, error.status || HttpStatus.INTERNAL_SERVER_ERROR)
    }
    
  }

  update(id: number, updateCustomerDto: UpdateCustomerDto) {
    try {
      const customerFound = this.findOne(id);

      if(!customerFound){
        throw new NotFoundException('The customer couldn`t be found.')
      }

      const customerUpdated = Object.assign(customerFound, updateCustomerDto)

      this.customers = this.customers.map((item) => {
        if(item.id === customerFound.id){
          return customerUpdated
        }

        return item;
      })

      return customerFound;
    } catch (error) {
      throw new HttpException(
        error.message,
        error.status || HttpStatus.INTERNAL_SERVER_ERROR
      );
    }
  }

  remove(id: number) {
    try {
      const customerIndex = this.customers.findIndex((customer) => customer.id === id);
  
      if (customerIndex === -1) {
        throw new NotFoundException('Customer not found.');
      }
  
      const removedCustomer = this.customers.splice(customerIndex, 1)[0];
      return { message: "The user was successfully removed.", statusCode: 200, removedCustomer };
    } catch (error) {
      throw new HttpException(
        error.message,
        error.status || HttpStatus.INTERNAL_SERVER_ERROR
      );
    }
  }
}