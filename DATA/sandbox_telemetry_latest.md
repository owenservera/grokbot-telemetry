# sandbox_telemetry_parse — 2026-11-11 19:30:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1782898 lines=3948
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3939 |
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
| `chromeBrowserPssKb` | {'int': 3939} |
| `chromeGpuPssKb` | {'int': 3939} |
| `chromeOtherPssKb` | {'int': 3939} |
| `chromeProcesses` | {'int': 3939} |
| `chromeProfiles` | {'int': 3939} |
| `chromeRendererMaxPssKb` | {'int': 3939} |
| `chromeRendererPssKb` | {'int': 3939} |
| `chromeRenderers` | {'int': 3939} |
| `chromeTabs` | {'int': 3939} |
| `chromeTabsProbedProfiles` | {'int': 3939} |
| `chromeUtilityPssKb` | {'int': 3939} |
| `desktopPssKb` | {'int': 3939} |
| `hostPssKb` | {'int': 3939} |
| `kind` | {'str': 3939} |
| `memAvailableKb` | {'int': 3939} |
| `memTotalKb` | {'int': 3939} |
| `otherPssKb` | {'int': 3939} |
| `processes` | {'int': 3939} |
| `pssFallbackProcesses` | {'int': 3939} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
