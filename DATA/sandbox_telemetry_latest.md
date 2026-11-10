# sandbox_telemetry_parse — 2026-11-10 12:54:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1143498 lines=2535
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2526 |
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
| `chromeBrowserPssKb` | {'int': 2526} |
| `chromeGpuPssKb` | {'int': 2526} |
| `chromeOtherPssKb` | {'int': 2526} |
| `chromeProcesses` | {'int': 2526} |
| `chromeProfiles` | {'int': 2526} |
| `chromeRendererMaxPssKb` | {'int': 2526} |
| `chromeRendererPssKb` | {'int': 2526} |
| `chromeRenderers` | {'int': 2526} |
| `chromeTabs` | {'int': 2526} |
| `chromeTabsProbedProfiles` | {'int': 2526} |
| `chromeUtilityPssKb` | {'int': 2526} |
| `desktopPssKb` | {'int': 2526} |
| `hostPssKb` | {'int': 2526} |
| `kind` | {'str': 2526} |
| `memAvailableKb` | {'int': 2526} |
| `memTotalKb` | {'int': 2526} |
| `otherPssKb` | {'int': 2526} |
| `processes` | {'int': 2526} |
| `pssFallbackProcesses` | {'int': 2526} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
