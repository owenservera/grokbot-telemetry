# sandbox_telemetry_parse — 2026-11-10 10:30:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1098230 lines=2435
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2426 |
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
| `chromeBrowserPssKb` | {'int': 2426} |
| `chromeGpuPssKb` | {'int': 2426} |
| `chromeOtherPssKb` | {'int': 2426} |
| `chromeProcesses` | {'int': 2426} |
| `chromeProfiles` | {'int': 2426} |
| `chromeRendererMaxPssKb` | {'int': 2426} |
| `chromeRendererPssKb` | {'int': 2426} |
| `chromeRenderers` | {'int': 2426} |
| `chromeTabs` | {'int': 2426} |
| `chromeTabsProbedProfiles` | {'int': 2426} |
| `chromeUtilityPssKb` | {'int': 2426} |
| `desktopPssKb` | {'int': 2426} |
| `hostPssKb` | {'int': 2426} |
| `kind` | {'str': 2426} |
| `memAvailableKb` | {'int': 2426} |
| `memTotalKb` | {'int': 2426} |
| `otherPssKb` | {'int': 2426} |
| `processes` | {'int': 2426} |
| `pssFallbackProcesses` | {'int': 2426} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
