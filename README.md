## 🚀 Environment Variables for Your Secure Server Image

Set these environment variables to control how your custom Docker image behaves!  
Full list with tips and emoji guides:

---

### 🏁 **Basic & Required**

| Variable            | Description                                      | Example                           | Required? |
|---------------------|--------------------------------------------------|-----------------------------------|-----------|
| `TZ`                | 🕒 [Timezone ](https://www.php.net/manual/en/timezones.php)    | `Asia/Jakarta`                    | ✅ Yes     |
|---------------------|-----------------------------------------------------------------------------------------|-------------------------|
| `ON_VIRUS_DETECT`   | ⚙️  Action if suspicious plugins are found:<br/>`RENAME`, `DELETE`, or `CRASH`          | `RENAME`                |
| `WEBHOOK_URL`       | 🔔 Discord Webhook for notifications (virus, crash, etc.)                               | *(Your Discord URL)*    |
| `ANTIVIRUS_BYPASS`  | 🛡️  *(Special)* Bypass all protection if set to `true` + see `P_SERVER_LOCATION` below  | `true`                  |
---

### ✈️ **Special: Region/Location-based Bypass Mode**

If you want to **skip all protection** (no plugin/virus check, no license check, no log watcher)  
Set **BOTH**:
- `P_SERVER_LOCATION` **starting with** `BYPASS_REGION_` (e.g. `BYPASS_REGION_ID`, `BYPASS_REGION_TEST`)
- and `ANTIVIRUS_BYPASS=true`

> 💡 *Example:*
>
> ```bash
> -e P_SERVER_LOCATION=BYPASS_REGION_ID
> -e ANTIVIRUS_BYPASS=true
> ```
>
> 🔥 This will ONLY show banner, system info, java version, and startup command (then launch your app).
> All protection features will be **disabled** for this container!
