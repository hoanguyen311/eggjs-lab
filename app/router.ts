import { Application } from 'egg';

export default (app: Application) => {
  const { controller, router } = app;

  router.get('/', controller.home.index);
  router.post('/create', controller.home.createContact);
  router.delete('/', controller.home.removeContact);
};
