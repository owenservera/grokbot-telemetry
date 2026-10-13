# sandbox_telemetry_parse — 2026-10-14 00:20:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1325444 lines=3521
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2526 |
| `chrome_profile_sample` | 987 |
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
| `chromeBrowserPssKb` | {'int': 2526} |
| `chromeGpuPssKb` | {'int': 2526} |
| `chromeOtherPssKb` | {'int': 2526} |
| `chromeProcesses` | {'int': 2526} |
| `chromeProfiles` | {'int': 2526} |
| `chromeRendererMaxPssKb` | {'int': 2526} |
| `chromeRendererPssKb` | {'int': 2526} |
| `chromeRenderers` | {'int': 2526} |
| `chromeTabs` | {'int': 2526} |
| `chromeTabsProbedProfiles` | {'int': 2526} |
| `chromeUtilityPssKb` | {'int': 2526} |
| `desktopPssKb` | {'int': 2526} |
| `hostPssKb` | {'int': 2526} |
| `kind` | {'str': 2526} |
| `memAvailableKb` | {'int': 2526} |
| `memTotalKb` | {'int': 2526} |
| `otherPssKb` | {'int': 2526} |
| `processes` | {'int': 2526} |
| `pssFallbackProcesses` | {'int': 2526} |

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
| `cpuMillicores` | {'int': 986} |
| `display` | {'int': 987} |
| `kind` | {'str': 987} |
| `processes` | {'int': 987} |
| `pssKb` | {'int': 987} |
| `rendererMaxPssKb` | {'int': 987} |
| `renderers` | {'int': 987} |
| `tabs` | {'int': 987} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
