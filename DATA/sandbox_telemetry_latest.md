# sandbox_telemetry_parse — 2026-11-24 07:25:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2184769 lines=4843
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4828 |
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
| `chromeBrowserPssKb` | {'int': 4828} |
| `chromeGpuPssKb` | {'int': 4828} |
| `chromeOtherPssKb` | {'int': 4828} |
| `chromeProcesses` | {'int': 4828} |
| `chromeProfiles` | {'int': 4828} |
| `chromeRendererMaxPssKb` | {'int': 4828} |
| `chromeRendererPssKb` | {'int': 4828} |
| `chromeRenderers` | {'int': 4828} |
| `chromeTabs` | {'int': 4828} |
| `chromeTabsProbedProfiles` | {'int': 4828} |
| `chromeUtilityPssKb` | {'int': 4828} |
| `desktopPssKb` | {'int': 4828} |
| `hostPssKb` | {'int': 4828} |
| `kind` | {'str': 4828} |
| `memAvailableKb` | {'int': 4828} |
| `memTotalKb` | {'int': 4828} |
| `otherPssKb` | {'int': 4828} |
| `processes` | {'int': 4828} |
| `pssFallbackProcesses` | {'int': 4828} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
