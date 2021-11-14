import { Test, TestingModule } from '@nestjs/testing';
import { EnvService } from '../services';

describe('EnvService', () => {
  let service: EnvService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [EnvService],
    }).compile();
    service = module.get<EnvService>(EnvService);
  });

  describe('define', () => {
    it('should be defined', () => {
      expect(service).toBeDefined();
    });
  });
});
