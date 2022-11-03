async function getCurrentUrl() {
  let queryOptions = { active: true, currentWindow: true };
  let [tab] = await chrome.tabs.query(queryOptions);
  return tab.url;
}

async function getSlackWebhookUrl() {
  let result = await chrome.storage.local.get(['parrot_slack_webhook_url']);
  return result.parrot_slack_webhook_url;
}

async function setSlackWebhookUrl(url) {
  await chrome.storage.local.set({ parrot_slack_webhook_url: url });
}

async function removeSlackWebhookUrl() {
  await chrome.storage.local.remove('parrot_slack_webhook_url');
}
