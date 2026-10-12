# sandbox_telemetry_parse — 2026-10-13 01:15:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=748551 lines=1711
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1621 |
| `chrome_profile_sample` | 82 |
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
| `chromeBrowserPssKb` | {'int': 1621} |
| `chromeGpuPssKb` | {'int': 1621} |
| `chromeOtherPssKb` | {'int': 1621} |
| `chromeProcesses` | {'int': 1621} |
| `chromeProfiles` | {'int': 1621} |
| `chromeRendererMaxPssKb` | {'int': 1621} |
| `chromeRendererPssKb` | {'int': 1621} |
| `chromeRenderers` | {'int': 1621} |
| `chromeTabs` | {'int': 1621} |
| `chromeTabsProbedProfiles` | {'int': 1621} |
| `chromeUtilityPssKb` | {'int': 1621} |
| `desktopPssKb` | {'int': 1621} |
| `hostPssKb` | {'int': 1621} |
| `kind` | {'str': 1621} |
| `memAvailableKb` | {'int': 1621} |
| `memTotalKb` | {'int': 1621} |
| `otherPssKb` | {'int': 1621} |
| `processes` | {'int': 1621} |
| `pssFallbackProcesses` | {'int': 1621} |

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
| `cpuMillicores` | {'int': 81} |
| `display` | {'int': 82} |
| `kind` | {'str': 82} |
| `processes` | {'int': 82} |
| `pssKb` | {'int': 82} |
| `rendererMaxPssKb` | {'int': 82} |
| `renderers` | {'int': 82} |
| `tabs` | {'int': 82} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
