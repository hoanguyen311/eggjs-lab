// This file is created by egg-ts-helper
// Do not modify this file!!!!!!!!!

import 'egg';
import ExportContact from '../../../app/model/contact';

declare module 'egg' {
  interface IModel {
    Contact: ReturnType<typeof ExportContact>;
  }
}
