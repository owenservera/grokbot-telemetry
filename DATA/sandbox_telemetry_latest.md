# sandbox_telemetry_parse — 2026-11-25 07:44:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2656567 lines=5886
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5871 |
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
| `chromeBrowserPssKb` | {'int': 5871} |
| `chromeGpuPssKb` | {'int': 5871} |
| `chromeOtherPssKb` | {'int': 5871} |
| `chromeProcesses` | {'int': 5871} |
| `chromeProfiles` | {'int': 5871} |
| `chromeRendererMaxPssKb` | {'int': 5871} |
| `chromeRendererPssKb` | {'int': 5871} |
| `chromeRenderers` | {'int': 5871} |
| `chromeTabs` | {'int': 5871} |
| `chromeTabsProbedProfiles` | {'int': 5871} |
| `chromeUtilityPssKb` | {'int': 5871} |
| `desktopPssKb` | {'int': 5871} |
| `hostPssKb` | {'int': 5871} |
| `kind` | {'str': 5871} |
| `memAvailableKb` | {'int': 5871} |
| `memTotalKb` | {'int': 5871} |
| `otherPssKb` | {'int': 5871} |
| `processes` | {'int': 5871} |
| `pssFallbackProcesses` | {'int': 5871} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
