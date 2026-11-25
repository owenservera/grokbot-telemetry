# sandbox_telemetry_parse — 2026-11-25 11:07:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2731213 lines=6051
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6036 |
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
| `chromeBrowserPssKb` | {'int': 6036} |
| `chromeGpuPssKb` | {'int': 6036} |
| `chromeOtherPssKb` | {'int': 6036} |
| `chromeProcesses` | {'int': 6036} |
| `chromeProfiles` | {'int': 6036} |
| `chromeRendererMaxPssKb` | {'int': 6036} |
| `chromeRendererPssKb` | {'int': 6036} |
| `chromeRenderers` | {'int': 6036} |
| `chromeTabs` | {'int': 6036} |
| `chromeTabsProbedProfiles` | {'int': 6036} |
| `chromeUtilityPssKb` | {'int': 6036} |
| `desktopPssKb` | {'int': 6036} |
| `hostPssKb` | {'int': 6036} |
| `kind` | {'str': 6036} |
| `memAvailableKb` | {'int': 6036} |
| `memTotalKb` | {'int': 6036} |
| `otherPssKb` | {'int': 6036} |
| `processes` | {'int': 6036} |
| `pssFallbackProcesses` | {'int': 6036} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
