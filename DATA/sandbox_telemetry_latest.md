# sandbox_telemetry_parse — 2026-11-27 11:22:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=388253 lines=865
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 857 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 857} |
| `chromeGpuPssKb` | {'int': 857} |
| `chromeOtherPssKb` | {'int': 857} |
| `chromeProcesses` | {'int': 857} |
| `chromeProfiles` | {'int': 857} |
| `chromeRendererMaxPssKb` | {'int': 857} |
| `chromeRendererPssKb` | {'int': 857} |
| `chromeRenderers` | {'int': 857} |
| `chromeTabs` | {'int': 857} |
| `chromeTabsProbedProfiles` | {'int': 857} |
| `chromeUtilityPssKb` | {'int': 857} |
| `desktopPssKb` | {'int': 857} |
| `hostPssKb` | {'int': 857} |
| `kind` | {'str': 857} |
| `memAvailableKb` | {'int': 857} |
| `memTotalKb` | {'int': 857} |
| `otherPssKb` | {'int': 857} |
| `processes` | {'int': 857} |
| `pssFallbackProcesses` | {'int': 857} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
