# sandbox_telemetry_parse — 2026-11-12 13:24:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2147647 lines=4754
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4745 |
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
| `chromeBrowserPssKb` | {'int': 4745} |
| `chromeGpuPssKb` | {'int': 4745} |
| `chromeOtherPssKb` | {'int': 4745} |
| `chromeProcesses` | {'int': 4745} |
| `chromeProfiles` | {'int': 4745} |
| `chromeRendererMaxPssKb` | {'int': 4745} |
| `chromeRendererPssKb` | {'int': 4745} |
| `chromeRenderers` | {'int': 4745} |
| `chromeTabs` | {'int': 4745} |
| `chromeTabsProbedProfiles` | {'int': 4745} |
| `chromeUtilityPssKb` | {'int': 4745} |
| `desktopPssKb` | {'int': 4745} |
| `hostPssKb` | {'int': 4745} |
| `kind` | {'str': 4745} |
| `memAvailableKb` | {'int': 4745} |
| `memTotalKb` | {'int': 4745} |
| `otherPssKb` | {'int': 4745} |
| `processes` | {'int': 4745} |
| `pssFallbackProcesses` | {'int': 4745} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
