# sandbox_telemetry_parse — 2026-10-13 12:35:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1077713 lines=2745
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2138 |
| `chrome_profile_sample` | 599 |
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
| `chromeBrowserPssKb` | {'int': 2138} |
| `chromeGpuPssKb` | {'int': 2138} |
| `chromeOtherPssKb` | {'int': 2138} |
| `chromeProcesses` | {'int': 2138} |
| `chromeProfiles` | {'int': 2138} |
| `chromeRendererMaxPssKb` | {'int': 2138} |
| `chromeRendererPssKb` | {'int': 2138} |
| `chromeRenderers` | {'int': 2138} |
| `chromeTabs` | {'int': 2138} |
| `chromeTabsProbedProfiles` | {'int': 2138} |
| `chromeUtilityPssKb` | {'int': 2138} |
| `desktopPssKb` | {'int': 2138} |
| `hostPssKb` | {'int': 2138} |
| `kind` | {'str': 2138} |
| `memAvailableKb` | {'int': 2138} |
| `memTotalKb` | {'int': 2138} |
| `otherPssKb` | {'int': 2138} |
| `processes` | {'int': 2138} |
| `pssFallbackProcesses` | {'int': 2138} |

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
| `cpuMillicores` | {'int': 598} |
| `display` | {'int': 599} |
| `kind` | {'str': 599} |
| `processes` | {'int': 599} |
| `pssKb` | {'int': 599} |
| `rendererMaxPssKb` | {'int': 599} |
| `renderers` | {'int': 599} |
| `tabs` | {'int': 599} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
