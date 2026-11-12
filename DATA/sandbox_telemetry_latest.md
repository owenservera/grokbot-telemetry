# sandbox_telemetry_parse — 2026-11-12 11:18:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2102845 lines=4655
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4646 |
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
| `chromeBrowserPssKb` | {'int': 4646} |
| `chromeGpuPssKb` | {'int': 4646} |
| `chromeOtherPssKb` | {'int': 4646} |
| `chromeProcesses` | {'int': 4646} |
| `chromeProfiles` | {'int': 4646} |
| `chromeRendererMaxPssKb` | {'int': 4646} |
| `chromeRendererPssKb` | {'int': 4646} |
| `chromeRenderers` | {'int': 4646} |
| `chromeTabs` | {'int': 4646} |
| `chromeTabsProbedProfiles` | {'int': 4646} |
| `chromeUtilityPssKb` | {'int': 4646} |
| `desktopPssKb` | {'int': 4646} |
| `hostPssKb` | {'int': 4646} |
| `kind` | {'str': 4646} |
| `memAvailableKb` | {'int': 4646} |
| `memTotalKb` | {'int': 4646} |
| `otherPssKb` | {'int': 4646} |
| `processes` | {'int': 4646} |
| `pssFallbackProcesses` | {'int': 4646} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
