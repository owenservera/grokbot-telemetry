# sandbox_telemetry_parse — 2026-11-11 19:42:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1788787 lines=3961
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3952 |
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
| `chromeBrowserPssKb` | {'int': 3952} |
| `chromeGpuPssKb` | {'int': 3952} |
| `chromeOtherPssKb` | {'int': 3952} |
| `chromeProcesses` | {'int': 3952} |
| `chromeProfiles` | {'int': 3952} |
| `chromeRendererMaxPssKb` | {'int': 3952} |
| `chromeRendererPssKb` | {'int': 3952} |
| `chromeRenderers` | {'int': 3952} |
| `chromeTabs` | {'int': 3952} |
| `chromeTabsProbedProfiles` | {'int': 3952} |
| `chromeUtilityPssKb` | {'int': 3952} |
| `desktopPssKb` | {'int': 3952} |
| `hostPssKb` | {'int': 3952} |
| `kind` | {'str': 3952} |
| `memAvailableKb` | {'int': 3952} |
| `memTotalKb` | {'int': 3952} |
| `otherPssKb` | {'int': 3952} |
| `processes` | {'int': 3952} |
| `pssFallbackProcesses` | {'int': 3952} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
