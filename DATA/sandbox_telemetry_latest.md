# sandbox_telemetry_parse — 2026-11-11 13:43:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1656178 lines=3668
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3659 |
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
| `chromeBrowserPssKb` | {'int': 3659} |
| `chromeGpuPssKb` | {'int': 3659} |
| `chromeOtherPssKb` | {'int': 3659} |
| `chromeProcesses` | {'int': 3659} |
| `chromeProfiles` | {'int': 3659} |
| `chromeRendererMaxPssKb` | {'int': 3659} |
| `chromeRendererPssKb` | {'int': 3659} |
| `chromeRenderers` | {'int': 3659} |
| `chromeTabs` | {'int': 3659} |
| `chromeTabsProbedProfiles` | {'int': 3659} |
| `chromeUtilityPssKb` | {'int': 3659} |
| `desktopPssKb` | {'int': 3659} |
| `hostPssKb` | {'int': 3659} |
| `kind` | {'str': 3659} |
| `memAvailableKb` | {'int': 3659} |
| `memTotalKb` | {'int': 3659} |
| `otherPssKb` | {'int': 3659} |
| `processes` | {'int': 3659} |
| `pssFallbackProcesses` | {'int': 3659} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
