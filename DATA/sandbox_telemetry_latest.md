# sandbox_telemetry_parse — 2026-11-09 15:38:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=721758 lines=1603
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1594 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 1594} |
| `chromeGpuPssKb` | {'int': 1594} |
| `chromeOtherPssKb` | {'int': 1594} |
| `chromeProcesses` | {'int': 1594} |
| `chromeProfiles` | {'int': 1594} |
| `chromeRendererMaxPssKb` | {'int': 1594} |
| `chromeRendererPssKb` | {'int': 1594} |
| `chromeRenderers` | {'int': 1594} |
| `chromeTabs` | {'int': 1594} |
| `chromeTabsProbedProfiles` | {'int': 1594} |
| `chromeUtilityPssKb` | {'int': 1594} |
| `desktopPssKb` | {'int': 1594} |
| `hostPssKb` | {'int': 1594} |
| `kind` | {'str': 1594} |
| `memAvailableKb` | {'int': 1594} |
| `memTotalKb` | {'int': 1594} |
| `otherPssKb` | {'int': 1594} |
| `processes` | {'int': 1594} |
| `pssFallbackProcesses` | {'int': 1594} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
