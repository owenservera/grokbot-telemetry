# sandbox_telemetry_parse — 2026-11-10 22:40:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1358992 lines=3011
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3002 |
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
| `chromeBrowserPssKb` | {'int': 3002} |
| `chromeGpuPssKb` | {'int': 3002} |
| `chromeOtherPssKb` | {'int': 3002} |
| `chromeProcesses` | {'int': 3002} |
| `chromeProfiles` | {'int': 3002} |
| `chromeRendererMaxPssKb` | {'int': 3002} |
| `chromeRendererPssKb` | {'int': 3002} |
| `chromeRenderers` | {'int': 3002} |
| `chromeTabs` | {'int': 3002} |
| `chromeTabsProbedProfiles` | {'int': 3002} |
| `chromeUtilityPssKb` | {'int': 3002} |
| `desktopPssKb` | {'int': 3002} |
| `hostPssKb` | {'int': 3002} |
| `kind` | {'str': 3002} |
| `memAvailableKb` | {'int': 3002} |
| `memTotalKb` | {'int': 3002} |
| `otherPssKb` | {'int': 3002} |
| `processes` | {'int': 3002} |
| `pssFallbackProcesses` | {'int': 3002} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
