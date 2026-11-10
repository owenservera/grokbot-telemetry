# sandbox_telemetry_parse — 2026-11-10 13:38:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1161162 lines=2574
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2565 |
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
| `chromeBrowserPssKb` | {'int': 2565} |
| `chromeGpuPssKb` | {'int': 2565} |
| `chromeOtherPssKb` | {'int': 2565} |
| `chromeProcesses` | {'int': 2565} |
| `chromeProfiles` | {'int': 2565} |
| `chromeRendererMaxPssKb` | {'int': 2565} |
| `chromeRendererPssKb` | {'int': 2565} |
| `chromeRenderers` | {'int': 2565} |
| `chromeTabs` | {'int': 2565} |
| `chromeTabsProbedProfiles` | {'int': 2565} |
| `chromeUtilityPssKb` | {'int': 2565} |
| `desktopPssKb` | {'int': 2565} |
| `hostPssKb` | {'int': 2565} |
| `kind` | {'str': 2565} |
| `memAvailableKb` | {'int': 2565} |
| `memTotalKb` | {'int': 2565} |
| `otherPssKb` | {'int': 2565} |
| `processes` | {'int': 2565} |
| `pssFallbackProcesses` | {'int': 2565} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
