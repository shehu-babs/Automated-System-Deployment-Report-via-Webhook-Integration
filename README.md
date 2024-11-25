# Automated-System-Deployment-Report-via-Webhook-Integration

This PowerShell script collects essential deployment details for a new computer, structures the information in JSON format, and sends it to a designated webhook (such as Microsoft Teams) via HTTP POST. 
The script automates deployment notifications, making it easier to share setup details with team members or administrators.

**_Features_**
  Collects deployment information including user details, installed software, shared drives, email accounts, printers, and sync status.
	Structures data into a JSON payload for easy consumption by a webhook.
	Sends the deployment summary to a specified webhook URL (e.g., Microsoft Teams channel).
	Provides error handling and user notifications for successful or failed requests.

**Requirements**
	PowerShell 5.1 or higher.
	An active webhook URL (e.g., Microsoft Teams, Slack, or any service that accepts JSON payloads).
	Network connectivity to send the HTTP POST request to the webhook.

**Setup**
	1.	Clone the repository or copy the script file to your local environment.
	2.	Customize the Webhook URL: Replace the sample webhook URL in the script with your own webhook URL.
	3.	Verify the Variables: Ensure that all variables (e.g., $profile, $Name, $DefaultBrowser) are set up or populated in your PowerShell environment.

**Script Breakdown**
The script has the following main components:
  Data Collection: Gathers information such as user profile, software list, shared drives, and email accounts.
  JSON Conversion: Structures the collected data into JSON format.
	Webhook Integration: Sends the JSON payload via HTTP POST to the specified webhook URL.
	Error Handling: Uses try-catch blocks to manage potential errors in sending data.

 **Customization**
	Webhook URL: Modify the $uri variable with your webhook URL.
	Data Fields: Add or remove fields in the $body variable structure to fit your specific deployment information needs.

 **Troubleshooting**
	Webhook Errors: Ensure that the webhook URL is correct and the receiving service accepts JSON payloads.
	Variable Values: If a variable is missing or null, confirm that the expected values are set up in your PowerShell environment.
	Network Issues: Ensure PowerShell has permission to make network requests, especially if running on a restricted system.

 Acknowledgments
Special thanks to the Microsoft Teams and PowerShell communities for their documentation on webhook integration and automation scripts.
