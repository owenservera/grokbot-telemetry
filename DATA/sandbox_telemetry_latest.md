# sandbox_telemetry_parse — 2026-11-12 15:00:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2185699 lines=4838
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4829 |
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
| `chromeBrowserPssKb` | {'int': 4829} |
| `chromeGpuPssKb` | {'int': 4829} |
| `chromeOtherPssKb` | {'int': 4829} |
| `chromeProcesses` | {'int': 4829} |
| `chromeProfiles` | {'int': 4829} |
| `chromeRendererMaxPssKb` | {'int': 4829} |
| `chromeRendererPssKb` | {'int': 4829} |
| `chromeRenderers` | {'int': 4829} |
| `chromeTabs` | {'int': 4829} |
| `chromeTabsProbedProfiles` | {'int': 4829} |
| `chromeUtilityPssKb` | {'int': 4829} |
| `desktopPssKb` | {'int': 4829} |
| `hostPssKb` | {'int': 4829} |
| `kind` | {'str': 4829} |
| `memAvailableKb` | {'int': 4829} |
| `memTotalKb` | {'int': 4829} |
| `otherPssKb` | {'int': 4829} |
| `processes` | {'int': 4829} |
| `pssFallbackProcesses` | {'int': 4829} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
