# sandbox_telemetry_parse — 2026-11-24 09:13:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2220948 lines=4923
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4908 |
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
| `chromeBrowserPssKb` | {'int': 4908} |
| `chromeGpuPssKb` | {'int': 4908} |
| `chromeOtherPssKb` | {'int': 4908} |
| `chromeProcesses` | {'int': 4908} |
| `chromeProfiles` | {'int': 4908} |
| `chromeRendererMaxPssKb` | {'int': 4908} |
| `chromeRendererPssKb` | {'int': 4908} |
| `chromeRenderers` | {'int': 4908} |
| `chromeTabs` | {'int': 4908} |
| `chromeTabsProbedProfiles` | {'int': 4908} |
| `chromeUtilityPssKb` | {'int': 4908} |
| `desktopPssKb` | {'int': 4908} |
| `hostPssKb` | {'int': 4908} |
| `kind` | {'str': 4908} |
| `memAvailableKb` | {'int': 4908} |
| `memTotalKb` | {'int': 4908} |
| `otherPssKb` | {'int': 4908} |
| `processes` | {'int': 4908} |
| `pssFallbackProcesses` | {'int': 4908} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
