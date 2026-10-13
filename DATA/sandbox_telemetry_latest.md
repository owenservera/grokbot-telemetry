# sandbox_telemetry_parse — 2026-10-13 22:51:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1271836 lines=3353
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2442 |
| `chrome_profile_sample` | 903 |
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
| `chromeBrowserPssKb` | {'int': 2442} |
| `chromeGpuPssKb` | {'int': 2442} |
| `chromeOtherPssKb` | {'int': 2442} |
| `chromeProcesses` | {'int': 2442} |
| `chromeProfiles` | {'int': 2442} |
| `chromeRendererMaxPssKb` | {'int': 2442} |
| `chromeRendererPssKb` | {'int': 2442} |
| `chromeRenderers` | {'int': 2442} |
| `chromeTabs` | {'int': 2442} |
| `chromeTabsProbedProfiles` | {'int': 2442} |
| `chromeUtilityPssKb` | {'int': 2442} |
| `desktopPssKb` | {'int': 2442} |
| `hostPssKb` | {'int': 2442} |
| `kind` | {'str': 2442} |
| `memAvailableKb` | {'int': 2442} |
| `memTotalKb` | {'int': 2442} |
| `otherPssKb` | {'int': 2442} |
| `processes` | {'int': 2442} |
| `pssFallbackProcesses` | {'int': 2442} |

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
| `cpuMillicores` | {'int': 902} |
| `display` | {'int': 903} |
| `kind` | {'str': 903} |
| `processes` | {'int': 903} |
| `pssKb` | {'int': 903} |
| `rendererMaxPssKb` | {'int': 903} |
| `renderers` | {'int': 903} |
| `tabs` | {'int': 903} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
