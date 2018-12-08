import { Application } from 'egg';

module.exports = (app: Application) => {
  const { Schema } = app.mongoose;
  const contactSchema = new Schema({
    name: String,
    email: String,
    created: {
      type: Date,
      default: Date.now
    }
  });

  return app.mongoose.model('Contact', contactSchema);
};