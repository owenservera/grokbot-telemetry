# sandbox_telemetry_parse — 2026-11-11 06:06:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1501000 lines=3325
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3316 |
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
| `chromeBrowserPssKb` | {'int': 3316} |
| `chromeGpuPssKb` | {'int': 3316} |
| `chromeOtherPssKb` | {'int': 3316} |
| `chromeProcesses` | {'int': 3316} |
| `chromeProfiles` | {'int': 3316} |
| `chromeRendererMaxPssKb` | {'int': 3316} |
| `chromeRendererPssKb` | {'int': 3316} |
| `chromeRenderers` | {'int': 3316} |
| `chromeTabs` | {'int': 3316} |
| `chromeTabsProbedProfiles` | {'int': 3316} |
| `chromeUtilityPssKb` | {'int': 3316} |
| `desktopPssKb` | {'int': 3316} |
| `hostPssKb` | {'int': 3316} |
| `kind` | {'str': 3316} |
| `memAvailableKb` | {'int': 3316} |
| `memTotalKb` | {'int': 3316} |
| `otherPssKb` | {'int': 3316} |
| `processes` | {'int': 3316} |
| `pssFallbackProcesses` | {'int': 3316} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
