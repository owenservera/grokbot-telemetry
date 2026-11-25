# sandbox_telemetry_parse — 2026-11-25 02:07:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2546244 lines=5642
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5627 |
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
| `chromeBrowserPssKb` | {'int': 5627} |
| `chromeGpuPssKb` | {'int': 5627} |
| `chromeOtherPssKb` | {'int': 5627} |
| `chromeProcesses` | {'int': 5627} |
| `chromeProfiles` | {'int': 5627} |
| `chromeRendererMaxPssKb` | {'int': 5627} |
| `chromeRendererPssKb` | {'int': 5627} |
| `chromeRenderers` | {'int': 5627} |
| `chromeTabs` | {'int': 5627} |
| `chromeTabsProbedProfiles` | {'int': 5627} |
| `chromeUtilityPssKb` | {'int': 5627} |
| `desktopPssKb` | {'int': 5627} |
| `hostPssKb` | {'int': 5627} |
| `kind` | {'str': 5627} |
| `memAvailableKb` | {'int': 5627} |
| `memTotalKb` | {'int': 5627} |
| `otherPssKb` | {'int': 5627} |
| `processes` | {'int': 5627} |
| `pssFallbackProcesses` | {'int': 5627} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
