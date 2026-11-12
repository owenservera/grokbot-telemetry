# sandbox_telemetry_parse — 2026-11-12 02:40:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1935909 lines=4286
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4277 |
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
| `chromeBrowserPssKb` | {'int': 4277} |
| `chromeGpuPssKb` | {'int': 4277} |
| `chromeOtherPssKb` | {'int': 4277} |
| `chromeProcesses` | {'int': 4277} |
| `chromeProfiles` | {'int': 4277} |
| `chromeRendererMaxPssKb` | {'int': 4277} |
| `chromeRendererPssKb` | {'int': 4277} |
| `chromeRenderers` | {'int': 4277} |
| `chromeTabs` | {'int': 4277} |
| `chromeTabsProbedProfiles` | {'int': 4277} |
| `chromeUtilityPssKb` | {'int': 4277} |
| `desktopPssKb` | {'int': 4277} |
| `hostPssKb` | {'int': 4277} |
| `kind` | {'str': 4277} |
| `memAvailableKb` | {'int': 4277} |
| `memTotalKb` | {'int': 4277} |
| `otherPssKb` | {'int': 4277} |
| `processes` | {'int': 4277} |
| `pssFallbackProcesses` | {'int': 4277} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
