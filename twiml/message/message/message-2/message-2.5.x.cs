using Twilio.TwiML;


class Example
{
    static void Main()
    {
        var response = new MessagingResponse();
        var message = new Message();
        message.Body("Store Location: 123 Easy St.");
        message.Media("https://demo.twilio.com/owl.png");
        response.Message(message);

        System.Console.WriteLine(response.ToString());
    }
}
