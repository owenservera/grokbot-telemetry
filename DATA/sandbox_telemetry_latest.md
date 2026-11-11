# sandbox_telemetry_parse — 2026-11-11 21:30:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1826354 lines=4044
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4035 |
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
| `chromeBrowserPssKb` | {'int': 4035} |
| `chromeGpuPssKb` | {'int': 4035} |
| `chromeOtherPssKb` | {'int': 4035} |
| `chromeProcesses` | {'int': 4035} |
| `chromeProfiles` | {'int': 4035} |
| `chromeRendererMaxPssKb` | {'int': 4035} |
| `chromeRendererPssKb` | {'int': 4035} |
| `chromeRenderers` | {'int': 4035} |
| `chromeTabs` | {'int': 4035} |
| `chromeTabsProbedProfiles` | {'int': 4035} |
| `chromeUtilityPssKb` | {'int': 4035} |
| `desktopPssKb` | {'int': 4035} |
| `hostPssKb` | {'int': 4035} |
| `kind` | {'str': 4035} |
| `memAvailableKb` | {'int': 4035} |
| `memTotalKb` | {'int': 4035} |
| `otherPssKb` | {'int': 4035} |
| `processes` | {'int': 4035} |
| `pssFallbackProcesses` | {'int': 4035} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
