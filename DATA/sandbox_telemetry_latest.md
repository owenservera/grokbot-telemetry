# sandbox_telemetry_parse — 2026-11-12 04:26:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1967594 lines=4356
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4347 |
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
| `chromeBrowserPssKb` | {'int': 4347} |
| `chromeGpuPssKb` | {'int': 4347} |
| `chromeOtherPssKb` | {'int': 4347} |
| `chromeProcesses` | {'int': 4347} |
| `chromeProfiles` | {'int': 4347} |
| `chromeRendererMaxPssKb` | {'int': 4347} |
| `chromeRendererPssKb` | {'int': 4347} |
| `chromeRenderers` | {'int': 4347} |
| `chromeTabs` | {'int': 4347} |
| `chromeTabsProbedProfiles` | {'int': 4347} |
| `chromeUtilityPssKb` | {'int': 4347} |
| `desktopPssKb` | {'int': 4347} |
| `hostPssKb` | {'int': 4347} |
| `kind` | {'str': 4347} |
| `memAvailableKb` | {'int': 4347} |
| `memTotalKb` | {'int': 4347} |
| `otherPssKb` | {'int': 4347} |
| `processes` | {'int': 4347} |
| `pssFallbackProcesses` | {'int': 4347} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
