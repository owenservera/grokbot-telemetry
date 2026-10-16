# sandbox_telemetry_parse — 2026-10-16 10:20:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=353521 lines=1321
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 868 |
| `memory_sample` | 444 |
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
| `chromeBrowserPssKb` | {'int': 444} |
| `chromeGpuPssKb` | {'int': 444} |
| `chromeOtherPssKb` | {'int': 444} |
| `chromeProcesses` | {'int': 444} |
| `chromeProfiles` | {'int': 444} |
| `chromeRendererMaxPssKb` | {'int': 444} |
| `chromeRendererPssKb` | {'int': 444} |
| `chromeRenderers` | {'int': 444} |
| `chromeTabs` | {'int': 444} |
| `chromeTabsProbedProfiles` | {'int': 444} |
| `chromeUtilityPssKb` | {'int': 444} |
| `desktopPssKb` | {'int': 444} |
| `hostPssKb` | {'int': 444} |
| `kind` | {'str': 444} |
| `memAvailableKb` | {'int': 444} |
| `memTotalKb` | {'int': 444} |
| `otherPssKb` | {'int': 444} |
| `processes` | {'int': 444} |
| `pssFallbackProcesses` | {'int': 444} |

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
| `cpuMillicores` | {'int': 865} |
| `display` | {'int': 868} |
| `kind` | {'str': 868} |
| `processes` | {'int': 868} |
| `pssKb` | {'int': 868} |
| `rendererMaxPssKb` | {'int': 868} |
| `renderers` | {'int': 868} |
| `tabs` | {'int': 867} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
