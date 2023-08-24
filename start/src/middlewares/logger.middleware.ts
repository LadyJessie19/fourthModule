import { Injectable, NestMiddleware } from '@nestjs/common'
import { Request, Response, NextFunction } from 'express'

@Injectable()
export class LoggerMiddleware implements NestMiddleware {
    use(req:Request, res:Response, next:NextFunction){
        console.log('REQUEST LOG BELLOW')
        console.log("The endpoint: ", req.url)
        console.log("The method: ", req.method)
        console.log('___________________')
        next()
    }
}