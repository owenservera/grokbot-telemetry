# sandbox_telemetry_parse — 2026-10-13 16:15:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1154329 lines=2985
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2258 |
| `chrome_profile_sample` | 719 |
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
| `chromeBrowserPssKb` | {'int': 2258} |
| `chromeGpuPssKb` | {'int': 2258} |
| `chromeOtherPssKb` | {'int': 2258} |
| `chromeProcesses` | {'int': 2258} |
| `chromeProfiles` | {'int': 2258} |
| `chromeRendererMaxPssKb` | {'int': 2258} |
| `chromeRendererPssKb` | {'int': 2258} |
| `chromeRenderers` | {'int': 2258} |
| `chromeTabs` | {'int': 2258} |
| `chromeTabsProbedProfiles` | {'int': 2258} |
| `chromeUtilityPssKb` | {'int': 2258} |
| `desktopPssKb` | {'int': 2258} |
| `hostPssKb` | {'int': 2258} |
| `kind` | {'str': 2258} |
| `memAvailableKb` | {'int': 2258} |
| `memTotalKb` | {'int': 2258} |
| `otherPssKb` | {'int': 2258} |
| `processes` | {'int': 2258} |
| `pssFallbackProcesses` | {'int': 2258} |

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
| `cpuMillicores` | {'int': 718} |
| `display` | {'int': 719} |
| `kind` | {'str': 719} |
| `processes` | {'int': 719} |
| `pssKb` | {'int': 719} |
| `rendererMaxPssKb` | {'int': 719} |
| `renderers` | {'int': 719} |
| `tabs` | {'int': 719} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
