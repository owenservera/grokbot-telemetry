# sandbox_telemetry_parse — 2026-11-25 22:39:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2954587 lines=6545
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6530 |
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
| `chromeBrowserPssKb` | {'int': 6530} |
| `chromeGpuPssKb` | {'int': 6530} |
| `chromeOtherPssKb` | {'int': 6530} |
| `chromeProcesses` | {'int': 6530} |
| `chromeProfiles` | {'int': 6530} |
| `chromeRendererMaxPssKb` | {'int': 6530} |
| `chromeRendererPssKb` | {'int': 6530} |
| `chromeRenderers` | {'int': 6530} |
| `chromeTabs` | {'int': 6530} |
| `chromeTabsProbedProfiles` | {'int': 6530} |
| `chromeUtilityPssKb` | {'int': 6530} |
| `desktopPssKb` | {'int': 6530} |
| `hostPssKb` | {'int': 6530} |
| `kind` | {'str': 6530} |
| `memAvailableKb` | {'int': 6530} |
| `memTotalKb` | {'int': 6530} |
| `otherPssKb` | {'int': 6530} |
| `processes` | {'int': 6530} |
| `pssFallbackProcesses` | {'int': 6530} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
