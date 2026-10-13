# sandbox_telemetry_parse — 2026-10-13 09:49:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=992308 lines=2477
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2004 |
| `chrome_profile_sample` | 465 |
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
| `chromeBrowserPssKb` | {'int': 2004} |
| `chromeGpuPssKb` | {'int': 2004} |
| `chromeOtherPssKb` | {'int': 2004} |
| `chromeProcesses` | {'int': 2004} |
| `chromeProfiles` | {'int': 2004} |
| `chromeRendererMaxPssKb` | {'int': 2004} |
| `chromeRendererPssKb` | {'int': 2004} |
| `chromeRenderers` | {'int': 2004} |
| `chromeTabs` | {'int': 2004} |
| `chromeTabsProbedProfiles` | {'int': 2004} |
| `chromeUtilityPssKb` | {'int': 2004} |
| `desktopPssKb` | {'int': 2004} |
| `hostPssKb` | {'int': 2004} |
| `kind` | {'str': 2004} |
| `memAvailableKb` | {'int': 2004} |
| `memTotalKb` | {'int': 2004} |
| `otherPssKb` | {'int': 2004} |
| `processes` | {'int': 2004} |
| `pssFallbackProcesses` | {'int': 2004} |

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
| `cpuMillicores` | {'int': 464} |
| `display` | {'int': 465} |
| `kind` | {'str': 465} |
| `processes` | {'int': 465} |
| `pssKb` | {'int': 465} |
| `rendererMaxPssKb` | {'int': 465} |
| `renderers` | {'int': 465} |
| `tabs` | {'int': 465} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
