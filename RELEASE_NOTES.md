# xiasql-ui v1.0.0

`xiasql-ui` is a UI-focused secondary development build based on [smxiazi/xia_sql](https://github.com/smxiazi/xia_sql).

## Highlights

- Refreshed the Burp Suite Swing UI with a cleaner card-style layout.
- Added rounded panels, cleaner buttons, compact controls, and improved table readability.
- Split the workspace into original traffic, payload result, request/response detail, and control sections.
- Set the plugin to disabled by default when Burp Suite starts.
- Added a local PowerShell build script.
- Included a prebuilt jar for direct loading in Burp Suite.

## Download

Use `xia-sql-ui.jar` as the Burp Suite extension jar.

## Build

```powershell
powershell -ExecutionPolicy Bypass -File .\build.ps1
```

## Notes

This project is not the official upstream xia_sql release. Original code rights belong to the original author. No explicit upstream license file was found at the time of this secondary development.
