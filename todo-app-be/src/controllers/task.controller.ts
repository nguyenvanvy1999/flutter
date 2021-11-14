import { Controller, Get, Post, Body } from '@nestjs/common';
import { TaskCreateDTO } from 'src/dtos';
import { TaskDocument } from 'src/models';
import { TaskService } from 'src/services';

@Controller('task')
export class TaskController {
  constructor(private readonly taskService: TaskService) {}

  @Get()
  public async getAllTask(): Promise<TaskDocument[]> {
    return this.taskService.getAllTask();
  }

  @Post()
  public async createTask(@Body() task: TaskCreateDTO): Promise<TaskDocument> {
    return await this.taskService.createTask(task);
  }
}
