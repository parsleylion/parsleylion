param
(
    [Parameter (Mandatory=$false)]
    [object]$alertName
)
if ($alertName)
{
    #vulcan test channel webhook
    $uri = 'https://outlook.office.com/webhook/6316e387-dba9-4f78-8468-0dcefbaa4910@e5208e76-dd12-47f0-9541-c9b45afaffe6/IncomingWebhook/69c1af50cf7c400a977d8203473c9c17/54b91094-ec31-43c1-ac92-fa887b313dc2'

    $body = ConvertTo-Json @{
        text = $alertName
    } 

    Invoke-RestMethod -uri $uri -Method Post -body $body -ContentType 'application/json'
}
