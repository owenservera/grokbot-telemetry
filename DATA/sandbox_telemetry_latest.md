# sandbox_telemetry_parse — 2026-11-25 03:22:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2570202 lines=5695
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5680 |
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
| `chromeBrowserPssKb` | {'int': 5680} |
| `chromeGpuPssKb` | {'int': 5680} |
| `chromeOtherPssKb` | {'int': 5680} |
| `chromeProcesses` | {'int': 5680} |
| `chromeProfiles` | {'int': 5680} |
| `chromeRendererMaxPssKb` | {'int': 5680} |
| `chromeRendererPssKb` | {'int': 5680} |
| `chromeRenderers` | {'int': 5680} |
| `chromeTabs` | {'int': 5680} |
| `chromeTabsProbedProfiles` | {'int': 5680} |
| `chromeUtilityPssKb` | {'int': 5680} |
| `desktopPssKb` | {'int': 5680} |
| `hostPssKb` | {'int': 5680} |
| `kind` | {'str': 5680} |
| `memAvailableKb` | {'int': 5680} |
| `memTotalKb` | {'int': 5680} |
| `otherPssKb` | {'int': 5680} |
| `processes` | {'int': 5680} |
| `pssFallbackProcesses` | {'int': 5680} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
