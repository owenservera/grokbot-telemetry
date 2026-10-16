# sandbox_telemetry_parse — 2026-10-16 13:24:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=483493 lines=1807
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1192 |
| `memory_sample` | 606 |
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
| `chromeBrowserPssKb` | {'int': 606} |
| `chromeGpuPssKb` | {'int': 606} |
| `chromeOtherPssKb` | {'int': 606} |
| `chromeProcesses` | {'int': 606} |
| `chromeProfiles` | {'int': 606} |
| `chromeRendererMaxPssKb` | {'int': 606} |
| `chromeRendererPssKb` | {'int': 606} |
| `chromeRenderers` | {'int': 606} |
| `chromeTabs` | {'int': 606} |
| `chromeTabsProbedProfiles` | {'int': 606} |
| `chromeUtilityPssKb` | {'int': 606} |
| `desktopPssKb` | {'int': 606} |
| `hostPssKb` | {'int': 606} |
| `kind` | {'str': 606} |
| `memAvailableKb` | {'int': 606} |
| `memTotalKb` | {'int': 606} |
| `otherPssKb` | {'int': 606} |
| `processes` | {'int': 606} |
| `pssFallbackProcesses` | {'int': 606} |

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
| `cpuMillicores` | {'int': 1189} |
| `display` | {'int': 1192} |
| `kind` | {'str': 1192} |
| `processes` | {'int': 1192} |
| `pssKb` | {'int': 1192} |
| `rendererMaxPssKb` | {'int': 1192} |
| `renderers` | {'int': 1192} |
| `tabs` | {'int': 1191} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
