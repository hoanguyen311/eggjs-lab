import { Controller } from 'egg';

export default class HomeController extends Controller {
  public async index() {
    const { ctx } = this;
    const contacts = await this.service.contact.getContacts();
    await ctx.render('index.tpl', { contacts });
  }

  public async createContact() {
    const { request } = this.ctx;
    const { name, email } = request.body;
    const newContact = await this.service.contact.addContact(name, email);
    this.ctx.status = 201;
    this.ctx.body = {
      success: true,
      data: newContact,
      message: 'test'
    };
  }

  public async removeContact() {
    const { request } = this.ctx;
    const { id } = request.body;
    const contacts = await this.service.contact.deleteContact(id);
    this.ctx.body = {
      success: true,
      data: contacts
    }
  }
}
