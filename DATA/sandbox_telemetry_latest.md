# sandbox_telemetry_parse — 2026-10-13 05:44:23 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=863130 lines=2071
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1801 |
| `chrome_profile_sample` | 262 |
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
| `chromeBrowserPssKb` | {'int': 1801} |
| `chromeGpuPssKb` | {'int': 1801} |
| `chromeOtherPssKb` | {'int': 1801} |
| `chromeProcesses` | {'int': 1801} |
| `chromeProfiles` | {'int': 1801} |
| `chromeRendererMaxPssKb` | {'int': 1801} |
| `chromeRendererPssKb` | {'int': 1801} |
| `chromeRenderers` | {'int': 1801} |
| `chromeTabs` | {'int': 1801} |
| `chromeTabsProbedProfiles` | {'int': 1801} |
| `chromeUtilityPssKb` | {'int': 1801} |
| `desktopPssKb` | {'int': 1801} |
| `hostPssKb` | {'int': 1801} |
| `kind` | {'str': 1801} |
| `memAvailableKb` | {'int': 1801} |
| `memTotalKb` | {'int': 1801} |
| `otherPssKb` | {'int': 1801} |
| `processes` | {'int': 1801} |
| `pssFallbackProcesses` | {'int': 1801} |

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
| `cpuMillicores` | {'int': 261} |
| `display` | {'int': 262} |
| `kind` | {'str': 262} |
| `processes` | {'int': 262} |
| `pssKb` | {'int': 262} |
| `rendererMaxPssKb` | {'int': 262} |
| `renderers` | {'int': 262} |
| `tabs` | {'int': 262} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
