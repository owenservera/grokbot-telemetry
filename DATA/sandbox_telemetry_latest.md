# sandbox_telemetry_parse — 2026-11-25 06:45:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2636220 lines=5841
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5826 |
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
| `chromeBrowserPssKb` | {'int': 5826} |
| `chromeGpuPssKb` | {'int': 5826} |
| `chromeOtherPssKb` | {'int': 5826} |
| `chromeProcesses` | {'int': 5826} |
| `chromeProfiles` | {'int': 5826} |
| `chromeRendererMaxPssKb` | {'int': 5826} |
| `chromeRendererPssKb` | {'int': 5826} |
| `chromeRenderers` | {'int': 5826} |
| `chromeTabs` | {'int': 5826} |
| `chromeTabsProbedProfiles` | {'int': 5826} |
| `chromeUtilityPssKb` | {'int': 5826} |
| `desktopPssKb` | {'int': 5826} |
| `hostPssKb` | {'int': 5826} |
| `kind` | {'str': 5826} |
| `memAvailableKb` | {'int': 5826} |
| `memTotalKb` | {'int': 5826} |
| `otherPssKb` | {'int': 5826} |
| `processes` | {'int': 5826} |
| `pssFallbackProcesses` | {'int': 5826} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
