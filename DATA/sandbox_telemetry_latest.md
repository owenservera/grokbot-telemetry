# sandbox_telemetry_parse — 2026-10-16 08:07:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=263585 lines=985
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 644 |
| `memory_sample` | 332 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 332} |
| `chromeGpuPssKb` | {'int': 332} |
| `chromeOtherPssKb` | {'int': 332} |
| `chromeProcesses` | {'int': 332} |
| `chromeProfiles` | {'int': 332} |
| `chromeRendererMaxPssKb` | {'int': 332} |
| `chromeRendererPssKb` | {'int': 332} |
| `chromeRenderers` | {'int': 332} |
| `chromeTabs` | {'int': 332} |
| `chromeTabsProbedProfiles` | {'int': 332} |
| `chromeUtilityPssKb` | {'int': 332} |
| `desktopPssKb` | {'int': 332} |
| `hostPssKb` | {'int': 332} |
| `kind` | {'str': 332} |
| `memAvailableKb` | {'int': 332} |
| `memTotalKb` | {'int': 332} |
| `otherPssKb` | {'int': 332} |
| `processes` | {'int': 332} |
| `pssFallbackProcesses` | {'int': 332} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 641} |
| `display` | {'int': 644} |
| `kind` | {'str': 644} |
| `processes` | {'int': 644} |
| `pssKb` | {'int': 644} |
| `rendererMaxPssKb` | {'int': 644} |
| `renderers` | {'int': 644} |
| `tabs` | {'int': 643} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
