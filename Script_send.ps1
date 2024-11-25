# Define the body of the message with required fields
$body = @{
    "@type" = "MessageCard"
    "@context" = "http://schema.org/extensions"
    "title" = "Deployment Information"
    "text" = "Requirements for new computer"
    "sections" = @(
        @{
            "facts" = @(
                @{
                    "name" = 'User'
                    "value" = $profile
                },
                @{
                    "name" = 'Computer'
                    "value" = $Name
                },
                @{
                    "name" = 'Default Browser'
                    "value" = $DefaultBrowser
                },
                @{
                    "name" = 'Software'
                    "value" = ($Software -split "`n") -join ", "
                },
                @{
                    "name" = 'Shared Drives'
                    "value" = ($SharedDrives -join ", ")
                },
                @{
                    "name" = 'Email Accounts'
                    "value" = $Email
                },
                @{
                    "name" = 'Signatures'
                    "value" = $CheckSignatures
                },
                @{
                    "name" = 'Printers'
                    "value" = ($Printer -join ", ")
                },
                @{
                    "name" = 'Onedrive Sync Status'
                    "value" = $statusname
                }
            )
        }
    )
}

# Convert the body to a JSON string with proper depth
$json = $body | ConvertTo-Json -Depth 4

# Define the URI for the webhook(Make sure you have a live url)
$uri = 'https://centralmichigan.webhook.office.com/webhookb2/7a5f7f32-9868-41d9-8e78-e1dbe653c091@c871bc6e-7cc6-4a57-a4eb-22309fc34963/IncomingWebhook/d4ded51e79794265a1275e76016d30db/23e8147e-c132-4752-b144-8e60829afe4c/V2ZxkOYV-gi9fpIVwZf9vWls_A5gO37skhGcjyKVSx_iI1'

# Use Invoke-RestMethod for sending the JSON payload to the webhook
$response = Invoke-RestMethod -Uri $uri -Method Post -ContentType 'application/json' -Body $json

# Output response (optional for debugging)
$response
