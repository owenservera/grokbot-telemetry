# sandbox_telemetry_parse — 2026-11-11 20:54:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1811411 lines=4011
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4002 |
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
| `chromeBrowserPssKb` | {'int': 4002} |
| `chromeGpuPssKb` | {'int': 4002} |
| `chromeOtherPssKb` | {'int': 4002} |
| `chromeProcesses` | {'int': 4002} |
| `chromeProfiles` | {'int': 4002} |
| `chromeRendererMaxPssKb` | {'int': 4002} |
| `chromeRendererPssKb` | {'int': 4002} |
| `chromeRenderers` | {'int': 4002} |
| `chromeTabs` | {'int': 4002} |
| `chromeTabsProbedProfiles` | {'int': 4002} |
| `chromeUtilityPssKb` | {'int': 4002} |
| `desktopPssKb` | {'int': 4002} |
| `hostPssKb` | {'int': 4002} |
| `kind` | {'str': 4002} |
| `memAvailableKb` | {'int': 4002} |
| `memTotalKb` | {'int': 4002} |
| `otherPssKb` | {'int': 4002} |
| `processes` | {'int': 4002} |
| `pssFallbackProcesses` | {'int': 4002} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
