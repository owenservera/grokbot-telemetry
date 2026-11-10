# sandbox_telemetry_parse — 2026-11-10 04:34:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=990110 lines=2196
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2187 |
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
| `chromeBrowserPssKb` | {'int': 2187} |
| `chromeGpuPssKb` | {'int': 2187} |
| `chromeOtherPssKb` | {'int': 2187} |
| `chromeProcesses` | {'int': 2187} |
| `chromeProfiles` | {'int': 2187} |
| `chromeRendererMaxPssKb` | {'int': 2187} |
| `chromeRendererPssKb` | {'int': 2187} |
| `chromeRenderers` | {'int': 2187} |
| `chromeTabs` | {'int': 2187} |
| `chromeTabsProbedProfiles` | {'int': 2187} |
| `chromeUtilityPssKb` | {'int': 2187} |
| `desktopPssKb` | {'int': 2187} |
| `hostPssKb` | {'int': 2187} |
| `kind` | {'str': 2187} |
| `memAvailableKb` | {'int': 2187} |
| `memTotalKb` | {'int': 2187} |
| `otherPssKb` | {'int': 2187} |
| `processes` | {'int': 2187} |
| `pssFallbackProcesses` | {'int': 2187} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
