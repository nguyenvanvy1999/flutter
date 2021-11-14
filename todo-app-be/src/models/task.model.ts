import { Schema, Prop, SchemaFactory } from '@nestjs/mongoose';
import { Document, Schema as MongooseSchema } from 'mongoose';
import { kMongoSchema } from 'src/constants';
import { ITask } from 'src/interfaces';

@Schema(kMongoSchema)
export class Task implements ITask {
  @Prop({
    type: String,
    required: true,
    default: '',
    trim: true,
  })
  title: string;

  @Prop({
    type: String,
    required: true,
    default: '',
    trim: true,
  })
  note: string;

  @Prop({
    type: Boolean,
    required: true,
    default: false,
  })
  isComplete: boolean;

  @Prop({
    type: Boolean,
    required: true,
  })
  date: string;

  @Prop({
    type: Boolean,
    required: true,
  })
  startTime: string;

  @Prop({
    type: Boolean,
    required: true,
  })
  endTime: string;

  @Prop({
    type: Number,
    required: true,
  })
  color: number;

  @Prop({
    type: String,
    required: true,
  })
  repeat: string;

  @Prop({
    type: Number,
    required: true,
  })
  remind: number;

  @Prop({
    type: MongooseSchema.Types.ObjectId,
    ref: 'User',
  })
  userId: string;
}

export const TaskSchema = SchemaFactory.createForClass(Task);
export type TaskDocument = Task & Document;
