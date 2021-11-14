import { IMongoOption } from './interfaces';

export const kMongoOption: IMongoOption = {
  useCreateIndex: true,
  useNewUrlParser: true,
  useUnifiedTopology: true,
  ignoreUndefined: true,
  useFindAndModify: false,
};
