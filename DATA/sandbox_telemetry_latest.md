# sandbox_telemetry_parse — 2026-10-14 00:12:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1320340 lines=3505
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2518 |
| `chrome_profile_sample` | 979 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2518} |
| `chromeGpuPssKb` | {'int': 2518} |
| `chromeOtherPssKb` | {'int': 2518} |
| `chromeProcesses` | {'int': 2518} |
| `chromeProfiles` | {'int': 2518} |
| `chromeRendererMaxPssKb` | {'int': 2518} |
| `chromeRendererPssKb` | {'int': 2518} |
| `chromeRenderers` | {'int': 2518} |
| `chromeTabs` | {'int': 2518} |
| `chromeTabsProbedProfiles` | {'int': 2518} |
| `chromeUtilityPssKb` | {'int': 2518} |
| `desktopPssKb` | {'int': 2518} |
| `hostPssKb` | {'int': 2518} |
| `kind` | {'str': 2518} |
| `memAvailableKb` | {'int': 2518} |
| `memTotalKb` | {'int': 2518} |
| `otherPssKb` | {'int': 2518} |
| `processes` | {'int': 2518} |
| `pssFallbackProcesses` | {'int': 2518} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 978} |
| `display` | {'int': 979} |
| `kind` | {'str': 979} |
| `processes` | {'int': 979} |
| `pssKb` | {'int': 979} |
| `rendererMaxPssKb` | {'int': 979} |
| `renderers` | {'int': 979} |
| `tabs` | {'int': 979} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
