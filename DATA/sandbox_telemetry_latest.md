# sandbox_telemetry_parse — 2026-11-11 02:41:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1438604 lines=3187
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3178 |
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
| `chromeBrowserPssKb` | {'int': 3178} |
| `chromeGpuPssKb` | {'int': 3178} |
| `chromeOtherPssKb` | {'int': 3178} |
| `chromeProcesses` | {'int': 3178} |
| `chromeProfiles` | {'int': 3178} |
| `chromeRendererMaxPssKb` | {'int': 3178} |
| `chromeRendererPssKb` | {'int': 3178} |
| `chromeRenderers` | {'int': 3178} |
| `chromeTabs` | {'int': 3178} |
| `chromeTabsProbedProfiles` | {'int': 3178} |
| `chromeUtilityPssKb` | {'int': 3178} |
| `desktopPssKb` | {'int': 3178} |
| `hostPssKb` | {'int': 3178} |
| `kind` | {'str': 3178} |
| `memAvailableKb` | {'int': 3178} |
| `memTotalKb` | {'int': 3178} |
| `otherPssKb` | {'int': 3178} |
| `processes` | {'int': 3178} |
| `pssFallbackProcesses` | {'int': 3178} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
