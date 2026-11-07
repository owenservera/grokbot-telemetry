# sandbox_telemetry_parse — 2026-11-07 05:15:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=324127 lines=724
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 715 |
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
| `chromeBrowserPssKb` | {'int': 715} |
| `chromeGpuPssKb` | {'int': 715} |
| `chromeOtherPssKb` | {'int': 715} |
| `chromeProcesses` | {'int': 715} |
| `chromeProfiles` | {'int': 715} |
| `chromeRendererMaxPssKb` | {'int': 715} |
| `chromeRendererPssKb` | {'int': 715} |
| `chromeRenderers` | {'int': 715} |
| `chromeTabs` | {'int': 715} |
| `chromeTabsProbedProfiles` | {'int': 715} |
| `chromeUtilityPssKb` | {'int': 715} |
| `desktopPssKb` | {'int': 715} |
| `hostPssKb` | {'int': 715} |
| `kind` | {'str': 715} |
| `memAvailableKb` | {'int': 715} |
| `memTotalKb` | {'int': 715} |
| `otherPssKb` | {'int': 715} |
| `processes` | {'int': 715} |
| `pssFallbackProcesses` | {'int': 715} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
