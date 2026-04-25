# xiasql-ui v1.1.0

`xiasql-ui` is a UI-focused secondary development build based on [smxiazi/xia_sql](https://github.com/smxiazi/xia_sql).

## Highlights

- Refreshed the Burp Suite Swing UI with a cleaner card-style layout.
- Added rounded panels, cleaner buttons, compact controls, and improved table readability.
- Split the workspace into original traffic, payload result, request/response detail, and control sections.
- Set the plugin to disabled by default when Burp Suite starts.
- Added optional toggles to decide whether `User-Agent` and `Host` headers should be tested.
- Added a local PowerShell build script.
- Included a prebuilt jar for direct loading in Burp Suite.

## Changes

- Added `UA header` and `Host header` switches in the scan control panel.
- When enabled, the plugin will include `User-Agent` or `Host` in the same payload-based scanning flow as normal parameters.
- Updated the release notes to document the new header testing options.

## Download

Use `xia-sql-ui.jar` as the Burp Suite extension jar.

## Build

```powershell
powershell -ExecutionPolicy Bypass -File .\build.ps1
```

## Notes

This project is not the official upstream xia_sql release. Original code rights belong to the original author. No explicit upstream license file was found at the time of this secondary development.
