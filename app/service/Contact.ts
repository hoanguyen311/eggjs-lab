import { Service } from 'egg';

export default class Test extends Service {
  public async getContacts() {

    const contacts = await this.ctx.model.Contact.find({});

    return contacts;
  }

  public async addContact(name, email) {
    const { Contact } = this.ctx.model;
    const newContact = await Contact.create({
      name,
      email
    });

    return newContact._doc;
  }

  public async deleteContact(id) {
    const { Contact } = this.ctx.model;
    const res = await Contact.findByIdAndRemove(id);

    return res;
  }
}
