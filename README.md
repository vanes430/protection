## 🚀 Environment Variables for Your Secure Server Image

Set these environment variables to control how your custom Docker image behaves!  
Full list with tips and emoji guides:
> Free usage without Licensi With Default port [ 25565/19132 ]
---
````
Java21|ghcr.io/vanes430/protection:java_21
Java17|ghcr.io/vanes430/protection:java_17
Java11|ghcr.io/vanes430/protection:java_11
Java8|ghcr.io/vanes430/protection:java_8
````
### 🏁 **Basic & Required**

| Variable            | Description                                      | Example                           | Required? |
|---------------------|--------------------------------------------------|-----------------------------------|-----------|
| `TZ`                | 🕒 [Timezone ](https://www.php.net/manual/en/timezones.php)    | `Asia/Jakarta`                    | ✅ Yes     |
| `ON_VIRUS_DETECT`   | ⚙️  Action if suspicious plugins are found:<br/>`RENAME`, `DELETE`, or `CRASH`          | `RENAME`                | ✅ Yes     |
| `WEBHOOK_URL`       | 🔔 Discord Webhook for notifications (virus, crash, etc.)                               | *(Your Discord URL)*    | ✅ Yes     |
| `ANTIVIRUS_BYPASS`  | 🛡️  *(Special)* Bypass all protection if set to `true` + see `P_SERVER_LOCATION` below  | `true`                  | Optional    |
---

### ✈️ **Special: Region/Location-based Bypass Mode**

If you want to **skip all protection** (no plugin/virus check, no license check, no log watcher)  
Set **BOTH**:
- `Location Server` **starting with** `BYPASS_REGION_` (e.g. `BYPASS_REGION_ID`, `BYPASS_REGION_TEST`)
- and `ANTIVIRUS_BYPASS=true`

> 💡 *Example:*
>
> ```bash
> Locate(On admin panel)= BYPASS_REGION_ID
> On environment ANTIVIRUS_BYPASS=true
> ```
>
> 🔥 This will ONLY show banner, system info, java version, and startup command (then launch your app).
> All protection features will be **disabled** for this docker!
