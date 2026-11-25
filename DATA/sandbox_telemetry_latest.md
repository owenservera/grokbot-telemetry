# sandbox_telemetry_parse — 2026-11-25 18:50:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2877263 lines=6374
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6359 |
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
| `chromeBrowserPssKb` | {'int': 6359} |
| `chromeGpuPssKb` | {'int': 6359} |
| `chromeOtherPssKb` | {'int': 6359} |
| `chromeProcesses` | {'int': 6359} |
| `chromeProfiles` | {'int': 6359} |
| `chromeRendererMaxPssKb` | {'int': 6359} |
| `chromeRendererPssKb` | {'int': 6359} |
| `chromeRenderers` | {'int': 6359} |
| `chromeTabs` | {'int': 6359} |
| `chromeTabsProbedProfiles` | {'int': 6359} |
| `chromeUtilityPssKb` | {'int': 6359} |
| `desktopPssKb` | {'int': 6359} |
| `hostPssKb` | {'int': 6359} |
| `kind` | {'str': 6359} |
| `memAvailableKb` | {'int': 6359} |
| `memTotalKb` | {'int': 6359} |
| `otherPssKb` | {'int': 6359} |
| `processes` | {'int': 6359} |
| `pssFallbackProcesses` | {'int': 6359} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
