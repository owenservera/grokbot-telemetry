# sandbox_telemetry_parse — 2026-10-13 00:07:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=711633 lines=1595
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1563 |
| `chrome_profile_sample` | 24 |
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
| `chromeBrowserPssKb` | {'int': 1563} |
| `chromeGpuPssKb` | {'int': 1563} |
| `chromeOtherPssKb` | {'int': 1563} |
| `chromeProcesses` | {'int': 1563} |
| `chromeProfiles` | {'int': 1563} |
| `chromeRendererMaxPssKb` | {'int': 1563} |
| `chromeRendererPssKb` | {'int': 1563} |
| `chromeRenderers` | {'int': 1563} |
| `chromeTabs` | {'int': 1563} |
| `chromeTabsProbedProfiles` | {'int': 1563} |
| `chromeUtilityPssKb` | {'int': 1563} |
| `desktopPssKb` | {'int': 1563} |
| `hostPssKb` | {'int': 1563} |
| `kind` | {'str': 1563} |
| `memAvailableKb` | {'int': 1563} |
| `memTotalKb` | {'int': 1563} |
| `otherPssKb` | {'int': 1563} |
| `processes` | {'int': 1563} |
| `pssFallbackProcesses` | {'int': 1563} |

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
| `cpuMillicores` | {'int': 23} |
| `display` | {'int': 24} |
| `kind` | {'str': 24} |
| `processes` | {'int': 24} |
| `pssKb` | {'int': 24} |
| `rendererMaxPssKb` | {'int': 24} |
| `renderers` | {'int': 24} |
| `tabs` | {'int': 24} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
