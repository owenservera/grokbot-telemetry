# sandbox_telemetry_parse — 2026-11-24 05:11:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2142710 lines=4750
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4735 |
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
| `chromeBrowserPssKb` | {'int': 4735} |
| `chromeGpuPssKb` | {'int': 4735} |
| `chromeOtherPssKb` | {'int': 4735} |
| `chromeProcesses` | {'int': 4735} |
| `chromeProfiles` | {'int': 4735} |
| `chromeRendererMaxPssKb` | {'int': 4735} |
| `chromeRendererPssKb` | {'int': 4735} |
| `chromeRenderers` | {'int': 4735} |
| `chromeTabs` | {'int': 4735} |
| `chromeTabsProbedProfiles` | {'int': 4735} |
| `chromeUtilityPssKb` | {'int': 4735} |
| `desktopPssKb` | {'int': 4735} |
| `hostPssKb` | {'int': 4735} |
| `kind` | {'str': 4735} |
| `memAvailableKb` | {'int': 4735} |
| `memTotalKb` | {'int': 4735} |
| `otherPssKb` | {'int': 4735} |
| `processes` | {'int': 4735} |
| `pssFallbackProcesses` | {'int': 4735} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
