# sandbox_telemetry_parse — 2026-11-23 17:40:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1929615 lines=4279
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4264 |
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
| `chromeBrowserPssKb` | {'int': 4264} |
| `chromeGpuPssKb` | {'int': 4264} |
| `chromeOtherPssKb` | {'int': 4264} |
| `chromeProcesses` | {'int': 4264} |
| `chromeProfiles` | {'int': 4264} |
| `chromeRendererMaxPssKb` | {'int': 4264} |
| `chromeRendererPssKb` | {'int': 4264} |
| `chromeRenderers` | {'int': 4264} |
| `chromeTabs` | {'int': 4264} |
| `chromeTabsProbedProfiles` | {'int': 4264} |
| `chromeUtilityPssKb` | {'int': 4264} |
| `desktopPssKb` | {'int': 4264} |
| `hostPssKb` | {'int': 4264} |
| `kind` | {'str': 4264} |
| `memAvailableKb` | {'int': 4264} |
| `memTotalKb` | {'int': 4264} |
| `otherPssKb` | {'int': 4264} |
| `processes` | {'int': 4264} |
| `pssFallbackProcesses` | {'int': 4264} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
