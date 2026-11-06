# sandbox_telemetry_parse — 2026-11-06 19:29:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=131910 lines=299
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 290 |
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
| `chromeBrowserPssKb` | {'int': 290} |
| `chromeGpuPssKb` | {'int': 290} |
| `chromeOtherPssKb` | {'int': 290} |
| `chromeProcesses` | {'int': 290} |
| `chromeProfiles` | {'int': 290} |
| `chromeRendererMaxPssKb` | {'int': 290} |
| `chromeRendererPssKb` | {'int': 290} |
| `chromeRenderers` | {'int': 290} |
| `chromeTabs` | {'int': 290} |
| `chromeTabsProbedProfiles` | {'int': 290} |
| `chromeUtilityPssKb` | {'int': 290} |
| `desktopPssKb` | {'int': 290} |
| `hostPssKb` | {'int': 290} |
| `kind` | {'str': 290} |
| `memAvailableKb` | {'int': 290} |
| `memTotalKb` | {'int': 290} |
| `otherPssKb` | {'int': 290} |
| `processes` | {'int': 290} |
| `pssFallbackProcesses` | {'int': 290} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
