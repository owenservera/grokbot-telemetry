# sandbox_telemetry_parse — 2026-10-13 05:36:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=858677 lines=2057
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1794 |
| `chrome_profile_sample` | 255 |
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
| `chromeBrowserPssKb` | {'int': 1794} |
| `chromeGpuPssKb` | {'int': 1794} |
| `chromeOtherPssKb` | {'int': 1794} |
| `chromeProcesses` | {'int': 1794} |
| `chromeProfiles` | {'int': 1794} |
| `chromeRendererMaxPssKb` | {'int': 1794} |
| `chromeRendererPssKb` | {'int': 1794} |
| `chromeRenderers` | {'int': 1794} |
| `chromeTabs` | {'int': 1794} |
| `chromeTabsProbedProfiles` | {'int': 1794} |
| `chromeUtilityPssKb` | {'int': 1794} |
| `desktopPssKb` | {'int': 1794} |
| `hostPssKb` | {'int': 1794} |
| `kind` | {'str': 1794} |
| `memAvailableKb` | {'int': 1794} |
| `memTotalKb` | {'int': 1794} |
| `otherPssKb` | {'int': 1794} |
| `processes` | {'int': 1794} |
| `pssFallbackProcesses` | {'int': 1794} |

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
| `cpuMillicores` | {'int': 254} |
| `display` | {'int': 255} |
| `kind` | {'str': 255} |
| `processes` | {'int': 255} |
| `pssKb` | {'int': 255} |
| `rendererMaxPssKb` | {'int': 255} |
| `renderers` | {'int': 255} |
| `tabs` | {'int': 255} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
