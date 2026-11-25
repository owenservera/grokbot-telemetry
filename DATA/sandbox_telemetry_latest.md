# sandbox_telemetry_parse — 2026-11-25 23:52:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2981278 lines=6604
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6589 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6589} |
| `chromeGpuPssKb` | {'int': 6589} |
| `chromeOtherPssKb` | {'int': 6589} |
| `chromeProcesses` | {'int': 6589} |
| `chromeProfiles` | {'int': 6589} |
| `chromeRendererMaxPssKb` | {'int': 6589} |
| `chromeRendererPssKb` | {'int': 6589} |
| `chromeRenderers` | {'int': 6589} |
| `chromeTabs` | {'int': 6589} |
| `chromeTabsProbedProfiles` | {'int': 6589} |
| `chromeUtilityPssKb` | {'int': 6589} |
| `desktopPssKb` | {'int': 6589} |
| `hostPssKb` | {'int': 6589} |
| `kind` | {'str': 6589} |
| `memAvailableKb` | {'int': 6589} |
| `memTotalKb` | {'int': 6589} |
| `otherPssKb` | {'int': 6589} |
| `processes` | {'int': 6589} |
| `pssFallbackProcesses` | {'int': 6589} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
