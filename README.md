## Learning Microservices with RoR

### Problem Description

You don't have enought time to go through entire Twitter feeds daily and you're only interested in URLs to the various resources that are submitted by the people you follow (e.g., to blog posts). Implement a solution that will solve this problem and will allow to specify either since when you want to fetch tweets or between what timestamps and will deliver the result via the email. Divide the solution into two Rails applications:

- UI application wherein user can specify the input (i.e. timestamps but also the email address, to which the results will be delivered)

- Backend application that will accept the input somehow from UI applicatoin and deliver the result via email. The template for the email should be customizable (e.g. using Liquid) and the this application should be flexible enough to handle potentially other use cases with different input. In that sense, delivering URLs from Twitter would be just one of the many types of emails that such service should be capable of handling. The template for this particular use case should include the URLs themselves, date and some info indicating what it is about (especially for shortened URLs).

![Twitter URL Extractor](./img/TwitterURLExtractor.png)

### Tasks

#### Client/UI

- [x] Setup StimulusJS, Tailwind CSS and the theme to use
- [x] Implement Twitter authentication
- [x] Allow user to input date and email
- [ ] Setup RabbitMQ and then publish these inputs to it

#### Backend

- [ ] Setup RabbitMQ and consume the message from publisher
- [ ] Setup twitter REST client and filter through twitter feeds to get URLs
- [ ] Create worker to send emails
