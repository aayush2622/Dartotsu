param (
    [string]$webhookUrl,
    [string]$filePath
)

$payload = @{
    content = "New APK build"
}

$multipartContent = [System.Net.Http.MultipartFormDataContent]::new()
$multipartContent.Add([System.Net.Http.StringContent]::new((ConvertTo-Json $payload)), "payload_json")
$multipartContent.Add([System.Net.Http.StreamContent]::new([System.IO.File]::OpenRead($filePath)), "file", [System.IO.Path]::GetFileName($filePath))

$httpClient = [System.Net.Http.HttpClient]::new()
$response = $httpClient.PostAsync($webhookUrl, $multipartContent).Result

$response.EnsureSuccessStatusCode()
Write-Output "File uploaded successfully"
