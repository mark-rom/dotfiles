// ~/.finicky.js
export default {
  defaultBrowser: "Comet",
  handlers: [
    {
      match: [
        "appfollow.atlassian.net/*",
        "*.appfollow.atlassian.net/*",
        "*gitlab.com/appfollow*",
        "*.appfollow.io/*",
        "appfollow.io/*",
        "*.amplitude.com/*",
        "amplitude.com/*",
        "cursor.com/*",
        "*.cursor.com/*",
        "*.logz.io/*",
        "logz.io/*",
        "fathom.video/*",
      ],
      browser: "Google Chrome",
    },
  ],
};
