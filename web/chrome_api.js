async function getCurrentUrl() {
  let queryOptions = { active: true, currentWindow: true };
  let [tab] = await chrome.tabs.query(queryOptions);
  return tab.url;
}

async function getSlackWebhookUrlPaths() {
  let result = await chrome.storage.local.get(['parrot_slack_webhook_url_path1', 'parrot_slack_webhook_url_path2', 'parrot_slack_webhook_url_path3']);
  if (result.parrot_slack_webhook_url_path1 === undefined || result.parrot_slack_webhook_url_path2 === undefined || result.parrot_slack_webhook_url_path3 == undefined) {
    return null;
  } else {
    return [result.parrot_slack_webhook_url_path1, result.parrot_slack_webhook_url_path2, result.parrot_slack_webhook_url_path3];
  }
}

async function setSlackWebhookUrlPaths(path1, path2, path3) {
  await chrome.storage.local.set({ parrot_slack_webhook_url_path1: path1, parrot_slack_webhook_url_path2: path2, parrot_slack_webhook_url_path3: path3 });
}

async function removeSlackWebhookUrlPaths() {
  await chrome.storage.local.remove(['parrot_slack_webhook_url_path1', 'parrot_slack_webhook_url_path2', 'parrot_slack_webhook_url_path3']);
}

async function getIsRich() {
  let result = await chrome.storage.local.get(['is_rich']);
  if (result.is_rich === undefined) {
    return null;
  } else {
    return result.is_rich
  }
}

async function setIsRich(isRich) {
  await chrome.storage.local.set({ is_rich: isRich });
}

async function removeIsRich() {
  await chrome.storage.local.remove(['is_rich']);
}
