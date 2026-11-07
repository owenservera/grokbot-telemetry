# sandbox_telemetry_parse — 2026-11-07 06:47:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=350345 lines=782
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 773 |
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
| `chromeBrowserPssKb` | {'int': 773} |
| `chromeGpuPssKb` | {'int': 773} |
| `chromeOtherPssKb` | {'int': 773} |
| `chromeProcesses` | {'int': 773} |
| `chromeProfiles` | {'int': 773} |
| `chromeRendererMaxPssKb` | {'int': 773} |
| `chromeRendererPssKb` | {'int': 773} |
| `chromeRenderers` | {'int': 773} |
| `chromeTabs` | {'int': 773} |
| `chromeTabsProbedProfiles` | {'int': 773} |
| `chromeUtilityPssKb` | {'int': 773} |
| `desktopPssKb` | {'int': 773} |
| `hostPssKb` | {'int': 773} |
| `kind` | {'str': 773} |
| `memAvailableKb` | {'int': 773} |
| `memTotalKb` | {'int': 773} |
| `otherPssKb` | {'int': 773} |
| `processes` | {'int': 773} |
| `pssFallbackProcesses` | {'int': 773} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
