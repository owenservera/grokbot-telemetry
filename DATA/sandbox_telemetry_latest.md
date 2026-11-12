# sandbox_telemetry_parse — 2026-11-12 03:40:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1953561 lines=4325
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4316 |
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
| `chromeBrowserPssKb` | {'int': 4316} |
| `chromeGpuPssKb` | {'int': 4316} |
| `chromeOtherPssKb` | {'int': 4316} |
| `chromeProcesses` | {'int': 4316} |
| `chromeProfiles` | {'int': 4316} |
| `chromeRendererMaxPssKb` | {'int': 4316} |
| `chromeRendererPssKb` | {'int': 4316} |
| `chromeRenderers` | {'int': 4316} |
| `chromeTabs` | {'int': 4316} |
| `chromeTabsProbedProfiles` | {'int': 4316} |
| `chromeUtilityPssKb` | {'int': 4316} |
| `desktopPssKb` | {'int': 4316} |
| `hostPssKb` | {'int': 4316} |
| `kind` | {'str': 4316} |
| `memAvailableKb` | {'int': 4316} |
| `memTotalKb` | {'int': 4316} |
| `otherPssKb` | {'int': 4316} |
| `processes` | {'int': 4316} |
| `pssFallbackProcesses` | {'int': 4316} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
