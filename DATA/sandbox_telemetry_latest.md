# sandbox_telemetry_parse — 2026-10-16 23:45:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=933084 lines=3487
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2312 |
| `memory_sample` | 1166 |
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
| `chromeBrowserPssKb` | {'int': 1166} |
| `chromeGpuPssKb` | {'int': 1166} |
| `chromeOtherPssKb` | {'int': 1166} |
| `chromeProcesses` | {'int': 1166} |
| `chromeProfiles` | {'int': 1166} |
| `chromeRendererMaxPssKb` | {'int': 1166} |
| `chromeRendererPssKb` | {'int': 1166} |
| `chromeRenderers` | {'int': 1166} |
| `chromeTabs` | {'int': 1166} |
| `chromeTabsProbedProfiles` | {'int': 1166} |
| `chromeUtilityPssKb` | {'int': 1166} |
| `desktopPssKb` | {'int': 1166} |
| `hostPssKb` | {'int': 1166} |
| `kind` | {'str': 1166} |
| `memAvailableKb` | {'int': 1166} |
| `memTotalKb` | {'int': 1166} |
| `otherPssKb` | {'int': 1166} |
| `processes` | {'int': 1166} |
| `pssFallbackProcesses` | {'int': 1166} |

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
| `cpuMillicores` | {'int': 2309} |
| `display` | {'int': 2312} |
| `kind` | {'str': 2312} |
| `processes` | {'int': 2312} |
| `pssKb` | {'int': 2312} |
| `rendererMaxPssKb` | {'int': 2312} |
| `renderers` | {'int': 2312} |
| `tabs` | {'int': 2311} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
