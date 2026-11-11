# sandbox_telemetry_parse — 2026-11-11 22:04:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1839483 lines=4073
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4064 |
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
| `chromeBrowserPssKb` | {'int': 4064} |
| `chromeGpuPssKb` | {'int': 4064} |
| `chromeOtherPssKb` | {'int': 4064} |
| `chromeProcesses` | {'int': 4064} |
| `chromeProfiles` | {'int': 4064} |
| `chromeRendererMaxPssKb` | {'int': 4064} |
| `chromeRendererPssKb` | {'int': 4064} |
| `chromeRenderers` | {'int': 4064} |
| `chromeTabs` | {'int': 4064} |
| `chromeTabsProbedProfiles` | {'int': 4064} |
| `chromeUtilityPssKb` | {'int': 4064} |
| `desktopPssKb` | {'int': 4064} |
| `hostPssKb` | {'int': 4064} |
| `kind` | {'str': 4064} |
| `memAvailableKb` | {'int': 4064} |
| `memTotalKb` | {'int': 4064} |
| `otherPssKb` | {'int': 4064} |
| `processes` | {'int': 4064} |
| `pssFallbackProcesses` | {'int': 4064} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
