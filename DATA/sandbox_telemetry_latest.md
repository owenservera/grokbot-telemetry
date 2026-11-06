# sandbox_telemetry_parse — 2026-11-07 00:30:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=233677 lines=524
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 515 |
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
| `chromeBrowserPssKb` | {'int': 515} |
| `chromeGpuPssKb` | {'int': 515} |
| `chromeOtherPssKb` | {'int': 515} |
| `chromeProcesses` | {'int': 515} |
| `chromeProfiles` | {'int': 515} |
| `chromeRendererMaxPssKb` | {'int': 515} |
| `chromeRendererPssKb` | {'int': 515} |
| `chromeRenderers` | {'int': 515} |
| `chromeTabs` | {'int': 515} |
| `chromeTabsProbedProfiles` | {'int': 515} |
| `chromeUtilityPssKb` | {'int': 515} |
| `desktopPssKb` | {'int': 515} |
| `hostPssKb` | {'int': 515} |
| `kind` | {'str': 515} |
| `memAvailableKb` | {'int': 515} |
| `memTotalKb` | {'int': 515} |
| `otherPssKb` | {'int': 515} |
| `processes` | {'int': 515} |
| `pssFallbackProcesses` | {'int': 515} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
