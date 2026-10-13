# sandbox_telemetry_parse — 2026-10-13 23:56:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1310131 lines=3473
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2502 |
| `chrome_profile_sample` | 963 |
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
| `chromeBrowserPssKb` | {'int': 2502} |
| `chromeGpuPssKb` | {'int': 2502} |
| `chromeOtherPssKb` | {'int': 2502} |
| `chromeProcesses` | {'int': 2502} |
| `chromeProfiles` | {'int': 2502} |
| `chromeRendererMaxPssKb` | {'int': 2502} |
| `chromeRendererPssKb` | {'int': 2502} |
| `chromeRenderers` | {'int': 2502} |
| `chromeTabs` | {'int': 2502} |
| `chromeTabsProbedProfiles` | {'int': 2502} |
| `chromeUtilityPssKb` | {'int': 2502} |
| `desktopPssKb` | {'int': 2502} |
| `hostPssKb` | {'int': 2502} |
| `kind` | {'str': 2502} |
| `memAvailableKb` | {'int': 2502} |
| `memTotalKb` | {'int': 2502} |
| `otherPssKb` | {'int': 2502} |
| `processes` | {'int': 2502} |
| `pssFallbackProcesses` | {'int': 2502} |

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
| `cpuMillicores` | {'int': 962} |
| `display` | {'int': 963} |
| `kind` | {'str': 963} |
| `processes` | {'int': 963} |
| `pssKb` | {'int': 963} |
| `rendererMaxPssKb` | {'int': 963} |
| `renderers` | {'int': 963} |
| `tabs` | {'int': 963} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
