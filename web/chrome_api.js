const key = 'parrot_slack_webhook_url'

async function getCurrentUrl() {
  let queryOptions = { active: true, currentWindow: true };
  let [tab] = await chrome.tabs.query(queryOptions);
  return tab.url;
}

async function getSlackWebhookUrl() {
  let result = await chrome.storage.local.get([key]);
  return result.url;
}

async function setSlackWebhookUrl(url) {
  await chrome.storage.local.set({ key: url });
}

async function removeSlackWebhookUrl() {
  await chrome.storage.local.remove(key);
}
