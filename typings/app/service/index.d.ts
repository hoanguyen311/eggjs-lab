// This file is created by egg-ts-helper
// Do not modify this file!!!!!!!!!

import 'egg';
import ExportContact from '../../../app/service/Contact';
import ExportTest from '../../../app/service/Test';

declare module 'egg' {
  interface IService {
    contact: ExportContact;
    test: ExportTest;
  }
}
