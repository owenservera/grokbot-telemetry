# sandbox_telemetry_parse — 2026-11-18 11:40:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=803604 lines=1783
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1776 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1776} |
| `chromeGpuPssKb` | {'int': 1776} |
| `chromeOtherPssKb` | {'int': 1776} |
| `chromeProcesses` | {'int': 1776} |
| `chromeProfiles` | {'int': 1776} |
| `chromeRendererMaxPssKb` | {'int': 1776} |
| `chromeRendererPssKb` | {'int': 1776} |
| `chromeRenderers` | {'int': 1776} |
| `chromeTabs` | {'int': 1776} |
| `chromeTabsProbedProfiles` | {'int': 1776} |
| `chromeUtilityPssKb` | {'int': 1776} |
| `desktopPssKb` | {'int': 1776} |
| `hostPssKb` | {'int': 1776} |
| `kind` | {'str': 1776} |
| `memAvailableKb` | {'int': 1776} |
| `memTotalKb` | {'int': 1776} |
| `otherPssKb` | {'int': 1776} |
| `processes` | {'int': 1776} |
| `pssFallbackProcesses` | {'int': 1776} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
