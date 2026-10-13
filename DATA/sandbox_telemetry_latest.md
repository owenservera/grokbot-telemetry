# sandbox_telemetry_parse — 2026-10-13 15:26:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1147304 lines=2963
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2247 |
| `chrome_profile_sample` | 708 |
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
| `chromeBrowserPssKb` | {'int': 2247} |
| `chromeGpuPssKb` | {'int': 2247} |
| `chromeOtherPssKb` | {'int': 2247} |
| `chromeProcesses` | {'int': 2247} |
| `chromeProfiles` | {'int': 2247} |
| `chromeRendererMaxPssKb` | {'int': 2247} |
| `chromeRendererPssKb` | {'int': 2247} |
| `chromeRenderers` | {'int': 2247} |
| `chromeTabs` | {'int': 2247} |
| `chromeTabsProbedProfiles` | {'int': 2247} |
| `chromeUtilityPssKb` | {'int': 2247} |
| `desktopPssKb` | {'int': 2247} |
| `hostPssKb` | {'int': 2247} |
| `kind` | {'str': 2247} |
| `memAvailableKb` | {'int': 2247} |
| `memTotalKb` | {'int': 2247} |
| `otherPssKb` | {'int': 2247} |
| `processes` | {'int': 2247} |
| `pssFallbackProcesses` | {'int': 2247} |

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
| `cpuMillicores` | {'int': 707} |
| `display` | {'int': 708} |
| `kind` | {'str': 708} |
| `processes` | {'int': 708} |
| `pssKb` | {'int': 708} |
| `rendererMaxPssKb` | {'int': 708} |
| `renderers` | {'int': 708} |
| `tabs` | {'int': 708} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
