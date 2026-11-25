# sandbox_telemetry_parse — 2026-11-25 08:57:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2683720 lines=5946
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5931 |
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
| `chromeBrowserPssKb` | {'int': 5931} |
| `chromeGpuPssKb` | {'int': 5931} |
| `chromeOtherPssKb` | {'int': 5931} |
| `chromeProcesses` | {'int': 5931} |
| `chromeProfiles` | {'int': 5931} |
| `chromeRendererMaxPssKb` | {'int': 5931} |
| `chromeRendererPssKb` | {'int': 5931} |
| `chromeRenderers` | {'int': 5931} |
| `chromeTabs` | {'int': 5931} |
| `chromeTabsProbedProfiles` | {'int': 5931} |
| `chromeUtilityPssKb` | {'int': 5931} |
| `desktopPssKb` | {'int': 5931} |
| `hostPssKb` | {'int': 5931} |
| `kind` | {'str': 5931} |
| `memAvailableKb` | {'int': 5931} |
| `memTotalKb` | {'int': 5931} |
| `otherPssKb` | {'int': 5931} |
| `processes` | {'int': 5931} |
| `pssFallbackProcesses` | {'int': 5931} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
