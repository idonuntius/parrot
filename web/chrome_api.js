async function getCurrentUrl() {
  let queryOptions = { active: true, currentWindow: true };
  let [tab] = await chrome.tabs.query(queryOptions);
  return tab.url;
}

async function getSlackWebhookUrl() {
  let result = await chrome.storage.local.get(['url']);
  return result.url;
}

async function setSlackWebhookUrl(url) {
  await chrome.storage.local.set({ 'url': url });
}

async function removeSlackWebhookUrl(url) {
  await chrome.storage.local.remove('url');
}
