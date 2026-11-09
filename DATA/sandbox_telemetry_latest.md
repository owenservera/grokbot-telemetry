# sandbox_telemetry_parse — 2026-11-10 00:27:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=905056 lines=2008
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1999 |
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
| `chromeBrowserPssKb` | {'int': 1999} |
| `chromeGpuPssKb` | {'int': 1999} |
| `chromeOtherPssKb` | {'int': 1999} |
| `chromeProcesses` | {'int': 1999} |
| `chromeProfiles` | {'int': 1999} |
| `chromeRendererMaxPssKb` | {'int': 1999} |
| `chromeRendererPssKb` | {'int': 1999} |
| `chromeRenderers` | {'int': 1999} |
| `chromeTabs` | {'int': 1999} |
| `chromeTabsProbedProfiles` | {'int': 1999} |
| `chromeUtilityPssKb` | {'int': 1999} |
| `desktopPssKb` | {'int': 1999} |
| `hostPssKb` | {'int': 1999} |
| `kind` | {'str': 1999} |
| `memAvailableKb` | {'int': 1999} |
| `memTotalKb` | {'int': 1999} |
| `otherPssKb` | {'int': 1999} |
| `processes` | {'int': 1999} |
| `pssFallbackProcesses` | {'int': 1999} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
