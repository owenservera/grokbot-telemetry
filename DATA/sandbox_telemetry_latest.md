# sandbox_telemetry_parse — 2026-11-11 14:02:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1663421 lines=3684
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3675 |
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
| `chromeBrowserPssKb` | {'int': 3675} |
| `chromeGpuPssKb` | {'int': 3675} |
| `chromeOtherPssKb` | {'int': 3675} |
| `chromeProcesses` | {'int': 3675} |
| `chromeProfiles` | {'int': 3675} |
| `chromeRendererMaxPssKb` | {'int': 3675} |
| `chromeRendererPssKb` | {'int': 3675} |
| `chromeRenderers` | {'int': 3675} |
| `chromeTabs` | {'int': 3675} |
| `chromeTabsProbedProfiles` | {'int': 3675} |
| `chromeUtilityPssKb` | {'int': 3675} |
| `desktopPssKb` | {'int': 3675} |
| `hostPssKb` | {'int': 3675} |
| `kind` | {'str': 3675} |
| `memAvailableKb` | {'int': 3675} |
| `memTotalKb` | {'int': 3675} |
| `otherPssKb` | {'int': 3675} |
| `processes` | {'int': 3675} |
| `pssFallbackProcesses` | {'int': 3675} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
