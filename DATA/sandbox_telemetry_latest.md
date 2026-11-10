# sandbox_telemetry_parse — 2026-11-10 11:49:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1120853 lines=2485
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2476 |
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
| `chromeBrowserPssKb` | {'int': 2476} |
| `chromeGpuPssKb` | {'int': 2476} |
| `chromeOtherPssKb` | {'int': 2476} |
| `chromeProcesses` | {'int': 2476} |
| `chromeProfiles` | {'int': 2476} |
| `chromeRendererMaxPssKb` | {'int': 2476} |
| `chromeRendererPssKb` | {'int': 2476} |
| `chromeRenderers` | {'int': 2476} |
| `chromeTabs` | {'int': 2476} |
| `chromeTabsProbedProfiles` | {'int': 2476} |
| `chromeUtilityPssKb` | {'int': 2476} |
| `desktopPssKb` | {'int': 2476} |
| `hostPssKb` | {'int': 2476} |
| `kind` | {'str': 2476} |
| `memAvailableKb` | {'int': 2476} |
| `memTotalKb` | {'int': 2476} |
| `otherPssKb` | {'int': 2476} |
| `processes` | {'int': 2476} |
| `pssFallbackProcesses` | {'int': 2476} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
