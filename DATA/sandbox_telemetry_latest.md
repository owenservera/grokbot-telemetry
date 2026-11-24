# sandbox_telemetry_parse — 2026-11-24 15:47:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2347140 lines=5202
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5187 |
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
| `chromeBrowserPssKb` | {'int': 5187} |
| `chromeGpuPssKb` | {'int': 5187} |
| `chromeOtherPssKb` | {'int': 5187} |
| `chromeProcesses` | {'int': 5187} |
| `chromeProfiles` | {'int': 5187} |
| `chromeRendererMaxPssKb` | {'int': 5187} |
| `chromeRendererPssKb` | {'int': 5187} |
| `chromeRenderers` | {'int': 5187} |
| `chromeTabs` | {'int': 5187} |
| `chromeTabsProbedProfiles` | {'int': 5187} |
| `chromeUtilityPssKb` | {'int': 5187} |
| `desktopPssKb` | {'int': 5187} |
| `hostPssKb` | {'int': 5187} |
| `kind` | {'str': 5187} |
| `memAvailableKb` | {'int': 5187} |
| `memTotalKb` | {'int': 5187} |
| `otherPssKb` | {'int': 5187} |
| `processes` | {'int': 5187} |
| `pssFallbackProcesses` | {'int': 5187} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
