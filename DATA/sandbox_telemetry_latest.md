# sandbox_telemetry_parse — 2026-11-12 13:15:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2143570 lines=4745
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4736 |
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
| `chromeBrowserPssKb` | {'int': 4736} |
| `chromeGpuPssKb` | {'int': 4736} |
| `chromeOtherPssKb` | {'int': 4736} |
| `chromeProcesses` | {'int': 4736} |
| `chromeProfiles` | {'int': 4736} |
| `chromeRendererMaxPssKb` | {'int': 4736} |
| `chromeRendererPssKb` | {'int': 4736} |
| `chromeRenderers` | {'int': 4736} |
| `chromeTabs` | {'int': 4736} |
| `chromeTabsProbedProfiles` | {'int': 4736} |
| `chromeUtilityPssKb` | {'int': 4736} |
| `desktopPssKb` | {'int': 4736} |
| `hostPssKb` | {'int': 4736} |
| `kind` | {'str': 4736} |
| `memAvailableKb` | {'int': 4736} |
| `memTotalKb` | {'int': 4736} |
| `otherPssKb` | {'int': 4736} |
| `processes` | {'int': 4736} |
| `pssFallbackProcesses` | {'int': 4736} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
