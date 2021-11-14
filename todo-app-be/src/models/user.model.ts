import { Schema, Prop, SchemaFactory } from '@nestjs/mongoose';
import { Document, Types, Schema as MongooseSchema } from 'mongoose';
import { kMongoSchema } from 'src/constants';

@Schema(kMongoSchema)
export class User {
  @Prop({
    type: String,
    required: true,
    default: '',
    trim: true,
    lowercase: true,
    immutable: true,
    unique: true,
  })
  email: string;

  @Prop({
    type: String,
    required: true,
    default: '',
    trim: true,
    minlength: 6,
  })
  password: string;

  @Prop({ type: String, required: true, default: '' })
  fullName: string;

  @Prop({ type: String, required: true })
  phoneNumber: string;

  @Prop({ required: true, default: false })
  isActive: boolean;

  @Prop({ type: [{ type: MongooseSchema.Types.ObjectId, ref: 'Role' }] })
  roleIds: Types.ObjectId[];

  comparePassword: (password: string) => boolean;
}

export const UserSchema = SchemaFactory.createForClass(User);
export type UserDocument = User & Document;
