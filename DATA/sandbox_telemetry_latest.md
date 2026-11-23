# sandbox_telemetry_parse — 2026-11-24 00:54:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2064489 lines=4577
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4562 |
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
| `chromeBrowserPssKb` | {'int': 4562} |
| `chromeGpuPssKb` | {'int': 4562} |
| `chromeOtherPssKb` | {'int': 4562} |
| `chromeProcesses` | {'int': 4562} |
| `chromeProfiles` | {'int': 4562} |
| `chromeRendererMaxPssKb` | {'int': 4562} |
| `chromeRendererPssKb` | {'int': 4562} |
| `chromeRenderers` | {'int': 4562} |
| `chromeTabs` | {'int': 4562} |
| `chromeTabsProbedProfiles` | {'int': 4562} |
| `chromeUtilityPssKb` | {'int': 4562} |
| `desktopPssKb` | {'int': 4562} |
| `hostPssKb` | {'int': 4562} |
| `kind` | {'str': 4562} |
| `memAvailableKb` | {'int': 4562} |
| `memTotalKb` | {'int': 4562} |
| `otherPssKb` | {'int': 4562} |
| `processes` | {'int': 4562} |
| `pssFallbackProcesses` | {'int': 4562} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
