# sandbox_telemetry_parse — 2026-11-12 11:30:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2108722 lines=4668
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4659 |
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
| `chromeBrowserPssKb` | {'int': 4659} |
| `chromeGpuPssKb` | {'int': 4659} |
| `chromeOtherPssKb` | {'int': 4659} |
| `chromeProcesses` | {'int': 4659} |
| `chromeProfiles` | {'int': 4659} |
| `chromeRendererMaxPssKb` | {'int': 4659} |
| `chromeRendererPssKb` | {'int': 4659} |
| `chromeRenderers` | {'int': 4659} |
| `chromeTabs` | {'int': 4659} |
| `chromeTabsProbedProfiles` | {'int': 4659} |
| `chromeUtilityPssKb` | {'int': 4659} |
| `desktopPssKb` | {'int': 4659} |
| `hostPssKb` | {'int': 4659} |
| `kind` | {'str': 4659} |
| `memAvailableKb` | {'int': 4659} |
| `memTotalKb` | {'int': 4659} |
| `otherPssKb` | {'int': 4659} |
| `processes` | {'int': 4659} |
| `pssFallbackProcesses` | {'int': 4659} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
