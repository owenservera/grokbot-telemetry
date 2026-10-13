# sandbox_telemetry_parse — 2026-10-13 22:32:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1262899 lines=3325
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2428 |
| `chrome_profile_sample` | 889 |
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
| `chromeBrowserPssKb` | {'int': 2428} |
| `chromeGpuPssKb` | {'int': 2428} |
| `chromeOtherPssKb` | {'int': 2428} |
| `chromeProcesses` | {'int': 2428} |
| `chromeProfiles` | {'int': 2428} |
| `chromeRendererMaxPssKb` | {'int': 2428} |
| `chromeRendererPssKb` | {'int': 2428} |
| `chromeRenderers` | {'int': 2428} |
| `chromeTabs` | {'int': 2428} |
| `chromeTabsProbedProfiles` | {'int': 2428} |
| `chromeUtilityPssKb` | {'int': 2428} |
| `desktopPssKb` | {'int': 2428} |
| `hostPssKb` | {'int': 2428} |
| `kind` | {'str': 2428} |
| `memAvailableKb` | {'int': 2428} |
| `memTotalKb` | {'int': 2428} |
| `otherPssKb` | {'int': 2428} |
| `processes` | {'int': 2428} |
| `pssFallbackProcesses` | {'int': 2428} |

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
| `cpuMillicores` | {'int': 888} |
| `display` | {'int': 889} |
| `kind` | {'str': 889} |
| `processes` | {'int': 889} |
| `pssKb` | {'int': 889} |
| `rendererMaxPssKb` | {'int': 889} |
| `renderers` | {'int': 889} |
| `tabs` | {'int': 889} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
