import { ApiProperty } from '@nestjs/swagger';
import { Type } from 'class-transformer';
import { IsBoolean, IsInt, IsNotEmpty, IsString } from 'class-validator';

export class TaskCreateDTO {
  @ApiProperty()
  @IsString()
  @IsNotEmpty()
  @Type(() => String)
  title: string;

  @ApiProperty()
  @IsString()
  @IsNotEmpty()
  @Type(() => String)
  note: string;

  @ApiProperty()
  @IsBoolean()
  @IsNotEmpty()
  @Type(() => Boolean)
  isComplete: boolean;

  @ApiProperty()
  @IsString()
  @IsNotEmpty()
  @Type(() => String)
  date: string;

  @ApiProperty()
  @IsString()
  @IsNotEmpty()
  @Type(() => String)
  startTime: string;

  @ApiProperty()
  @IsString()
  @IsNotEmpty()
  @Type(() => String)
  endTime: string;

  @ApiProperty()
  @IsInt()
  @IsNotEmpty()
  @Type(() => Number)
  color: number;

  @ApiProperty()
  @IsString()
  @IsNotEmpty()
  @Type(() => String)
  repeat: string;

  @ApiProperty()
  @IsInt()
  @IsNotEmpty()
  @Type(() => Number)
  remind: number;
}
