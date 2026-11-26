# sandbox_telemetry_parse — 2026-11-26 01:53:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3020167 lines=6690
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6675 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6675} |
| `chromeGpuPssKb` | {'int': 6675} |
| `chromeOtherPssKb` | {'int': 6675} |
| `chromeProcesses` | {'int': 6675} |
| `chromeProfiles` | {'int': 6675} |
| `chromeRendererMaxPssKb` | {'int': 6675} |
| `chromeRendererPssKb` | {'int': 6675} |
| `chromeRenderers` | {'int': 6675} |
| `chromeTabs` | {'int': 6675} |
| `chromeTabsProbedProfiles` | {'int': 6675} |
| `chromeUtilityPssKb` | {'int': 6675} |
| `desktopPssKb` | {'int': 6675} |
| `hostPssKb` | {'int': 6675} |
| `kind` | {'str': 6675} |
| `memAvailableKb` | {'int': 6675} |
| `memTotalKb` | {'int': 6675} |
| `otherPssKb` | {'int': 6675} |
| `processes` | {'int': 6675} |
| `pssFallbackProcesses` | {'int': 6675} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
