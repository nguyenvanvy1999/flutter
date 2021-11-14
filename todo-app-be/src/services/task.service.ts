import { Injectable } from '@nestjs/common';
import { InjectModel } from '@nestjs/mongoose';
import { Model, Types } from 'mongoose';
import { TaskCreateDTO } from 'src/dtos';
import { Task, TaskDocument } from 'src/models';

@Injectable()
export class TaskService {
  constructor(
    @InjectModel(Task.name) private readonly taskModel: Model<TaskDocument>,
  ) {}

  public async createTask(task: TaskCreateDTO): Promise<TaskDocument> {
    return await this.taskModel.create({
      _id: new Types.ObjectId(),
      ...task,
    });
  }

  public async completeTask(id: string): Promise<TaskDocument> {
    return await this.taskModel.findByIdAndUpdate(id, { isComplete: true });
  }

  public async getAllTask(): Promise<TaskDocument[]> {
    return await this.taskModel.find();
  }
}
