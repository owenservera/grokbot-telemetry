# sandbox_telemetry_parse — 2026-11-25 10:11:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2711324 lines=6007
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5992 |
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
| `chromeBrowserPssKb` | {'int': 5992} |
| `chromeGpuPssKb` | {'int': 5992} |
| `chromeOtherPssKb` | {'int': 5992} |
| `chromeProcesses` | {'int': 5992} |
| `chromeProfiles` | {'int': 5992} |
| `chromeRendererMaxPssKb` | {'int': 5992} |
| `chromeRendererPssKb` | {'int': 5992} |
| `chromeRenderers` | {'int': 5992} |
| `chromeTabs` | {'int': 5992} |
| `chromeTabsProbedProfiles` | {'int': 5992} |
| `chromeUtilityPssKb` | {'int': 5992} |
| `desktopPssKb` | {'int': 5992} |
| `hostPssKb` | {'int': 5992} |
| `kind` | {'str': 5992} |
| `memAvailableKb` | {'int': 5992} |
| `memTotalKb` | {'int': 5992} |
| `otherPssKb` | {'int': 5992} |
| `processes` | {'int': 5992} |
| `pssFallbackProcesses` | {'int': 5992} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
