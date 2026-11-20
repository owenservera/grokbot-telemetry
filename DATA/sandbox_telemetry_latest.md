# sandbox_telemetry_parse — 2026-11-20 18:43:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1840321 lines=4080
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4067 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4067} |
| `chromeGpuPssKb` | {'int': 4067} |
| `chromeOtherPssKb` | {'int': 4067} |
| `chromeProcesses` | {'int': 4067} |
| `chromeProfiles` | {'int': 4067} |
| `chromeRendererMaxPssKb` | {'int': 4067} |
| `chromeRendererPssKb` | {'int': 4067} |
| `chromeRenderers` | {'int': 4067} |
| `chromeTabs` | {'int': 4067} |
| `chromeTabsProbedProfiles` | {'int': 4067} |
| `chromeUtilityPssKb` | {'int': 4067} |
| `desktopPssKb` | {'int': 4067} |
| `hostPssKb` | {'int': 4067} |
| `kind` | {'str': 4067} |
| `memAvailableKb` | {'int': 4067} |
| `memTotalKb` | {'int': 4067} |
| `otherPssKb` | {'int': 4067} |
| `processes` | {'int': 4067} |
| `pssFallbackProcesses` | {'int': 4067} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
