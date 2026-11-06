# sandbox_telemetry_parse — 2026-11-06 22:23:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=192073 lines=432
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 423 |
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
| `chromeBrowserPssKb` | {'int': 423} |
| `chromeGpuPssKb` | {'int': 423} |
| `chromeOtherPssKb` | {'int': 423} |
| `chromeProcesses` | {'int': 423} |
| `chromeProfiles` | {'int': 423} |
| `chromeRendererMaxPssKb` | {'int': 423} |
| `chromeRendererPssKb` | {'int': 423} |
| `chromeRenderers` | {'int': 423} |
| `chromeTabs` | {'int': 423} |
| `chromeTabsProbedProfiles` | {'int': 423} |
| `chromeUtilityPssKb` | {'int': 423} |
| `desktopPssKb` | {'int': 423} |
| `hostPssKb` | {'int': 423} |
| `kind` | {'str': 423} |
| `memAvailableKb` | {'int': 423} |
| `memTotalKb` | {'int': 423} |
| `otherPssKb` | {'int': 423} |
| `processes` | {'int': 423} |
| `pssFallbackProcesses` | {'int': 423} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
