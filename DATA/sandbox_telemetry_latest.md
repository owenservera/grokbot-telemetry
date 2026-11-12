# sandbox_telemetry_parse — 2026-11-12 11:41:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2111889 lines=4675
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4666 |
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
| `chromeBrowserPssKb` | {'int': 4666} |
| `chromeGpuPssKb` | {'int': 4666} |
| `chromeOtherPssKb` | {'int': 4666} |
| `chromeProcesses` | {'int': 4666} |
| `chromeProfiles` | {'int': 4666} |
| `chromeRendererMaxPssKb` | {'int': 4666} |
| `chromeRendererPssKb` | {'int': 4666} |
| `chromeRenderers` | {'int': 4666} |
| `chromeTabs` | {'int': 4666} |
| `chromeTabsProbedProfiles` | {'int': 4666} |
| `chromeUtilityPssKb` | {'int': 4666} |
| `desktopPssKb` | {'int': 4666} |
| `hostPssKb` | {'int': 4666} |
| `kind` | {'str': 4666} |
| `memAvailableKb` | {'int': 4666} |
| `memTotalKb` | {'int': 4666} |
| `otherPssKb` | {'int': 4666} |
| `processes` | {'int': 4666} |
| `pssFallbackProcesses` | {'int': 4666} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
