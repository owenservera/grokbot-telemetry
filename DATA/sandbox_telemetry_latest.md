# sandbox_telemetry_parse — 2026-10-13 13:51:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1120484 lines=2879
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2205 |
| `chrome_profile_sample` | 666 |
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
| `chromeBrowserPssKb` | {'int': 2205} |
| `chromeGpuPssKb` | {'int': 2205} |
| `chromeOtherPssKb` | {'int': 2205} |
| `chromeProcesses` | {'int': 2205} |
| `chromeProfiles` | {'int': 2205} |
| `chromeRendererMaxPssKb` | {'int': 2205} |
| `chromeRendererPssKb` | {'int': 2205} |
| `chromeRenderers` | {'int': 2205} |
| `chromeTabs` | {'int': 2205} |
| `chromeTabsProbedProfiles` | {'int': 2205} |
| `chromeUtilityPssKb` | {'int': 2205} |
| `desktopPssKb` | {'int': 2205} |
| `hostPssKb` | {'int': 2205} |
| `kind` | {'str': 2205} |
| `memAvailableKb` | {'int': 2205} |
| `memTotalKb` | {'int': 2205} |
| `otherPssKb` | {'int': 2205} |
| `processes` | {'int': 2205} |
| `pssFallbackProcesses` | {'int': 2205} |

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
| `cpuMillicores` | {'int': 665} |
| `display` | {'int': 666} |
| `kind` | {'str': 666} |
| `processes` | {'int': 666} |
| `pssKb` | {'int': 666} |
| `rendererMaxPssKb` | {'int': 666} |
| `renderers` | {'int': 666} |
| `tabs` | {'int': 666} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
