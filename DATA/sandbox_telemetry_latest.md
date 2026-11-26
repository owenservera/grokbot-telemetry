# sandbox_telemetry_parse — 2026-11-26 01:34:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3012933 lines=6674
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6659 |
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
| `chromeBrowserPssKb` | {'int': 6659} |
| `chromeGpuPssKb` | {'int': 6659} |
| `chromeOtherPssKb` | {'int': 6659} |
| `chromeProcesses` | {'int': 6659} |
| `chromeProfiles` | {'int': 6659} |
| `chromeRendererMaxPssKb` | {'int': 6659} |
| `chromeRendererPssKb` | {'int': 6659} |
| `chromeRenderers` | {'int': 6659} |
| `chromeTabs` | {'int': 6659} |
| `chromeTabsProbedProfiles` | {'int': 6659} |
| `chromeUtilityPssKb` | {'int': 6659} |
| `desktopPssKb` | {'int': 6659} |
| `hostPssKb` | {'int': 6659} |
| `kind` | {'str': 6659} |
| `memAvailableKb` | {'int': 6659} |
| `memTotalKb` | {'int': 6659} |
| `otherPssKb` | {'int': 6659} |
| `processes` | {'int': 6659} |
| `pssFallbackProcesses` | {'int': 6659} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
